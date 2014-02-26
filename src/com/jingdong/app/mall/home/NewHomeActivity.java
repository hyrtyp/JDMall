package com.jingdong.app.mall.home;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.ColorDrawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ScrollView;
import android.widget.TextView;
import com.jingdong.app.mall.MainFrameActivity;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.amHelper.AmHelper;
import com.jingdong.app.mall.barcode.BarcodeActivity;
import com.jingdong.app.mall.more.SearchActivity;
import com.jingdong.app.mall.personel.PersonelActivity;
import com.jingdong.app.mall.plug.PlugManager;
import com.jingdong.app.mall.product.ProductListActivity;
import com.jingdong.app.mall.search.CameraPurchaseActivity;
import com.jingdong.app.mall.shopping.CameraActivity;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.LoginUser;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.app.mall.utils.ui.PullRefreshLayout;
import com.jingdong.app.mall.utils.ui.PullRefreshLayout.OnPullListener;
import com.jingdong.app.mall.utils.ui.PullRefreshLayout.OnPullStateListener;
import com.jingdong.app.mall.utils.ui.view.CarouselFigureView;
import com.jingdong.app.mall.utils.ui.view.HomeFloorModeView1;
import com.jingdong.app.mall.utils.ui.view.HomeFloorModeView2;
import com.jingdong.app.mall.utils.ui.view.HomeFloorModeView3;
import com.jingdong.app.mall.utils.ui.view.HomeFloorModeView4;
import com.jingdong.app.mall.utils.ui.view.HomeFloorModeView5;
import com.jingdong.app.mall.utils.ui.view.HomeIconView;
import com.jingdong.app.mall.utils.ui.view.HomePanicByView;
import com.jingdong.common.database.table.SearchHistoryTable;
import com.jingdong.common.entity.HomeFloorModel;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.login.LoginUserBase.LoginListener;
import com.jingdong.common.plug.MergeSwitcher;
import com.jingdong.common.ui.CameraUtils;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.FormatUtils;
import com.jingdong.common.utils.GlobalInitialization;
import com.jingdong.common.utils.GlobalInitialization.ConfigLoadedListener;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.HttpGroup.OnGroupCompleteListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.Log;
import com.jingdong.common.utils.Md5Encrypt;
import com.jingdong.common.utils.SDKUtils;
import com.jingdong.common.utils.ToastUtils;
import com.jingdong.common.utils.UseCacheHttpGroupUtil;
import com.jingdong.lib.zxing.client.android.CaptureActivity;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

