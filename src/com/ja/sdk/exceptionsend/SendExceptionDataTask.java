package com.ja.sdk.exceptionsend;

import android.content.Context;
import com.ja.sdk.utils.LogUtil;

public class SendExceptionDataTask
  implements Runnable
{
  public static final String TAG = "SendExceptionDataTask";
  private static Boolean isSendExceptionDataTaskRun = Boolean.valueOf(false);
  final Context mContext;
  final SendExceptionDataMainThread mSendDataMainThread;
  
  SendExceptionDataTask(SendExceptionDataMainThread paramSendExceptionDataMainThread, Context paramContext)
  {
    this.mSendDataMainThread = paramSendExceptionDataMainThread;
    this.mContext = paramContext;
    LogUtil.logD("SendExceptionDataTask", " SendExceptionDataTask constructor!!");
  }
  
  public static Boolean getSendExceptionDataStartThread()
  {
    return isSendExceptionDataTaskRun;
  }
  
  public static void setSendExceptionDataStaskThread(Boolean paramBoolean)
  {
    LogUtil.logD("SendExceptionDataTask", " setSendExceptionDataStaskThread()=" + paramBoolean);
    isSendExceptionDataTaskRun = paramBoolean;
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: ldc 10
    //   2: ldc 64
    //   4: invokestatic 42	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   7: pop
    //   8: aload_0
    //   9: monitorenter
    //   10: iconst_1
    //   11: invokestatic 24	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   14: invokestatic 66	com/ja/sdk/exceptionsend/SendExceptionDataTask:setSendExceptionDataStaskThread	(Ljava/lang/Boolean;)V
    //   17: invokestatic 70	com/ja/sdk/exceptionsend/SendExceptionDataStart:getSendExceptionDataStartThread	()Ljava/lang/Boolean;
    //   20: invokevirtual 74	java/lang/Boolean:booleanValue	()Z
    //   23: ifne +40 -> 63
    //   26: ldc 10
    //   28: ldc 76
    //   30: invokestatic 42	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   33: pop
    //   34: invokestatic 82	com/ja/sdk/exceptionsend/SendExceptionDataMainThread:getHandler	()Landroid/os/Handler;
    //   37: new 68	com/ja/sdk/exceptionsend/SendExceptionDataStart
    //   40: dup
    //   41: aload_0
    //   42: invokespecial 85	com/ja/sdk/exceptionsend/SendExceptionDataStart:<init>	(Lcom/ja/sdk/exceptionsend/SendExceptionDataTask;)V
    //   45: ldc2_w 86
    //   48: invokevirtual 93	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   51: pop
    //   52: ldc 10
    //   54: ldc 95
    //   56: invokestatic 42	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   59: pop
    //   60: aload_0
    //   61: monitorexit
    //   62: return
    //   63: ldc 10
    //   65: ldc 97
    //   67: invokestatic 42	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   70: pop
    //   71: goto -19 -> 52
    //   74: astore_2
    //   75: aload_0
    //   76: monitorexit
    //   77: aload_2
    //   78: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	79	0	this	SendExceptionDataTask
    //   74	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   10	52	74	finally
    //   52	62	74	finally
    //   63	71	74	finally
    //   75	77	74	finally
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.sdk.exceptionsend.SendExceptionDataTask
 * JD-Core Version:    0.7.0.1
 */