package com.ja.sdk.pagevisitsend;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.ja.sdk.framework.SendStrategyEnum;
import com.ja.sdk.utils.LogUtil;
import com.ja.sdk.utils.ManifestPackageUtils;
import com.ja.sdk.utils.PreferenceUtils;

public class SendPageAccessDataMainThread
{
  private static final String TAG = "SendPageAccessDataMainThread";
  private static HandlerThread mDataSenderThread = new HandlerThread("PageAccessDataSenderThread");
  private static Handler mHandler;
  private static SendPageAccessDataMainThread mSendDataMainThread = new SendPageAccessDataMainThread();
  private Boolean isExceptionAnalysis = Boolean.valueOf(false);
  private SendStrategyEnum mSendStrategy;
  
  SendPageAccessDataMainThread()
  {
    mDataSenderThread.start();
    mHandler = new Handler(mDataSenderThread.getLooper());
  }
  
  static Handler getHandler()
  {
    return mHandler;
  }
  
  public static SendPageAccessDataMainThread getSignleInstance()
  {
    return mSendDataMainThread;
  }
  
  public static Boolean isExceptionAnalysisFlags(SendPageAccessDataMainThread paramSendPageAccessDataMainThread)
  {
    return paramSendPageAccessDataMainThread.isExceptionAnalysis;
  }
  
  public static void setExceptionAnalysisFlags(SendPageAccessDataMainThread paramSendPageAccessDataMainThread, Boolean paramBoolean)
  {
    paramSendPageAccessDataMainThread.isExceptionAnalysis = paramBoolean;
  }
  
  static SendStrategyEnum setSendStrategyEnum(SendPageAccessDataMainThread paramSendPageAccessDataMainThread, SendStrategyEnum paramSendStrategyEnum)
  {
    paramSendPageAccessDataMainThread.mSendStrategy = paramSendStrategyEnum;
    return paramSendStrategyEnum;
  }
  
  public SendStrategyEnum getDataSendStrategy(Context paramContext)
  {
    try
    {
      String str = ManifestPackageUtils.ReadCofigInfoFromManifest(paramContext, "Ja_Sdk_SEND_STRATEGY");
      if ((!str.equals("")) && (str.equals(SendStrategyEnum.IMMEDIATELY.name())))
      {
        this.mSendStrategy = SendStrategyEnum.IMMEDIATELY;
        PreferenceUtils.setSharedPreference(paramContext, "__360buy_Ja_Sdk_SendPageAccess", "sendPageAccessType", this.mSendStrategy.ordinal());
      }
      return this.mSendStrategy;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        LogUtil.logException(localException);
      }
    }
  }
  
  public SendStrategyEnum getPageAccessSendStrategy()
  {
    return this.mSendStrategy;
  }
  
  public void postTaskToMainThread(Context paramContext)
  {
    if (!SendPageAccessDataTask.getSendPageAccessDataStartThread().booleanValue())
    {
      LogUtil.logD("SendPageAccessDataMainThread", "SendPageAccessDataTask is not busy!!");
      mHandler.post(new SendPageAccessDataTask(this, paramContext));
      return;
    }
    LogUtil.logD("SendPageAccessDataMainThread", "SendPageAccessDataTask is busy!!");
  }
  
  public void setPageAccessSendStrategy(Context paramContext)
  {
    try
    {
      String str = ManifestPackageUtils.ReadCofigInfoFromManifest(paramContext, "Ja_Sdk_SEND_STRATEGY");
      if ((!str.equals("")) && (str.equals(SendStrategyEnum.IMMEDIATELY.name()))) {
        PreferenceUtils.setSharedPreference(paramContext, "__360buy_Ja_Sdk_SendPageAccess", "sendPageAccessType", this.mSendStrategy.ordinal());
      }
      return;
    }
    catch (Exception localException)
    {
      LogUtil.logException(localException);
    }
  }
  
  public void setPageAccessSendStrategy(Context paramContext, SendStrategyEnum paramSendStrategyEnum)
  {
    if (paramSendStrategyEnum.equals(SendStrategyEnum.IMMEDIATELY))
    {
      this.mSendStrategy = SendStrategyEnum.IMMEDIATELY;
      PreferenceUtils.setSharedPreference(paramContext, "__360buy_Ja_Sdk_SendPageAccess", "sendPageAccessType", this.mSendStrategy.ordinal());
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.sdk.pagevisitsend.SendPageAccessDataMainThread
 * JD-Core Version:    0.7.0.1
 */