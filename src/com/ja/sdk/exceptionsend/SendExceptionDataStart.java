package com.ja.sdk.exceptionsend;

import android.content.Context;
import com.ja.sdk.utils.LogUtil;

class SendExceptionDataStart
  implements Runnable
{
  public static final String TAG = "SendExceptionDataStart";
  private static Boolean isSendExceptionDataStartRun = Boolean.valueOf(false);
  private Context mContext;
  final SendExceptionDataTask mSendDataTask;
  
  SendExceptionDataStart(SendExceptionDataTask paramSendExceptionDataTask)
  {
    this.mSendDataTask = paramSendExceptionDataTask;
    LogUtil.logD("SendExceptionDataStart", " SendExceptionDataStart constructor!!");
  }
  
  public static Boolean getSendExceptionDataStartThread()
  {
    return isSendExceptionDataStartRun;
  }
  
  private void setSendExceptionDataStartThread(Boolean paramBoolean)
  {
    LogUtil.logD("SendExceptionDataStart", " setSendExceptionDataStartThread()=" + paramBoolean);
    isSendExceptionDataStartRun = paramBoolean;
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: ldc 10
    //   2: ldc 66
    //   4: invokestatic 40	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   7: pop
    //   8: aload_0
    //   9: monitorenter
    //   10: aload_0
    //   11: iconst_1
    //   12: invokestatic 24	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   15: invokespecial 68	com/ja/sdk/exceptionsend/SendExceptionDataStart:setSendExceptionDataStartThread	(Ljava/lang/Boolean;)V
    //   18: aload_0
    //   19: getfield 70	com/ja/sdk/exceptionsend/SendExceptionDataStart:mContext	Landroid/content/Context;
    //   22: invokestatic 76	com/ja/sdk/db/ExceptionTable:openSQLiteDatabase	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   25: ifnonnull +254 -> 279
    //   28: ldc 10
    //   30: ldc 78
    //   32: invokestatic 40	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   35: pop
    //   36: aload_0
    //   37: monitorexit
    //   38: return
    //   39: aload_0
    //   40: getfield 70	com/ja/sdk/exceptionsend/SendExceptionDataStart:mContext	Landroid/content/Context;
    //   43: invokestatic 82	com/ja/sdk/db/ExceptionTable:getAllExceptionDataNotSendItem	(Landroid/content/Context;)Lorg/json/JSONArray;
    //   46: astore_3
    //   47: aload_3
    //   48: ifnull +10 -> 58
    //   51: aload_3
    //   52: invokevirtual 88	org/json/JSONArray:length	()I
    //   55: ifne +103 -> 158
    //   58: aload_0
    //   59: iconst_0
    //   60: invokestatic 24	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   63: invokespecial 68	com/ja/sdk/exceptionsend/SendExceptionDataStart:setSendExceptionDataStartThread	(Ljava/lang/Boolean;)V
    //   66: iconst_0
    //   67: invokestatic 24	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   70: invokestatic 93	com/ja/sdk/exceptionsend/SendExceptionDataTask:setSendExceptionDataStaskThread	(Ljava/lang/Boolean;)V
    //   73: invokestatic 99	com/ja/sdk/JaMobLogService:getHandler	()Landroid/os/Handler;
    //   76: ifnull +50 -> 126
    //   79: invokestatic 105	android/os/Message:obtain	()Landroid/os/Message;
    //   82: astore 8
    //   84: aload 8
    //   86: iconst_0
    //   87: putfield 109	android/os/Message:what	I
    //   90: invokestatic 99	com/ja/sdk/JaMobLogService:getHandler	()Landroid/os/Handler;
    //   93: aload 8
    //   95: ldc2_w 110
    //   98: invokevirtual 117	android/os/Handler:sendMessageDelayed	(Landroid/os/Message;J)Z
    //   101: pop
    //   102: ldc 10
    //   104: ldc 119
    //   106: invokestatic 40	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   109: pop
    //   110: ldc 10
    //   112: ldc 121
    //   114: invokestatic 40	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   117: pop
    //   118: aload_0
    //   119: monitorexit
    //   120: return
    //   121: astore_2
    //   122: aload_0
    //   123: monitorexit
    //   124: aload_2
    //   125: athrow
    //   126: ldc 10
    //   128: ldc 123
    //   130: invokestatic 40	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   133: pop
    //   134: ldc 10
    //   136: ldc 125
    //   138: invokestatic 40	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   141: pop
    //   142: goto -24 -> 118
    //   145: astore 4
    //   147: ldc 10
    //   149: ldc 127
    //   151: invokestatic 130	com/ja/sdk/utils/LogUtil:logE	(Ljava/lang/String;Ljava/lang/String;)I
    //   154: pop
    //   155: goto -37 -> 118
    //   158: aload_0
    //   159: getfield 32	com/ja/sdk/exceptionsend/SendExceptionDataStart:mSendDataTask	Lcom/ja/sdk/exceptionsend/SendExceptionDataTask;
    //   162: getfield 131	com/ja/sdk/exceptionsend/SendExceptionDataTask:mContext	Landroid/content/Context;
    //   165: ifnonnull +79 -> 244
    //   168: ldc 10
    //   170: ldc 133
    //   172: invokestatic 40	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   175: pop
    //   176: invokestatic 139	com/ja/sdk/framework/ExceptionDataHandle:getSingleInstance	()Lcom/ja/sdk/framework/ExceptionDataHandle;
    //   179: aload_0
    //   180: getfield 70	com/ja/sdk/exceptionsend/SendExceptionDataStart:mContext	Landroid/content/Context;
    //   183: aload_3
    //   184: invokevirtual 143	com/ja/sdk/framework/ExceptionDataHandle:sendFiveExceptionDataToServer	(Landroid/content/Context;Lorg/json/JSONArray;)V
    //   187: ldc2_w 144
    //   190: invokestatic 151	java/lang/Thread:sleep	(J)V
    //   193: invokestatic 156	com/ja/sdk/net/HttpUtils:getExceptionSendNetWorkStatus	()Ljava/lang/Boolean;
    //   196: invokevirtual 160	java/lang/Boolean:booleanValue	()Z
    //   199: ifne +80 -> 279
    //   202: ldc 10
    //   204: ldc 162
    //   206: invokestatic 40	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   209: pop
    //   210: invokestatic 105	android/os/Message:obtain	()Landroid/os/Message;
    //   213: astore 15
    //   215: aload 15
    //   217: iconst_0
    //   218: putfield 109	android/os/Message:what	I
    //   221: invokestatic 99	com/ja/sdk/JaMobLogService:getHandler	()Landroid/os/Handler;
    //   224: aload 15
    //   226: ldc2_w 110
    //   229: invokevirtual 117	android/os/Handler:sendMessageDelayed	(Landroid/os/Message;J)Z
    //   232: pop
    //   233: ldc 10
    //   235: ldc 119
    //   237: invokestatic 40	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   240: pop
    //   241: aload_0
    //   242: monitorexit
    //   243: return
    //   244: ldc 10
    //   246: ldc 164
    //   248: invokestatic 40	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   251: pop
    //   252: invokestatic 139	com/ja/sdk/framework/ExceptionDataHandle:getSingleInstance	()Lcom/ja/sdk/framework/ExceptionDataHandle;
    //   255: aload_0
    //   256: getfield 32	com/ja/sdk/exceptionsend/SendExceptionDataStart:mSendDataTask	Lcom/ja/sdk/exceptionsend/SendExceptionDataTask;
    //   259: getfield 131	com/ja/sdk/exceptionsend/SendExceptionDataTask:mContext	Landroid/content/Context;
    //   262: aload_3
    //   263: invokevirtual 143	com/ja/sdk/framework/ExceptionDataHandle:sendFiveExceptionDataToServer	(Landroid/content/Context;Lorg/json/JSONArray;)V
    //   266: goto -79 -> 187
    //   269: astore 12
    //   271: aload 12
    //   273: invokevirtual 167	java/lang/Exception:printStackTrace	()V
    //   276: goto -89 -> 187
    //   279: iconst_1
    //   280: ifne -241 -> 39
    //   283: aload_0
    //   284: monitorexit
    //   285: return
    //   286: astore 13
    //   288: goto -95 -> 193
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	291	0	this	SendExceptionDataStart
    //   121	4	2	localObject	Object
    //   46	217	3	localJSONArray	org.json.JSONArray
    //   145	1	4	localException1	java.lang.Exception
    //   82	12	8	localMessage1	android.os.Message
    //   269	3	12	localException2	java.lang.Exception
    //   286	1	13	localInterruptedException	java.lang.InterruptedException
    //   213	12	15	localMessage2	android.os.Message
    // Exception table:
    //   from	to	target	type
    //   10	38	121	finally
    //   39	47	121	finally
    //   51	58	121	finally
    //   58	73	121	finally
    //   73	118	121	finally
    //   118	120	121	finally
    //   122	124	121	finally
    //   126	142	121	finally
    //   147	155	121	finally
    //   158	187	121	finally
    //   187	193	121	finally
    //   193	243	121	finally
    //   244	266	121	finally
    //   271	276	121	finally
    //   283	285	121	finally
    //   73	118	145	java/lang/Exception
    //   126	142	145	java/lang/Exception
    //   158	187	269	java/lang/Exception
    //   244	266	269	java/lang/Exception
    //   187	193	286	java/lang/InterruptedException
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.sdk.exceptionsend.SendExceptionDataStart
 * JD-Core Version:    0.7.0.1
 */