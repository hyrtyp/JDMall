package com.ja.sdk.exception;

import android.content.Context;
import com.ja.sdk.utils.FileUtils;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ExceptionData
{
  public static final String TAG = "ExceptionData";
  private static ExceptionData mExceptionDataOBbj = new ExceptionData();
  private static String st;
  
  /* Error */
  private org.json.JSONObject getCommonDeviceInfo(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 25	org/json/JSONObject
    //   5: dup
    //   6: invokespecial 26	org/json/JSONObject:<init>	()V
    //   9: astore_2
    //   10: aload_2
    //   11: ldc 28
    //   13: getstatic 33	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   16: invokevirtual 37	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   19: pop
    //   20: aload_2
    //   21: ldc 39
    //   23: new 41	java/lang/StringBuilder
    //   26: dup
    //   27: aload_1
    //   28: invokestatic 47	com/ja/sdk/utils/ManifestPackageUtils:getPackageName	(Landroid/content/Context;)Ljava/lang/String;
    //   31: invokestatic 53	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   34: invokespecial 56	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   37: ldc 58
    //   39: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: aload_1
    //   43: invokestatic 66	com/ja/sdk/utils/ManifestPackageUtils:getAppVersionCode	(Landroid/content/Context;)I
    //   46: invokevirtual 69	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   49: invokevirtual 73	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   52: invokevirtual 37	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   55: pop
    //   56: aload_2
    //   57: ldc 75
    //   59: aload_1
    //   60: invokestatic 80	com/ja/sdk/utils/DevicesUtils:getDeviceId	(Landroid/content/Context;)Ljava/lang/String;
    //   63: invokevirtual 37	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   66: pop
    //   67: aload_2
    //   68: ldc 82
    //   70: ldc 84
    //   72: invokevirtual 37	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   75: pop
    //   76: aload_2
    //   77: ldc 86
    //   79: getstatic 89	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   82: invokevirtual 37	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   85: pop
    //   86: aload_2
    //   87: ldc 91
    //   89: aload_1
    //   90: invokestatic 96	com/ja/sdk/utils/NetUtils:getNetworkTypeName	(Landroid/content/Context;)Ljava/lang/String;
    //   93: invokevirtual 37	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   96: pop
    //   97: aload_0
    //   98: monitorexit
    //   99: aload_2
    //   100: areturn
    //   101: astore 4
    //   103: ldc 8
    //   105: aload 4
    //   107: invokestatic 102	com/ja/sdk/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   110: pop
    //   111: goto -14 -> 97
    //   114: astore_3
    //   115: aload_0
    //   116: monitorexit
    //   117: aload_3
    //   118: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	119	0	this	ExceptionData
    //   0	119	1	paramContext	Context
    //   9	91	2	localJSONObject	org.json.JSONObject
    //   114	4	3	localObject	Object
    //   101	5	4	localJSONException	org.json.JSONException
    // Exception table:
    //   from	to	target	type
    //   10	97	101	org/json/JSONException
    //   2	10	114	finally
    //   10	97	114	finally
    //   103	111	114	finally
  }
  
  public static ExceptionData getSingleInstance()
  {
    return mExceptionDataOBbj;
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
    st = "";
  }
  
  /* Error */
  public void exceptionDataHandle(Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_2
    //   3: ifnull +7 -> 10
    //   6: aload_3
    //   7: ifnonnull +6 -> 13
    //   10: aload_0
    //   11: monitorexit
    //   12: return
    //   13: aload_0
    //   14: aload_1
    //   15: invokevirtual 126	com/ja/sdk/exception/ExceptionData:checkMenifestPermission	(Landroid/content/Context;)V
    //   18: new 25	org/json/JSONObject
    //   21: dup
    //   22: invokespecial 26	org/json/JSONObject:<init>	()V
    //   25: pop
    //   26: aload_0
    //   27: aload_1
    //   28: invokespecial 128	com/ja/sdk/exception/ExceptionData:getCommonDeviceInfo	(Landroid/content/Context;)Lorg/json/JSONObject;
    //   31: astore 6
    //   33: aload 6
    //   35: ldc 130
    //   37: aload_2
    //   38: invokevirtual 37	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   41: pop
    //   42: aload 6
    //   44: ldc 132
    //   46: aload_3
    //   47: invokevirtual 37	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   50: pop
    //   51: aload_1
    //   52: invokestatic 138	com/ja/sdk/db/ExceptionTable:openSQLiteDatabase	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   55: ifnull -45 -> 10
    //   58: aload_1
    //   59: aload 6
    //   61: invokestatic 142	com/ja/sdk/db/ExceptionTable:insertExceptionDataItem	(Landroid/content/Context;Lorg/json/JSONObject;)V
    //   64: goto -54 -> 10
    //   67: astore 4
    //   69: aload_0
    //   70: monitorexit
    //   71: aload 4
    //   73: athrow
    //   74: astore 7
    //   76: ldc 8
    //   78: aload 7
    //   80: invokestatic 102	com/ja/sdk/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   83: pop
    //   84: goto -33 -> 51
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	87	0	this	ExceptionData
    //   0	87	1	paramContext	Context
    //   0	87	2	paramString1	String
    //   0	87	3	paramString2	String
    //   67	5	4	localObject	Object
    //   31	29	6	localJSONObject	org.json.JSONObject
    //   74	5	7	localJSONException	org.json.JSONException
    // Exception table:
    //   from	to	target	type
    //   13	33	67	finally
    //   33	51	67	finally
    //   51	64	67	finally
    //   76	84	67	finally
    //   33	51	74	org/json/JSONException
  }
  
  public String getSendDate()
  {
    return st;
  }
  
  public int getSendFalseFlag()
  {
    return 0;
  }
  
  public int getSendOkFlag()
  {
    return 1;
  }
  
  public void setSendData()
  {
    st = null;
    st = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis()));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.sdk.exception.ExceptionData
 * JD-Core Version:    0.7.0.1
 */