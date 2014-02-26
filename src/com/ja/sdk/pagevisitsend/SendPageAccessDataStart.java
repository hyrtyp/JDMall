package com.ja.sdk.pagevisitsend;

import android.content.Context;
import com.ja.sdk.utils.LogUtil;

class SendPageAccessDataStart
  implements Runnable
{
  private static final String TAG = "SendPageAccessDataStart";
  private static Boolean isSendPageAccessDataTaskRun = Boolean.valueOf(false);
  private static Context mContext;
  final SendPageAccessDataTask mSendDataTask;
  
  SendPageAccessDataStart(Context paramContext, SendPageAccessDataTask paramSendPageAccessDataTask)
  {
    mContext = paramContext;
    this.mSendDataTask = paramSendPageAccessDataTask;
    LogUtil.logD("SendPageAccessDataStart", "SendPageAccessDataStart, constructort!!!");
  }
  
  public static Boolean getSendPageAccessDataStartThread()
  {
    return isSendPageAccessDataTaskRun;
  }
  
  public static void setSendPageAccessDataStartThread(Boolean paramBoolean)
  {
    LogUtil.logD("SendPageAccessDataStart", "setSendPageAccessDataStartThread()=" + paramBoolean);
    isSendPageAccessDataTaskRun = paramBoolean;
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: ldc 10
    //   2: ldc 68
    //   4: invokestatic 42	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   7: pop
    //   8: iconst_1
    //   9: invokestatic 24	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   12: invokestatic 70	com/ja/sdk/pagevisitsend/SendPageAccessDataStart:setSendPageAccessDataStartThread	(Ljava/lang/Boolean;)V
    //   15: aload_0
    //   16: monitorenter
    //   17: getstatic 32	com/ja/sdk/pagevisitsend/SendPageAccessDataStart:mContext	Landroid/content/Context;
    //   20: invokestatic 76	com/ja/sdk/db/PageAccessTable:openSQLiteDatabase	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   23: ifnonnull +251 -> 274
    //   26: ldc 10
    //   28: ldc 78
    //   30: invokestatic 42	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   33: pop
    //   34: aload_0
    //   35: monitorexit
    //   36: return
    //   37: getstatic 32	com/ja/sdk/pagevisitsend/SendPageAccessDataStart:mContext	Landroid/content/Context;
    //   40: invokestatic 82	com/ja/sdk/db/PageAccessTable:getAllPageAccessDataNotSendItem	(Landroid/content/Context;)Lorg/json/JSONArray;
    //   43: astore_3
    //   44: aload_3
    //   45: ifnull +10 -> 55
    //   48: aload_3
    //   49: invokevirtual 88	org/json/JSONArray:length	()I
    //   52: ifne +102 -> 154
    //   55: iconst_0
    //   56: invokestatic 24	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   59: invokestatic 70	com/ja/sdk/pagevisitsend/SendPageAccessDataStart:setSendPageAccessDataStartThread	(Ljava/lang/Boolean;)V
    //   62: iconst_0
    //   63: invokestatic 24	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   66: invokestatic 93	com/ja/sdk/pagevisitsend/SendPageAccessDataTask:setSendPageAccessDataStaskThread	(Ljava/lang/Boolean;)V
    //   69: invokestatic 99	com/ja/sdk/JaMobLogService:getHandler	()Landroid/os/Handler;
    //   72: ifnull +50 -> 122
    //   75: invokestatic 105	android/os/Message:obtain	()Landroid/os/Message;
    //   78: astore 8
    //   80: aload 8
    //   82: iconst_0
    //   83: putfield 109	android/os/Message:what	I
    //   86: invokestatic 99	com/ja/sdk/JaMobLogService:getHandler	()Landroid/os/Handler;
    //   89: aload 8
    //   91: ldc2_w 110
    //   94: invokevirtual 117	android/os/Handler:sendMessageDelayed	(Landroid/os/Message;J)Z
    //   97: pop
    //   98: ldc 10
    //   100: ldc 119
    //   102: invokestatic 42	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   105: pop
    //   106: ldc 10
    //   108: ldc 121
    //   110: invokestatic 42	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   113: pop
    //   114: aload_0
    //   115: monitorexit
    //   116: return
    //   117: astore_2
    //   118: aload_0
    //   119: monitorexit
    //   120: aload_2
    //   121: athrow
    //   122: ldc 10
    //   124: ldc 123
    //   126: invokestatic 42	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   129: pop
    //   130: ldc 10
    //   132: ldc 125
    //   134: invokestatic 42	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   137: pop
    //   138: goto -24 -> 114
    //   141: astore 4
    //   143: ldc 10
    //   145: ldc 127
    //   147: invokestatic 130	com/ja/sdk/utils/LogUtil:logE	(Ljava/lang/String;Ljava/lang/String;)I
    //   150: pop
    //   151: goto -37 -> 114
    //   154: aload_0
    //   155: getfield 34	com/ja/sdk/pagevisitsend/SendPageAccessDataStart:mSendDataTask	Lcom/ja/sdk/pagevisitsend/SendPageAccessDataTask;
    //   158: getfield 131	com/ja/sdk/pagevisitsend/SendPageAccessDataTask:mContext	Landroid/content/Context;
    //   161: ifnonnull +78 -> 239
    //   164: ldc 10
    //   166: ldc 133
    //   168: invokestatic 42	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   171: pop
    //   172: invokestatic 139	com/ja/sdk/framework/PageAccessDataHandle:getSingleInstance	()Lcom/ja/sdk/framework/PageAccessDataHandle;
    //   175: getstatic 32	com/ja/sdk/pagevisitsend/SendPageAccessDataStart:mContext	Landroid/content/Context;
    //   178: aload_3
    //   179: invokevirtual 143	com/ja/sdk/framework/PageAccessDataHandle:sendFivePageAccessDataToServer	(Landroid/content/Context;Lorg/json/JSONArray;)V
    //   182: ldc2_w 144
    //   185: invokestatic 151	java/lang/Thread:sleep	(J)V
    //   188: invokestatic 156	com/ja/sdk/net/HttpUtils:getPageVisitSendNetWorkStatus	()Ljava/lang/Boolean;
    //   191: invokevirtual 160	java/lang/Boolean:booleanValue	()Z
    //   194: ifne +80 -> 274
    //   197: ldc 10
    //   199: ldc 162
    //   201: invokestatic 42	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   204: pop
    //   205: invokestatic 105	android/os/Message:obtain	()Landroid/os/Message;
    //   208: astore 15
    //   210: aload 15
    //   212: iconst_0
    //   213: putfield 109	android/os/Message:what	I
    //   216: invokestatic 99	com/ja/sdk/JaMobLogService:getHandler	()Landroid/os/Handler;
    //   219: aload 15
    //   221: ldc2_w 110
    //   224: invokevirtual 117	android/os/Handler:sendMessageDelayed	(Landroid/os/Message;J)Z
    //   227: pop
    //   228: ldc 10
    //   230: ldc 119
    //   232: invokestatic 42	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   235: pop
    //   236: aload_0
    //   237: monitorexit
    //   238: return
    //   239: ldc 10
    //   241: ldc 164
    //   243: invokestatic 42	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   246: pop
    //   247: invokestatic 139	com/ja/sdk/framework/PageAccessDataHandle:getSingleInstance	()Lcom/ja/sdk/framework/PageAccessDataHandle;
    //   250: aload_0
    //   251: getfield 34	com/ja/sdk/pagevisitsend/SendPageAccessDataStart:mSendDataTask	Lcom/ja/sdk/pagevisitsend/SendPageAccessDataTask;
    //   254: getfield 131	com/ja/sdk/pagevisitsend/SendPageAccessDataTask:mContext	Landroid/content/Context;
    //   257: aload_3
    //   258: invokevirtual 143	com/ja/sdk/framework/PageAccessDataHandle:sendFivePageAccessDataToServer	(Landroid/content/Context;Lorg/json/JSONArray;)V
    //   261: goto -79 -> 182
    //   264: astore 12
    //   266: aload 12
    //   268: invokevirtual 167	java/lang/Exception:printStackTrace	()V
    //   271: goto -89 -> 182
    //   274: iconst_1
    //   275: ifne -238 -> 37
    //   278: aload_0
    //   279: monitorexit
    //   280: return
    //   281: astore 13
    //   283: goto -95 -> 188
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	286	0	this	SendPageAccessDataStart
    //   117	4	2	localObject	Object
    //   43	215	3	localJSONArray	org.json.JSONArray
    //   141	1	4	localException1	java.lang.Exception
    //   78	12	8	localMessage1	android.os.Message
    //   264	3	12	localException2	java.lang.Exception
    //   281	1	13	localInterruptedException	java.lang.InterruptedException
    //   208	12	15	localMessage2	android.os.Message
    // Exception table:
    //   from	to	target	type
    //   17	36	117	finally
    //   37	44	117	finally
    //   48	55	117	finally
    //   55	69	117	finally
    //   69	114	117	finally
    //   114	116	117	finally
    //   118	120	117	finally
    //   122	138	117	finally
    //   143	151	117	finally
    //   154	182	117	finally
    //   182	188	117	finally
    //   188	238	117	finally
    //   239	261	117	finally
    //   266	271	117	finally
    //   278	280	117	finally
    //   69	114	141	java/lang/Exception
    //   122	138	141	java/lang/Exception
    //   154	182	264	java/lang/Exception
    //   239	261	264	java/lang/Exception
    //   182	188	281	java/lang/InterruptedException
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.sdk.pagevisitsend.SendPageAccessDataStart
 * JD-Core Version:    0.7.0.1
 */