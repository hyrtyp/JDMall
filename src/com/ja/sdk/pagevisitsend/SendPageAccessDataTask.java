package com.ja.sdk.pagevisitsend;

import android.content.Context;
import com.ja.sdk.utils.LogUtil;

public class SendPageAccessDataTask
  implements Runnable
{
  private static final String TAG = "SendPageAccessDataTask";
  private static Boolean isSendPageAccessDataTaskRun = Boolean.valueOf(false);
  final Context mContext;
  final SendPageAccessDataMainThread mSendDataMainThread;
  
  SendPageAccessDataTask(SendPageAccessDataMainThread paramSendPageAccessDataMainThread, Context paramContext)
  {
    this.mSendDataMainThread = paramSendPageAccessDataMainThread;
    this.mContext = paramContext;
    LogUtil.logD("SendPageAccessDataTask", "SendPageAccessDataTask constructor!!!!");
  }
  
  public static Boolean getSendPageAccessDataStartThread()
  {
    return isSendPageAccessDataTaskRun;
  }
  
  public static void setSendPageAccessDataStaskThread(Boolean paramBoolean)
  {
    LogUtil.logD("SendPageAccessDataTask", "setSendPageAccessDataStaskThread(): =" + paramBoolean);
    isSendPageAccessDataTaskRun = paramBoolean;
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: ldc 10
    //   2: ldc 64
    //   4: invokestatic 42	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   7: pop
    //   8: iconst_1
    //   9: invokestatic 24	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   12: invokestatic 66	com/ja/sdk/pagevisitsend/SendPageAccessDataTask:setSendPageAccessDataStaskThread	(Ljava/lang/Boolean;)V
    //   15: aload_0
    //   16: monitorenter
    //   17: invokestatic 70	com/ja/sdk/pagevisitsend/SendPageAccessDataStart:getSendPageAccessDataStartThread	()Ljava/lang/Boolean;
    //   20: invokevirtual 74	java/lang/Boolean:booleanValue	()Z
    //   23: ifne +36 -> 59
    //   26: invokestatic 80	com/ja/sdk/pagevisitsend/SendPageAccessDataMainThread:getHandler	()Landroid/os/Handler;
    //   29: new 68	com/ja/sdk/pagevisitsend/SendPageAccessDataStart
    //   32: dup
    //   33: aload_0
    //   34: getfield 34	com/ja/sdk/pagevisitsend/SendPageAccessDataTask:mContext	Landroid/content/Context;
    //   37: aload_0
    //   38: invokespecial 83	com/ja/sdk/pagevisitsend/SendPageAccessDataStart:<init>	(Landroid/content/Context;Lcom/ja/sdk/pagevisitsend/SendPageAccessDataTask;)V
    //   41: ldc2_w 84
    //   44: invokevirtual 91	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   47: pop
    //   48: ldc 10
    //   50: ldc 93
    //   52: invokestatic 42	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   55: pop
    //   56: aload_0
    //   57: monitorexit
    //   58: return
    //   59: ldc 10
    //   61: ldc 95
    //   63: invokestatic 42	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   66: pop
    //   67: goto -19 -> 48
    //   70: astore_2
    //   71: aload_0
    //   72: monitorexit
    //   73: aload_2
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	SendPageAccessDataTask
    //   70	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   17	48	70	finally
    //   48	58	70	finally
    //   59	67	70	finally
    //   71	73	70	finally
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.sdk.pagevisitsend.SendPageAccessDataTask
 * JD-Core Version:    0.7.0.1
 */