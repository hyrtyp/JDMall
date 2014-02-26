package com.ja.analytics.framework;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.ja.analytics.constant.Constants;
import com.ja.analytics.utils.LogUtil;
import org.json.JSONArray;

public class LogDatabaseMonitor
{
  private static final String TAG = LogDatabaseMonitor.class.getName();
  public static LogDatabaseMonitor dataMonitor = new LogDatabaseMonitor();
  private static HandlerThread monitorHandlerThread = new HandlerThread("LogDatabaseMonitor");
  private static MonitorThreadHandler monitorThreadHandler;
  private Context mContext;
  
  LogDatabaseMonitor()
  {
    Log.d(TAG, "LogDatabaseMonitor() --->");
    if (!monitorHandlerThread.isAlive()) {
      monitorHandlerThread.start();
    }
    for (;;)
    {
      monitorThreadHandler = new MonitorThreadHandler(monitorHandlerThread.getLooper());
      return;
      monitorHandlerThread.run();
    }
  }
  
  public static LogDatabaseMonitor getMonitor()
  {
    Log.d(TAG, "getMonitor() --->");
    return dataMonitor;
  }
  
  public static MonitorThreadHandler getMonitorHandler()
  {
    return monitorThreadHandler;
  }
  
  public static MonitorThreadHandler getMonitorThreadHandler()
  {
    return monitorThreadHandler;
  }
  
  public void startMonitorLog(Context paramContext)
  {
    this.mContext = paramContext;
    monitorThreadHandler.post(new MonitorThread(paramContext));
  }
  
