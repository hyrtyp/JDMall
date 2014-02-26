package com.ja.analytics.sendcrashlog;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;

public class CrashWorkThreadHandler
{
  public static final String TAG = CrashWorkThreadHandler.class.getName();
  private static CrashThreadHandler mHandler;
  private static HandlerThread mSendCrashLogThreadHandler = new HandlerThread("CrashWorkThreadHandler");
  private static CrashWorkThreadHandler mSendDataMainThread = new CrashWorkThreadHandler();
  
  CrashWorkThreadHandler()
  {
    mSendCrashLogThreadHandler.start();
    mHandler = new CrashThreadHandler(mSendCrashLogThreadHandler.getLooper());
  }
  
  static Handler getHandler()
  {
    return mHandler;
  }
  
  public static CrashWorkThreadHandler getSingleton()
  {
    return mSendDataMainThread;
  }
  
  /* Error */
  public void postTaskToMainThread(android.content.Context paramContext, org.json.JSONArray paramJSONArray, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 22	com/ja/analytics/sendcrashlog/CrashWorkThreadHandler:TAG	Ljava/lang/String;
    //   5: ldc 59
    //   7: invokestatic 65	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   10: pop
    //   11: aload_2
    //   12: ifnull +14 -> 26
    //   15: aload_2
    //   16: invokevirtual 71	org/json/JSONArray:length	()I
    //   19: istore 6
    //   21: iload 6
    //   23: ifne +6 -> 29
    //   26: aload_0
    //   27: monitorexit
    //   28: return
    //   29: getstatic 22	com/ja/analytics/sendcrashlog/CrashWorkThreadHandler:TAG	Ljava/lang/String;
    //   32: ldc 73
    //   34: invokestatic 65	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   37: pop
    //   38: getstatic 51	com/ja/analytics/sendcrashlog/CrashWorkThreadHandler:mHandler	Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler$CrashThreadHandler;
    //   41: new 75	com/ja/analytics/sendcrashlog/SendCrashLogSubthread
    //   44: dup
    //   45: aload_1
    //   46: aload_2
    //   47: iload_3
    //   48: invokespecial 77	com/ja/analytics/sendcrashlog/SendCrashLogSubthread:<init>	(Landroid/content/Context;Lorg/json/JSONArray;I)V
    //   51: invokevirtual 81	com/ja/analytics/sendcrashlog/CrashWorkThreadHandler$CrashThreadHandler:post	(Ljava/lang/Runnable;)Z
    //   54: pop
    //   55: goto -29 -> 26
    //   58: astore 4
    //   60: aload_0
    //   61: monitorexit
    //   62: aload 4
    //   64: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	65	0	this	CrashWorkThreadHandler
    //   0	65	1	paramContext	android.content.Context
    //   0	65	2	paramJSONArray	org.json.JSONArray
    //   0	65	3	paramInt	int
    //   58	5	4	localObject	Object
    //   19	3	6	i	int
    // Exception table:
    //   from	to	target	type
    //   2	11	58	finally
    //   15	21	58	finally
    //   29	55	58	finally
  }
  
  public class CrashThreadHandler
    extends Handler
  {
    public CrashThreadHandler() {}
    
    public CrashThreadHandler(Looper paramLooper)
    {
      super();
    }
    
    public void handleMessage(Message paramMessage)
    {
      super.handleMessage(paramMessage);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.analytics.sendcrashlog.CrashWorkThreadHandler
 * JD-Core Version:    0.7.0.1
 */