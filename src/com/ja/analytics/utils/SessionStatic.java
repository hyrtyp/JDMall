package com.ja.analytics.utils;

import android.content.Context;
import android.content.SharedPreferences;
import com.ja.analytics.logevent.EventLog;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

public class SessionStatic
{
  private static String ENDTIME = "endTime";
  private static String SESSION_TIME = "jd_session_time";
  private static String STARTTIME = "startTime";
  private static long begin;
  private static long end;
  
  public static void begin(Context paramContext)
  {
    try
    {
      begin = System.currentTimeMillis();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static void end(Context paramContext)
  {
    try
    {
      end = System.currentTimeMillis();
      PreferenceUtils.setSessionTimePreferences(paramContext, SESSION_TIME, ENDTIME, String.valueOf(System.currentTimeMillis()));
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  /* Error */
  public static boolean isNewSession()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 37	com/ja/analytics/utils/SessionStatic:begin	J
    //   6: lconst_0
    //   7: lcmp
    //   8: istore_1
    //   9: iconst_0
    //   10: istore_2
    //   11: iload_1
    //   12: ifeq +19 -> 31
    //   15: getstatic 39	com/ja/analytics/utils/SessionStatic:end	J
    //   18: lstore_3
    //   19: lload_3
    //   20: lconst_0
    //   21: lcmp
    //   22: istore 5
    //   24: iconst_0
    //   25: istore_2
    //   26: iload 5
    //   28: ifne +8 -> 36
    //   31: ldc 2
    //   33: monitorexit
    //   34: iload_2
    //   35: ireturn
    //   36: getstatic 39	com/ja/analytics/utils/SessionStatic:end	J
    //   39: getstatic 37	com/ja/analytics/utils/SessionStatic:begin	J
    //   42: lsub
    //   43: ldc2_w 54
    //   46: lcmp
    //   47: istore 6
    //   49: iconst_0
    //   50: istore_2
    //   51: iload 6
    //   53: ifle +5 -> 58
    //   56: iconst_1
    //   57: istore_2
    //   58: lconst_0
    //   59: putstatic 39	com/ja/analytics/utils/SessionStatic:end	J
    //   62: lconst_0
    //   63: putstatic 37	com/ja/analytics/utils/SessionStatic:begin	J
    //   66: goto -35 -> 31
    //   69: astore_0
    //   70: ldc 2
    //   72: monitorexit
    //   73: aload_0
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   69	5	0	localObject	Object
    //   8	4	1	bool1	boolean
    //   10	48	2	bool2	boolean
    //   18	2	3	l	long
    //   22	5	5	bool3	boolean
    //   47	5	6	bool4	boolean
    // Exception table:
    //   from	to	target	type
    //   3	9	69	finally
    //   15	19	69	finally
    //   36	49	69	finally
    //   58	66	69	finally
  }
  
  public static void sendLastSessionTime(Context paramContext)
  {
    SharedPreferences localSharedPreferences = PreferenceUtils.getSessionTimePreferences(paramContext, SESSION_TIME);
    String str1 = localSharedPreferences.getString(STARTTIME, "");
    String str2 = localSharedPreferences.getString(ENDTIME, "");
    if ((!"".equals(str1)) && (!"".equals(str2)))
    {
      LogUtil.logD("begintime==" + str1);
      LogUtil.logD("endtime==" + str2);
    }
    try
    {
      HttpGet localHttpGet = new HttpGet("http://jma.man.jcloud.com/maengine/jmadata/RealTimeTimeLength?starttime=" + str1 + "&stoptime=" + str2 + "&appkey=" + EventLog.getAppkey(paramContext));
      new DefaultHttpClient().execute(localHttpGet);
      return;
    }
    catch (Exception localException)
    {
      LogUtil.logE("SessionStatic.sendLastSessionTime", "sending session time failed");
    }
  }
  
  public static void startSessionTime(Context paramContext)
  {
    PreferenceUtils.setSessionTimePreferences(paramContext, SESSION_TIME, STARTTIME, String.valueOf(System.currentTimeMillis()));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.analytics.utils.SessionStatic
 * JD-Core Version:    0.7.0.1
 */