  public class MonitorThread
    implements Runnable
  {
    private JSONArray jsonArray;
    private int logType = -1;
    private int monitorFlag = -1;
    private byte[] sync_lock = new byte[0];
    
    public MonitorThread(Context paramContext)
    {
      LogUtil.logD(LogDatabaseMonitor.TAG, "MonitorThread() --->");
      LogDatabaseMonitor.this.mContext = paramContext;
    }
    
    public MonitorThread(Context paramContext, JSONArray paramJSONArray, int paramInt)
    {
      LogDatabaseMonitor.this.mContext = paramContext;
      this.jsonArray = new JSONArray();
      this.jsonArray = paramJSONArray;
      this.logType = paramInt;
    }
    
    /* Error */
    public void run()
    {
      // Byte code:
      //   0: getstatic 62	com/ja/analytics/constant/Constants:SEND_STRATEGY	Z
      //   3: ifeq +8 -> 11
      //   6: iconst_0
      //   7: putstatic 65	com/ja/analytics/constant/Constants:SEND_INTERVAL_STRATEGY	Z
      //   10: return
      //   11: getstatic 68	com/ja/analytics/constant/Constants:SEND_INTERVAL	I
      //   14: i2l
      //   15: invokestatic 74	java/lang/Thread:sleep	(J)V
      //   18: aload_0
      //   19: getfield 28	com/ja/analytics/framework/LogDatabaseMonitor$MonitorThread:monitorFlag	I
      //   22: iconst_m1
      //   23: if_icmpne +145 -> 168
      //   26: invokestatic 34	com/ja/analytics/framework/LogDatabaseMonitor:access$0	()Ljava/lang/String;
      //   29: ldc 76
      //   31: invokestatic 42	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
      //   34: pop
      //   35: aload_0
      //   36: getfield 19	com/ja/analytics/framework/LogDatabaseMonitor$MonitorThread:this$0	Lcom/ja/analytics/framework/LogDatabaseMonitor;
      //   39: invokestatic 80	com/ja/analytics/framework/LogDatabaseMonitor:access$2	(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;
      //   42: invokestatic 86	com/ja/analytics/db/EventTable:openSQLiteDatabase	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
      //   45: ifnull -35 -> 10
      //   48: aload_0
      //   49: getfield 19	com/ja/analytics/framework/LogDatabaseMonitor$MonitorThread:this$0	Lcom/ja/analytics/framework/LogDatabaseMonitor;
      //   52: invokestatic 80	com/ja/analytics/framework/LogDatabaseMonitor:access$2	(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;
      //   55: invokestatic 90	com/ja/analytics/db/EventTable:getEventLog	(Landroid/content/Context;)Lorg/json/JSONArray;
      //   58: astore 16
      //   60: aload 16
      //   62: ifnonnull +11 -> 73
      //   65: aload 16
      //   67: invokevirtual 94	org/json/JSONArray:length	()I
      //   70: ifeq +19 -> 89
      //   73: invokestatic 100	com/ja/analytics/sendeventlog/EventWorkThreadHandler:getSingleton	()Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;
      //   76: aload_0
      //   77: getfield 19	com/ja/analytics/framework/LogDatabaseMonitor$MonitorThread:this$0	Lcom/ja/analytics/framework/LogDatabaseMonitor;
      //   80: invokestatic 80	com/ja/analytics/framework/LogDatabaseMonitor:access$2	(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;
      //   83: aload 16
      //   85: iconst_0
      //   86: invokevirtual 104	com/ja/analytics/sendeventlog/EventWorkThreadHandler:postTaskToMainThread	(Landroid/content/Context;Lorg/json/JSONArray;I)V
      //   89: aload_0
      //   90: getfield 19	com/ja/analytics/framework/LogDatabaseMonitor$MonitorThread:this$0	Lcom/ja/analytics/framework/LogDatabaseMonitor;
      //   93: invokestatic 80	com/ja/analytics/framework/LogDatabaseMonitor:access$2	(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;
      //   96: invokestatic 107	com/ja/analytics/db/CrashTable:openSQLiteDatabase	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
      //   99: ifnull -89 -> 10
      //   102: aload_0
      //   103: getfield 19	com/ja/analytics/framework/LogDatabaseMonitor$MonitorThread:this$0	Lcom/ja/analytics/framework/LogDatabaseMonitor;
      //   106: invokestatic 80	com/ja/analytics/framework/LogDatabaseMonitor:access$2	(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;
      //   109: invokestatic 110	com/ja/analytics/db/CrashTable:getCrashLog	(Landroid/content/Context;)Lorg/json/JSONArray;
      //   112: astore 17
      //   114: aload 17
      //   116: ifnonnull +11 -> 127
      //   119: aload 17
      //   121: invokevirtual 94	org/json/JSONArray:length	()I
      //   124: ifeq +19 -> 143
      //   127: invokestatic 115	com/ja/analytics/sendcrashlog/CrashWorkThreadHandler:getSingleton	()Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;
      //   130: aload_0
      //   131: getfield 19	com/ja/analytics/framework/LogDatabaseMonitor$MonitorThread:this$0	Lcom/ja/analytics/framework/LogDatabaseMonitor;
      //   134: invokestatic 80	com/ja/analytics/framework/LogDatabaseMonitor:access$2	(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;
      //   137: aload 17
      //   139: iconst_0
      //   140: invokevirtual 116	com/ja/analytics/sendcrashlog/CrashWorkThreadHandler:postTaskToMainThread	(Landroid/content/Context;Lorg/json/JSONArray;I)V
      //   143: aload_0
      //   144: iconst_0
      //   145: putfield 28	com/ja/analytics/framework/LogDatabaseMonitor$MonitorThread:monitorFlag	I
      //   148: goto -148 -> 0
      //   151: astore_1
      //   152: aload_1
      //   153: invokestatic 120	com/ja/analytics/utils/LogUtil:logException	(Ljava/lang/Throwable;)I
      //   156: pop
      //   157: goto -157 -> 0
      //   160: astore_3
      //   161: aload_3
      //   162: invokevirtual 123	java/lang/InterruptedException:printStackTrace	()V
      //   165: goto -147 -> 18
      //   168: aload_0
      //   169: getfield 28	com/ja/analytics/framework/LogDatabaseMonitor$MonitorThread:monitorFlag	I
      //   172: iconst_m1
      //   173: if_icmpeq +52 -> 225
      //   176: invokestatic 128	com/ja/analytics/net/HttpUtils:getEventNetworkStatus	()I
      //   179: ifeq +9 -> 188
      //   182: invokestatic 131	com/ja/analytics/net/HttpUtils:getCrashNetworkStatus	()I
      //   185: ifne +40 -> 225
      //   188: invokestatic 34	com/ja/analytics/framework/LogDatabaseMonitor:access$0	()Ljava/lang/String;
      //   191: ldc 133
      //   193: invokestatic 136	com/ja/analytics/utils/LogUtil:logI	(Ljava/lang/String;Ljava/lang/String;)I
      //   196: pop
      //   197: new 138	android/os/Message
      //   200: dup
      //   201: invokespecial 139	android/os/Message:<init>	()V
      //   204: astore 13
      //   206: aload 13
      //   208: iconst_2
      //   209: putfield 142	android/os/Message:what	I
      //   212: invokestatic 146	com/ja/analytics/framework/LogDatabaseMonitor:access$3	()Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;
      //   215: aload 13
      //   217: ldc2_w 147
      //   220: invokevirtual 154	com/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler:sendMessageDelayed	(Landroid/os/Message;J)Z
      //   223: pop
      //   224: return
      //   225: aload_0
      //   226: getfield 19	com/ja/analytics/framework/LogDatabaseMonitor$MonitorThread:this$0	Lcom/ja/analytics/framework/LogDatabaseMonitor;
      //   229: invokestatic 80	com/ja/analytics/framework/LogDatabaseMonitor:access$2	(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;
      //   232: invokestatic 90	com/ja/analytics/db/EventTable:getEventLog	(Landroid/content/Context;)Lorg/json/JSONArray;
      //   235: astore 4
      //   237: aload 4
      //   239: ifnonnull +11 -> 250
      //   242: aload 4
      //   244: invokevirtual 94	org/json/JSONArray:length	()I
      //   247: ifeq +151 -> 398
      //   250: invokestatic 100	com/ja/analytics/sendeventlog/EventWorkThreadHandler:getSingleton	()Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;
      //   253: aload_0
      //   254: getfield 19	com/ja/analytics/framework/LogDatabaseMonitor$MonitorThread:this$0	Lcom/ja/analytics/framework/LogDatabaseMonitor;
      //   257: invokestatic 80	com/ja/analytics/framework/LogDatabaseMonitor:access$2	(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;
      //   260: aload 4
      //   262: iconst_0
      //   263: invokevirtual 104	com/ja/analytics/sendeventlog/EventWorkThreadHandler:postTaskToMainThread	(Landroid/content/Context;Lorg/json/JSONArray;I)V
      //   266: aload_0
      //   267: getfield 19	com/ja/analytics/framework/LogDatabaseMonitor$MonitorThread:this$0	Lcom/ja/analytics/framework/LogDatabaseMonitor;
      //   270: invokestatic 80	com/ja/analytics/framework/LogDatabaseMonitor:access$2	(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;
      //   273: invokestatic 110	com/ja/analytics/db/CrashTable:getCrashLog	(Landroid/content/Context;)Lorg/json/JSONArray;
      //   276: astore 5
      //   278: aload 5
      //   280: ifnonnull +11 -> 291
      //   283: aload 5
      //   285: invokevirtual 94	org/json/JSONArray:length	()I
      //   288: ifeq +122 -> 410
      //   291: invokestatic 115	com/ja/analytics/sendcrashlog/CrashWorkThreadHandler:getSingleton	()Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;
      //   294: aload_0
      //   295: getfield 19	com/ja/analytics/framework/LogDatabaseMonitor$MonitorThread:this$0	Lcom/ja/analytics/framework/LogDatabaseMonitor;
      //   298: invokestatic 80	com/ja/analytics/framework/LogDatabaseMonitor:access$2	(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;
      //   301: aload 5
      //   303: iconst_0
      //   304: invokevirtual 116	com/ja/analytics/sendcrashlog/CrashWorkThreadHandler:postTaskToMainThread	(Landroid/content/Context;Lorg/json/JSONArray;I)V
      //   307: aload_0
      //   308: getfield 19	com/ja/analytics/framework/LogDatabaseMonitor$MonitorThread:this$0	Lcom/ja/analytics/framework/LogDatabaseMonitor;
      //   311: invokestatic 80	com/ja/analytics/framework/LogDatabaseMonitor:access$2	(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;
      //   314: invokestatic 90	com/ja/analytics/db/EventTable:getEventLog	(Landroid/content/Context;)Lorg/json/JSONArray;
      //   317: astore 6
      //   319: aload_0
      //   320: getfield 19	com/ja/analytics/framework/LogDatabaseMonitor$MonitorThread:this$0	Lcom/ja/analytics/framework/LogDatabaseMonitor;
      //   323: invokestatic 80	com/ja/analytics/framework/LogDatabaseMonitor:access$2	(Lcom/ja/analytics/framework/LogDatabaseMonitor;)Landroid/content/Context;
      //   326: invokestatic 110	com/ja/analytics/db/CrashTable:getCrashLog	(Landroid/content/Context;)Lorg/json/JSONArray;
      //   329: astore 7
      //   331: aload 6
      //   333: ifnonnull +11 -> 344
      //   336: aload 6
      //   338: invokevirtual 94	org/json/JSONArray:length	()I
      //   341: ifne -341 -> 0
      //   344: aload 7
      //   346: ifnonnull +11 -> 357
      //   349: aload 7
      //   351: invokevirtual 94	org/json/JSONArray:length	()I
      //   354: ifeq -354 -> 0
      //   357: aload 6
      //   359: ifnonnull +11 -> 370
      //   362: aload 6
      //   364: invokevirtual 94	org/json/JSONArray:length	()I
      //   367: ifne -367 -> 0
      //   370: new 138	android/os/Message
      //   373: dup
      //   374: invokespecial 139	android/os/Message:<init>	()V
      //   377: astore 8
      //   379: aload 8
      //   381: iconst_3
      //   382: putfield 142	android/os/Message:what	I
      //   385: invokestatic 146	com/ja/analytics/framework/LogDatabaseMonitor:access$3	()Lcom/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler;
      //   388: aload 8
      //   390: ldc2_w 147
      //   393: invokevirtual 154	com/ja/analytics/framework/LogDatabaseMonitor$MonitorThreadHandler:sendMessageDelayed	(Landroid/os/Message;J)Z
      //   396: pop
      //   397: return
      //   398: invokestatic 34	com/ja/analytics/framework/LogDatabaseMonitor:access$0	()Ljava/lang/String;
      //   401: ldc 156
      //   403: invokestatic 42	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
      //   406: pop
      //   407: goto -141 -> 266
      //   410: invokestatic 34	com/ja/analytics/framework/LogDatabaseMonitor:access$0	()Ljava/lang/String;
      //   413: ldc 158
      //   415: invokestatic 42	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
      //   418: pop
      //   419: goto -112 -> 307
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	422	0	this	MonitorThread
      //   151	2	1	localException	java.lang.Exception
      //   160	2	3	localInterruptedException	java.lang.InterruptedException
      //   235	26	4	localJSONArray1	JSONArray
      //   276	26	5	localJSONArray2	JSONArray
      //   317	46	6	localJSONArray3	JSONArray
      //   329	21	7	localJSONArray4	JSONArray
      //   377	12	8	localMessage1	Message
      //   204	12	13	localMessage2	Message
      //   58	26	16	localJSONArray5	JSONArray
      //   112	26	17	localJSONArray6	JSONArray
      // Exception table:
      //   from	to	target	type
      //   0	10	151	java/lang/Exception
      //   11	18	151	java/lang/Exception
      //   18	60	151	java/lang/Exception
      //   65	73	151	java/lang/Exception
      //   73	89	151	java/lang/Exception
      //   89	114	151	java/lang/Exception
      //   119	127	151	java/lang/Exception
      //   127	143	151	java/lang/Exception
      //   143	148	151	java/lang/Exception
      //   161	165	151	java/lang/Exception
      //   168	188	151	java/lang/Exception
      //   188	224	151	java/lang/Exception
      //   225	237	151	java/lang/Exception
      //   242	250	151	java/lang/Exception
      //   250	266	151	java/lang/Exception
      //   266	278	151	java/lang/Exception
      //   283	291	151	java/lang/Exception
      //   291	307	151	java/lang/Exception
      //   307	331	151	java/lang/Exception
      //   336	344	151	java/lang/Exception
      //   349	357	151	java/lang/Exception
      //   362	370	151	java/lang/Exception
      //   370	397	151	java/lang/Exception
      //   398	407	151	java/lang/Exception
      //   410	419	151	java/lang/Exception
      //   11	18	160	java/lang/InterruptedException
    }
  }
  
