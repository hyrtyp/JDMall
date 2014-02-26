package com.jingdong.common;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Application;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Process;
import android.provider.Settings.System;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.widget.Toast;
import com.jingdong.common.broadcastReceiver.StorageReceiver;
import com.jingdong.common.broadcastReceiver.TimeChangedReceiver;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.frame.IMainActivity;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.res.StringUtil;
import com.jingdong.common.service.MessagePullService;
import com.jingdong.common.utils.BitmapkitUtils;
import com.jingdong.common.utils.CommonUtil;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.MyUncaughtExceptionHandler;
import com.jingdong.common.utils.TimerUntil;
import com.novoda.imageloader.core.cache.LruBitmapCache;
import java.util.Properties;
import java.util.Timer;
import java.util.TimerTask;

public abstract class MyApplication
  extends Application
{
  private static ActivityManager activityManager;
  private static boolean canExitInToastTime = false;
  protected static MyApplication instance;
  public static boolean isShowActivity;
  private static BitmapkitUtils mBitmapkitUtils;
  private IMyActivity activity;
  private Handler handler;
  private IMyActivity homeMainActivity;
  private boolean isJMARunning = false;
  protected IMainActivity mainFrameActivity;
  public int networkInitializationState = 0;
  private Thread uiThread;
  
  public static void exit(IMyActivity paramIMyActivity)
  {
    if (paramIMyActivity != null) {
      paramIMyActivity.finish();
    }
    getInstance().handler.postDelayed(new Runnable()
    {
      public void run()
      {
        
        try
        {
          MyApplication.submitTime();
          Intent localIntent = new Intent();
          localIntent.setClass(MyApplication.getInstance(), MessagePullService.class);
          localIntent.setAction("Action_Stop_Message_Service");
          MyApplication.getInstance().startService(localIntent);
          MyApplication.killStage();
          return;
        }
        catch (Throwable localThrowable)
        {
          Process.killProcess(Process.myPid());
        }
      }
    }, 100L);
  }
  
  public static void exitAll()
  {
    LruBitmapCache.quit();
    killBackground();
    killStage();
  }
  
  public static void exitControl()
  {
    String str = CommonUtil.getExitType();
    if (TextUtils.equals(str, "3"))
    {
      exitDialog();
      return;
    }
    if (TextUtils.equals(str, "2"))
    {
      exitToast();
      return;
    }
    IMainActivity localIMainActivity = getInstance().getMainFrameActivity();
    Intent localIntent = new Intent("android.intent.action.MAIN");
    localIntent.setFlags(268435456);
    localIntent.addCategory("android.intent.category.HOME");
    localIMainActivity.startActivity(localIntent);
  }
  
  public static void exitDialog()
  {
    exitDialog(null);
  }
  
  public static void exitDialog(IMyActivity paramIMyActivity)
  {
    Activity localActivity = (Activity)paramIMyActivity;
    if (localActivity == null) {
      localActivity = getInstance().getMainFrameActivity().getThisActivity();
    }
    if (Configuration.getBooleanProperty("isCoolMart", Boolean.valueOf(false)).booleanValue())
    {
      exit(paramIMyActivity);
      return;
    }
    AlertDialog localAlertDialog = new AlertDialog.Builder(localActivity).create();
    localAlertDialog.setMessage(StringUtil.pg_home_exit_confrim_string);
    localAlertDialog.setTitle(StringUtil.exit);
    DialogInterface.OnClickListener local2 = new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        switch (paramAnonymousInt)
        {
        default: 
          return;
        case -1: 
          MyApplication.exit(MyApplication.this);
          return;
        }
        paramAnonymousDialogInterface.dismiss();
      }
    };
    localAlertDialog.setButton(-1, StringUtil.exit, local2);
    localAlertDialog.setButton(-2, StringUtil.cancel, local2);
    try
    {
      localAlertDialog.show();
      return;
    }
    catch (Throwable localThrowable)
    {
      exit(paramIMyActivity);
    }
  }
  
  public static void exitToast()
  {
    if (canExitInToastTime)
    {
      exit(null);
      return;
    }
    Toast.makeText(getInstance(), StringUtil.exit_toast_message, 0).show();
    canExitInToastTime = true;
    new Timer().schedule(new TimerTask()
    {
      public void run()
      {
        MyApplication.canExitInToastTime = false;
      }
    }, 2000L);
  }
  
  public static String getAId()
  {
    return Settings.System.getString(instance.getContentResolver(), "android_id");
  }
  
  public static BitmapkitUtils getBitmapkitUtils()
  {
    return mBitmapkitUtils;
  }
  
  public static MyApplication getInstance()
  {
    return instance;
  }
  
  private static void initCBT()
  {
    Properties localProperties;
    if (Configuration.getBooleanProperty("CBTMode", Boolean.valueOf(false)).booleanValue())
    {
      localProperties = Configuration.getProperties();
      SharedPreferences localSharedPreferences = CommonUtil.getJdSharedPreferences();
      String str1 = localSharedPreferences.getString("host", "");
      if (!TextUtils.isEmpty(str1)) {
        localProperties.setProperty("host", str1);
      }
      String str2 = localSharedPreferences.getString("mHost", "");
      if (!TextUtils.isEmpty(str2)) {
        localProperties.setProperty("mHost", str2);
      }
      String str3 = localSharedPreferences.getString("paiHost", "");
      if (!TextUtils.isEmpty(str3)) {
        localProperties.setProperty("paiHost", str3);
      }
      String str4 = localSharedPreferences.getString("msgHost", "");
      if (!TextUtils.isEmpty(str4)) {
        localProperties.setProperty("msgHost", str4);
      }
      if (Boolean.valueOf(localSharedPreferences.getBoolean("testMode", false)).booleanValue()) {
        localProperties.setProperty("testMode", "true");
      }
    }
    else
    {
      return;
    }
    localProperties.setProperty("testMode", "false");
  }
  
  public static void killBackground()
  {
    Intent localIntent = new Intent();
    localIntent.setClass(getInstance(), MessagePullService.class);
    localIntent.setAction("Action_Stop_Message_Service");
    getInstance().startService(localIntent);
  }
  
  public static void killStage()
  {
    instance.setMainFrameActivity(null);
    instance.networkInitializationState = 0;
    StorageReceiver.unregisterReceiver(instance.getApplicationContext());
    TimeChangedReceiver.unregisterReceiver(instance.getApplicationContext());
    Process.killProcess(Process.myPid());
  }
  
  /* Error */
  public static void killStageNoUI()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: invokestatic 49	com/jingdong/common/MyApplication:getInstance	()Lcom/jingdong/common/MyApplication;
    //   6: invokevirtual 101	com/jingdong/common/MyApplication:getMainFrameActivity	()Lcom/jingdong/common/frame/IMainActivity;
    //   9: ifnonnull +29 -> 38
    //   12: getstatic 220	com/jingdong/common/MyApplication:instance	Lcom/jingdong/common/MyApplication;
    //   15: aconst_null
    //   16: invokevirtual 302	com/jingdong/common/MyApplication:setMainFrameActivity	(Lcom/jingdong/common/frame/IMainActivity;)V
    //   19: getstatic 220	com/jingdong/common/MyApplication:instance	Lcom/jingdong/common/MyApplication;
    //   22: iconst_0
    //   23: putfield 34	com/jingdong/common/MyApplication:networkInitializationState	I
    //   26: getstatic 327	com/jingdong/common/MyApplication:activityManager	Landroid/app/ActivityManager;
    //   29: getstatic 220	com/jingdong/common/MyApplication:instance	Lcom/jingdong/common/MyApplication;
    //   32: invokevirtual 330	com/jingdong/common/MyApplication:getPackageName	()Ljava/lang/String;
    //   35: invokevirtual 335	android/app/ActivityManager:restartPackage	(Ljava/lang/String;)V
    //   38: ldc 2
    //   40: monitorexit
    //   41: return
    //   42: astore_0
    //   43: ldc 2
    //   45: monitorexit
    //   46: aload_0
    //   47: athrow
    //   48: astore_1
    //   49: goto -11 -> 38
    // Local variable table:
    //   start	length	slot	name	signature
    //   42	5	0	localObject	Object
    //   48	1	1	localThrowable	Throwable
    // Exception table:
    //   from	to	target	type
    //   3	26	42	finally
    //   26	38	42	finally
    //   26	38	48	java/lang/Throwable
  }
  
  /* Error */
  public static void networkSetting()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 236	com/jingdong/common/MyApplication:mBitmapkitUtils	Lcom/jingdong/common/utils/BitmapkitUtils;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull +7 -> 15
    //   11: ldc 2
    //   13: monitorexit
    //   14: return
    //   15: invokestatic 341	com/jingdong/common/utils/CPAUtils:loadLibrary	()V
    //   18: new 343	com/jingdong/common/utils/BitmapkitUtils
    //   21: dup
    //   22: invokespecial 344	com/jingdong/common/utils/BitmapkitUtils:<init>	()V
    //   25: putstatic 236	com/jingdong/common/MyApplication:mBitmapkitUtils	Lcom/jingdong/common/utils/BitmapkitUtils;
    //   28: getstatic 236	com/jingdong/common/MyApplication:mBitmapkitUtils	Lcom/jingdong/common/utils/BitmapkitUtils;
    //   31: invokevirtual 347	com/jingdong/common/utils/BitmapkitUtils:loadNativeLibrary	()V
    //   34: invokestatic 352	com/jingdong/common/utils/JniUtils:getSHN	()Ljava/lang/String;
    //   37: pop
    //   38: invokestatic 357	com/jingdong/common/login/SafetyManager:compatibleOldVersion	()V
    //   41: invokestatic 359	com/jingdong/common/MyApplication:initCBT	()V
    //   44: goto -33 -> 11
    //   47: astore_0
    //   48: ldc 2
    //   50: monitorexit
    //   51: aload_0
    //   52: athrow
    //   53: astore_2
    //   54: invokestatic 361	com/jingdong/common/MyApplication:getBitmapkitUtils	()Lcom/jingdong/common/utils/BitmapkitUtils;
    //   57: iconst_1
    //   58: putfield 364	com/jingdong/common/utils/BitmapkitUtils:isLoadLibFailed	Z
    //   61: aload_2
    //   62: invokevirtual 367	java/lang/Throwable:printStackTrace	()V
    //   65: goto -24 -> 41
    // Local variable table:
    //   start	length	slot	name	signature
    //   47	5	0	localObject	Object
    //   6	2	1	localBitmapkitUtils	BitmapkitUtils
    //   53	9	2	localThrowable	Throwable
    // Exception table:
    //   from	to	target	type
    //   3	7	47	finally
    //   15	34	47	finally
    //   34	41	47	finally
    //   41	44	47	finally
    //   54	65	47	finally
    //   34	41	53	java/lang/Throwable
  }
  
  public static void submitTime()
  {
    TimerUntil.endTime = System.currentTimeMillis();
    CommonUtil.getJdSharedPreferences().edit().putLong("appUseTime", TimerUntil.getUserTime()).commit();
  }
  
  public IMyActivity getCurrentMyActivity()
  {
    if (this.activity != null) {
      return this.activity;
    }
    if (this.mainFrameActivity != null)
    {
      Activity localActivity = this.mainFrameActivity.getThisActivity();
      if ((localActivity instanceof IMyActivity)) {
        return (IMyActivity)localActivity;
      }
    }
    return null;
  }
  
  public abstract Drawable getDefalutDrawble();
  
  public abstract Class<?> getErrorActivityClass();
  
  public Handler getHandler()
  {
    return this.handler;
  }
  
  public IMyActivity getHomeMainActivity()
  {
    return this.homeMainActivity;
  }
  
  public abstract Class<?> getMainActivityClass();
  
  public IMainActivity getMainFrameActivity()
  {
    return this.mainFrameActivity;
  }
  
  public Thread getUiThread()
  {
    return this.uiThread;
  }
  
  public boolean isJMARunning()
  {
    return this.isJMARunning;
  }
  
  public void onCreate()
  {
    super.onCreate();
    instance = this;
    Thread.setDefaultUncaughtExceptionHandler(new MyUncaughtExceptionHandler(this));
    try
    {
      DPIUtil.setDensity(getResources().getDisplayMetrics().density);
      label32:
      StorageReceiver.registerReceiver(instance.getApplicationContext());
      TimeChangedReceiver.registerReceiver(instance.getApplicationContext());
      this.handler = new Handler();
      this.uiThread = Thread.currentThread();
      activityManager = (ActivityManager)instance.getSystemService("activity");
      return;
    }
    catch (Throwable localThrowable)
    {
      break label32;
    }
  }
  
  public void setCurrentMyActivity(IMyActivity paramIMyActivity)
  {
    this.activity = paramIMyActivity;
  }
  
  public void setHomeMainActivity(IMyActivity paramIMyActivity)
  {
    this.homeMainActivity = paramIMyActivity;
  }
  
  public void setJMARunning(boolean paramBoolean)
  {
    this.isJMARunning = paramBoolean;
  }
  
  public void setMainFrameActivity(IMainActivity paramIMainActivity)
  {
    this.mainFrameActivity = paramIMainActivity;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.MyApplication
 * JD-Core Version:    0.7.0.1
 */