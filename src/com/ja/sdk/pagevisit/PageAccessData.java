package com.ja.sdk.pagevisit;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Build.VERSION;
import com.ja.sdk.utils.DevicesUtils;
import com.ja.sdk.utils.DisplayUtils;
import com.ja.sdk.utils.LogUtil;
import com.ja.sdk.utils.ManifestPackageUtils;
import com.ja.sdk.utils.NetUtils;
import com.ja.sdk.utils.PreferenceUtils;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

public class PageAccessData
{
  private static final String TAG = "PageAccessData";
  private static String allSiteIdentify;
  private static String appChannal;
  private static int mOldSessionCount;
  private static PageAccessData mPageAccessData = new PageAccessData();
  private static int mSessionCount = 0;
  private static String reqTime;
  private static String userId;
  
  public static String getAllSiteIdentify()
  {
    return allSiteIdentify;
  }
  
  public static String getAppChannel()
  {
    return appChannal;
  }
  
  public static String getAppId()
  {
    return userId;
  }
  
  private JSONObject getCommonDeviceInfo(Context paramContext)
  {
    for (;;)
    {
      JSONObject localJSONObject;
      String str;
      try
      {
        localJSONObject = new JSONObject();
        try
        {
          localJSONObject.put("st", "");
          localJSONObject.put("ip", NetUtils.getLocalIpAddress());
          if (getAllSiteIdentify() != null) {
            continue;
          }
          localJSONObject.put("w", ManifestPackageUtils.ReadCofigInfoFromManifest(paramContext, "Ja_Sdk_Site"));
          localJSONObject.put("sr", DisplayUtils.GetResolution(paramContext));
          localJSONObject.put("n", NetUtils.getNetworkTypeName(paramContext));
          localJSONObject.put("b", ManifestPackageUtils.getPackageName(paramContext));
          localJSONObject.put("k", Build.VERSION.RELEASE);
          localJSONObject.put("os", "Android|" + Build.VERSION.SDK);
          localJSONObject.put("c", ManifestPackageUtils.getAppVersionCode(paramContext));
          localJSONObject.put("v", getSessionCount());
          if (getAppChannel() != null) {
            break label261;
          }
          localJSONObject.put("sc", ManifestPackageUtils.ReadCofigInfoFromManifest(paramContext, "Ja_Sdk_CHANNEL"));
          localJSONObject.put("t1", "J");
          localJSONObject.put("t2", "A");
          localJSONObject.put("u", DevicesUtils.getDeviceId2(paramContext));
          if (getAppId() != null) {
            break label286;
          }
          str = ManifestPackageUtils.ReadCofigInfoFromManifest(paramContext, "Ja_Sdk_ID");
          if (str != "") {
            break label274;
          }
          localJSONObject.put("p", "-");
          localJSONObject.put("d", Build.MODEL);
        }
        catch (JSONException localJSONException)
        {
          LogUtil.logException("PageAccessData", localJSONException);
          continue;
        }
        return localJSONObject;
      }
      finally {}
      localJSONObject.put("w", getAllSiteIdentify());
      continue;
      label261:
      localJSONObject.put("sc", getAppChannel());
      continue;
      label274:
      localJSONObject.put("p", str);
      continue;
      label286:
      localJSONObject.put("p", getAppId());
    }
  }
  
  public static PageAccessData getSingleInstance()
  {
    return mPageAccessData;
  }
  
  private Boolean isNewSession()
  {
    if (mSessionCount - mOldSessionCount > 0)
    {
      LogUtil.logD("PageAccessData", "The new session: " + mSessionCount);
      return Boolean.valueOf(true);
    }
    return Boolean.valueOf(false);
  }
  
  static String string2Json(String paramString)
  {
    if (paramString == null) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder(20 + paramString.length());
    int i = 0;
    if (i >= paramString.length()) {
      return localStringBuilder.toString();
    }
    char c = paramString.charAt(i);
    switch (c)
    {
    default: 
      localStringBuilder.append(c);
    }
    for (;;)
    {
      i++;
      break;
      localStringBuilder.append("\\\"");
      continue;
      localStringBuilder.append("\\\\");
      continue;
      localStringBuilder.append("\\/");
      continue;
      localStringBuilder.append("\\b");
      continue;
      localStringBuilder.append("\\f");
      continue;
      localStringBuilder.append("\\n");
      continue;
      localStringBuilder.append("\\r");
      continue;
      localStringBuilder.append("\\t");
    }
  }
  