public class NewHomeActivity
  extends MyActivity
  implements LoginUserBase.LoginListener, PullRefreshLayout.OnPullListener, PullRefreshLayout.OnPullStateListener
{
  public static final String KEY_IS_FROM_HOME = "isFromHome";
  public static final String LOTTERY = "lottery";
  public static final String PHONE_CHONGZHI = "chongzhi";
  public static final String TUAN_SHOPPING = "tuan";
  private static final int VOICE_RECOGNITION_REQUEST_CODE = 1234;
  public static String currentTime = null;
  private final String TAG = NewHomeActivity.class.getSimpleName();
  private AutoCompleteTextView acEditView;
  private AlertDialog.Builder dialogBuilder;
  private HashMap<String, View> floorMap = new HashMap();
  private LinearLayout homeContent;
  private final int homeIconHeight = 185 * DPIUtil.getHeight() / 1280;
  private View homeLayout = null;
  private HomeIconView iconView;
  private AlertDialog listDialog;
  private ClickListener listener = new ClickListener(null);
  private View loadingFail;
  private View mActionImage;
  private TextView mActionText;
  private boolean mInLoading = false;
  private View mProgress;
  private PullRefreshLayout mPullLayout;
  private Animation mRotateDownAnimation;
  private Animation mRotateUpAnimation;
  private TextView mTimeText;
  private UseCacheHttpGroupUtil modelGroupUtil = new UseCacheHttpGroupUtil();
  private HttpGroup pullRefreshHttpGroup;
  private PopupWindow quicklyBarPopup;
  private ScrollView scrollView;
  private final int switcherHeight = 375 * DPIUtil.getWidth() / 1000;
  
  private void autoComplete()
  {
    resolveAutoComplete(this.acEditView);
    ((ImageView)this.homeLayout.findViewById(2131493031)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (NewHomeActivity.this.quicklyBarPopup != null)
        {
          if (NewHomeActivity.this.quicklyBarPopup.isShowing()) {
            NewHomeActivity.this.quicklyBarPopup.dismiss();
          }
        }
        else {
          return;
        }
        NewHomeActivity.this.quicklyBarPopup.showAsDropDown(paramAnonymousView, 0, DPIUtil.dip2px(5.0F));
      }
    });
  }
  
  private void dataLoaded()
  {
    if (this.mInLoading)
    {
      this.mInLoading = false;
      this.mPullLayout.setEnableStopInActionView(false);
      this.mPullLayout.hideActionView();
      this.mActionImage.setVisibility(0);
      this.mProgress.setVisibility(8);
      if (!this.mPullLayout.isPullOut()) {
        break label120;
      }
      this.mActionText.setText(2131166359);
      this.mActionImage.clearAnimation();
      this.mActionImage.startAnimation(this.mRotateUpAnimation);
    }
    for (;;)
    {
      TextView localTextView = this.mTimeText;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = FormatUtils.formatDate(new Date(System.currentTimeMillis()));
      localTextView.setText(getString(2131166361, arrayOfObject));
      return;
      label120:
      this.mActionText.setText(2131166358);
    }
  }
  
  private void dismissQuicklyBarPopup()
  {
    if ((this.quicklyBarPopup != null) && (this.quicklyBarPopup.isShowing())) {
      this.quicklyBarPopup.dismiss();
    }
  }
  
  private void gotoSearch()
  {
    gotoSearch(null, null);
  }
  
  private void gotoSearch(String paramString1, String paramString2)
  {
    try
    {
      Intent localIntent = new Intent(this, SearchActivity.class);
      if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString2))) {
        localIntent.putExtra(paramString1, paramString2);
      }
      localIntent.putExtra("isFromHome", true);
      String str1 = this.acEditView.getHint().toString();
      String str2 = this.acEditView.getText().toString();
      if (!TextUtils.isEmpty(str1)) {
        localIntent.putExtra("hotword", str1);
      }
      if (!TextUtils.isEmpty(str2)) {
        localIntent.putExtra("keyword", str1);
      }
      startActivityForResult(localIntent, 272);
      return;
    }
    catch (Exception localException) {}
  }
  
  private void initData()
  {
    makePullRefreshHttpGroup();
    this.modelGroupUtil.setInterval(200);
    this.modelGroupUtil.addUseCache(getHttpGroupaAsynPool(), "indexManager", "", new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        if (paramAnonymousHttpResponse.getJSONObject() != null)
        {
          JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
          JSONArrayPoxy localJSONArrayPoxy = localJSONObjectProxy.getJSONArrayOrNull("floorTemps");
          NewHomeActivity.currentTime = localJSONObjectProxy.getStringOrNull("currentTime");
          final ArrayList localArrayList = HomeFloorModel.toList(localJSONArrayPoxy);
          final boolean bool = NewHomeActivity.this.modelGroupUtil.isCacheBack();
          NewHomeActivity.this.post(new Runnable()
          {
            public void run()
            {
              NewHomeActivity.this.loadingFail.setVisibility(8);
              NewHomeActivity.this.refreshFloorView(localArrayList, bool);
            }
          });
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        NewHomeActivity.currentTime = null;
        NewHomeActivity.this.post(new Runnable()
        {
          public void run()
          {
            if (NewHomeActivity.this.homeContent.getChildCount() > 1) {
              ToastUtils.showToast(NewHomeActivity.this, NewHomeActivity.this.getString(2131165614));
            }
            for (;;)
            {
              NewHomeActivity.this.dataLoaded();
              return;
              NewHomeActivity.this.loadingFail.setVisibility(0);
              NewHomeActivity.this.homeContent.removeAllViews();
            }
          }
        });
      }
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    });
  }
  
  private void initPullRefreshView()
  {
    this.mRotateUpAnimation = AnimationUtils.loadAnimation(this, 2130968587);
    this.mRotateDownAnimation = AnimationUtils.loadAnimation(this, 2130968586);
    this.mInLoading = true;
    this.mPullLayout = ((PullRefreshLayout)findViewById(2131493504));
    this.mPullLayout.setOnActionPullListener(this);
    this.mPullLayout.setOnPullStateChangeListener(this);
    this.mPullLayout.setEnableStopInActionView(true);
    this.mProgress = findViewById(16908301);
    this.mProgress.setVisibility(0);
    this.mActionImage = findViewById(16908294);
    this.mActionImage.setVisibility(8);
    this.mActionText = ((TextView)findViewById(2131494359));
    this.mActionText.setText(2131166360);
    this.mTimeText = ((TextView)findViewById(2131494360));
  }
  
  private void initQuicklyBar()
  {
    if (this.quicklyBarPopup == null) {
      this.quicklyBarPopup = getPopupWindow();
    }
    final View localView = ImageUtil.inflate(2130903080, null);
    if (localView != null)
    {
      if (!paiSwitch(CommonUtil.getJdSharedPreferences().getString("paiswitch", ""), localView.findViewById(2131493149))) {
        GlobalInitialization.getGlobalInitializationInstance().addConfigLoadedListener(new GlobalInitialization.ConfigLoadedListener()
        {
          public void onLoaded()
          {
            NewHomeActivity.this.post(new Runnable()
            {
              public void run()
              {
                NewHomeActivity.this.paiSwitch(CommonUtil.getJdSharedPreferences().getString("paiswitch", "0"), this.val$searchBar.findViewById(2131493149));
              }
            });
          }
        });
      }
      localView.findViewById(2131493148).setOnClickListener(this.listener);
      localView.findViewById(2131493151).setOnClickListener(this.listener);
      this.homeLayout.findViewById(2131493030).setOnClickListener(this.listener);
      this.quicklyBarPopup.setContentView(localView);
    }
  }
  
  private void initSearchComponent()
  {
    autoComplete();
  }
  
  private void initView()
  {
    this.acEditView = ((AutoCompleteTextView)this.homeLayout.findViewById(2131493029));
    this.scrollView = ((ScrollView)this.homeLayout.findViewById(2131493885));
    this.dialogBuilder = new AlertDialog.Builder(this);
    this.homeContent = ((LinearLayout)this.homeLayout.findViewById(2131493508));
    this.loadingFail = this.homeLayout.findViewById(2131493510);
    initPullRefreshView();
    initSearchComponent();
    initQuicklyBar();
  }
  
  private void makePullRefreshHttpGroup()
  {
    this.pullRefreshHttpGroup = getHttpGroupaAsynPool();
    this.pullRefreshHttpGroup.setOnGroupCompleteListener(new HttpGroup.OnGroupCompleteListener()
    {
      public void onComplete()
      {
        NewHomeActivity.this.post(new Runnable()
        {
          public void run()
          {
            NewHomeActivity.this.dataLoaded();
          }
        });
      }
    });
  }
  
  private boolean paiSwitch(String paramString, View paramView)
  {
    if (TextUtils.isEmpty(paramString)) {
      return false;
    }
    if (paramString.equals("1"))
    {
      paramView.setVisibility(0);
      paramView.setOnClickListener(this.listener);
    }
    for (;;)
    {
      return true;
      if (paramString.equals("0")) {
        paramView.setVisibility(8);
      }
    }
  }
  
  private void pullRefreshData()
  {
    new Thread()
    {
      public void run()
      {
        NewHomeActivity.this.initData();
      }
    }.start();
  }
  
  private void refreshFloorView(ArrayList<HomeFloorModel> paramArrayList, boolean paramBoolean)
  {
    if (paramArrayList != null) {}
    for (;;)
    {
      int i;
      HomeFloorModel localHomeFloorModel;
      Object localObject2;
      try
      {
        if (paramArrayList.size() < 1) {
          dataLoaded();
        }
        this.homeContent.removeAllViews();
        i = 0;
        int j = paramArrayList.size();
        if (i >= j) {
          return;
        }
        localHomeFloorModel = (HomeFloorModel)paramArrayList.get(i);
        String str = Md5Encrypt.md5(localHomeFloorModel.getFunctionId() + localHomeFloorModel.getParams());
        localObject2 = (View)this.floorMap.get(str);
        if ("201".equals(localHomeFloorModel.getType()))
        {
          if ((localObject2 == null) || (!(localObject2 instanceof CarouselFigureView))) {
            localObject2 = new CarouselFigureView(getBaseContext());
          }
          ((CarouselFigureView)localObject2).init(this, this.pullRefreshHttpGroup, localHomeFloorModel, this.scrollView, this.switcherHeight, paramBoolean);
          this.floorMap.put(str, localObject2);
          if (i == -1 + paramArrayList.size())
          {
            ViewGroup.LayoutParams localLayoutParams = ((View)localObject2).getLayoutParams();
            if ((localLayoutParams != null) && ((localLayoutParams instanceof ViewGroup.MarginLayoutParams))) {
              ((ViewGroup.MarginLayoutParams)localLayoutParams).bottomMargin = 0;
            }
          }
          if (localObject2 == null) {
            break label667;
          }
          this.homeContent.addView((View)localObject2);
          break label667;
        }
        if ("101".equals(localHomeFloorModel.getType()))
        {
          if ((localObject2 == null) || (!(localObject2 instanceof HomeIconView))) {
            localObject2 = new HomeIconView(getBaseContext());
          }
          this.iconView = ((HomeIconView)localObject2);
          ((HomeIconView)localObject2).init(this, localHomeFloorModel, this.pullRefreshHttpGroup, this.homeIconHeight, paramBoolean);
          continue;
        }
        if (!"301".equals(localHomeFloorModel.getType())) {
          break label372;
        }
      }
      finally {}
      if ((localObject2 == null) || (!(localObject2 instanceof HomePanicByView))) {
        localObject2 = new HomePanicByView(getBaseContext());
      }
      label667:
      if (!paramBoolean)
      {
        ((HomePanicByView)localObject2).init(this, localHomeFloorModel, this.pullRefreshHttpGroup);
        continue;
        label372:
        if ("401".equals(localHomeFloorModel.getType()))
        {
          if ((localObject2 == null) || (!(localObject2 instanceof HomeFloorModeView1))) {
            localObject2 = new HomeFloorModeView1(getBaseContext());
          }
          ((HomeFloorModeView1)localObject2).init(this, localHomeFloorModel, this.pullRefreshHttpGroup, paramBoolean);
        }
        else if ("402".equals(localHomeFloorModel.getType()))
        {
          if ((localObject2 == null) || (!(localObject2 instanceof HomeFloorModeView2))) {
            localObject2 = new HomeFloorModeView2(getBaseContext());
          }
          ((HomeFloorModeView2)localObject2).init(this, localHomeFloorModel, this.pullRefreshHttpGroup, paramBoolean);
        }
        else if ("403".equals(localHomeFloorModel.getType()))
        {
          if ((localObject2 == null) || (!(localObject2 instanceof HomeFloorModeView3))) {
            localObject2 = new HomeFloorModeView3(getBaseContext());
          }
          ((HomeFloorModeView3)localObject2).init(this, localHomeFloorModel, this.pullRefreshHttpGroup, paramBoolean);
        }
        else if ("404".equals(localHomeFloorModel.getType()))
        {
          if ((localObject2 == null) || (!(localObject2 instanceof HomeFloorModeView4))) {
            localObject2 = new HomeFloorModeView4(getBaseContext());
          }
          ((HomeFloorModeView4)localObject2).init(this, localHomeFloorModel, this.pullRefreshHttpGroup, paramBoolean);
        }
        else if ("405".equals(localHomeFloorModel.getType()))
        {
          if ((localObject2 == null) || (!(localObject2 instanceof HomeFloorModeView5))) {
            localObject2 = new HomeFloorModeView5(getBaseContext());
          }
          ((HomeFloorModeView5)localObject2).init(this, localHomeFloorModel, this.pullRefreshHttpGroup, paramBoolean);
          continue;
          i++;
        }
      }
    }
  }
  
  private void resolveAutoComplete(final AutoCompleteTextView paramAutoCompleteTextView)
  {
    paramAutoCompleteTextView.setThreshold(1);
    paramAutoCompleteTextView.setOnKeyListener(new View.OnKeyListener()
    {
      public boolean onKey(View paramAnonymousView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        switch (paramAnonymousInt)
        {
        default: 
          return false;
        }
        NewHomeActivity.this.searchSubmit(paramAutoCompleteTextView.getText().toString());
        return true;
      }
    });
    paramAutoCompleteTextView.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        if (paramAnonymousMotionEvent.getAction() == 0) {
          NewHomeActivity.this.gotoSearch();
        }
        return false;
      }
    });
  }
  
  private void searchSubmit(String paramString)
  {
    searchSubmit(paramString, false);
  }
  
  private void searchSubmit(String paramString, boolean paramBoolean)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    SearchHistoryTable.saveSearchHistory(paramString);
    ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(this.acEditView.getWindowToken(), 0);
    Intent localIntent = new Intent(this, SearchActivity.class);
    Bundle localBundle = new Bundle();
    localBundle.putString("keyWord", paramString);
    localBundle.putString("searchway", "text");
    localIntent.putExtra("isFromHome", true);
    localIntent.putExtras(localBundle);
    if (paramBoolean) {}
    for (String str = "hotKeyword";; str = "search")
    {
      localIntent.putExtra("source", new SourceEntity(str, paramString));
      startActivityInFrame(localIntent);
      return;
    }
  }
  
  public boolean checkCameraHardware(Context paramContext)
  {
    if (SDKUtils.isSDKVersionMoreThan21()) {
      return CameraUtils.checkCameraHardware(paramContext);
    }
    return true;
  }
  
  public PopupWindow getPopupWindow()
  {
    int i = 140 * DPIUtil.getHeight() / 1280;
    PopupWindow localPopupWindow = new PopupWindow(this);
    localPopupWindow.setWidth(-1);
    localPopupWindow.setHeight(i);
    localPopupWindow.setBackgroundDrawable(new ColorDrawable(-868335796));
    localPopupWindow.setFocusable(true);
    localPopupWindow.setAnimationStyle(2131230773);
    localPopupWindow.update();
    return localPopupWindow;
  }
  
  public void loginCompletedNotify()
  {
    post(new Runnable()
    {
      public void run()
      {
        ((MainFrameActivity)NewHomeActivity.this.getParent()).checkTargetActivity();
      }
    });
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((272 == paramInt1) && (-1 == paramInt2))
    {
      String str1 = paramIntent.getStringExtra("type");
      if ((!TextUtils.isEmpty(str1)) && (str1.equals("BarcodeActivity.class")))
      {
        startActivity(new Intent(this, BarcodeActivity.class));
        return;
      }
      Intent localIntent = new Intent(this, ProductListActivity.class);
      Bundle localBundle = paramIntent.getExtras();
      localIntent.putExtras(localBundle);
      boolean bool = paramIntent.getBooleanExtra("isHotkeyword", false);
      localIntent.putExtra("sortKey", 5);
      if (bool) {}
      for (String str2 = "hotKeyword";; str2 = "search")
      {
        localIntent.putExtra("source", new SourceEntity(str2, localBundle.getString("keyWord")));
        startActivity(localIntent);
        return;
      }
    }
    ArrayList localArrayList;
    final String[] arrayOfString;
    if ((paramInt1 == 1234) && (paramInt2 == -1))
    {
      localArrayList = paramIntent.getStringArrayListExtra("android.speech.extra.RESULTS");
      arrayOfString = new String[localArrayList.size()];
    }
    for (int i = 0;; i++)
    {
      if (i >= localArrayList.size())
      {
        this.dialogBuilder.setTitle(2131165625);
        this.dialogBuilder.setItems(arrayOfString, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            Log.d("voice", "content:" + paramAnonymousInt + " " + arrayOfString[paramAnonymousInt] + " ");
            Intent localIntent = new Intent(NewHomeActivity.this, ProductListActivity.class);
            Bundle localBundle = new Bundle();
            String str = arrayOfString[paramAnonymousInt];
            localBundle.putString("keyWord", str);
            localBundle.putString("searchway", "voice");
            localIntent.putExtra("sortKey", 5);
            localIntent.putExtras(localBundle);
            localIntent.putExtra("source", new SourceEntity("hotKeyword", str));
            StartActivityUtils.startProductListActivity(NewHomeActivity.this, localIntent);
            NewHomeActivity.this.listDialog.dismiss();
          }
        });
        post(new Runnable()
        {
          public void run()
          {
            NewHomeActivity.this.listDialog = NewHomeActivity.this.dialogBuilder.show();
          }
        });
        super.onActivityResult(paramInt1, paramInt2, paramIntent);
        return;
      }
      arrayOfString[i] = ((String)localArrayList.get(i));
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.homeLayout = ImageUtil.inflate(2130903210, null);
    setContentView(this.homeLayout);
    initView();
    initData();
    int i = getIntent().getIntExtra("moduleId", -1);
    LoginUser.getInstance().homeAutoLogin(this, this, i);
    if (Build.VERSION.SDK_INT <= 7) {
      CommonUtil.setPlugOn(false);
    }
    if (MergeSwitcher.isPlugOn()) {
      PlugManager.getInstance().startPlugService(this);
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
  }
  
  public void onHide() {}
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      MainFrameActivity localMainFrameActivity = MyApplication.getInstance().getMainFrameActivity();
      if ((localMainFrameActivity != null) && (!localMainFrameActivity.removeGuideView()))
      {
        MyApplication.exitControl();
        return true;
      }
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public void onPullIn()
  {
    if (!this.mInLoading)
    {
      this.mActionText.setText(2131166358);
      this.mActionImage.clearAnimation();
      this.mActionImage.startAnimation(this.mRotateDownAnimation);
    }
  }
  
  public void onPullOut()
  {
    if (!this.mInLoading)
    {
      this.mActionText.setText(2131166359);
      this.mActionImage.clearAnimation();
      this.mActionImage.startAnimation(this.mRotateUpAnimation);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    if (AmHelper.isGoPersonel)
    {
      AmHelper.isGoPersonel = false;
      Intent localIntent = new Intent(this, PersonelActivity.class);
      localIntent.putExtra("com.360buy:singleInstanceFlag", true);
      localIntent.putExtra("com.360buy:navigationFlag", true);
      localIntent.putExtra("com.360buy:navigationId", 4);
      localIntent.putExtra("com.360buy:useHistoryFlag", true);
      startActivityInFrame(localIntent);
      return;
    }
    if (getRequestedOrientation() != 1) {
      setRequestedOrientation(1);
    }
    this.acEditView.setVisibility(0);
    if (this.iconView != null) {
      this.iconView.resetPopView();
    }
    post(new Runnable()
    {
      public void run()
      {
        if (NewHomeActivity.this.homeLayout != null) {
          NewHomeActivity.this.homeLayout.requestLayout();
        }
      }
    });
  }
  
  public void onShow() {}
  
  public void onSnapToTop()
  {
    if (!this.mInLoading)
    {
      this.mInLoading = true;
      this.mPullLayout.setEnableStopInActionView(true);
      this.mActionImage.clearAnimation();
      this.mActionImage.setVisibility(8);
      this.mProgress.setVisibility(0);
      this.mActionText.setText(2131166360);
      pullRefreshData();
    }
  }
  
  private class ClickListener
    implements View.OnClickListener
  {
    private ClickListener() {}
    
    public void onClick(View paramView)
    {
      paramView.setPressed(false);
      switch (paramView.getId())
      {
      }
      do
      {
        do
        {
          do
          {
            return;
            NewHomeActivity.this.gotoSearch("type", "voice");
            return;
            NewHomeActivity.this.dismissQuicklyBarPopup();
          } while (!NewHomeActivity.this.checkCameraHardware(NewHomeActivity.this.getApplicationContext()));
          NewHomeActivity.this.startActivity(new Intent(NewHomeActivity.this, CaptureActivity.class));
          return;
          NewHomeActivity.this.dismissQuicklyBarPopup();
        } while (!NewHomeActivity.this.checkCameraHardware(NewHomeActivity.this.getApplicationContext()));
        NewHomeActivity.this.startActivity(new Intent(NewHomeActivity.this, CameraPurchaseActivity.class));
        return;
        NewHomeActivity.this.dismissQuicklyBarPopup();
      } while (!NewHomeActivity.this.checkCameraHardware(NewHomeActivity.this.getApplicationContext()));
      Intent localIntent = new Intent(NewHomeActivity.this, CameraActivity.class);
      localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
      NewHomeActivity.this.startActivity(localIntent);
    }
  }
  
  public static abstract interface OnExpandableListener
  {
    public abstract void onHide(View paramView1, View paramView2, String paramString);
    
    public abstract void onLoadData(View paramView1, View paramView2, String paramString);
    
    public abstract void onLoadIcon(View paramView1, View paramView2, String paramString);
    
    public abstract void onShow(View paramView1, View paramView2, String paramString);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.home.NewHomeActivity
 * JD-Core Version:    0.7.0.1
 */