  public class MonitorThreadHandler
    extends Handler
  {
    public MonitorThreadHandler() {}
    
    public MonitorThreadHandler(Looper paramLooper)
    {
      super();
      LogUtil.logD(LogDatabaseMonitor.TAG, "MonitorThreadHandler() --->");
    }
    
    public void handleMessage(Message paramMessage)
    {
      super.handleMessage(paramMessage);
      switch (paramMessage.what)
      {
      default: 
        return;
      case 1: 
        LogDatabaseMonitor.monitorThreadHandler.postDelayed(new LogDatabaseMonitor.MonitorThread(LogDatabaseMonitor.this, LogDatabaseMonitor.this.mContext), 1800000L);
        return;
      case 2: 
        LogDatabaseMonitor.monitorThreadHandler.postDelayed(new LogDatabaseMonitor.MonitorThread(LogDatabaseMonitor.this, LogDatabaseMonitor.this.mContext), 600000L);
        return;
      }
      LogDatabaseMonitor.monitorThreadHandler.postDelayed(new LogDatabaseMonitor.MonitorThread(LogDatabaseMonitor.this, LogDatabaseMonitor.this.mContext), Constants.SEND_INTERVAL);
    }
    
    public void postTask(LogDatabaseMonitor.MonitorThread paramMonitorThread)
    {
      LogDatabaseMonitor.monitorThreadHandler.postDelayed(paramMonitorThread, Constants.SEND_INTERVAL);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.analytics.framework.LogDatabaseMonitor
 * JD-Core Version:    0.7.0.1
 */