  /* Error */
  public void checkMenifestPermission(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 230	com/ja/sdk/pagevisit/PageAccessData:isNewSession	()Ljava/lang/Boolean;
    //   6: invokevirtual 234	java/lang/Boolean:booleanValue	()Z
    //   9: istore_3
    //   10: iload_3
    //   11: ifne +6 -> 17
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: getstatic 21	com/ja/sdk/pagevisit/PageAccessData:mSessionCount	I
    //   20: putstatic 178	com/ja/sdk/pagevisit/PageAccessData:mOldSessionCount	I
    //   23: aload_1
    //   24: ldc 236
    //   26: invokestatic 241	com/ja/sdk/utils/FileUtils:checkMenifestPermission	(Landroid/content/Context;Ljava/lang/String;)V
    //   29: aload_1
    //   30: ldc 243
    //   32: invokestatic 241	com/ja/sdk/utils/FileUtils:checkMenifestPermission	(Landroid/content/Context;Ljava/lang/String;)V
    //   35: aload_1
    //   36: ldc 245
    //   38: invokestatic 241	com/ja/sdk/utils/FileUtils:checkMenifestPermission	(Landroid/content/Context;Ljava/lang/String;)V
    //   41: goto -27 -> 14
    //   44: astore_2
    //   45: aload_0
    //   46: monitorexit
    //   47: aload_2
    //   48: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	49	0	this	PageAccessData
    //   0	49	1	paramContext	Context
    //   44	4	2	localObject	Object
    //   9	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	10	44	finally
    //   17	41	44	finally
  }
  
  public void clearSendDate()
  {
    reqTime = "";
  }
  
  public void clearSessionCount()
  {
    mSessionCount = 0;
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
    LogUtil.logD("PageAccessData", "getSessionCount() return： " + mSessionCount);
    return mSessionCount;
  }
  
  /* Error */
  public void pageAccessDataHandle(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_2
    //   3: ifnonnull +6 -> 9
    //   6: aload_0
    //   7: monitorexit
    //   8: return
    //   9: lload 6
    //   11: lconst_0
    //   12: lcmp
    //   13: ifne +8 -> 21
    //   16: invokestatic 262	java/lang/System:currentTimeMillis	()J
    //   19: lstore 6
    //   21: aload_0
    //   22: aload_1
    //   23: invokevirtual 264	com/ja/sdk/pagevisit/PageAccessData:checkMenifestPermission	(Landroid/content/Context;)V
    //   26: new 43	org/json/JSONObject
    //   29: dup
    //   30: invokespecial 44	org/json/JSONObject:<init>	()V
    //   33: pop
    //   34: aload_0
    //   35: aload_1
    //   36: invokespecial 266	com/ja/sdk/pagevisit/PageAccessData:getCommonDeviceInfo	(Landroid/content/Context;)Lorg/json/JSONObject;
    //   39: astore 10
    //   41: ldc 8
    //   43: new 100	java/lang/StringBuilder
    //   46: dup
    //   47: ldc_w 268
    //   50: invokespecial 105	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   53: aload_2
    //   54: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   60: invokestatic 187	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   63: pop
    //   64: aload 10
    //   66: ldc_w 270
    //   69: aload_2
    //   70: invokestatic 272	com/ja/sdk/pagevisit/PageAccessData:string2Json	(Ljava/lang/String;)Ljava/lang/String;
    //   73: invokevirtual 52	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   76: pop
    //   77: ldc 8
    //   79: new 100	java/lang/StringBuilder
    //   82: dup
    //   83: ldc_w 274
    //   86: invokespecial 105	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   89: aload_2
    //   90: invokestatic 272	com/ja/sdk/pagevisit/PageAccessData:string2Json	(Ljava/lang/String;)Ljava/lang/String;
    //   93: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   99: invokestatic 187	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   102: pop
    //   103: aload 10
    //   105: ldc_w 276
    //   108: aload_3
    //   109: invokestatic 272	com/ja/sdk/pagevisit/PageAccessData:string2Json	(Ljava/lang/String;)Ljava/lang/String;
    //   112: invokevirtual 52	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   115: pop
    //   116: aload 10
    //   118: ldc_w 278
    //   121: aload 4
    //   123: invokestatic 272	com/ja/sdk/pagevisit/PageAccessData:string2Json	(Ljava/lang/String;)Ljava/lang/String;
    //   126: invokevirtual 52	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   129: pop
    //   130: aload 10
    //   132: ldc_w 280
    //   135: aload 5
    //   137: invokestatic 272	com/ja/sdk/pagevisit/PageAccessData:string2Json	(Ljava/lang/String;)Ljava/lang/String;
    //   140: invokevirtual 52	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   143: pop
    //   144: aload 10
    //   146: ldc_w 282
    //   149: lload 6
    //   151: invokestatic 287	java/lang/Long:toString	(J)Ljava/lang/String;
    //   154: invokevirtual 52	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   157: pop
    //   158: aload 10
    //   160: ldc_w 289
    //   163: invokestatic 262	java/lang/System:currentTimeMillis	()J
    //   166: invokestatic 287	java/lang/Long:toString	(J)Ljava/lang/String;
    //   169: invokevirtual 52	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   172: pop
    //   173: aload_1
    //   174: invokestatic 295	com/ja/sdk/db/PageAccessTable:openSQLiteDatabase	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   177: ifnull -171 -> 6
    //   180: aload_1
    //   181: aload 10
    //   183: invokestatic 299	com/ja/sdk/db/PageAccessTable:insertPageAccessDataItem	(Landroid/content/Context;Lorg/json/JSONObject;)V
    //   186: goto -180 -> 6
    //   189: astore 8
    //   191: aload_0
    //   192: monitorexit
    //   193: aload 8
    //   195: athrow
    //   196: astore 12
    //   198: ldc 8
    //   200: aload 12
    //   202: invokevirtual 300	org/json/JSONException:toString	()Ljava/lang/String;
    //   205: invokestatic 187	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   208: pop
    //   209: goto -36 -> 173
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	212	0	this	PageAccessData
    //   0	212	1	paramContext	Context
    //   0	212	2	paramString1	String
    //   0	212	3	paramString2	String
    //   0	212	4	paramString3	String
    //   0	212	5	paramString4	String
    //   0	212	6	paramLong	long
    //   189	5	8	localObject	Object
    //   39	143	10	localJSONObject	JSONObject
    //   196	5	12	localJSONException	JSONException
    // Exception table:
    //   from	to	target	type
    //   16	21	189	finally
    //   21	64	189	finally
    //   64	173	189	finally
    //   173	186	189	finally
    //   198	209	189	finally
    //   64	173	196	org/json/JSONException
  }
  
