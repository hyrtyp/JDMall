package com.ja.sdk;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import com.ja.sdk.db.ExceptionTable;
import com.ja.sdk.db.PageAccessTable;
import com.ja.sdk.exception.ExceptionData;
import com.ja.sdk.exceptionsend.SendExceptionDataMainThread;
import com.ja.sdk.framework.ExceptionDataHandle;
import com.ja.sdk.framework.ExceptionMainThread;
import com.ja.sdk.framework.PageAccessMainThread;
import com.ja.sdk.framework.SendStrategyEnum;
import com.ja.sdk.net.HttpCallBackListener;
import com.ja.sdk.net.HttpUtils;
import com.ja.sdk.pagevisit.PageAccessData;
import com.ja.sdk.pagevisitsend.SendPageAccessDataMainThread;
import com.ja.sdk.utils.BackgroundExcutor;
import com.ja.sdk.utils.BackgroundExcutor.BackgroundTask;
import com.ja.sdk.utils.LogUtil;
import org.json.JSONArray;

public class JaMobLogService
  extends Service
{
  private static final String TAG = "JaMobLogService";
  private static boolean isServiceStart = true;
  private static boolean isUncaughtExceptionOn;
  private static Context mContext;
  private static Intent mIntent = new Intent();
  private static ServiceHandler myHandler;
  private IBinder binder = new JaSdkBinder();
  
  static
  {
    isUncaughtExceptionOn = false;
  }
  
  public static void SessionCount(Context paramContext, int paramInt)
  {
    PageAccessData.getSingleInstance().setSessionCount(paramContext, paramInt);
  }
  
  public static void exceptionEvent(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      if (!isContext(paramContext, "exceptionEvent(...)")) {
        return;
      }
      if ((paramString1 != null) && (!paramString1.equals("")))
      {
        ExceptionData.getSingleInstance().exceptionDataHandle(paramContext.getApplicationContext(), paramString1, paramString2);
        SendStrategyEnum localSendStrategyEnum = SendExceptionDataMainThread.getSignleInstance().getUncaughtExceptionSendStrategy();
        if ((localSendStrategyEnum != null) && (localSendStrategyEnum.name().equals("IMMEDIATELY")))
        {
          sendExceptionData(paramContext);
          return;
        }
      }
    }
    catch (Throwable localThrowable)
    {
      LogUtil.logD("JaMobLogService", localThrowable.toString());
    }
  }
  
  public static void exceptionEventAutoSend(Context paramContext, String paramString1, String paramString2)
  {
    JSONArray localJSONArray;
    try
    {
      if (!isContext(paramContext, "exceptionEvent(...)")) {
        return;
      }
      if ((paramString1 == null) || (paramString1.equals(""))) {
        return;
      }
      ExceptionData.getSingleInstance().exceptionDataHandle(paramContext.getApplicationContext(), paramString1, paramString2);
      localJSONArray = ExceptionTable.getAllExceptionDataNotSendItem(paramContext);
      if ((localJSONArray == null) || (localJSONArray.length() < 5))
      {
        LogUtil.logD("JaMobLogService", " exceptionArray == null || exceptionArray.length() < 5");
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      LogUtil.logD("JaMobLogService", localThrowable.toString());
      return;
    }
    if (localJSONArray.length() >= 5)
    {
      LogUtil.logD("JaMobLogService", " exceptionArray.length() >= 5");
      sendExceptionData(paramContext);
    }
  }
  
  public static Handler getHandler()
  {
    return myHandler;
  }
  
  private static boolean getUncaughtExceptionFlag()
  {
    return isUncaughtExceptionOn;
  }
  
  private static boolean isCalledByTargetObject(Class paramClass, String paramString)
  {
    StackTraceElement[] arrayOfStackTraceElement = new Throwable().getStackTrace();
    Object[] arrayOfObject1 = new Object[4];
    arrayOfObject1[0] = "isCalledBy";
    arrayOfObject1[1] = Integer.valueOf(arrayOfStackTraceElement.length);
    arrayOfObject1[2] = paramClass;
    arrayOfObject1[3] = paramString;
    LogUtil.logD(arrayOfObject1);
    int i;
    if (arrayOfStackTraceElement.length >= 2)
    {
      i = 2;
      if (i < arrayOfStackTraceElement.length) {}
    }
    else
    {
      return false;
    }
    StackTraceElement localStackTraceElement = arrayOfStackTraceElement[i];
    if (!localStackTraceElement.getMethodName().equals(paramString)) {}
    for (;;)
    {
      i++;
      break;
      try
      {
        Class localClass = Class.forName(localStackTraceElement.getClassName());
        LogUtil.logD(new Object[] { "isCalledBy", localClass });
        if (localClass == paramClass) {
          return true;
        }
        while ((localClass.getSuperclass() != null) && (localClass.getSuperclass() != paramClass))
        {
          localClass = localClass.getSuperclass();
          LogUtil.logD(new Object[] { "isCalledBy", localClass });
        }
        if (localClass.getSuperclass() == paramClass)
        {
          Object[] arrayOfObject2 = new Object[3];
          arrayOfObject2[0] = "isCalledBy hit!";
          arrayOfObject2[1] = localClass.getSuperclass();
          arrayOfObject2[2] = paramClass;
          LogUtil.logD(arrayOfObject2);
          return true;
        }
      }
      catch (Exception localException)
      {
        LogUtil.logException(localException);
      }
    }
  }
  
  private static boolean isContext(Context paramContext, String paramString)
  {
    if (paramContext == null)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = "JaMobLogService";
      arrayOfObject[1] = (paramString + ":context=null");
      LogUtil.logD(arrayOfObject);
      return false;
    }
    return true;
  }
  
  private static void onError(Context paramContext)
  {
    if (!isContext(paramContext, "onError(...)")) {
      return;
    }
    ExceptionDataHandle.getSingleInstance().openExceptonDataAnalysis(paramContext.getApplicationContext());
    SendExceptionDataMainThread.getSignleInstance().setUncaughtExcetpionFlag(true, paramContext.getApplicationContext());
  }
  
  public static void pageAccessEvent(Context paramContext, String paramString)
  {
    pageAccessEvent(paramContext, paramString, null, null, null, 0L);
  }
  
  public static void pageAccessEvent(Context paramContext, String paramString1, String paramString2)
  {
    pageAccessEvent(paramContext, paramString1, paramString2, null, null, 0L);
  }
  
  public static void pageAccessEvent(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    pageAccessEvent(paramContext, paramString1, paramString2, paramString3, paramString4, 0L);
  }
  
  public static void pageAccessEvent(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    try
    {
      if (!isContext(paramContext, "pageAccessEvent(...)")) {
        return;
      }
      if ((paramString1 != null) && (!paramString1.equals("")))
      {
        PageAccessData.getSingleInstance().pageAccessDataHandle(paramContext.getApplicationContext(), paramString1, paramString2, paramString3, paramString4, paramLong);
        SendStrategyEnum localSendStrategyEnum = SendPageAccessDataMainThread.getSignleInstance().getDataSendStrategy(paramContext);
        if ((localSendStrategyEnum != null) && (localSendStrategyEnum.name().equals("IMMEDIATELY")))
        {
          LogUtil.logD("JaMobLogService", " sendStrategy != null && sendStrategy.equals(IMMEDIATELY)");
          sendPageAccessData(paramContext);
          return;
        }
      }
    }
    catch (Throwable localThrowable)
    {
      LogUtil.logD("JaMobLogService", localThrowable.toString());
    }
  }
  
  public static void pageAccessEventAutoSend(Context paramContext, String paramString)
  {
    pageAccessEventAutoSend(paramContext, paramString, null, null, null, 0L);
  }
  
  public static void pageAccessEventAutoSend(Context paramContext, String paramString1, String paramString2)
  {
    pageAccessEventAutoSend(paramContext, paramString1, paramString2, null, null, 0L);
  }
  
  public static void pageAccessEventAutoSend(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    pageAccessEventAutoSend(paramContext, paramString1, paramString2, paramString3, paramString4, 0L);
  }
  
  public static void pageAccessEventAutoSend(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    JSONArray localJSONArray;
    try
    {
      if (!isContext(paramContext, "pageAccessEvent(...)")) {
        return;
      }
      if ((paramString1 == null) || (paramString1.equals(""))) {
        return;
      }
      PageAccessData.getSingleInstance().pageAccessDataHandle(paramContext.getApplicationContext(), paramString1, paramString2, paramString3, paramString4, paramLong);
      localJSONArray = PageAccessTable.getAllPageAccessDataNotSendItem(paramContext);
      if ((localJSONArray == null) || (localJSONArray.length() < 5))
      {
        LogUtil.logD("JaMobLogService", " pageAccessArray == null || pageAccessArray.length() < 5");
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      LogUtil.logD("JaMobLogService", localThrowable.toString());
      return;
    }
    if (localJSONArray.length() >= 5)
    {
      LogUtil.logD("JaMobLogService", " pageAccessArray.length() >= 5");
      sendPageAccessData(paramContext);
    }
  }
  
  public static void sendExceptionData(Context paramContext)
  {
    if (!isServiceStart) {
      mContext.startService(mIntent);
    }
    try
    {
      LogUtil.logD("JaMobLogService", "sendExceptionData=>");
      if (!ExceptionMainThread.getSingleInstance().isMainWorkThreadOk())
      {
        LogUtil.logD("JaMobLogService", "ExceptionMainThread is not run! start to run!");
        ExceptionMainThread.getSingleInstance().startMainWorkThread(paramContext.getApplicationContext());
        return;
      }
      if (!ExceptionMainThread.getSingleInstance().getMainWorkThreadRunFlag())
      {
        LogUtil.logD("JaMobLogService", "ExceptionMainThread is not run! start it!!");
        ExceptionMainThread.getSingleInstance().run();
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      LogUtil.logD("JaMobLogService", localThrowable.toString());
      return;
    }
    LogUtil.logD("JaMobLogService", "ExceptionMainThread is run! directly send data!!");
    SendExceptionDataMainThread.getSignleInstance().postTaskToMainThread(paramContext);
  }
  
  public static void sendPageAccessData(Context paramContext)
  {
    if (!isServiceStart) {
      mContext.startService(mIntent);
    }
    try
    {
      LogUtil.logD("JaMobLogService", "sendPageAccessData=>");
      if (!PageAccessMainThread.getSingleInstance().isMainWorkThreadOk())
      {
        LogUtil.logD("JaMobLogService", "PageAccessMainThread is not run! start to run!");
        PageAccessMainThread.getSingleInstance().startMainWorkThread(paramContext.getApplicationContext());
        return;
      }
      if (!PageAccessMainThread.getSingleInstance().getMainWorkThreadRunFlag())
      {
        LogUtil.logD("JaMobLogService", "PageAccessMainThread is not run! start it!!");
        PageAccessMainThread.getSingleInstance().run();
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      LogUtil.logD("JaMobLogService", localThrowable.toString());
      return;
    }
    LogUtil.logD("JaMobLogService", "PageAccessMainThread is run! directly send data!!");
    SendPageAccessDataMainThread.getSignleInstance().postTaskToMainThread(paramContext);
  }
  
  public static void setAllSiteIdentify(String paramString)
  {
    PageAccessData.getSingleInstance().setAllSiteIdentify(paramString);
  }
  
  public static void setAppChannel(String paramString)
  {
    PageAccessData.getSingleInstance().setAppChannel(paramString);
  }
  
  public static void setAppId(String paramString)
  {
    PageAccessData.getSingleInstance().setAppId(paramString);
  }
  
  public static void setSendDataStrategy(Context paramContext, SendStrategyEnum paramSendStrategyEnum)
  {
    try
    {
      if (!isContext(paramContext, "setSendDataStrategy(...)")) {
        return;
      }
      if (!isCalledByTargetObject(paramContext.getClass(), "onCreate")) {
        throw new SecurityException("setSendDataStrategy()is not called in Activity.onCreate()!");
      }
    }
    catch (Throwable localThrowable)
    {
      LogUtil.logD("JaMobLogService", localThrowable.toString());
      return;
    }
    SendExceptionDataMainThread.getSignleInstance().setUncaughtExceptionSendStrategy(paramContext, paramSendStrategyEnum);
    SendPageAccessDataMainThread.getSignleInstance().setPageAccessSendStrategy(paramContext, paramSendStrategyEnum);
  }
  
  private static void setUncaughtExceptionFlagOn(Boolean paramBoolean)
  {
    isUncaughtExceptionOn = paramBoolean.booleanValue();
  }
  
  public static void setUncaughtExceptionOn(Context paramContext, int paramInt)
  {
    try
    {
      if (!isContext(paramContext, "setUncaughtExceptionOn(...)")) {
        return;
      }
      if (!isCalledByTargetObject(paramContext.getClass(), "onCreate")) {
        throw new SecurityException("setUncaughtExceptionOn()is not called in Activity.onCreate()!");
      }
    }
    catch (Throwable localThrowable)
    {
      LogUtil.logD("JaMobLogService", localThrowable.toString());
      return;
    }
    if (!getUncaughtExceptionFlag())
    {
      setUncaughtExceptionFlagOn(Boolean.valueOf(true));
      if ((paramInt & 0x1) != 0) {
        onError(paramContext);
      }
    }
  }
  
  public static void startService(Context paramContext, Intent paramIntent)
  {
    mContext = paramContext;
    mIntent = paramIntent;
    paramContext.startService(paramIntent);
  }
  
  public static void testJaServerAutoSend(final Context paramContext, final JSONArray paramJSONArray)
  {
    try
    {
      SendStrategyEnum localSendStrategyEnum = SendExceptionDataMainThread.getSignleInstance().getUncaughtExceptionSendStrategy();
      int i = 0;
      if (localSendStrategyEnum != null)
      {
        boolean bool = localSendStrategyEnum.name().equals("IMMEDIATELY");
        i = 0;
        if (bool) {
          i = 1;
        }
      }
      BackgroundExcutor.run(new BackgroundExcutor.BackgroundTask(i)
      {
        public void run()
        {
          try
          {
            HttpUtils.postException(paramContext, "http://jlog.jd.com/mobile/log/receiveMobileAppExceptionLog.action", paramJSONArray, new HttpCallBackListener()
            {
              public void onEnd(JSONArray paramAnonymous2JSONArray)
                throws Exception
              {
                LogUtil.logD("JaMobLogService", "testJaServerAutoSend onEnd result : " + paramAnonymous2JSONArray);
              }
              
              public void onError(String paramAnonymous2String, JSONArray paramAnonymous2JSONArray)
                throws Exception
              {
                try
                {
                  LogUtil.logD("JaMobLogService", "testJaServerAutoSend onError url : " + paramAnonymous2String);
                  return;
                }
                catch (Exception localException)
                {
                  LogUtil.logD("JaMobLogService", localException.toString());
                }
              }
              
              public void onStart(String paramAnonymous2String, JSONArray paramAnonymous2JSONArray)
                throws Exception
              {}
            });
            return;
          }
          catch (Exception localException)
          {
            LogUtil.logD("JaMobLogService", localException.toString());
          }
        }
      });
      BackgroundExcutor.run(new BackgroundExcutor.BackgroundTask(i)
      {
        public void run()
        {
          try
          {
            HttpUtils.postPageVisit(paramContext, "http://jlog.jd.com/mobile/log/receiveMobileAppExceptionLog.action", paramJSONArray, new HttpCallBackListener()
            {
              public void onEnd(JSONArray paramAnonymous2JSONArray)
                throws Exception
              {
                LogUtil.logD("JaMobLogService", "testJaServerAutoSend onEnd result : " + paramAnonymous2JSONArray);
              }
              
              public void onError(String paramAnonymous2String, JSONArray paramAnonymous2JSONArray)
                throws Exception
              {
                try
                {
                  LogUtil.logD("JaMobLogService", "testJaServerAutoSend onError url : " + paramAnonymous2String);
                  return;
                }
                catch (Exception localException)
                {
                  LogUtil.logD("JaMobLogService", localException.toString());
                }
              }
              
              public void onStart(String paramAnonymous2String, JSONArray paramAnonymous2JSONArray)
                throws Exception
              {}
            });
            return;
          }
          catch (Exception localException)
          {
            LogUtil.logD("JaMobLogService", localException.toString());
          }
        }
      });
      BackgroundExcutor.run(new BackgroundExcutor.BackgroundTask(i)
      {
        public void run()
        {
          try
          {
            HttpUtils.postPageVisit(paramContext, "http://music.jd.com/", paramJSONArray, new HttpCallBackListener()
            {
              public void onEnd(JSONArray paramAnonymous2JSONArray)
                throws Exception
              {
                LogUtil.logD("JaMobLogService", "testJaServerAutoSend onEnd result : " + paramAnonymous2JSONArray);
              }
              
              public void onError(String paramAnonymous2String, JSONArray paramAnonymous2JSONArray)
                throws Exception
              {
                try
                {
                  LogUtil.logD("JaMobLogService", "testJaServerAutoSend onError url : " + paramAnonymous2String);
                  return;
                }
                catch (Exception localException)
                {
                  LogUtil.logD("JaMobLogService", localException.toString());
                }
              }
              
              public void onStart(String paramAnonymous2String, JSONArray paramAnonymous2JSONArray)
                throws Exception
              {}
            });
            return;
          }
          catch (Exception localException)
          {
            LogUtil.logD("JaMobLogService", localException.toString());
          }
        }
      });
      BackgroundExcutor.run(new BackgroundExcutor.BackgroundTask(i)
      {
        public void run()
        {
          try
          {
            HttpUtils.postPageVisit(paramContext, "http://notes.e.jd.com/", paramJSONArray, new HttpCallBackListener()
            {
              public void onEnd(JSONArray paramAnonymous2JSONArray)
                throws Exception
              {
                LogUtil.logD("JaMobLogService", "testJaServerAutoSend onEnd result : " + paramAnonymous2JSONArray);
              }
              
              public void onError(String paramAnonymous2String, JSONArray paramAnonymous2JSONArray)
                throws Exception
              {
                try
                {
                  LogUtil.logD("JaMobLogService", "testJaServerAutoSend onError url : " + paramAnonymous2String);
                  return;
                }
                catch (Exception localException)
                {
                  LogUtil.logD("JaMobLogService", localException.toString());
                }
              }
              
              public void onStart(String paramAnonymous2String, JSONArray paramAnonymous2JSONArray)
                throws Exception
              {}
            });
            return;
          }
          catch (Exception localException)
          {
            LogUtil.logD("JaMobLogService", localException.toString());
          }
        }
      });
      return;
    }
    catch (Throwable localThrowable)
    {
      LogUtil.logD("JaMobLogService", localThrowable.toString());
    }
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return this.binder;
  }
  
  public void onCreate()
  {
    LogUtil.logD("JaMobLogService", "onCreate");
    LogUtil.logD("JaMobLogService", "Create the ServiceHandler()");
    myHandler = new ServiceHandler();
    super.onCreate();
  }
  
  public void onDestroy()
  {
    LogUtil.logD("JaMobLogService", "onDestroy");
    ExceptionTable.closeSQLiteDatabase(mContext);
    PageAccessTable.closeSQLiteDatabase(mContext);
    super.onDestroy();
  }
  
  public void onStart(Intent paramIntent, int paramInt)
  {
    LogUtil.logD("JaMobLogService", "onStart");
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    LogUtil.logD("JaMobLogService", "onStartCommand, startId=: " + paramInt2);
    return 1;
  }
  
  public class JaSdkBinder
    extends Binder
  {
    public JaSdkBinder() {}
    
    JaMobLogService getService()
    {
      return JaMobLogService.this;
    }
  }
  
  class ServiceHandler
    extends Handler
  {
    public ServiceHandler() {}
    
    public void handleMessage(Message paramMessage)
    {
      super.handleMessage(paramMessage);
      switch (paramMessage.what)
      {
      }
      JSONArray localJSONArray1;
      JSONArray localJSONArray2;
      do
      {
        return;
        LogUtil.logD("JaMobLogService", "Get the message of  STOP_SERVICE");
        localJSONArray1 = PageAccessTable.getAllPageAccessDataNotSendItem(JaMobLogService.mContext);
        localJSONArray2 = ExceptionTable.getAllExceptionDataNotSendItem(JaMobLogService.mContext);
      } while (((localJSONArray1 == null) || (localJSONArray1.length() == 0)) && ((localJSONArray2 != null) && (localJSONArray2.length() != 0) && ((HttpUtils.getPageVisitSendNetWorkStatus().booleanValue()) || (HttpUtils.getExceptionSendNetWorkStatus().booleanValue()))));
      LogUtil.logD("JaMobLogService", "Stop the SDK service...");
      JaMobLogService.this.stopSelf();
      JaMobLogService.isServiceStart = false;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.sdk.JaMobLogService
 * JD-Core Version:    0.7.0.1
 */