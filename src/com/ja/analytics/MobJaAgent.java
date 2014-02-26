package com.ja.analytics;

import android.content.Context;
import com.ja.analytics.constant.Constants;
import com.ja.analytics.db.CrashTable;
import com.ja.analytics.db.EventTable;
import com.ja.analytics.framework.LogDatabaseMonitor;
import com.ja.analytics.logcrash.CrashLog;
import com.ja.analytics.logcrash.CrashUncaughtExceptionHandler;
import com.ja.analytics.logevent.EventLog;
import com.ja.analytics.net.HttpUtils;
import com.ja.analytics.sendcrashlog.CrashWorkThreadHandler;
import com.ja.analytics.sendeventlog.EventWorkThreadHandler;
import com.ja.analytics.utils.LogUtil;
import com.ja.analytics.utils.SessionStatic;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class MobJaAgent
{
  private static final String TAG = MobJaAgent.class.getName();
  public static int counter = 0;
  
  public static void SessionAccumulate(Context paramContext, int paramInt)
  {
    EventLog.getSingleton().setSessionCount(paramContext, paramInt);
    EventTable.checkRows(paramContext);
    CrashTable.checkRows(paramContext);
    new Thread(new Runnable()
    {
      public void run()
      {
        HttpUtils.sendSessionData(MobJaAgent.this);
      }
    }).start();
  }
  
  public static void flushCrash(Context paramContext)
  {
    try
    {
      LogUtil.logD(TAG, "flushCrash() --->");
      if (CrashTable.openSQLiteDatabase(paramContext) == null) {
        return;
      }
      JSONArray localJSONArray = CrashTable.getCrashLog(paramContext);
      if ((localJSONArray != null) || (localJSONArray.length() != 0))
      {
        CrashWorkThreadHandler.getSingleton().postTaskToMainThread(paramContext, localJSONArray, 0);
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      LogUtil.logD(TAG, localThrowable.toString());
      return;
    }
    LogUtil.logD(TAG, "There is no data in cache!!");
  }
  
  public static void flushEvent(Context paramContext)
  {
    try
    {
      LogUtil.logD(TAG, "flushEvent() --->");
      if (EventTable.openSQLiteDatabase(paramContext) == null) {
        return;
      }
      JSONArray localJSONArray = EventTable.getEventLog(paramContext);
      if ((localJSONArray != null) || (localJSONArray.length() != 0))
      {
        EventWorkThreadHandler.getSingleton().postTaskToMainThread(paramContext, localJSONArray, 0);
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      LogUtil.logD(TAG, localThrowable.toString());
      return;
    }
    LogUtil.logD(TAG, "There is not data in cache!!");
  }
  
  private static boolean getOnlineStrategy(Context paramContext)
  {
    return HttpUtils.getConfiguration(paramContext);
  }
  
  private static boolean isContext(Context paramContext, String paramString)
  {
    if (paramContext == null)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = TAG;
      arrayOfObject[1] = (paramString + ":context=null");
      LogUtil.logD(arrayOfObject);
      return false;
    }
    return true;
  }
  
  public static void onEVMEventBegin(Context paramContext, String paramString1, Map<String, String> paramMap, String paramString2)
  {
    try
    {
      if (paramMap.size() > 20)
      {
        LogUtil.logE(TAG, "map 最多支持20个参数");
        return;
      }
      if (!isContext(paramContext, "onEVMEventBegin(...)")) {
        return;
      }
      if ((paramString1 == null) || (paramString1.trim().equals("")))
      {
        LogUtil.logW(TAG, "event_id 不能为空或空字符串");
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      LogUtil.logD(TAG, localThrowable.toString());
      return;
    }
    EventLog.getSingleton().onEVMEventLogBegin(paramContext.getApplicationContext(), paramString1, paramMap, paramString2);
  }
  
  public static void onEVMEventEnd(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      if (!isContext(paramContext, "onEVMEventEnd(...)")) {
        return;
      }
      if ((paramString1 == null) || (paramString1.trim().equals("")))
      {
        LogUtil.logW(TAG, "event_id 不能为空或空字符串");
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      LogUtil.logD(TAG, localThrowable.toString());
      return;
    }
    new JSONObject();
    JSONObject localJSONObject = EventLog.getSingleton().onEVMEventLogEnd(paramContext.getApplicationContext(), paramString1, paramString2);
    if ((localJSONObject != null) || (localJSONObject.length() != 0))
    {
      EventLog.getSingleton().writeEventLogToDatabase(paramContext, localJSONObject);
      return;
    }
    LogUtil.logI(TAG, "onEVMEventEnd(), onEVMEventBegin() is not called!!");
  }
  
  public static void onError(Context paramContext)
  {
    try
    {
      LogUtil.logD(TAG, "sendExceptionData=>");
      CrashUncaughtExceptionHandler.getSingleton().setUncaughtExceptionFlag(Boolean.valueOf(true));
      CrashLog.getSingleton().openExceptonDataAnalysis(paramContext);
      return;
    }
    catch (Throwable localThrowable)
    {
      LogUtil.logD(TAG, localThrowable.toString());
    }
  }
  
  public static void onEvent(Context paramContext, String paramString)
  {
    onEvent(paramContext, paramString, "");
  }
  
  public static void onEvent(Context paramContext, String paramString1, String paramString2)
  {
    LogUtil.logD(TAG, "onEvent() --->");
    try
    {
      if (!isContext(paramContext, "onEvent(...)")) {
        return;
      }
      if ((paramString1 == null) || (paramString1.trim().equals("")))
      {
        LogUtil.logW(TAG, "event_id 不能为空或空字符串");
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
      return;
    }
    new JSONObject();
    JSONObject localJSONObject = EventLog.getSingleton().onEventLog(paramContext, paramString1, paramString2);
    if ((localJSONObject != null) || (localJSONObject.length() != 0))
    {
      EventLog.getSingleton().writeEventLogToDatabase(paramContext, localJSONObject);
      return;
    }
    LogUtil.logD(TAG, "onEvent(), There is no data!!");
  }
  
  public static void onEvent(Context paramContext, String paramString, Map paramMap)
  {
    LogUtil.logD(TAG, "onEvent() --->");
    if (paramMap.size() > 20) {
      LogUtil.logW(TAG, "map 最多支持20个参数");
    }
    for (;;)
    {
      return;
      try
      {
        if (isContext(paramContext, "onEvent(...)")) {
          if ((paramString == null) || (paramString.trim().equals("")))
          {
            LogUtil.logW(TAG, "event_id 不能为空或空字符串");
            return;
          }
        }
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        return;
      }
    }
    new JSONObject();
    JSONObject localJSONObject = EventLog.getSingleton().onMapEventLog(paramContext, paramString, paramMap);
    if ((localJSONObject != null) || (localJSONObject.length() != 0))
    {
      EventLog.getSingleton().writeEventLogToDatabase(paramContext, localJSONObject);
      return;
    }
    LogUtil.logD(TAG, "onEvent(), There is no map data!!");
  }
  
  public static void onEventBegin(Context paramContext, String paramString)
  {
    try
    {
      if (!isContext(paramContext, "onEventBegin(...)")) {
        return;
      }
      if ((paramString == null) || (paramString.trim().equals("")))
      {
        LogUtil.logW(TAG, "event_id 不能为空或空字符串");
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      LogUtil.logD(TAG, localThrowable.toString());
      return;
    }
    EventLog.getSingleton().onEventLogBegin(paramContext, paramString, "");
  }
  
  public static void onEventBegin(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      if (!isContext(paramContext, "onEventBegin(...)")) {
        return;
      }
      if ((paramString1 == null) || (paramString1.trim().equals("")))
      {
        LogUtil.logW(TAG, "event_id 不能为空或空字符串");
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
      return;
    }
    EventLog.getSingleton().onEventLogBegin(paramContext.getApplicationContext(), paramString1, paramString2);
  }
  
  public static void onEventDuration(Context paramContext, String paramString, long paramLong)
  {
    try
    {
      if (!isContext(paramContext, "onEventDuration(...)")) {
        return;
      }
      if ((paramString == null) || (paramString.trim().equals("")))
      {
        LogUtil.logW(TAG, "event_id 不能为空或空字符串");
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      LogUtil.logD(TAG, localThrowable.toString());
      return;
    }
    if (paramLong < 0L)
    {
      LogUtil.logW(TAG, "duration 不能小于0");
      return;
    }
    new JSONObject();
    JSONObject localJSONObject = EventLog.getSingleton().onEventLogDuration(paramContext, paramString, "", paramLong);
    if ((localJSONObject != null) || (localJSONObject.length() != 0))
    {
      EventLog.getSingleton().writeEventLogToDatabase(paramContext, localJSONObject);
      return;
    }
    LogUtil.logD(TAG, "onEventDuration(), There is no data!!");
  }
  
  public static void onEventDuration(Context paramContext, String paramString1, String paramString2, long paramLong)
  {
    try
    {
      if (!isContext(paramContext, "onEventDuration(...)")) {
        return;
      }
      if ((paramString1 == null) || (paramString1.trim().equals("")))
      {
        LogUtil.logW(TAG, "event_id 不能为空或空字符串");
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      LogUtil.logD(TAG, localThrowable.toString());
      return;
    }
    if (paramLong < 0L)
    {
      LogUtil.logW(TAG, "duration 不能小于0");
      return;
    }
    new JSONObject();
    JSONObject localJSONObject = EventLog.getSingleton().onEventLogDuration(paramContext, paramString1, paramString2, paramLong);
    if ((localJSONObject != null) || (localJSONObject.length() != 0))
    {
      EventLog.getSingleton().writeEventLogToDatabase(paramContext, localJSONObject);
      return;
    }
    LogUtil.logD(TAG, "onEventDuration(), There is no data!!");
  }
  
  public static void onEventDuration(Context paramContext, String paramString, Map<String, String> paramMap, long paramLong)
  {
    if (paramMap.size() > 20)
    {
      LogUtil.logW(TAG, "map 最多支持20个参数");
      return;
    }
    if ((paramString == null) || (paramString.trim().equals("")))
    {
      LogUtil.logW(TAG, "event_id 不能为空或空字符串");
      return;
    }
    if (paramLong < 0L)
    {
      LogUtil.logW(TAG, "duration 不能小于0");
      return;
    }
    try
    {
      JSONObject localJSONObject = EventLog.getSingleton().onEventDuration(paramContext, paramString, paramMap, paramLong);
      EventLog.getSingleton().writeEventLogToDatabase(paramContext, localJSONObject);
      return;
    }
    catch (Exception localException)
    {
      LogUtil.logD(TAG, localException.toString());
    }
  }
  
  public static void onEventEnd(Context paramContext, String paramString)
  {
    try
    {
      if (!isContext(paramContext, "onEventEnd(...)")) {
        return;
      }
      if ((paramString == null) || (paramString.trim().equals("")))
      {
        LogUtil.logW(TAG, "event_id 不能为空或空字符串");
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      LogUtil.logD(TAG, localThrowable.toString());
      return;
    }
    new JSONObject();
    JSONObject localJSONObject = EventLog.getSingleton().onEventLogEnd(paramContext.getApplicationContext(), paramString, "");
    if ((localJSONObject != null) || (localJSONObject.length() != 0))
    {
      EventLog.getSingleton().writeEventLogToDatabase(paramContext, localJSONObject);
      return;
    }
    LogUtil.logD(TAG, "onEventEnd(), onEventBegin() is not called!!");
  }
  
  public static void onEventEnd(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      if (!isContext(paramContext, "onEventEnd(...)")) {
        return;
      }
      if ((paramString1 == null) || (paramString1.trim().equals("")))
      {
        LogUtil.logW(TAG, "event_id 不能为空或空字符串");
        return;
      }
      new JSONObject();
      JSONObject localJSONObject = EventLog.getSingleton().onEventLogEnd(paramContext.getApplicationContext(), paramString1, paramString2);
      if ((localJSONObject != null) || (localJSONObject.length() != 0))
      {
        EventLog.getSingleton().writeEventLogToDatabase(paramContext, localJSONObject);
        return;
      }
      LogUtil.logI(TAG, "onEventEnd(), onEventBegin() is not called!!");
      return;
    }
    catch (Throwable localThrowable) {}
  }
  
  public static void onPause(Context paramContext)
  {
    SessionStatic.begin(paramContext);
  }
  
  public static void onResume(Context paramContext)
  {
    SessionStatic.end(paramContext);
    if (SessionStatic.isNewSession())
    {
      SessionAccumulate(paramContext, 1);
      updateOnlineConfig(paramContext);
    }
  }
  
  public static void reportError(Context paramContext, Throwable paramThrowable)
  {
    try
    {
      if (!isContext(paramContext, "exceptionEvent(...)")) {
        return;
      }
      if (paramThrowable != null)
      {
        CrashLog.getSingleton().onCrashLogSave(paramContext, paramThrowable);
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      LogUtil.logD(TAG, localThrowable.toString());
    }
  }
  
  public static void setAppChannel(String paramString)
  {
    EventLog.getSingleton().setAppChannel(paramString);
  }
  
  public static void setAppKey(String paramString)
  {
    EventLog.getSingleton().setAppKey(paramString);
    CrashLog.getSingleton().setAppkey(paramString);
  }
  
  public static void setDebugMode(boolean paramBoolean)
  {
    LogUtil.isDebugLog = Boolean.valueOf(paramBoolean);
  }
  
  public static void updateOnlineConfig(Context paramContext)
  {
    LogUtil.logD(TAG, "updateOnlineConfig() --->");
    new Thread(new Runnable()
    {
      public void run()
      {
        MobJaAgent.getOnlineStrategy(MobJaAgent.this);
        if (Constants.SEND_STRATEGY)
        {
          int i = 1;
          int j = 1;
          try
          {
            if ((EventTable.openSQLiteDatabase(MobJaAgent.this) == null) || (!Constants.ISAPPKEY_VALIDE)) {
              return;
            }
            for (;;)
            {
              if (i != 0)
              {
                JSONArray localJSONArray1 = EventTable.getEventLog(MobJaAgent.this);
                if ((localJSONArray1 != null) && (localJSONArray1.length() != 0)) {
                  EventWorkThreadHandler.getSingleton().postTaskToMainThread(MobJaAgent.this, localJSONArray1, 0);
                }
              }
              else
              {
                label73:
                if (j != 0)
                {
                  JSONArray localJSONArray2 = CrashTable.getCrashLog(MobJaAgent.this);
                  if ((localJSONArray2 == null) || (localJSONArray2.length() == 0)) {
                    break label153;
                  }
                  CrashWorkThreadHandler.getSingleton().postTaskToMainThread(MobJaAgent.this, localJSONArray2, 0);
                }
              }
              try
              {
                for (;;)
                {
                  Thread.sleep(30000L);
                  if ((HttpUtils.getEventNetworkStatus() == 0) || (HttpUtils.getCrashNetworkStatus() == 0)) {
                    return;
                  }
                  if ((i != 0) || (j != 0)) {
                    break;
                  }
                  return;
                  LogUtil.logD(MobJaAgent.TAG, "数据库中没有事件数据");
                  i = 0;
                  break label73;
                  label153:
                  LogUtil.logD(MobJaAgent.TAG, "数据库中没有异常数据");
                  j = 0;
                }
              }
              catch (InterruptedException localInterruptedException)
              {
                for (;;)
                {
                  localInterruptedException.printStackTrace();
                }
              }
            }
            if (Constants.SEND_INTERVAL_STRATEGY) {
              return;
            }
          }
          catch (Throwable localThrowable)
          {
            LogUtil.logD(MobJaAgent.TAG, localThrowable.toString());
            return;
          }
        }
        else if ((EventTable.openSQLiteDatabase(MobJaAgent.this) != null) && (Constants.ISAPPKEY_VALIDE))
        {
          LogDatabaseMonitor.getMonitor().startMonitorLog(MobJaAgent.this);
          Constants.SEND_INTERVAL_STRATEGY = true;
        }
      }
    }).start();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.analytics.MobJaAgent
 * JD-Core Version:    0.7.0.1
 */