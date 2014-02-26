package com.jingdong.common.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.ja.analytics.MobJaAgent;
import com.jingdong.common.MyApplication;
import com.jingdong.common.config.Configuration;
import java.util.Map;

public class NewJLogUtil
{
  private static final String KEY_NEED_LOG = "needLog";
  private static final String NEED_LOG = "1";
  private static final String TAG = "NewJLogUtil";
  public static final String URL = "url";
  public static final String WEBACTIVITY = "WebActivity";
  private static Boolean isLocalNeedLog = null;
  private static Boolean isNeedLog = null;
  private static Boolean useNewLog = null;
  
  public static void JaInit(Context paramContext)
  {
    try
    {
      if (isNeedLog()) {
        if (isUseNewJLog())
        {
          MobJaAgent.updateOnlineConfig(paramContext);
          MyApplication localMyApplication = MyApplication.getInstance();
          if (!localMyApplication.isJMARunning())
          {
            MobJaAgent.SessionAccumulate(paramContext, 1);
            localMyApplication.setJMARunning(true);
          }
        }
        else
        {
          JLogUtil.JaInit(paramContext);
          return;
        }
      }
    }
    catch (Throwable localThrowable) {}
  }
  
  public static void doOnPause(Context paramContext)
  {
    try
    {
      if (isNeedLog()) {
        MobJaAgent.onPause(paramContext);
      }
      return;
    }
    catch (Throwable localThrowable) {}
  }
  
  public static void doOnResume(Context paramContext)
  {
    try
    {
      MobJaAgent.onResume(paramContext);
      return;
    }
    catch (Throwable localThrowable) {}
  }
  
  private static boolean isNeedLog()
  {
    if ((isNeedLog != null) && (isNeedLog.booleanValue())) {
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
  
  public static boolean isUseNewJLog()
  {
    if (useNewLog != null) {
      return useNewLog.booleanValue();
    }
    if (TextUtils.equals(Configuration.getProperty("JLogVersion", "1"), "1")) {}
    for (useNewLog = Boolean.valueOf(false);; useNewLog = Boolean.valueOf(true)) {
      return useNewLog.booleanValue();
    }
  }
  
  public static void onJMAEvent(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      if (isNeedLog())
      {
        if (isUseNewJLog())
        {
          String str = paramString1;
          if ((!TextUtils.isEmpty(paramString1)) && (paramString1.contains(".")))
          {
            String[] arrayOfString = paramString1.split("\\.");
            str = arrayOfString[(-1 + arrayOfString.length)];
          }
          MobJaAgent.onEvent(paramContext, str, paramString2);
          return;
        }
        JLogUtil.onJaVisit(paramContext, paramString1, paramString2);
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
  
  public static void onJMAEvent(Context paramContext, String paramString, Map<String, String> paramMap)
  {
    try
    {
      if (isNeedLog())
      {
        String str = paramString;
        if ((!TextUtils.isEmpty(paramString)) && (paramString.contains(".")))
        {
          String[] arrayOfString = paramString.split("\\.");
          str = arrayOfString[(-1 + arrayOfString.length)];
        }
        MobJaAgent.onEvent(paramContext, str, paramMap);
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
 * Qualified Name:     com.jingdong.common.utils.NewJLogUtil
 * JD-Core Version:    0.7.0.1
 */