  public void setAllSiteIdentify(String paramString)
  {
    if (paramString != "")
    {
      allSiteIdentify = paramString;
      return;
    }
    allSiteIdentify = "MO-J2011-2";
  }
  
  public void setAppChannel(String paramString)
  {
    appChannal = paramString;
  }
  
  public void setAppId(String paramString)
  {
    userId = paramString;
  }
  
  public String setSendData()
  {
    reqTime = "";
    reqTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis()));
    return reqTime;
  }
  
  public void setSessionCount(Context paramContext, int paramInt)
  {
    LogUtil.logD("PageAccessData", "setSessionCount()  ： " + paramInt);
    int i = PreferenceUtils.getSessionSharedPreference(paramContext, "__360buy_Ja_Sdk_Session").getInt("sessionCount", mSessionCount);
    LogUtil.logD("PageAccessData", "get the old data first: get session from mSessionCount:  " + mSessionCount);
    LogUtil.logD("PageAccessData", "get the old data first: get session from preferences:  " + i);
    if (i > 0)
    {
      PreferenceUtils.setSharedPreference(paramContext, "__360buy_Ja_Sdk_Session", "sessionCount", paramInt + i);
      LogUtil.logD("PageAccessData", "Set the old data before: Set session from preferences:  " + (paramInt + i));
      mSessionCount = PreferenceUtils.getSessionSharedPreference(paramContext, "__360buy_Ja_Sdk_Session").getInt("sessionCount", paramInt + i);
      LogUtil.logD("PageAccessData", "Set the old data end: Set session from preferences:  " + mSessionCount);
    }
    for (;;)
    {
      if (mSessionCount == 0)
      {
        mSessionCount = 1;
        LogUtil.logD("PageAccessData", "mSessionCount = 0 =  ： " + mSessionCount);
      }
      return;
      if (paramInt > 0)
      {
        mSessionCount = paramInt + mSessionCount;
        LogUtil.logD("PageAccessData", "mSessionCount  ： " + mSessionCount);
        LogUtil.logD("PageAccessData", "Set session to preferences:  " + getSessionCount());
        PreferenceUtils.setSharedPreference(paramContext, "__360buy_Ja_Sdk_Session", "sessionCount", mSessionCount);
        mSessionCount = PreferenceUtils.getSessionSharedPreference(paramContext, "__360buy_Ja_Sdk_Session").getInt("sessionCount", mSessionCount);
        LogUtil.logD("PageAccessData", "Get session from preferences1:  " + mSessionCount);
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.sdk.pagevisit.PageAccessData
 * JD-Core Version:    0.7.0.1
 */