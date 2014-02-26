package com.jingdong.app.mall.utils;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.Toast;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.home.NewHomeActivity;
import com.jingdong.app.mall.plug.PlugManager;
import com.jingdong.app.mall.plug.framework.dynamicloader.PlugClassLoader;
import com.jingdong.app.mall.plug.framework.dynamicloader.PlugResources;
import com.jingdong.app.mall.plug.framework.plug.PlugItem;
import com.jingdong.app.mall.utils.frame.ScrollableTabActivity;
import com.jingdong.common.frame.IDestroyListener;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.frame.IPauseListener;
import com.jingdong.common.frame.IResumeListener;
import com.jingdong.common.plug.MergeSwitcher;
import com.jingdong.common.utils.CommonUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpGroupSetting;
import com.jingdong.common.utils.HttpGroup.HttpGroupaAsynPool;
import com.jingdong.common.utils.NewJLogUtil;
import com.jingdong.common.utils.cache.GlobalImageCache;
import com.novoda.imageloader.core.cache.LruBitmapCache;
import java.io.File;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class MyActivity
  extends FragmentActivity
  implements IMyActivity
{
  private static final String TAG = "MyActivity";
  private static AlertDialog.Builder hintDialogBuilder;
  private AssetManager assetManager;
  private FragmentPlugLoader classLoader;
  private ArrayList<IDestroyListener> destroyListenerList = new ArrayList();
  private int guideResourceId = 0;
  private Handler handler;
  private FrameLayout imageViewLayout;
  private boolean isCanResend = true;
  private Thread mUiThread;
  private PlugResources myResources;
  private ArrayList<IPauseListener> pauseListenerList = new ArrayList();
  private Resources resources;
  private ArrayList<IResumeListener> resumeListenerList = new ArrayList();
  private ViewGroup rootView;
  private SharedPreferences sharedPreferences;
  private Resources.Theme theme;
  
  private static void catchToastTip(Activity paramActivity, Intent paramIntent)
  {
    String str1 = paramActivity.getString(2131166231);
    if (TextUtils.equals(paramIntent.getAction(), "android.intent.action.VIEW"))
    {
      String str3 = paramIntent.getScheme();
      if ((str3 != null) && ((str3.equals("http")) || (str3.equals("https")))) {
        str1 = paramActivity.getString(2131166228);
      }
    }
    for (;;)
    {
      final String str2 = str1;
      MyActivity localMyActivity = MyApplication.getInstance().getCurrentMyActivity();
      if (localMyActivity != null) {
        localMyActivity.post(new Runnable()
        {
          public void run()
          {
            Toast.makeText(MyActivity.this, str2, 6000).show();
          }
        });
      }
      return;
      if (TextUtils.equals(paramIntent.getAction(), "android.intent.action.GET_CONTENT")) {
        str1 = paramActivity.getString(2131166230);
      } else if (TextUtils.equals(paramIntent.getAction(), "android.media.action.IMAGE_CAPTURE")) {
        str1 = paramActivity.getString(2131166229);
      }
    }
  }
  
  public static MyActivity getCurrentMyActivity()
  {
    return MyApplication.getInstance().getCurrentMyActivity();
  }
  
  private Thread getUiThread()
  {
    return this.mUiThread;
  }
  
  private void startActivityForResultNoExceptionForFragment(Fragment paramFragment, Intent paramIntent, int paramInt)
  {
    if ((paramIntent == null) || (paramFragment == null)) {
      return;
    }
    try
    {
      paramFragment.startActivityForResult(paramIntent, paramInt);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      catchToastTip(this, paramIntent);
      return;
    }
    catch (Exception localException) {}
  }
  
  public void addDestroyListener(IDestroyListener paramIDestroyListener)
  {
    if (this.destroyListenerList != null) {
      this.destroyListenerList.add(paramIDestroyListener);
    }
  }
  
  protected void addGuideImage(ViewGroup paramViewGroup)
  {
    this.rootView = paramViewGroup;
    if (this.rootView == null) {}
    while (this.guideResourceId == 0) {
      return;
    }
    this.imageViewLayout = new FrameLayout(this);
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-2, -2);
    localLayoutParams.gravity = 48;
    localLayoutParams.topMargin = getResources().getDimensionPixelOffset(2131427440);
    ImageView localImageView = new ImageView(this);
    localImageView.setImageResource(this.guideResourceId);
    this.imageViewLayout.addView(localImageView, localLayoutParams);
    this.imageViewLayout.setBackgroundColor(getResources().getColor(2131296341));
    this.imageViewLayout.getBackground().setAlpha(200);
    CommonUtil.setIsGuided(getClass().getName());
    this.imageViewLayout.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        switch (paramAnonymousMotionEvent.getAction())
        {
        }
        for (;;)
        {
          return true;
          MyActivity.this.removeGuideView();
        }
      }
    });
    this.rootView.addView(this.imageViewLayout, new ViewGroup.LayoutParams(-1, -1));
    this.rootView.invalidate();
  }
  
  protected void addGuideImage(ViewGroup paramViewGroup, int paramInt1, int paramInt2, int paramInt3)
  {
    this.rootView = paramViewGroup;
    if (this.rootView == null) {}
    while (this.guideResourceId == 0) {
      return;
    }
    this.imageViewLayout = new FrameLayout(this);
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(paramInt2, paramInt3);
    localLayoutParams.gravity = paramInt1;
    ImageView localImageView = new ImageView(this);
    localImageView.setImageResource(this.guideResourceId);
    this.imageViewLayout.addView(localImageView, localLayoutParams);
    this.imageViewLayout.setBackgroundColor(getResources().getColor(2131296341));
    this.imageViewLayout.getBackground().setAlpha(200);
    CommonUtil.setIsGuided(getClass().getName());
    this.imageViewLayout.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        switch (paramAnonymousMotionEvent.getAction())
        {
        }
        for (;;)
        {
          return true;
          MyActivity.this.removeGuideView();
        }
      }
    });
    this.rootView.addView(this.imageViewLayout, new ViewGroup.LayoutParams(-1, -1));
    this.rootView.invalidate();
  }
  
  public void addPauseListener(IPauseListener paramIPauseListener)
  {
    if (this.pauseListenerList != null) {
      this.pauseListenerList.add(paramIPauseListener);
    }
  }
  
  public void addResumeListener(IResumeListener paramIResumeListener)
  {
    if (this.resumeListenerList != null) {
      this.resumeListenerList.add(paramIResumeListener);
    }
  }
  
  public void alert(int paramInt)
  {
    if (hintDialogBuilder == null)
    {
      hintDialogBuilder = new AlertDialog.Builder(this);
      hintDialogBuilder.setTitle(2131165609);
      hintDialogBuilder.setMessage(paramInt);
      hintDialogBuilder.setPositiveButton(2131165517, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.dismiss();
        }
      });
    }
    hintDialogBuilder.show();
  }
  
  public void attemptRunOnUiThread(Runnable paramRunnable)
  {
    if (Thread.currentThread() != getUiThread())
    {
      post(paramRunnable);
      return;
    }
    paramRunnable.run();
  }
  
  public void canNotResend()
  {
    this.isCanResend = false;
  }
  
  public HashMap<String, Object> createTaskId(Intent paramIntent)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("className", paramIntent.getComponent().getClassName());
    return localHashMap;
  }
  
  public void finish()
  {
    hideSoftInput();
    super.finish();
  }
  
  public AssetManager getAssets()
  {
    if (MergeSwitcher.isPlugOn())
    {
      if (this.assetManager == null) {
        return super.getAssets();
      }
      return this.assetManager;
    }
    return super.getAssets();
  }
  
  public boolean getBooleanFromPreference(String paramString)
  {
    return this.sharedPreferences.getBoolean(paramString, false);
  }
  
  public boolean getBooleanFromPreference(String paramString, boolean paramBoolean)
  {
    return this.sharedPreferences.getBoolean(paramString, paramBoolean);
  }
  
  public ClassLoader getClassLoader()
  {
    if (this.classLoader == null) {
      this.classLoader = new FragmentPlugLoader(super.getClassLoader());
    }
    return this.classLoader;
  }
  
  public Handler getHandler()
  {
    return this.handler;
  }
  
  public HttpGroup getHttpGroupaAsynPool()
  {
    return getHttpGroupaAsynPool(1000);
  }
  
  public HttpGroup getHttpGroupaAsynPool(int paramInt)
  {
    HttpGroup.HttpGroupSetting localHttpGroupSetting = new HttpGroup.HttpGroupSetting();
    localHttpGroupSetting.setMyActivity(this);
    localHttpGroupSetting.setType(paramInt);
    return getHttpGroupaAsynPool(localHttpGroupSetting);
  }
  
  public HttpGroup getHttpGroupaAsynPool(HttpGroup.HttpGroupSetting paramHttpGroupSetting)
  {
    HttpGroup.HttpGroupaAsynPool localHttpGroupaAsynPool = new HttpGroup.HttpGroupaAsynPool(paramHttpGroupSetting);
    addDestroyListener(localHttpGroupaAsynPool);
    return localHttpGroupaAsynPool;
  }
  
  public PlugResources getOverrideResources()
  {
    return this.myResources;
  }
  
  public Map<String, String> getParams()
  {
    return null;
  }
  
  public String getParamsString()
  {
    Map localMap = getParams();
    if (localMap == null) {
      return "";
    }
    return localMap.toString();
  }
  
  public Resources getResources()
  {
    if (MergeSwitcher.isPlugOn())
    {
      if (this.resources == null) {
        return super.getResources();
      }
      return this.resources;
    }
    return super.getResources();
  }
  
  public String getStringFromPreference(String paramString)
  {
    return this.sharedPreferences.getString(paramString, "");
  }
  
  public String getStringFromPreference(String paramString1, String paramString2)
  {
    return this.sharedPreferences.getString(paramString1, paramString2);
  }
  
  public Resources.Theme getTheme()
  {
    if (MergeSwitcher.isPlugOn())
    {
      if (this.theme != null) {
        return this.theme;
      }
      return super.getTheme();
    }
    return super.getTheme();
  }
  
  public Activity getThisActivity()
  {
    return this;
  }
  
  public void hideSoftInput()
  {
    ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(getWindow().getDecorView().getWindowToken(), 0);
  }
  
  public void noShowAgain()
  {
    ScrollableTabActivity localScrollableTabActivity = (ScrollableTabActivity)getParent();
    if (localScrollableTabActivity != null) {
      localScrollableTabActivity.markJump();
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 1001) && (paramInt2 == 0)) {
      MyApplication.exitAll();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    MyApplication.getInstance().setCurrentMyActivity(this);
    setRequestedOrientation(1);
    this.mUiThread = Thread.currentThread();
    ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(getWindow().getDecorView().getWindowToken(), 0);
    this.handler = new Handler();
    super.onCreate(paramBundle);
    if (ScrollableTabActivity.isSingleInstance(getIntent())) {
      this.destroyListenerList = null;
    }
    this.sharedPreferences = CommonUtil.getJdSharedPreferences();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    Iterator localIterator;
    if (this.destroyListenerList != null) {
      localIterator = this.destroyListenerList.iterator();
    }
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        this.destroyListenerList = null;
        this.pauseListenerList = null;
        this.resumeListenerList = null;
        return;
      }
      ((IDestroyListener)localIterator.next()).onDestroy();
    }
  }
  
  public void onHideModal() {}
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (removeGuideView()) {
        return true;
      }
      if ((getParent() instanceof ScrollableTabActivity)) {
        ((ScrollableTabActivity)getParent()).clearJump();
      }
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onPause()
  {
    super.onPause();
    NewJLogUtil.doOnPause(getBaseContext());
    Iterator localIterator = this.pauseListenerList.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ((IPauseListener)localIterator.next()).onPause();
    }
  }
  
  protected void onRestart()
  {
    super.onRestart();
  }
  
  protected void onResume()
  {
    super.onResume();
    MyApplication.getInstance().setCurrentMyActivity(this);
    NewJLogUtil.doOnResume(getBaseContext());
    NewJLogUtil.onJMAEvent(getBaseContext(), getClass().getName(), getParamsString());
    int i;
    int k;
    do
    {
      try
      {
        this.isCanResend = true;
        i = this.resumeListenerList.size();
        j = 0;
        k = 0;
      }
      catch (Exception localException)
      {
        int j;
        int m;
        int n;
        return;
      }
      m = this.resumeListenerList.size();
      ((IResumeListener)this.resumeListenerList.get(j)).onResume();
      if (this.resumeListenerList == null) {
        break;
      }
      n = this.resumeListenerList.size();
      if (m == n) {
        j++;
      }
      k++;
    } while (k < i);
  }
  
  public boolean onSearchRequested()
  {
    if (((getParent() instanceof ScrollableTabActivity)) && (!((ScrollableTabActivity)getParent()).getCurrentActivity().getClass().getSimpleName().equals(NewHomeActivity.class.getSimpleName()))) {
      ((ScrollableTabActivity)getParent()).onSearchRequested();
    }
    return true;
  }
  
  public void onShowModal() {}
  
  protected void onStop()
  {
    super.onStop();
  }
  
  public void post(Runnable paramRunnable)
  {
    if (isFinishing()) {
      return;
    }
    this.handler.post(paramRunnable);
  }
  
  public void post(Runnable paramRunnable, int paramInt)
  {
    if (isFinishing()) {
      return;
    }
    this.handler.postDelayed(paramRunnable, paramInt);
  }
  
  public void putBooleanToPreference(String paramString, Boolean paramBoolean)
  {
    this.sharedPreferences.edit().putBoolean(paramString, paramBoolean.booleanValue()).commit();
  }
  
  public void putStringToPreference(String paramString1, String paramString2)
  {
    this.sharedPreferences.edit().putString(paramString1, paramString2).commit();
  }
  
  public void removeAllHistory()
  {
    if ((getParent() != null) && ((getParent() instanceof ScrollableTabActivity))) {
      ((ScrollableTabActivity)getParent()).removeAllRecords(true);
    }
  }
  
  public void removeAllSingleHistory()
  {
    if ((getParent() != null) && ((getParent() instanceof ScrollableTabActivity))) {
      ((ScrollableTabActivity)getParent()).removeAllSingleInstances();
    }
  }
  
  public void removeDestroyListener(IDestroyListener paramIDestroyListener)
  {
    if (this.destroyListenerList != null) {
      this.destroyListenerList.remove(paramIDestroyListener);
    }
  }
  
  public boolean removeGuideView()
  {
    if ((this.imageViewLayout != null) && (this.rootView != null) && (this.rootView.isShown()))
    {
      this.rootView.removeView(this.imageViewLayout);
      this.rootView = null;
      this.imageViewLayout = null;
      return true;
    }
    return false;
  }
  
  public void removePauseListener(IPauseListener paramIPauseListener)
  {
    if (this.pauseListenerList != null) {
      this.pauseListenerList.remove(paramIPauseListener);
    }
  }
  
  public void removeRecordTop()
  {
    ScrollableTabActivity localScrollableTabActivity = (ScrollableTabActivity)getParent();
    if (localScrollableTabActivity != null) {
      localScrollableTabActivity.removeRecordTop();
    }
  }
  
  public void removeResumeListener(IResumeListener paramIResumeListener)
  {
    if (this.resumeListenerList != null) {
      this.resumeListenerList.remove(paramIResumeListener);
    }
  }
  
  public void resendActivityInFrame(final Intent paramIntent)
  {
    if (!this.isCanResend) {
      return;
    }
    final ScrollableTabActivity localScrollableTabActivity = (ScrollableTabActivity)getParent();
    localScrollableTabActivity.pushResendRequest(new Runnable()
    {
      public void run()
      {
        paramIntent.putExtra("com.360buy:resendFlag", true);
        localScrollableTabActivity.startSubActivity(paramIntent);
      }
    });
  }
  
  public void setContentView(int paramInt)
  {
    try
    {
      super.setContentView(paramInt);
      return;
    }
    catch (Throwable localThrowable)
    {
      GlobalImageCache.getLruBitmapCache().clean();
      super.setContentView(paramInt);
    }
  }
  
  protected void setGuideResId(int paramInt)
  {
    this.guideResourceId = paramInt;
  }
  
  public void setOverrideResources(PlugResources paramPlugResources)
  {
    if (MergeSwitcher.isPlugOn())
    {
      if (paramPlugResources == null)
      {
        this.myResources = null;
        this.resources = null;
        this.assetManager = null;
        this.theme = null;
      }
    }
    else {
      return;
    }
    this.myResources = paramPlugResources;
    this.resources = paramPlugResources.getResources();
    this.assetManager = paramPlugResources.getAssets();
    Resources.Theme localTheme = this.myResources.getResources().newTheme();
    try
    {
      localTheme.applyStyle(((Integer)Class.forName("android.app.ContextImpl").getMethod("getThemeResId", new Class[0]).invoke(getBaseContext(), new Object[0])).intValue(), true);
      this.theme = localTheme;
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  public void startActivityForResultForFragment(Fragment paramFragment, Intent paramIntent, int paramInt)
  {
    startActivityForResultNoExceptionForFragment(paramFragment, paramIntent, paramInt);
  }
  
  public void startActivityForResultNoException(Intent paramIntent, int paramInt)
  {
    startActivityForResultNoExceptionStatic(this, paramIntent, paramInt);
  }
  
  public void startActivityForResultNoExceptionStatic(Activity paramActivity, Intent paramIntent, int paramInt)
  {
    if ((paramIntent == null) || (paramActivity == null)) {
      return;
    }
    try
    {
      paramActivity.startActivityForResult(paramIntent, paramInt);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      catchToastTip(paramActivity, paramIntent);
      return;
    }
    catch (Exception localException) {}
  }
  
  public void startActivityInFrame(final Intent paramIntent)
  {
    String str = Build.VERSION.SDK;
    if (getParent() == null)
    {
      if (Integer.valueOf(str).intValue() > 10)
      {
        post(new Runnable()
        {
          public void run()
          {
            MyActivity.this.startActivity(paramIntent);
          }
        });
        return;
      }
      startActivity(paramIntent);
      return;
    }
    if (Integer.valueOf(str).intValue() > 10)
    {
      post(new Runnable()
      {
        public void run()
        {
          ((ScrollableTabActivity)MyActivity.this.getParent()).startSubActivity(paramIntent);
        }
      });
      return;
    }
    ((ScrollableTabActivity)getParent()).startSubActivity(paramIntent);
  }
  
  public void startActivityInFrameWithNoNavigation(Intent paramIntent)
  {
    paramIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
    startActivityInFrame(paramIntent);
  }
  
  public void startActivityNoException(Intent paramIntent)
  {
    startActivityForResultNoException(paramIntent, -1);
  }
  
  public void startSingleActivityInFrame(Intent paramIntent)
  {
    paramIntent.putExtra("com.360buy:singleInstanceFlag", true);
    if (getParent() != null)
    {
      ((ScrollableTabActivity)getParent()).startSubActivity(paramIntent);
      return;
    }
    getCurrentMyActivity().startActivityInFrame(paramIntent);
  }
  
  public void startTaskActivityInFrame(Intent paramIntent)
  {
    startTaskActivityInFrame(paramIntent, createTaskId(paramIntent));
  }
  
  public void startTaskActivityInFrame(Intent paramIntent, HashMap<String, Object> paramHashMap)
  {
    paramIntent.putExtra("com.360buy:taskIdFlag", paramHashMap);
    paramIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
    startActivityInFrame(paramIntent);
  }
  
  class FragmentPlugLoader
    extends ClassLoader
  {
    public FragmentPlugLoader(ClassLoader paramClassLoader)
    {
      super();
    }
    
    private Class<?> loadFragmentPlugClass(String paramString)
    {
      try
      {
        boolean bool = paramString.startsWith("com.jd.plug.");
        localObject = null;
        if (bool)
        {
          String str = paramString.substring(0, paramString.lastIndexOf("."));
          PlugItem localPlugItem = PlugManager.getInstance().getPlugItem(MyActivity.this, str);
          if (localPlugItem == null) {
            return null;
          }
          Class localClass = PlugClassLoader.getClassLoader(new File(localPlugItem.intallPath)).loadClass(paramString);
          localObject = localClass;
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException.printStackTrace();
          Object localObject = null;
        }
      }
      return localObject;
    }
    
    public Class<?> loadClass(String paramString)
      throws ClassNotFoundException
    {
      Class localClass = loadFragmentPlugClass(paramString);
      if (localClass != null) {
        return localClass;
      }
      return super.loadClass(paramString);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.MyActivity
 * JD-Core Version:    0.7.0.1
 */