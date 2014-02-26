package com.ja.analytics.logcrash;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import com.ja.analytics.db.CrashTable;
import com.ja.analytics.logevent.EventLog;
import com.ja.analytics.utils.FileUtils;
import com.ja.analytics.utils.LogUtil;
import com.ja.analytics.utils.ManifestPackageUtils;
import com.ja.analytics.utils.StrUtil;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.JSONObject;

public class CrashLog
{
  public static final String TAG = CrashLog.class.getName();
  private static String appkey = "-";
  private static CrashLog mCrashLogObj = new CrashLog();
  private static String mSendTime;
  private boolean isExceptionAnalysisOn = false;
  
  public static String getAppkey(Context paramContext)
  {
    try
    {
      String str = ManifestPackageUtils.getAppKey(paramContext);
      if (!StrUtil.keyValidation(str))
      {
        LogUtil.logE(TAG, "无效的appkey");
        str = null;
      }
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
    }
    return null;
  }
  
  /* Error */
  private JSONObject getDeviceInfo(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 66	org/json/JSONObject
    //   5: dup
    //   6: invokespecial 67	org/json/JSONObject:<init>	()V
    //   9: astore_2
    //   10: aload_2
    //   11: ldc 69
    //   13: aload_1
    //   14: invokestatic 72	com/ja/analytics/utils/ManifestPackageUtils:getAppVersionCode	(Landroid/content/Context;)Ljava/lang/String;
    //   17: invokevirtual 76	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   20: pop
    //   21: aload_2
    //   22: ldc 78
    //   24: aload_1
    //   25: invokestatic 82	com/ja/analytics/logevent/EventLog:getAppkey	(Landroid/content/Context;)Ljava/lang/String;
    //   28: invokevirtual 76	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   31: pop
    //   32: aload_2
    //   33: ldc 84
    //   35: new 86	java/lang/StringBuilder
    //   38: dup
    //   39: ldc 88
    //   41: invokespecial 91	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   44: getstatic 96	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   47: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   53: invokevirtual 76	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   56: pop
    //   57: aload_2
    //   58: ldc 105
    //   60: getstatic 110	android/os/Build:MODEL	Ljava/lang/String;
    //   63: invokevirtual 76	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   66: pop
    //   67: aload_2
    //   68: ldc 112
    //   70: invokestatic 118	java/lang/System:currentTimeMillis	()J
    //   73: invokevirtual 121	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   76: pop
    //   77: aload_0
    //   78: monitorexit
    //   79: aload_2
    //   80: areturn
    //   81: astore 4
    //   83: getstatic 27	com/ja/analytics/logcrash/CrashLog:TAG	Ljava/lang/String;
    //   86: aload 4
    //   88: invokestatic 125	com/ja/analytics/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   91: pop
    //   92: goto -15 -> 77
    //   95: astore_3
    //   96: aload_0
    //   97: monitorexit
    //   98: aload_3
    //   99: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	100	0	this	CrashLog
    //   0	100	1	paramContext	Context
    //   9	71	2	localJSONObject	JSONObject
    //   95	4	3	localObject	Object
    //   81	6	4	localJSONException	org.json.JSONException
    // Exception table:
    //   from	to	target	type
    //   10	77	81	org/json/JSONException
    //   2	10	95	finally
    //   10	77	95	finally
    //   83	92	95	finally
  }
  
  public static CrashLog getSingleton()
  {
    return mCrashLogObj;
  }
  
  public void checkMenifestPermission(Context paramContext)
  {
    try
    {
      FileUtils.checkMenifestPermission(paramContext, "android.permission.READ_PHONE_STATE");
      FileUtils.checkMenifestPermission(paramContext, "android.permission.INTERNET");
      FileUtils.checkMenifestPermission(paramContext, "android.permission.ACCESS_NETWORK_STATE");
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void clearSendDate()
  {
    mSendTime = "";
  }
  
  public String getSendDate()
  {
    return mSendTime;
  }
  
  public int getSendFalseFlag()
  {
    return 0;
  }
  
  public int getSendOkFlag()
  {
    return 1;
  }
  
  public void onCrashLogSave(Context paramContext, Throwable paramThrowable)
  {
    for (;;)
    {
      JSONObject localJSONObject;
      StringWriter localStringWriter;
      PrintWriter localPrintWriter;
      String str1;
      String str2;
      try
      {
        if (EventLog.getAppkey(paramContext) == null)
        {
          LogUtil.logE(TAG, "没有获取到appkey/appkey无效,放弃保存操作");
          return;
        }
        new JSONObject();
        localJSONObject = getDeviceInfo(paramContext);
      }
      finally {}
      try
      {
        localStringWriter = new StringWriter();
        localPrintWriter = new PrintWriter(localStringWriter);
        paramThrowable.printStackTrace(localPrintWriter);
        localPrintWriter.close();
        str1 = localStringWriter.toString();
        if ((str1 != null) && (str1.length() > 10240))
        {
          str1 = str1.substring(0, 10240) + "... (exceeding part is ignored。)";
          LogUtil.logW(TAG, "异常日志堆栈信息超过10240个字符，截取前10240个字符。");
        }
        str2 = "Caused by:" + paramThrowable.getClass().getName() + ": " + paramThrowable.getMessage();
        if (str2.length() > 1024)
        {
          str2 = str2.substring(0, 1024) + "... (exceeding part is ignored。)";
          LogUtil.logW(TAG, "异常日志标题超过1024个字符，截取前1024个字符。");
        }
        localJSONObject.put("error_msg", str1);
        localJSONObject.put("error_name", str2);
      }
      catch (Exception localException)
      {
        LogUtil.logException(TAG, localException);
        continue;
      }
      if (CrashTable.openSQLiteDatabase(paramContext) != null) {
        CrashTable.insertCrashDataItem(paramContext, localJSONObject);
      }
    }
  }
  
  public void openExceptonDataAnalysis(Context paramContext)
  {
    LogUtil.logD(TAG, "openExceptonDataAnalysis");
    if (!this.isExceptionAnalysisOn)
    {
      this.isExceptionAnalysisOn = true;
      CrashUncaughtExceptionHandler.getSingleton().setUncatchedExceptionHandler(paramContext);
    }
  }
  
  public void setAppkey(String paramString)
  {
    appkey = paramString;
  }
  
  public void setSendDate()
  {
    mSendTime = null;
    mSendTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis()));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.analytics.logcrash.CrashLog
 * JD-Core Version:    0.7.0.1
 */