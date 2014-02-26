package com.jingdong.app.mall.utils.frame;

import android.app.Activity;
import android.app.ActivityGroup;
import android.app.LocalActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import android.view.WindowManager;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RadioGroup;
import android.widget.RadioGroup.LayoutParams;
import android.widget.RadioGroup.OnCheckedChangeListener;
import com.jingdong.app.mall.MainFrameActivity;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.app.mall.utils.LoginUser;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.MyUncaughtExceptionHandler;
import com.jingdong.common.utils.cache.GlobalImageCache;
import com.novoda.imageloader.core.cache.LruBitmapCache;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Stack;

public class ScrollableTabActivity
  extends ActivityGroup
{
  public static final String CLEAR_HISTORY_FLAG = "com.360buy:clearHistoryFlag";
  public static final String HOME_ACTIVITY_BUTTON_IS_DOWN = "home_button_down";
  public static final int NAVIGATION_CATEGORY = 2;
  public static final String NAVIGATION_DISPLAY_FLAG = "com.360buy:navigationDisplayFlag";
  public static final int NAVIGATION_DISPLAY_HIDE = -1;
  public static final int NAVIGATION_DISPLAY_SHOW = 0;
  public static final String NAVIGATION_FLAG = "com.360buy:navigationFlag";
  public static final int NAVIGATION_HOME = 0;
  public static final String NAVIGATION_ID = "com.360buy:navigationId";
  public static final int NAVIGATION_MORE = 5;
  public static final int NAVIGATION_MYJD = 4;
  public static final int NAVIGATION_SERACH = 1;
  public static final int NAVIGATION_SHOPPINGCAR = 3;
  public static final String RESEND_FLAG = "com.360buy:resendFlag";
  public static final String SINGLE_INSTANCE_FLAG = "com.360buy:singleInstanceFlag";
  public static final String TASK_ID_FLAG = "com.360buy:taskIdFlag";
  public static final String USE_HISTORY_FLAG = "com.360buy:useHistoryFlag";
  private static ArrayList<String> hideNavigationActivityList;
  public static boolean isCanOnTouch = true;
  private final String KEY_IDS = "ids";
  private final String KEY_NEED_RESTORE = "needRestore";
  private final String TAG = "ScrollableTabActivity";
  private LocalActivityManager activityManager;
  protected ImageView arrow_left;
  protected ImageView arrow_right;
  protected HorizontalScrollView bottomBar;
  protected RadioGroup bottomRadioGroup;
  private List<ButtonAction> buttonActionList;
  private RadioGroup.LayoutParams buttonLayoutParams;
  private LinearLayout contentViewLayout;
  private LinearLayout.LayoutParams contentViewLayoutParams;
  private Context context;
  private int counter;
  private int defaultOffShade;
  private int defaultOnShade;
  private boolean isPrevNotInRecord;
  private boolean isShowArrow;
  private boolean jump;
  private LayoutListener layoutListener = new LayoutListener(null);
  private int navigationDisplayMode;
  private CheckedChangeListener radioGroupListener = new CheckedChangeListener();
  private View.OnTouchListener radioOnTouchListener = new View.OnTouchListener()
  {
    public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
    {
      return !ScrollableTabActivity.isCanOnTouch;
    }
  };
  private HashMap<String, Integer> recordIdAndRadioId = new HashMap();
  protected ArrayList<Record> recordList = new ArrayList();
  private Stack<Runnable> resendRequests = new Stack();
  private ArrayList<Record> singleInstanceRecordList = new ArrayList();
  private List<int[]> states;
  private List<String> titleList;
  
  static
  {
    hideNavigationActivityList = new ArrayList();
    hideNavigationActivityList.add(WebActivity.class.getName());
  }
  
  private void check(String paramString)
  {
    Integer localInteger = findRadioId(paramString);
    if (localInteger != null)
    {
      checkNoEvent(localInteger);
      return;
    }
    checkNoEvent(Integer.valueOf(-1));
  }
  
  private void checkNoEvent(Integer paramInteger)
  {
    if (this.bottomRadioGroup.getCheckedRadioButtonId() != paramInteger.intValue())
    {
      this.radioGroupListener.setOldFlag(true);
      this.radioGroupListener.setmNow(paramInteger.intValue());
      this.bottomRadioGroup.check(paramInteger.intValue());
    }
  }
  
  private void clearHistoryRecord(Intent paramIntent)
  {
    Record localRecord = new Record();
    localRecord.setIntent(paramIntent);
    while (this.recordList.remove(localRecord)) {}
  }
  
  private void collectErrorData(Intent paramIntent)
  {
    Bundle localBundle = paramIntent.getExtras();
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("activity class name：" + paramIntent.getComponent().getClassName());
    localStringBuffer.append("，intent content：");
    Iterator localIterator;
    if (localBundle != null)
    {
      localIterator = localBundle.keySet().iterator();
      if (localIterator.hasNext()) {}
    }
    else
    {
      MyUncaughtExceptionHandler.resetErrorInfo(localStringBuffer.toString());
      return;
    }
    String str1 = localIterator.next().toString();
    localStringBuffer.append(str1 + "：");
    if (localBundle.get(str1) == null) {}
    for (String str2 = "<null>";; str2 = localBundle.get(str1).toString())
    {
      localStringBuffer.append(str2 + "，");
      break;
    }
  }
  
  private void doJump()
  {
    this.jump = false;
    removeRecordTop();
  }
  
  private Integer findRadioId(String paramString)
  {
    return (Integer)this.recordIdAndRadioId.get(paramString);
  }
  
  private Record findsingleInstanceRecord(Intent paramIntent)
  {
    Iterator localIterator = this.singleInstanceRecordList.iterator();
    Record localRecord;
    do
    {
      if (!localIterator.hasNext()) {
        return null;
      }
      localRecord = (Record)localIterator.next();
    } while (!localRecord.getIntent().getComponent().getClassName().equals(paramIntent.getComponent().getClassName()));
    return localRecord;
  }
  
  private Integer getNavigationId(Intent paramIntent)
  {
    if (isNavigation(paramIntent)) {
      return Integer.valueOf(paramIntent.getIntExtra("com.360buy:navigationId", 0));
    }
    return null;
  }
  
  private HashMap<String, Object> getTaskId(Intent paramIntent)
  {
    return (HashMap)paramIntent.getSerializableExtra("com.360buy:taskIdFlag");
  }
  
  public static boolean isClearHistory(Intent paramIntent)
  {
    return paramIntent.getBooleanExtra("com.360buy:clearHistoryFlag", false);
  }
  
  private boolean isJump()
  {
    return this.jump;
  }
  
  private boolean isNavigation(Intent paramIntent)
  {
    return paramIntent.getBooleanExtra("com.360buy:navigationFlag", false);
  }
  
  private boolean isResend(Intent paramIntent)
  {
    return paramIntent.getBooleanExtra("com.360buy:resendFlag", false);
  }
  
  public static boolean isSingleInstance(Intent paramIntent)
  {
    return paramIntent.getBooleanExtra("com.360buy:singleInstanceFlag", false);
  }
  
  public static boolean isUseHistoryRecord(Intent paramIntent)
  {
    return paramIntent.getBooleanExtra("com.360buy:useHistoryFlag", false);
  }
  
  protected void addTab(ButtonStyle paramButtonStyle, ButtonAction paramButtonAction) {}
  
  public void clearJump()
  {
    if (isJump()) {
      this.jump = false;
    }
  }
  
  public void commit()
  {
    this.bottomRadioGroup.removeAllViews();
    int m;
    label158:
    TabBarButton localTabBarButton;
    int[] arrayOfInt;
    try
    {
      i = getWindowManager().getDefaultDisplay().getWidth() / DPIUtil.dip2px(64.0F);
      j = getWindowManager().getDefaultDisplay().getWidth();
      if (this.buttonActionList.size() <= i)
      {
        k = j / this.buttonActionList.size();
        RadioStateDrawable.width = k;
        RadioStateDrawable.screen_width = j;
        this.buttonLayoutParams = new RadioGroup.LayoutParams(k, -1);
        m = 0;
        if (m < this.buttonActionList.size()) {
          break label158;
        }
        this.bottomRadioGroup.check(0);
        ((ButtonAction)this.buttonActionList.get(0)).run();
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        int j;
        int i = 5;
        continue;
        int k = j / 5;
        this.isShowArrow = true;
        this.arrow_right.setVisibility(0);
      }
      localTabBarButton = new TabBarButton(this);
      if (m == 3) {
        MainFrameActivity.setCarStateController(localTabBarButton.getStateController());
      }
      arrayOfInt = (int[])this.states.get(m);
      if (arrayOfInt.length != 1) {
        break label283;
      }
    }
    localTabBarButton.setState(((String)this.titleList.get(m)).toString(), arrayOfInt[0]);
    for (;;)
    {
      localTabBarButton.setBackgroundResource(2130838004);
      localTabBarButton.setId(m);
      localTabBarButton.setGravity(17);
      localTabBarButton.setOnTouchListener(this.radioOnTouchListener);
      this.bottomRadioGroup.addView(localTabBarButton, m, this.buttonLayoutParams);
      m++;
      break;
      label283:
      if (arrayOfInt.length == 2) {
        localTabBarButton.setState(((String)this.titleList.get(m)).toString(), arrayOfInt[0], arrayOfInt[1]);
      } else if (arrayOfInt.length == 3) {
        localTabBarButton.setState(((String)this.titleList.get(m)).toString(), arrayOfInt[0], arrayOfInt[1], arrayOfInt[2]);
      }
    }
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    try
    {
      Activity localActivity = this.activityManager.getCurrentActivity();
      if (localActivity == null) {
        return super.dispatchKeyEvent(paramKeyEvent);
      }
      if ((paramKeyEvent.getKeyCode() == 67) || (!localActivity.dispatchKeyEvent(paramKeyEvent)))
      {
        boolean bool = super.dispatchKeyEvent(paramKeyEvent);
        return bool;
      }
    }
    catch (IllegalStateException localIllegalStateException) {}
    return true;
  }
  
  public void finish()
  {
    removeRecordTop();
    if (!this.recordList.isEmpty())
    {
      Record localRecord = (Record)this.recordList.get(0);
      showActivity(localRecord.getId(), localRecord.getIntent());
      return;
    }
    LoginUser.setUserStateOff(false);
    super.finish();
  }
  
  public void finishFromChild(Activity paramActivity)
  {
    finish();
  }
  
  public void finishThis()
  {
    super.finish();
  }
  
  public int getBottomBarBottom()
  {
    return this.layoutListener.getOriginalHeigth();
  }
  
  public void hideNavigation()
  {
    ((View)this.bottomBar.getParent()).setVisibility(8);
  }
  
  public void markJump()
  {
    this.jump = true;
  }
  
  public Record newActivity(String paramString, Intent paramIntent)
  {
    Record localRecord = new Record();
    localRecord.setId(paramString);
    localRecord.setIntent(paramIntent);
    if (isSingleInstance(paramIntent)) {
      this.singleInstanceRecordList.add(localRecord);
    }
    newActivity(localRecord);
    return localRecord;
  }
  
  public void newActivity(Record paramRecord)
  {
    if (isResend(paramRecord.getIntent())) {
      removeRecordTop();
    }
    for (;;)
    {
      if (!this.recordList.isEmpty())
      {
        HashMap localHashMap1 = getTaskId(((Record)this.recordList.get(0)).getIntent());
        if (localHashMap1 != null)
        {
          HashMap localHashMap2 = getTaskId(paramRecord.getIntent());
          if ((localHashMap2 == null) || (!localHashMap1.equals(localHashMap2))) {
            removeRecordTop();
          }
        }
      }
      if ((!isSingleInstance(paramRecord.getIntent())) || (this.recordList.isEmpty()) || (!((Record)this.recordList.get(0)).getIntent().getComponent().getClassName().equals(paramRecord.getIntent().getComponent().getClassName())))
      {
        if (isUseHistoryRecord(paramRecord.getIntent()))
        {
          int i = this.recordList.indexOf(paramRecord);
          if (i > 0)
          {
            Record localRecord = (Record)this.recordList.remove(i);
            if ((localRecord != null) && (!TextUtils.isEmpty(localRecord.getId())) && (localRecord.getIntent() != null)) {
              paramRecord = localRecord;
            }
          }
        }
        this.recordList.add(0, paramRecord);
      }
      Integer localInteger = getNavigationId(paramRecord.getIntent());
      if ((localInteger != null) && (findRadioId(paramRecord.getId()) == null)) {
        this.recordIdAndRadioId.put(paramRecord.getId(), localInteger);
      }
      collectErrorData(paramRecord.getIntent());
      showActivity(paramRecord.getId(), paramRecord.getIntent());
      return;
      if (isJump()) {
        doJump();
      }
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.context = this;
    this.activityManager = getLocalActivityManager();
    setContentView(2130903112);
    this.contentViewLayout = ((LinearLayout)findViewById(2131493316));
    this.bottomBar = ((HorizontalScrollView)findViewById(2131493317));
    this.bottomRadioGroup = ((RadioGroup)findViewById(2131493318));
    this.arrow_left = ((ImageView)findViewById(2131493319));
    this.arrow_right = ((ImageView)findViewById(2131493320));
    this.contentViewLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    this.defaultOffShade = 0;
    this.defaultOnShade = 3;
    this.bottomRadioGroup.setOnCheckedChangeListener(this.radioGroupListener);
    this.buttonActionList = new ArrayList();
    this.titleList = new ArrayList();
    this.states = new ArrayList();
    this.buttonLayoutParams = new RadioGroup.LayoutParams(64, -2);
    View localView1 = getWindow().getDecorView();
    ViewTreeObserver localViewTreeObserver = localView1.getViewTreeObserver();
    ViewGroup localViewGroup = (ViewGroup)((ViewGroup)localView1).getChildAt(0);
    View localView2 = localViewGroup.getChildAt(0);
    if ((localView2 instanceof ViewStub)) {
      localView2 = ((ViewGroup)localViewGroup.getChildAt(1)).getChildAt(0);
    }
    this.layoutListener.init(localView2);
    localViewTreeObserver.removeGlobalOnLayoutListener(this.layoutListener);
    localViewTreeObserver.addOnGlobalLayoutListener(this.layoutListener);
    this.bottomBar.setOnTouchListener(new View.OnTouchListener()
    {
      final Handler handler = new Handler()
      {
        public void dispatchMessage(Message paramAnonymous2Message)
        {
          super.dispatchMessage(paramAnonymous2Message);
          ScrollableTabActivity.2.this.onChange();
        }
      };
      
      private void onChange()
      {
        if (ScrollableTabActivity.this.isShowArrow)
        {
          if (ScrollableTabActivity.this.bottomBar.getScrollX() > DPIUtil.dip2px(15.0F)) {
            break label52;
          }
          ScrollableTabActivity.this.arrow_left.setVisibility(8);
          ScrollableTabActivity.this.arrow_right.setVisibility(0);
        }
        label52:
        while (ScrollableTabActivity.this.bottomBar.getScrollX() <= DPIUtil.dip2px(64.0F) - DPIUtil.dip2px(15.0F)) {
          return;
        }
        ScrollableTabActivity.this.arrow_right.setVisibility(8);
        ScrollableTabActivity.this.arrow_left.setVisibility(0);
      }
      
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        onChange();
        this.handler.sendEmptyMessageDelayed(0, 500L);
        return false;
      }
    });
  }
  
  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    for (;;)
    {
      try
      {
        if ((this.recordList != null) && (this.recordList.size() < 2) && (paramBundle.getBoolean("needRestore")))
        {
          ArrayList localArrayList = paramBundle.getStringArrayList("ids");
          if ((localArrayList != null) && (localArrayList.size() > 0))
          {
            this.recordList.clear();
            localIterator = localArrayList.iterator();
            if (localIterator.hasNext()) {
              continue;
            }
            Record localRecord2 = (Record)this.recordList.get(0);
            showActivity(localRecord2.getId(), localRecord2.getIntent());
          }
        }
      }
      catch (Throwable localThrowable)
      {
        Iterator localIterator;
        String str;
        Intent localIntent;
        Record localRecord1;
        continue;
      }
      super.onRestoreInstanceState(paramBundle);
      return;
      str = (String)localIterator.next();
      localIntent = (Intent)paramBundle.getParcelable(str);
      localRecord1 = new Record();
      localRecord1.setId(str);
      localRecord1.setIntent(localIntent);
      this.recordList.add(localRecord1);
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    for (;;)
    {
      try
      {
        if ((this.recordList == null) || (this.recordList.size() < 2))
        {
          paramBundle.putBoolean("needRestore", false);
          return;
        }
        localArrayList = new ArrayList();
        localIterator = this.recordList.iterator();
        if (localIterator.hasNext()) {
          continue;
        }
        paramBundle.putStringArrayList("ids", localArrayList);
        paramBundle.putBoolean("needRestore", true);
      }
      catch (Throwable localThrowable)
      {
        ArrayList localArrayList;
        Iterator localIterator;
        Record localRecord;
        continue;
      }
      super.onSaveInstanceState(paramBundle);
      return;
      localRecord = (Record)localIterator.next();
      localArrayList.add(localRecord.getId());
      paramBundle.putParcelable(localRecord.getId(), localRecord.getIntent());
    }
  }
  
  public void pushResendRequest(Runnable paramRunnable)
  {
    this.resendRequests.push(paramRunnable);
  }
  
  public void removeAllRecords(boolean paramBoolean)
  {
    int j;
    if (!paramBoolean)
    {
      j = -1 + this.recordList.size();
      if (j > 1) {}
    }
    for (;;)
    {
      return;
      this.recordList.remove(0);
      j--;
      break;
      for (int i = this.recordList.size(); i > 1; i--)
      {
        Record localRecord = (Record)this.recordList.remove(0);
        if (!isSingleInstance(localRecord.getIntent())) {
          this.activityManager.destroyActivity(localRecord.getId(), true);
        }
      }
    }
  }
  
  public void removeAllSingleInstances()
  {
    for (int i = -1 + this.singleInstanceRecordList.size();; i--)
    {
      if (i <= 0) {
        return;
      }
      Record localRecord = (Record)this.singleInstanceRecordList.get(i);
      this.activityManager.destroyActivity(localRecord.getId(), true);
      this.singleInstanceRecordList.remove(i);
    }
  }
  
  public void removeRecord(int paramInt)
  {
    try
    {
      if (this.isPrevNotInRecord)
      {
        this.isPrevNotInRecord = false;
        return;
      }
      if (!this.recordList.isEmpty())
      {
        Record localRecord = (Record)this.recordList.remove(paramInt);
        if (!isSingleInstance(localRecord.getIntent()))
        {
          this.activityManager.destroyActivity(localRecord.getId(), true);
          return;
        }
      }
    }
    catch (Exception localException) {}
  }
  
  public void removeRecordSecond()
  {
    removeRecord(1);
  }
  
  public void removeRecordTop()
  {
    removeRecord(0);
  }
  
  public void setCurrentTab(int paramInt)
  {
    this.bottomRadioGroup.check(paramInt);
  }
  
  protected void setDefaultShade(int paramInt1, int paramInt2)
  {
    this.defaultOffShade = paramInt1;
    this.defaultOnShade = paramInt2;
  }
  
  protected void showActivity(String paramString, Intent paramIntent)
  {
    this.navigationDisplayMode = paramIntent.getIntExtra("com.360buy:navigationDisplayFlag", 0);
    if (hideNavigationActivityList.contains(paramIntent.getComponent().getClassName())) {
      this.navigationDisplayMode = -1;
    }
    switch (this.navigationDisplayMode)
    {
    default: 
      showNavigation();
    }
    for (;;)
    {
      this.contentViewLayout.removeAllViews();
      try
      {
        View localView2 = this.activityManager.startActivity(paramString, paramIntent).getDecorView();
        localView1 = localView2;
      }
      catch (Throwable localThrowable)
      {
        View localView1;
        for (;;)
        {
          Runnable localRunnable;
          GlobalImageCache.getLruBitmapCache().cleanMost();
          localView1 = this.activityManager.startActivity(paramString, paramIntent).getDecorView();
        }
        Activity localActivity = getCurrentActivity();
        localActivity.setIntent(paramIntent);
        if (!(localActivity instanceof MyActivity)) {
          break label181;
        }
        ((MyActivity)localActivity).canNotResend();
        if ((this.contentViewLayout.indexOfChild(localView1) != -1) || (localView1.getParent() != null)) {
          break label215;
        }
        this.contentViewLayout.addView(localView1, this.contentViewLayoutParams);
        check(paramString);
      }
      if (this.resendRequests.isEmpty()) {
        break;
      }
      localRunnable = (Runnable)this.resendRequests.pop();
      this.resendRequests.clear();
      localRunnable.run();
      return;
      hideNavigation();
    }
    label181:
    label215:
    return;
  }
  
  public void showNavigation()
  {
    ((View)this.bottomBar.getParent()).setVisibility(0);
  }
  
  public Record startSubActivity(Intent paramIntent)
  {
    if (isSingleInstance(paramIntent))
    {
      Record localRecord = findsingleInstanceRecord(paramIntent);
      if (localRecord != null)
      {
        localRecord.setIntent(paramIntent);
        newActivity(localRecord);
        return localRecord;
      }
    }
    else if (isClearHistory(paramIntent))
    {
      clearHistoryRecord(paramIntent);
    }
    this.counter = (1 + this.counter);
    return newActivity("subActivity:" + this.counter, paramIntent);
  }
  
  public class ButtonAction
  {
    private boolean highlight;
    private Runnable mRunnable;
    
    public ButtonAction(final Intent paramIntent)
    {
      this(new Runnable()
      {
        public void run()
        {
          ScrollableTabActivity.ButtonAction.this.startSubActivity(paramIntent);
        }
      });
    }
    
    public ButtonAction(final Intent paramIntent, boolean paramBoolean)
    {
      this(new Runnable()
      {
        public void run()
        {
          ScrollableTabActivity.ButtonAction.this.startSubActivity(paramIntent);
        }
      }, paramBoolean);
    }
    
    public ButtonAction(final Intent paramIntent, boolean paramBoolean1, boolean paramBoolean2)
    {
      if (paramBoolean2) {}
      for (this.mRunnable = new ScrollableTabActivity.TabRunnable(ScrollableTabActivity.this, paramIntent, null);; this.mRunnable = new Runnable()
          {
            public void run()
            {
              ScrollableTabActivity.this.startSubActivity(paramIntent);
            }
          })
      {
        ScrollableTabActivity.this.buttonActionList.add(this);
        setHighlight(paramBoolean1);
        return;
      }
    }
    
    public ButtonAction(Runnable paramRunnable)
    {
      this(paramRunnable, true);
    }
    
    public ButtonAction(Runnable paramRunnable, boolean paramBoolean)
    {
      this.mRunnable = paramRunnable;
      ScrollableTabActivity.this.buttonActionList.add(this);
      setHighlight(paramBoolean);
    }
    
    public boolean isHighlight()
    {
      return this.highlight;
    }
    
    public void run()
    {
      if ((this.mRunnable instanceof ScrollableTabActivity.TabRunnable)) {
        ((ScrollableTabActivity.TabRunnable)this.mRunnable).setOnkeyDown(true);
      }
      this.mRunnable.run();
    }
    
    public void setHighlight(boolean paramBoolean)
    {
      this.highlight = paramBoolean;
    }
  }
  
  public class ButtonStyle
  {
    public ButtonStyle(String paramString, int paramInt)
    {
      int[] arrayOfInt = new int[3];
      arrayOfInt[0] = paramInt;
      arrayOfInt[1] = ScrollableTabActivity.this.defaultOffShade;
      arrayOfInt[2] = ScrollableTabActivity.this.defaultOnShade;
      ScrollableTabActivity.this.states.add(arrayOfInt);
      ScrollableTabActivity.this.titleList.add(paramString);
    }
    
    public ButtonStyle(String paramString, int paramInt1, int paramInt2)
    {
      int[] arrayOfInt = { paramInt2, paramInt1 };
      ScrollableTabActivity.this.states.add(arrayOfInt);
      ScrollableTabActivity.this.titleList.add(paramString);
    }
    
    public ButtonStyle(String paramString, int paramInt1, int paramInt2, int paramInt3)
    {
      int[] arrayOfInt = { paramInt1, paramInt2, paramInt3 };
      ScrollableTabActivity.this.states.add(arrayOfInt);
      ScrollableTabActivity.this.titleList.add(paramString);
    }
  }
  
  class CheckedChangeListener
    implements RadioGroup.OnCheckedChangeListener
  {
    private int mNow;
    private boolean oldFlag;
    
    CheckedChangeListener() {}
    
    public void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
    {
      if (this.oldFlag) {
        this.oldFlag = false;
      }
      while (this.mNow == paramInt) {
        return;
      }
      int i = this.mNow;
      this.mNow = paramInt;
      ScrollableTabActivity.ButtonAction localButtonAction = (ScrollableTabActivity.ButtonAction)ScrollableTabActivity.this.buttonActionList.get(paramInt);
      if (!localButtonAction.isHighlight()) {
        ScrollableTabActivity.this.checkNoEvent(Integer.valueOf(i));
      }
      localButtonAction.run();
    }
    
    public void setOldFlag(boolean paramBoolean)
    {
      this.oldFlag = paramBoolean;
    }
    
    public void setmNow(int paramInt)
    {
      this.mNow = paramInt;
    }
  }
  
  private class LayoutListener
    implements ViewTreeObserver.OnGlobalLayoutListener
  {
    public int initHeight;
    private int originalHeigth;
    private View view;
    
    private LayoutListener() {}
    
    public int getOriginalHeigth()
    {
      return this.originalHeigth;
    }
    
    public void init(View paramView)
    {
      this.view = paramView;
      this.initHeight = 0;
    }
    
    public void onGlobalLayout()
    {
      if (ScrollableTabActivity.this.navigationDisplayMode == -1) {
        return;
      }
      int i = this.view.getHeight();
      if (this.initHeight == 0)
      {
        setOriginalHeigth(i);
        this.initHeight = (i - DPIUtil.dip2px(50.0F));
      }
      if (this.initHeight <= i)
      {
        new Handler().postDelayed(new Runnable()
        {
          public void run()
          {
            if (ScrollableTabActivity.this.navigationDisplayMode == -1) {
              return;
            }
            ScrollableTabActivity.this.showNavigation();
          }
        }, 100L);
        return;
      }
      ScrollableTabActivity.this.hideNavigation();
    }
    
    public void setOriginalHeigth(int paramInt)
    {
      this.originalHeigth = paramInt;
    }
  }
  
  public static class Record
  {
    private String component;
    private String id;
    private Intent intent;
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {}
      Record localRecord;
      do
      {
        do
        {
          return true;
          if (paramObject == null) {
            return false;
          }
          if (getClass() != paramObject.getClass()) {
            return false;
          }
          localRecord = (Record)paramObject;
          if (this.component != null) {
            break;
          }
        } while (localRecord.component == null);
        return false;
      } while (this.component.equals(localRecord.component));
      return false;
    }
    
    public String getId()
    {
      return this.id;
    }
    
    public Intent getIntent()
    {
      return this.intent;
    }
    
    public int hashCode()
    {
      if (this.component == null) {}
      for (int i = 0;; i = this.component.hashCode()) {
        return i + 31;
      }
    }
    
    public void setId(String paramString)
    {
      this.id = paramString;
    }
    
    public void setIntent(Intent paramIntent)
    {
      this.intent = paramIntent;
      if (paramIntent != null)
      {
        ComponentName localComponentName = paramIntent.getComponent();
        if (localComponentName != null) {
          this.component = localComponentName.getClassName();
        }
      }
    }
    
    public String toString()
    {
      return "Record [id=" + this.id + ", intent=" + this.intent + ", compentName=" + this.component + "]";
    }
  }
  
  public class TabRunnable
    implements Runnable
  {
    private boolean isOnkeyDown;
    private Intent tabIntent;
    
    private TabRunnable(Intent paramIntent)
    {
      this.tabIntent = paramIntent;
    }
    
    public void run()
    {
      if (this.isOnkeyDown)
      {
        this.tabIntent.putExtra("home_button_down", this.isOnkeyDown);
        this.isOnkeyDown = false;
        ScrollableTabActivity.this.startSubActivity(this.tabIntent);
        this.tabIntent.putExtra("home_button_down", this.isOnkeyDown);
        return;
      }
      ScrollableTabActivity.this.startSubActivity(this.tabIntent);
    }
    
    public void setOnkeyDown(boolean paramBoolean)
    {
      this.isOnkeyDown = paramBoolean;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.frame.ScrollableTabActivity
 * JD-Core Version:    0.7.0.1
 */