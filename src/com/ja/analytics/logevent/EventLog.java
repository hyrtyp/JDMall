package com.ja.analytics.logevent;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Build.VERSION;
import com.ja.analytics.db.EventTable;
import com.ja.analytics.utils.DevicesUtils;
import com.ja.analytics.utils.DisplayUtils;
import com.ja.analytics.utils.LogUtil;
import com.ja.analytics.utils.ManifestPackageUtils;
import com.ja.analytics.utils.NetUtils;
import com.ja.analytics.utils.PreferenceUtils;
import com.ja.analytics.utils.StrUtil;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class EventLog
{
  private static final String TAG = EventLog.class.getName();
  private static String appChannal;
  private static String appKey;
  private static String durationTime;
  private static EventLog mEventLog = new EventLog();
  private static String mFirtStartTime;
  private static int mOldSessionCount;
  private static int mSessionCount = 0;
  private static String reqTime;
  private long db_ID;
  private final DurationEventCollection eventCollection = new DurationEventCollection();
  
  private JSONObject convertMap2Json(Map<String, String> paramMap)
  {
    for (;;)
    {
      try
      {
        LogUtil.logD(TAG, "convertMap2Json() --->");
        try
        {
          localJSONObject = new JSONObject();
          LogUtil.logD(TAG, "convertMap2Json() ---1");
          if (paramMap != null) {
            continue;
          }
          localJSONObject = null;
        }
        catch (Exception localException)
        {
          Iterator localIterator;
          int i;
          LogUtil.logE(TAG, "exception when convert map to json");
          JSONObject localJSONObject = null;
          continue;
          i++;
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          localJSONObject.put((String)localEntry.getKey(), (String)localEntry.getValue());
          continue;
        }
        return localJSONObject;
      }
      finally {}
      localIterator = paramMap.entrySet().iterator();
      i = 0;
      if ((localIterator.hasNext()) && (i < paramMap.size())) {
        continue;
      }
      LogUtil.logD(TAG, localJSONObject.toString());
    }
  }
  
  public static String getAccessKey(Context paramContext)
  {
    try
    {
      String str = ManifestPackageUtils.getAccessKey(paramContext);
      if (!StrUtil.accessKeyValidation(str))
      {
        LogUtil.logE(TAG, "无效的accesskey:" + str);
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
  
  public static String getAppChannel(Context paramContext)
  {
    try
    {
      String str = ManifestPackageUtils.getChannel(paramContext);
      if ((str == null) || ("".equals(str.trim()))) {
        str = appChannal;
      }
      if (!StrUtil.channelValidation(str))
      {
        LogUtil.logE(TAG, "无效的channel:" + str);
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
  
  public static String getAppkey(Context paramContext)
  {
    try
    {
      String str = ManifestPackageUtils.getAppKey(paramContext);
      if ((str == null) || ("".equals(str.trim()))) {
        str = appKey;
      }
      if (!StrUtil.keyValidation(str))
      {
        LogUtil.logE(TAG, "无效的appkey:" + str);
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
  
  public static EventLog getSingleton()
  {
    return mEventLog;
  }
  
  private Boolean isNewSession()
  {
    if (mSessionCount - mOldSessionCount > 0)
    {
      LogUtil.logD(TAG, "The new session: " + mSessionCount);
      return Boolean.valueOf(true);
    }
    return Boolean.valueOf(false);
  }
  
  private JSONObject onCommonData(Context paramContext, String paramString)
  {
    localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("a", string2Json(paramString));
      LogUtil.logD(TAG, "过滤之后的数据:" + string2Json(paramString));
      localJSONObject.put("hs", DisplayUtils.GetOrientation(paramContext));
      long[] arrayOfLong = NetUtils.getTrafficStats(paramContext, PreferenceUtils.getSharedPreferences(paramContext, "__jd_mob_preference"));
      if (arrayOfLong != null)
      {
        localJSONObject.put("ub", arrayOfLong[1]);
        localJSONObject.put("db", arrayOfLong[0]);
      }
      for (;;)
      {
        localJSONObject.put("v", getSessionCount());
        return localJSONObject;
        localJSONObject.put("ub", 0);
        localJSONObject.put("db", 0);
      }
      return localJSONObject;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public static String setFirstStartTime(Context paramContext)
  {
    mFirtStartTime = "";
    mFirtStartTime = new SimpleDateFormat("yyyyMMdd").format(new Date(System.currentTimeMillis()));
    SharedPreferences localSharedPreferences = PreferenceUtils.getSharedPreferences(paramContext, "__jd_mob_preference");
    String str = localSharedPreferences.getString("firstStartTime", "");
    if (str == "")
    {
      localSharedPreferences.edit().putString("firstStartTime", mFirtStartTime).commit();
      str = mFirtStartTime;
    }
    return str;
  }
  
  private String string2Json(String paramString)
  {
    if (paramString == null) {
      paramString = "";
    }
    return paramString;
  }
  
  /* Error */
  public void checkMenifestPermission(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 281	com/ja/analytics/logevent/EventLog:isNewSession	()Ljava/lang/Boolean;
    //   6: invokevirtual 284	java/lang/Boolean:booleanValue	()Z
    //   9: istore_3
    //   10: iload_3
    //   11: ifne +6 -> 17
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: getstatic 24	com/ja/analytics/logevent/EventLog:mSessionCount	I
    //   20: putstatic 174	com/ja/analytics/logevent/EventLog:mOldSessionCount	I
    //   23: aload_1
    //   24: ldc_w 286
    //   27: invokestatic 291	com/ja/analytics/utils/FileUtils:checkMenifestPermission	(Landroid/content/Context;Ljava/lang/String;)V
    //   30: aload_1
    //   31: ldc_w 293
    //   34: invokestatic 291	com/ja/analytics/utils/FileUtils:checkMenifestPermission	(Landroid/content/Context;Ljava/lang/String;)V
    //   37: aload_1
    //   38: ldc_w 295
    //   41: invokestatic 291	com/ja/analytics/utils/FileUtils:checkMenifestPermission	(Landroid/content/Context;Ljava/lang/String;)V
    //   44: goto -30 -> 14
    //   47: astore_2
    //   48: aload_0
    //   49: monitorexit
    //   50: aload_2
    //   51: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	this	EventLog
    //   0	52	1	paramContext	Context
    //   47	4	2	localObject	Object
    //   9	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	10	47	finally
    //   17	44	47	finally
  }
  
  public void clearSendDate()
  {
    reqTime = "";
  }
  
  public void clearSessionCount()
  {
    mSessionCount = 0;
  }
  
  public void compositeEVMEventLog(Context paramContext, String paramString, Map paramMap, long paramLong)
  {
    LogUtil.logD(TAG, "compositeEVMEventLog() --->");
    if (paramString == null) {
      return;
    }
    checkMenifestPermission(paramContext);
    JSONObject localJSONObject1 = new JSONObject();
    LogUtil.logD(TAG, "过滤之前的数据:" + paramString);
    try
    {
      localJSONObject1 = onCommonData(paramContext, paramString);
      if (paramMap != null)
      {
        new JSONObject();
        JSONObject localJSONObject2 = convertMap2Json(paramMap);
        if (localJSONObject2 != null)
        {
          localJSONObject2.toString();
          localJSONObject1.put("am", localJSONObject2);
        }
      }
      localJSONObject1.put("dt", paramLong);
      localJSONObject1.put("ct1", System.currentTimeMillis() - paramLong);
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        LogUtil.logE(TAG, localJSONException.toString());
      }
    }
    writeEventLogToDatabase(paramContext, localJSONObject1);
  }
  
  public JSONObject getProtocolHeader(Context paramContext)
  {
    for (;;)
    {
      JSONObject localJSONObject;
      try
      {
        localJSONObject = new JSONObject();
        try
        {
          localJSONObject.put("fs", setFirstStartTime(paramContext));
          if (getAppkey(paramContext) != null) {
            break label273;
          }
          str = ManifestPackageUtils.ReadCofigInfoFromManifest(paramContext, "JD_APPKEY");
          if (str != "") {
            continue;
          }
          localJSONObject.put("app_key", "-");
          localJSONObject.put("sr", DisplayUtils.GetResolution(paramContext));
          localJSONObject.put("n", NetUtils.getNetworkTypeName(paramContext));
          localJSONObject.put("k", "1.2");
          localJSONObject.put("os", "Android|" + Build.VERSION.RELEASE);
          localJSONObject.put("c", ManifestPackageUtils.getAppVersionCode(paramContext));
          if (getAppChannel(paramContext) != null) {
            break label288;
          }
          localJSONObject.put("sc", ManifestPackageUtils.ReadCofigInfoFromManifest(paramContext, "JD_CHANNEL"));
          localJSONObject.put("mo", NetUtils.getNetworkOperators(paramContext));
          localJSONObject.put("u", DevicesUtils.getDeviceId2(paramContext));
          localJSONObject.put("d", Build.MODEL);
        }
        catch (JSONException localJSONException)
        {
          String str;
          SharedPreferences localSharedPreferences;
          LogUtil.logException(TAG, localJSONException);
          continue;
        }
        localSharedPreferences = PreferenceUtils.getSharedPreferences(paramContext, "__jd_mob_preference");
        if (localSharedPreferences.getString("protocolHeader", "") == "") {
          localSharedPreferences.edit().putString("protocolHeader", localJSONObject.toString()).commit();
        }
        return localJSONObject;
      }
      finally {}
      localJSONObject.put("app_key", str);
      continue;
      label273:
      localJSONObject.put("app_key", getAppkey(paramContext));
      continue;
      label288:
      localJSONObject.put("sc", getAppChannel(paramContext));
    }
  }
  
  public String getSendDate()
  {
    return reqTime;
  }
  
  public int getSendFalseFlag()
  {
    return 0;
  }
  
  public int getSendOkFlag()
  {
    return 1;
  }
  
  public int getSessionCount()
  {
    LogUtil.logD(TAG, "getSessionCount() return： " + mSessionCount);
    return mSessionCount;
  }
  
  /* Error */
  public void onEVMEventLogBegin(Context paramContext, String paramString1, Map<String, String> paramMap, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 32	com/ja/analytics/logevent/EventLog:TAG	Ljava/lang/String;
    //   5: ldc_w 410
    //   8: invokestatic 55	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   11: pop
    //   12: aload_2
    //   13: ifnonnull +6 -> 19
    //   16: aload_0
    //   17: monitorexit
    //   18: return
    //   19: new 412	java/lang/StringBuffer
    //   22: dup
    //   23: ldc_w 414
    //   26: invokespecial 415	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   29: aload_2
    //   30: invokevirtual 418	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   33: aload 4
    //   35: invokevirtual 418	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   38: invokevirtual 419	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   41: astore 7
    //   43: aload_0
    //   44: getfield 43	com/ja/analytics/logevent/EventLog:eventCollection	Lcom/ja/analytics/logevent/DurationEventCollection;
    //   47: aload 7
    //   49: invokevirtual 422	com/ja/analytics/logevent/DurationEventCollection:saveEventBeginTime	(Ljava/lang/String;)V
    //   52: aload_0
    //   53: getfield 43	com/ja/analytics/logevent/EventLog:eventCollection	Lcom/ja/analytics/logevent/DurationEventCollection;
    //   56: aload 7
    //   58: aload_3
    //   59: invokevirtual 426	com/ja/analytics/logevent/DurationEventCollection:saveEventParamMap	(Ljava/lang/String;Ljava/util/Map;)V
    //   62: goto -46 -> 16
    //   65: astore 5
    //   67: aload_0
    //   68: monitorexit
    //   69: aload 5
    //   71: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	72	0	this	EventLog
    //   0	72	1	paramContext	Context
    //   0	72	2	paramString1	String
    //   0	72	3	paramMap	Map<String, String>
    //   0	72	4	paramString2	String
    //   65	5	5	localObject	Object
    //   41	16	7	str	String
    // Exception table:
    //   from	to	target	type
    //   2	12	65	finally
    //   19	62	65	finally
  }
  
  public JSONObject onEVMEventLogEnd(Context paramContext, String paramString1, String paramString2)
  {
    for (;;)
    {
      JSONObject localJSONObject1;
      String str;
      long l;
      try
      {
        LogUtil.logD(TAG, "onEVMEventLogEnd() --->");
        localJSONObject1 = null;
        if (paramString1 == null) {
          return localJSONObject1;
        }
        checkMenifestPermission(paramContext);
        str = "_ekm_" + paramString1 + paramString2;
        l = this.eventCollection.getEventBeginTime(str).longValue();
        if (l == -1L)
        {
          LogUtil.logE(TAG, "onEVMEventLogEnd(), onEVMEventLogBegin() not called!!");
          localJSONObject1 = null;
          continue;
        }
        localJSONObject1 = new JSONObject();
      }
      finally {}
      try
      {
        localJSONObject1 = onCommonData(paramContext, paramString1);
        Map localMap = this.eventCollection.getEventParamMap(str);
        if (localMap != null)
        {
          new JSONObject();
          JSONObject localJSONObject2 = convertMap2Json(localMap);
          if (localJSONObject2 != null)
          {
            localJSONObject2.toString();
            localJSONObject1.put("am", localJSONObject2);
          }
        }
        localJSONObject1.put("dt", System.currentTimeMillis() - l);
        localJSONObject1.put("ct1", l);
      }
      catch (JSONException localJSONException)
      {
        LogUtil.logE(TAG, localJSONException.toString());
      }
    }
  }
  
  public JSONObject onEventDuration(Context paramContext, String paramString, Map<String, String> paramMap, long paramLong)
  {
    for (;;)
    {
      JSONObject localJSONObject1;
      try
      {
        localJSONObject1 = new JSONObject();
        try
        {
          localJSONObject1 = onCommonData(paramContext, paramString);
          if (paramMap != null)
          {
            new JSONObject();
            JSONObject localJSONObject2 = convertMap2Json(paramMap);
            if (localJSONObject2 == null) {
              continue;
            }
            localJSONObject2.toString();
            localJSONObject1.put("am", localJSONObject2);
          }
          localJSONObject1.put("dt", paramLong);
          localJSONObject1.put("ct1", System.currentTimeMillis());
        }
        catch (Exception localException)
        {
          continue;
        }
        return localJSONObject1;
      }
      finally {}
      localJSONObject1.put("am", "");
    }
  }
  
  /* Error */
  public JSONObject onEventLog(Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 32	com/ja/analytics/logevent/EventLog:TAG	Ljava/lang/String;
    //   5: ldc_w 452
    //   8: invokestatic 55	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   11: pop
    //   12: aload_2
    //   13: ifnonnull +11 -> 24
    //   16: aconst_null
    //   17: astore 6
    //   19: aload_0
    //   20: monitorexit
    //   21: aload 6
    //   23: areturn
    //   24: aload_0
    //   25: aload_1
    //   26: invokevirtual 307	com/ja/analytics/logevent/EventLog:checkMenifestPermission	(Landroid/content/Context;)V
    //   29: new 57	org/json/JSONObject
    //   32: dup
    //   33: invokespecial 58	org/json/JSONObject:<init>	()V
    //   36: astore 6
    //   38: getstatic 32	com/ja/analytics/logevent/EventLog:TAG	Ljava/lang/String;
    //   41: new 124	java/lang/StringBuilder
    //   44: dup
    //   45: ldc_w 309
    //   48: invokespecial 129	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   51: aload_2
    //   52: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: invokevirtual 134	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   58: invokestatic 55	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   61: pop
    //   62: aload_0
    //   63: aload_1
    //   64: aload_2
    //   65: invokespecial 311	com/ja/analytics/logevent/EventLog:onCommonData	(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    //   68: astore 6
    //   70: new 57	org/json/JSONObject
    //   73: dup
    //   74: invokespecial 58	org/json/JSONObject:<init>	()V
    //   77: astore 10
    //   79: aload_3
    //   80: ifnull +26 -> 106
    //   83: ldc 143
    //   85: aload_3
    //   86: invokevirtual 150	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   89: ifne +17 -> 106
    //   92: aload 10
    //   94: ldc_w 454
    //   97: aload_0
    //   98: aload_3
    //   99: invokespecial 193	com/ja/analytics/logevent/EventLog:string2Json	(Ljava/lang/String;)Ljava/lang/String;
    //   102: invokevirtual 108	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   105: pop
    //   106: aload 6
    //   108: ldc_w 315
    //   111: aload 10
    //   113: invokevirtual 108	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   116: pop
    //   117: aload 6
    //   119: ldc_w 317
    //   122: iconst_0
    //   123: invokevirtual 206	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   126: pop
    //   127: aload 6
    //   129: ldc_w 319
    //   132: invokestatic 249	java/lang/System:currentTimeMillis	()J
    //   135: invokevirtual 225	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   138: pop
    //   139: goto -120 -> 19
    //   142: astore 8
    //   144: getstatic 32	com/ja/analytics/logevent/EventLog:TAG	Ljava/lang/String;
    //   147: aload 8
    //   149: invokevirtual 324	org/json/JSONException:toString	()Ljava/lang/String;
    //   152: invokestatic 90	com/ja/analytics/utils/LogUtil:logE	(Ljava/lang/String;Ljava/lang/String;)I
    //   155: pop
    //   156: goto -137 -> 19
    //   159: astore 4
    //   161: aload_0
    //   162: monitorexit
    //   163: aload 4
    //   165: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	166	0	this	EventLog
    //   0	166	1	paramContext	Context
    //   0	166	2	paramString1	String
    //   0	166	3	paramString2	String
    //   159	5	4	localObject	Object
    //   17	111	6	localJSONObject1	JSONObject
    //   142	6	8	localJSONException	JSONException
    //   77	35	10	localJSONObject2	JSONObject
    // Exception table:
    //   from	to	target	type
    //   62	79	142	org/json/JSONException
    //   83	106	142	org/json/JSONException
    //   106	139	142	org/json/JSONException
    //   2	12	159	finally
    //   24	62	159	finally
    //   62	79	159	finally
    //   83	106	159	finally
    //   106	139	159	finally
    //   144	156	159	finally
  }
  
  /* Error */
  public void onEventLogBegin(Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 32	com/ja/analytics/logevent/EventLog:TAG	Ljava/lang/String;
    //   5: ldc_w 458
    //   8: invokestatic 55	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   11: pop
    //   12: aload_2
    //   13: ifnonnull +6 -> 19
    //   16: aload_0
    //   17: monitorexit
    //   18: return
    //   19: aload_0
    //   20: getfield 43	com/ja/analytics/logevent/EventLog:eventCollection	Lcom/ja/analytics/logevent/DurationEventCollection;
    //   23: new 412	java/lang/StringBuffer
    //   26: dup
    //   27: ldc_w 460
    //   30: invokespecial 415	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   33: aload_2
    //   34: invokevirtual 418	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   37: aload_3
    //   38: invokevirtual 418	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   41: invokevirtual 419	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   44: invokevirtual 422	com/ja/analytics/logevent/DurationEventCollection:saveEventBeginTime	(Ljava/lang/String;)V
    //   47: goto -31 -> 16
    //   50: astore 4
    //   52: aload_0
    //   53: monitorexit
    //   54: aload 4
    //   56: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	57	0	this	EventLog
    //   0	57	1	paramContext	Context
    //   0	57	2	paramString1	String
    //   0	57	3	paramString2	String
    //   50	5	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	12	50	finally
    //   19	47	50	finally
  }
  
  /* Error */
  public JSONObject onEventLogDuration(Context paramContext, String paramString1, String paramString2, long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 32	com/ja/analytics/logevent/EventLog:TAG	Ljava/lang/String;
    //   5: ldc_w 464
    //   8: invokestatic 55	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   11: pop
    //   12: aload_2
    //   13: ifnonnull +11 -> 24
    //   16: aconst_null
    //   17: astore 10
    //   19: aload_0
    //   20: monitorexit
    //   21: aload 10
    //   23: areturn
    //   24: aload_0
    //   25: aload_1
    //   26: invokevirtual 307	com/ja/analytics/logevent/EventLog:checkMenifestPermission	(Landroid/content/Context;)V
    //   29: invokestatic 249	java/lang/System:currentTimeMillis	()J
    //   32: lstore 8
    //   34: new 57	org/json/JSONObject
    //   37: dup
    //   38: invokespecial 58	org/json/JSONObject:<init>	()V
    //   41: astore 10
    //   43: getstatic 32	com/ja/analytics/logevent/EventLog:TAG	Ljava/lang/String;
    //   46: new 124	java/lang/StringBuilder
    //   49: dup
    //   50: ldc_w 309
    //   53: invokespecial 129	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   56: aload_2
    //   57: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: invokevirtual 134	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: invokestatic 55	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   66: pop
    //   67: aload_0
    //   68: aload_1
    //   69: aload_2
    //   70: invokespecial 311	com/ja/analytics/logevent/EventLog:onCommonData	(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    //   73: astore 10
    //   75: new 57	org/json/JSONObject
    //   78: dup
    //   79: invokespecial 58	org/json/JSONObject:<init>	()V
    //   82: astore 14
    //   84: aload_3
    //   85: ifnull +26 -> 111
    //   88: ldc 143
    //   90: aload_3
    //   91: invokevirtual 150	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   94: ifne +17 -> 111
    //   97: aload 14
    //   99: ldc_w 454
    //   102: aload_0
    //   103: aload_3
    //   104: invokespecial 193	com/ja/analytics/logevent/EventLog:string2Json	(Ljava/lang/String;)Ljava/lang/String;
    //   107: invokevirtual 108	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   110: pop
    //   111: aload 10
    //   113: ldc_w 315
    //   116: aload 14
    //   118: invokevirtual 108	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   121: pop
    //   122: aload 10
    //   124: ldc_w 317
    //   127: lload 4
    //   129: invokevirtual 225	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   132: pop
    //   133: aload 10
    //   135: ldc_w 319
    //   138: lload 8
    //   140: invokevirtual 225	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   143: pop
    //   144: goto -125 -> 19
    //   147: astore 12
    //   149: getstatic 32	com/ja/analytics/logevent/EventLog:TAG	Ljava/lang/String;
    //   152: aload 12
    //   154: invokevirtual 324	org/json/JSONException:toString	()Ljava/lang/String;
    //   157: invokestatic 90	com/ja/analytics/utils/LogUtil:logE	(Ljava/lang/String;Ljava/lang/String;)I
    //   160: pop
    //   161: goto -142 -> 19
    //   164: astore 6
    //   166: aload_0
    //   167: monitorexit
    //   168: aload 6
    //   170: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	171	0	this	EventLog
    //   0	171	1	paramContext	Context
    //   0	171	2	paramString1	String
    //   0	171	3	paramString2	String
    //   0	171	4	paramLong	long
    //   164	5	6	localObject	Object
    //   32	107	8	l	long
    //   17	117	10	localJSONObject1	JSONObject
    //   147	6	12	localJSONException	JSONException
    //   82	35	14	localJSONObject2	JSONObject
    // Exception table:
    //   from	to	target	type
    //   67	84	147	org/json/JSONException
    //   88	111	147	org/json/JSONException
    //   111	144	147	org/json/JSONException
    //   2	12	164	finally
    //   24	67	164	finally
    //   67	84	164	finally
    //   88	111	164	finally
    //   111	144	164	finally
    //   149	161	164	finally
  }
  
  public JSONObject onEventLogEnd(Context paramContext, String paramString1, String paramString2)
  {
    for (;;)
    {
      JSONObject localJSONObject1;
      long l;
      try
      {
        LogUtil.logD(TAG, "onEventLogEnd() --->");
        localJSONObject1 = null;
        if (paramString1 == null) {
          return localJSONObject1;
        }
        checkMenifestPermission(paramContext);
        l = this.eventCollection.getEventBeginTime("_evt_" + paramString1 + paramString2).longValue();
        if (l == -1L)
        {
          LogUtil.logE(TAG, "onEventLogEnd(), onEventLogBegin() not called!!");
          localJSONObject1 = null;
          continue;
        }
        localJSONObject1 = new JSONObject();
      }
      finally {}
      LogUtil.logD(TAG, "过滤之前的数据:" + paramString1);
      try
      {
        localJSONObject1 = onCommonData(paramContext, paramString1);
        JSONObject localJSONObject2 = new JSONObject();
        if ((paramString2 != null) && (!"".equals(paramString2))) {
          localJSONObject2.put("am_map", string2Json(paramString2));
        }
        localJSONObject1.put("am", localJSONObject2);
        localJSONObject1.put("dt", System.currentTimeMillis() - l);
        localJSONObject1.put("ct1", l);
      }
      catch (JSONException localJSONException)
      {
        LogUtil.logE(TAG, localJSONException.toString());
      }
    }
  }
  
  /* Error */
  public JSONObject onMapEventLog(Context paramContext, String paramString, Map paramMap)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 32	com/ja/analytics/logevent/EventLog:TAG	Ljava/lang/String;
    //   5: ldc_w 473
    //   8: invokestatic 55	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   11: pop
    //   12: aload_2
    //   13: ifnonnull +11 -> 24
    //   16: aconst_null
    //   17: astore 6
    //   19: aload_0
    //   20: monitorexit
    //   21: aload 6
    //   23: areturn
    //   24: aload_0
    //   25: aload_1
    //   26: invokevirtual 307	com/ja/analytics/logevent/EventLog:checkMenifestPermission	(Landroid/content/Context;)V
    //   29: new 57	org/json/JSONObject
    //   32: dup
    //   33: invokespecial 58	org/json/JSONObject:<init>	()V
    //   36: astore 6
    //   38: getstatic 32	com/ja/analytics/logevent/EventLog:TAG	Ljava/lang/String;
    //   41: new 124	java/lang/StringBuilder
    //   44: dup
    //   45: ldc_w 309
    //   48: invokespecial 129	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   51: aload_2
    //   52: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: invokevirtual 134	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   58: invokestatic 55	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   61: pop
    //   62: aload_0
    //   63: aload_1
    //   64: aload_2
    //   65: invokespecial 311	com/ja/analytics/logevent/EventLog:onCommonData	(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    //   68: astore 6
    //   70: aload_3
    //   71: ifnull +42 -> 113
    //   74: new 57	org/json/JSONObject
    //   77: dup
    //   78: invokespecial 58	org/json/JSONObject:<init>	()V
    //   81: pop
    //   82: aload_0
    //   83: aload_3
    //   84: invokespecial 313	com/ja/analytics/logevent/EventLog:convertMap2Json	(Ljava/util/Map;)Lorg/json/JSONObject;
    //   87: astore 11
    //   89: aload 11
    //   91: ifnull +22 -> 113
    //   94: aload 11
    //   96: invokevirtual 476	org/json/JSONObject:length	()I
    //   99: ifeq +14 -> 113
    //   102: aload 6
    //   104: ldc_w 315
    //   107: aload 11
    //   109: invokevirtual 108	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   112: pop
    //   113: aload 6
    //   115: ldc_w 317
    //   118: iconst_0
    //   119: invokevirtual 206	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   122: pop
    //   123: aload 6
    //   125: ldc_w 319
    //   128: invokestatic 249	java/lang/System:currentTimeMillis	()J
    //   131: invokevirtual 225	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   134: pop
    //   135: goto -116 -> 19
    //   138: astore 8
    //   140: getstatic 32	com/ja/analytics/logevent/EventLog:TAG	Ljava/lang/String;
    //   143: aload 8
    //   145: invokevirtual 324	org/json/JSONException:toString	()Ljava/lang/String;
    //   148: invokestatic 90	com/ja/analytics/utils/LogUtil:logE	(Ljava/lang/String;Ljava/lang/String;)I
    //   151: pop
    //   152: goto -133 -> 19
    //   155: astore 4
    //   157: aload_0
    //   158: monitorexit
    //   159: aload 4
    //   161: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	162	0	this	EventLog
    //   0	162	1	paramContext	Context
    //   0	162	2	paramString	String
    //   0	162	3	paramMap	Map
    //   155	5	4	localObject	Object
    //   17	107	6	localJSONObject1	JSONObject
    //   138	6	8	localJSONException	JSONException
    //   87	21	11	localJSONObject2	JSONObject
    // Exception table:
    //   from	to	target	type
    //   62	70	138	org/json/JSONException
    //   74	89	138	org/json/JSONException
    //   94	113	138	org/json/JSONException
    //   113	135	138	org/json/JSONException
    //   2	12	155	finally
    //   24	62	155	finally
    //   62	70	155	finally
    //   74	89	155	finally
    //   94	113	155	finally
    //   113	135	155	finally
    //   140	152	155	finally
  }
  
  public void setAppChannel(String paramString)
  {
    appChannal = paramString;
  }
  
  public void setAppKey(String paramString)
  {
    appKey = paramString;
  }
  
  public String setSendData()
  {
    reqTime = "";
    reqTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis()));
    return reqTime;
  }
  
  public void setSessionCount(Context paramContext, int paramInt)
  {
    LogUtil.logD(TAG, "setSessionCount()  ： " + paramInt);
    int i = PreferenceUtils.getSessionSharedPreference(paramContext, "__jd_sdk_Session").getInt("sessionCount", mSessionCount);
    LogUtil.logD(TAG, "get the old data first: get session from mSessionCount:  " + mSessionCount);
    LogUtil.logD(TAG, "get the old data first: get session from preferences:  " + i);
    if (i > 0)
    {
      PreferenceUtils.setSharedPreference(paramContext, "__jd_sdk_Session", "sessionCount", paramInt + i);
      LogUtil.logD(TAG, "Set the old data before: Set session from preferences:  " + (paramInt + i));
      mSessionCount = PreferenceUtils.getSessionSharedPreference(paramContext, "__jd_sdk_Session").getInt("sessionCount", paramInt + i);
      LogUtil.logD(TAG, "Set the old data end: Set session from preferences:  " + mSessionCount);
    }
    for (;;)
    {
      if (mSessionCount == 0)
      {
        mSessionCount = 1;
        LogUtil.logD(TAG, "mSessionCount = 0 =  ： " + mSessionCount);
      }
      return;
      if (paramInt > 0)
      {
        mSessionCount = paramInt + mSessionCount;
        LogUtil.logD(TAG, "mSessionCount  ： " + mSessionCount);
        LogUtil.logD(TAG, "Set session to preferences:  " + getSessionCount());
        PreferenceUtils.setSharedPreference(paramContext, "__jd_sdk_Session", "sessionCount", mSessionCount);
        mSessionCount = PreferenceUtils.getSessionSharedPreference(paramContext, "__jd_sdk_Session").getInt("sessionCount", mSessionCount);
        LogUtil.logD(TAG, "Get session from preferences1:  " + mSessionCount);
      }
    }
  }
  
  public long writeEventLogToDatabase(Context paramContext, JSONObject paramJSONObject)
  {
    LogUtil.logD(TAG, "writeEventLogToDatabase() --->" + paramJSONObject.toString());
    long l;
    if (paramJSONObject.toString().length() > 10240)
    {
      LogUtil.logE(TAG, "事件数据超过10240个字符，sdk放弃保存操作。");
      l = -1L;
    }
    for (;;)
    {
      return l;
      if (getAppkey(paramContext) == null)
      {
        LogUtil.logE(TAG, "没有获取到appkey/appkey无效,放弃保存操作");
        return 0L;
      }
      l = -1L;
      if ((paramJSONObject == null) || (paramJSONObject.length() == 0)) {
        continue;
      }
      try
      {
        Object localObject = paramJSONObject.get("am");
        if (((localObject instanceof JSONObject)) && (((JSONObject)localObject).length() == 0)) {
          paramJSONObject.remove("am");
        }
        if (EventTable.openSQLiteDatabase(paramContext) == null) {
          continue;
        }
        return EventTable.insertEventLogItem(paramContext, paramJSONObject);
      }
      catch (JSONException localJSONException)
      {
        for (;;)
        {
          LogUtil.logE(TAG, localJSONException.toString());
        }
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.analytics.logevent.EventLog
 * JD-Core Version:    0.7.0.1
 */