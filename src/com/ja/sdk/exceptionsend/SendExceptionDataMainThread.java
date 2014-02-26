package com.ja.sdk.exceptionsend;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.ja.sdk.framework.ExceptionDataHandle;
import com.ja.sdk.framework.SendStrategyEnum;
import com.ja.sdk.utils.LogUtil;
import com.ja.sdk.utils.ManifestPackageUtils;
import com.ja.sdk.utils.PreferenceUtils;

public class SendExceptionDataMainThread
{
  public static final String TAG = "SendExceptionDataMainThread";
  private static HandlerThread mDataSenderThread = new HandlerThread("ExceptionDataSenderThread");
  private static Handler mHandler;
  private static SendExceptionDataMainThread mSendDataMainThread = new SendExceptionDataMainThread();
  private static SendStrategyEnum mSendStrategy;
  private Boolean isExceptionAnalysis = Boolean.valueOf(false);
  
  SendExceptionDataMainThread()
  {
    mDataSenderThread.start();
    mHandler = new Handler(mDataSenderThread.getLooper());
  }
  
  static Handler getHandler()
  {
    return mHandler;
  }
  
  public static SendExceptionDataMainThread getSignleInstance()
  {
    return mSendDataMainThread;
  }
  
  public static Boolean isExceptionAnalysisFlags(SendExceptionDataMainThread paramSendExceptionDataMainThread)
  {
    return paramSendExceptionDataMainThread.isExceptionAnalysis;
  }
  
  public static void setExceptionAnalysisFlags(SendExceptionDataMainThread paramSendExceptionDataMainThread, Boolean paramBoolean)
  {
    paramSendExceptionDataMainThread.isExceptionAnalysis = paramBoolean;
  }
  
  public SendStrategyEnum getUncaughtExceptionSendStrategy()
  {
    return mSendStrategy;
  }
  
  /* Error */
  public void postTaskToMainThread(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc 8
    //   4: ldc 73
    //   6: invokestatic 79	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   9: pop
    //   10: invokestatic 85	com/ja/sdk/exceptionsend/SendExceptionDataTask:getSendExceptionDataStartThread	()Ljava/lang/Boolean;
    //   13: invokevirtual 89	java/lang/Boolean:booleanValue	()Z
    //   16: ifne +30 -> 46
    //   19: ldc 8
    //   21: ldc 91
    //   23: invokestatic 79	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   26: pop
    //   27: getstatic 57	com/ja/sdk/exceptionsend/SendExceptionDataMainThread:mHandler	Landroid/os/Handler;
    //   30: new 81	com/ja/sdk/exceptionsend/SendExceptionDataTask
    //   33: dup
    //   34: aload_0
    //   35: aload_1
    //   36: invokespecial 94	com/ja/sdk/exceptionsend/SendExceptionDataTask:<init>	(Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;Landroid/content/Context;)V
    //   39: invokevirtual 98	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   42: pop
    //   43: aload_0
    //   44: monitorexit
    //   45: return
    //   46: ldc 8
    //   48: ldc 100
    //   50: invokestatic 79	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   53: pop
    //   54: goto -11 -> 43
    //   57: astore_2
    //   58: aload_0
    //   59: monitorexit
    //   60: aload_2
    //   61: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	this	SendExceptionDataMainThread
    //   0	62	1	paramContext	Context
    //   57	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	43	57	finally
    //   46	54	57	finally
  }
  
  public void setDataSendStrategy(Context paramContext)
  {
    try
    {
      String str2 = ManifestPackageUtils.ReadCofigInfoFromManifest(paramContext, "Ja_Sdk_EXCEPTION_LOG");
      if (!str2.equals(""))
      {
        if (!str2.equals("true")) {
          break label94;
        }
        ExceptionDataHandle.getSingleInstance().openExceptonDataAnalysis(paramContext);
        PreferenceUtils.setSharedPreference(paramContext, "__360buy_Ja_Sdk_SendException", "exceptionanalysisflag", Boolean.valueOf(true));
      }
      for (;;)
      {
        try
        {
          String str1 = ManifestPackageUtils.ReadCofigInfoFromManifest(paramContext, "Ja_Sdk_SEND_STRATEGY");
          if ((!str1.equals("")) && (str1.equals(SendStrategyEnum.IMMEDIATELY.name()))) {
            PreferenceUtils.setSharedPreference(paramContext, "__360buy_Ja_Sdk_SendException", "sendUncaughtExceptionType", SendStrategyEnum.IMMEDIATELY.ordinal());
          }
          return;
        }
        catch (Exception localException2)
        {
          label94:
          LogUtil.logException(localException2);
        }
        if (str2.equals("false")) {
          PreferenceUtils.setSharedPreference(paramContext, "__360buy_Ja_Sdk_SendException", "exceptionanalysisflag", Boolean.valueOf(false));
        }
      }
    }
    catch (Exception localException1)
    {
      for (;;)
      {
        LogUtil.logException(localException1);
      }
    }
  }
  
  public void setUncaughtExceptionSendStrategy(Context paramContext, SendStrategyEnum paramSendStrategyEnum)
  {
    if (paramSendStrategyEnum.equals(SendStrategyEnum.IMMEDIATELY))
    {
      mSendStrategy = SendStrategyEnum.IMMEDIATELY;
      PreferenceUtils.setSharedPreference(paramContext, "__360buy_Ja_Sdk_SendException", "sendUncaughtExceptionType", mSendStrategy.ordinal());
    }
  }
  
  public void setUncaughtExcetpionFlag(boolean paramBoolean, Context paramContext)
  {
    this.isExceptionAnalysis = Boolean.valueOf(paramBoolean);
    PreferenceUtils.setSharedPreference(paramContext, "__360buy_Ja_Sdk_SendException", "exceptionanalysisflag", this.isExceptionAnalysis);
    LogUtil.logD("SendExceptionDataMainThread", "APP_ANALYSIS_EXCEPTION is:" + this.isExceptionAnalysis);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.sdk.exceptionsend.SendExceptionDataMainThread
 * JD-Core Version:    0.7.0.1
 */