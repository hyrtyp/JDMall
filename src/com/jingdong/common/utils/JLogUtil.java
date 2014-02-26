package com.jingdong.common.utils;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import com.ja.sdk.JaMobLogService;
import com.jingdong.common.config.Configuration;

public class JLogUtil
{
  private static final String KEY_NEED_LOG = "needLog";
  private static final String NEED_LOG = "1";
  private static final String TAG = "JLogUtil";
  private static Boolean isLocalNeedLog = null;
  private static Boolean isNeedLog = null;
  
  public static void JaInit(Context paramContext)
  {
    try
    {
      if (isNeedLog())
      {
        JaMobLogService.setAppChannel(Configuration.getProperty("partner", ""));
        JaMobLogService.startService(paramContext, new Intent(paramContext, JaMobLogService.class));
        JaMobLogService.SessionCount(paramContext, 1);
      }
      return;
    }
    catch (Throwable localThrowable) {}
  }
  
  private static boolean isNeedLog()
  {
    if (isNeedLog != null) {
      return isNeedLog.booleanValue();
    }
    if (isLocalNeedLog == null) {
      isLocalNeedLog = Configuration.getBooleanProperty("useJLog", Boolean.valueOf(false));
    }
    if (isLocalNeedLog.booleanValue()) {
      if ("1".equals(CommonUtil.getJdSharedPreferences().getString("needLog", ""))) {
        isNeedLog = Boolean.valueOf(true);
      }
    }
    for (;;)
    {
      return isNeedLog.booleanValue();
      isNeedLog = Boolean.valueOf(false);
      continue;
      isNeedLog = Boolean.valueOf(false);
    }
  }
  
  public static void onJaVisit(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      if (isNeedLog()) {
        JaMobLogService.pageAccessEventAutoSend(paramContext, paramString1, paramString2);
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
  
  public static void setUserPin(String paramString)
  {
    try
    {
      if (isNeedLog()) {
        JaMobLogService.setAppId(paramString);
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.JLogUtil
 * JD-Core Version:    0.7.0.1
 */