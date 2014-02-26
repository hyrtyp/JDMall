package com.jingdong.cloud.msg;

import android.content.Context;
import android.text.TextUtils;
import com.jingdong.cloud.msg.util.CommonUtil;
import com.jingdong.cloud.msg.util.Log;
import com.jingdong.cloud.msg.util.RequestQueue;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONException;
import org.json.JSONObject;

public class PushSocketProtocol
{
  private static final String TAG = PushSocketProtocol.class.getSimpleName();
  public static boolean isConn = false;
  public static boolean isOpenHeartBeat = false;
  private static Timer timer = null;
  private static Timer timerConn = null;
  
  static void addTag(Context paramContext, String paramString1, String paramString2)
  {
    if (Log.D) {
      Log.d(TAG, "Add tags: tags = " + paramString2);
    }
    putJsonMsg(paramContext, 4, null, paramString1, paramString2);
  }
  
  public static void openOrCloseConn(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (Log.D) {
        Log.d(TAG, "Open or close Conn: isConn = " + isConn);
      }
      if (!isConn)
      {
        isConn = true;
        ConnTask localConnTask = new ConnTask();
        ((ConnTask)localConnTask).setContext(paramContext);
        timerConn = new Timer();
        timerConn.schedule(localConnTask, 100L);
      }
    }
    do
    {
      return;
      isConn = false;
    } while (timerConn == null);
    if (Log.D) {
      Log.d(TAG, "Cancel timerConn instance.");
    }
    timerConn.cancel();
    timerConn = null;
  }
  
  public static void openOrCloseHeartBeat(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (Log.D) {
        Log.d(TAG, "Open or close heartbeat: isOpenHeartBeat = " + isOpenHeartBeat);
      }
      if (!isOpenHeartBeat)
      {
        isOpenHeartBeat = true;
        HeartbeatTask localHeartbeatTask = new HeartbeatTask();
        ((HeartbeatTask)localHeartbeatTask).setContext(paramContext);
        timer = new Timer();
        timer.schedule(localHeartbeatTask, 0L, 300000L);
      }
    }
    do
    {
      return;
      isOpenHeartBeat = false;
    } while (timer == null);
    if (Log.D) {
      Log.d(TAG, "Cancel timer instance.");
    }
    timer.cancel();
    timer = null;
  }
  
  private static JSONObject putConstantJson(Context paramContext, int paramInt, String paramString, Object paramObject)
  {
    JSONObject localJSONObject1;
    for (;;)
    {
      try
      {
        localJSONObject1 = new JSONObject();
        switch (paramInt)
        {
        case 2: 
        default: 
          return localJSONObject1;
        }
      }
      catch (JSONException localJSONException2)
      {
        JSONObject localJSONObject2 = null;
        continue;
      }
      try
      {
        if (!TextUtils.isEmpty(paramString)) {
          localJSONObject1.put("rid", paramString);
        }
        if ((paramObject == null) || (TextUtils.isEmpty(paramObject.toString()))) {
          break label192;
        }
        localJSONObject1.put("aid", paramObject.toString());
        return localJSONObject1;
      }
      catch (JSONException localJSONException1)
      {
        localJSONObject2 = localJSONObject1;
        localJSONException1.printStackTrace();
        return localJSONObject2;
      }
      if ((paramObject == null) || (TextUtils.isEmpty(paramObject.toString()))) {
        break label192;
      }
      localJSONObject1.put("aid", paramObject.toString());
      return localJSONObject1;
      if (!TextUtils.isEmpty(paramString)) {
        localJSONObject1.put("rid", paramString);
      }
      if ((paramObject == null) || (TextUtils.isEmpty(paramObject.toString()))) {
        break label192;
      }
      localJSONObject1.put("aid", paramObject.toString());
    }
    label192:
    return localJSONObject1;
  }
  
  private static void putJsonMsg(Context paramContext, int paramInt, String paramString1, String paramString2, String paramString3)
  {
    if (paramContext == null) {}
    Object localObject1;
    do
    {
      return;
      localObject1 = CommonUtil.getMetaData(paramContext, "JD_PUSH_APPID");
      Log.i(TAG, "putJsonMsg... appID ： " + localObject1);
    } while ((localObject1 == null) || (TextUtils.isEmpty(localObject1.toString())));
    localObject2 = null;
    for (;;)
    {
      JSONObject localJSONObject2;
      try
      {
        localJSONObject1 = new JSONObject();
      }
      catch (JSONException localJSONException1) {}
      try
      {
        localJSONObject2 = putConstantJson(paramContext, paramInt, paramString2, localObject1);
        localObject2 = localJSONObject2;
        switch (paramInt)
        {
        default: 
          sendJsonMsg(paramContext, localObject2, paramInt);
          return;
        }
      }
      catch (JSONException localJSONException2)
      {
        for (;;)
        {
          localObject2 = localJSONObject1;
        }
      }
      localObject2.put("o", "REG");
      String str = CommonUtil.getDeviceId(paramContext);
      if (!TextUtils.isEmpty(str))
      {
        localObject2.put("ct", str);
        continue;
        Log.e(TAG, localJSONException1.toString());
        continue;
        localObject2.put("o", "LOGN");
        continue;
        if (!TextUtils.isEmpty(paramString1)) {
          localObject2.put("mid", paramString1);
        }
        localObject2.put("o", "FIN");
        continue;
        localObject2.put("o", "PI");
        continue;
        localObject2.put("o", "ATAG");
        localObject2.put("tags", paramString3);
        continue;
        localObject2.put("o", "RTAG");
        localObject2.put("tags", paramString3);
      }
    }
  }
  
  static void removeTag(Context paramContext, String paramString1, String paramString2)
  {
    if (Log.D) {
      Log.d(TAG, "Remove tags: tags = " + paramString2);
    }
    putJsonMsg(paramContext, 5, null, paramString1, paramString2);
  }
  
  static void reponseSMSG(Context paramContext, String paramString1, String paramString2)
  {
    if (Log.D) {
      Log.d(TAG, "Reponse SMSG.");
    }
    putJsonMsg(paramContext, 3, paramString1, paramString2, null);
  }
  
  /* Error */
  private static void sendJsonMsg(Context paramContext, JSONObject paramJSONObject, int paramInt)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 46	com/jingdong/cloud/msg/util/Log:D	Z
    //   6: ifeq +25 -> 31
    //   9: getstatic 22	com/jingdong/cloud/msg/PushSocketProtocol:TAG	Ljava/lang/String;
    //   12: new 48	java/lang/StringBuilder
    //   15: dup
    //   16: ldc 193
    //   18: invokespecial 53	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   21: aload_0
    //   22: invokevirtual 144	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   25: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   28: invokestatic 64	com/jingdong/cloud/msg/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   31: aload_0
    //   32: ifnonnull +7 -> 39
    //   35: ldc 2
    //   37: monitorexit
    //   38: return
    //   39: aconst_null
    //   40: astore 4
    //   42: invokestatic 199	com/jingdong/cloud/msg/PushSocket:getInstance	()Ljava/net/Socket;
    //   45: astore 7
    //   47: getstatic 46	com/jingdong/cloud/msg/util/Log:D	Z
    //   50: istore 8
    //   52: aconst_null
    //   53: astore 4
    //   55: iload 8
    //   57: ifeq +26 -> 83
    //   60: getstatic 22	com/jingdong/cloud/msg/PushSocketProtocol:TAG	Ljava/lang/String;
    //   63: new 48	java/lang/StringBuilder
    //   66: dup
    //   67: ldc 201
    //   69: invokespecial 53	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   72: aload 7
    //   74: invokevirtual 144	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   77: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   80: invokestatic 64	com/jingdong/cloud/msg/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   83: aconst_null
    //   84: astore 4
    //   86: aload 7
    //   88: ifnull -53 -> 35
    //   91: aload 7
    //   93: invokevirtual 207	java/net/Socket:getOutputStream	()Ljava/io/OutputStream;
    //   96: astore 4
    //   98: iload_2
    //   99: ifeq +21 -> 120
    //   102: iload_2
    //   103: iconst_1
    //   104: if_icmpeq +16 -> 120
    //   107: iload_2
    //   108: iconst_4
    //   109: if_icmpeq +11 -> 120
    //   112: aconst_null
    //   113: astore 9
    //   115: iload_2
    //   116: iconst_5
    //   117: if_icmpne +17 -> 134
    //   120: invokestatic 210	com/jingdong/cloud/msg/util/CommonUtil:nextUniqueId	()Ljava/lang/String;
    //   123: astore 9
    //   125: aload_1
    //   126: ldc 212
    //   128: aload 9
    //   130: invokevirtual 125	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   133: pop
    //   134: getstatic 46	com/jingdong/cloud/msg/util/Log:D	Z
    //   137: ifeq +37 -> 174
    //   140: getstatic 22	com/jingdong/cloud/msg/PushSocketProtocol:TAG	Ljava/lang/String;
    //   143: new 48	java/lang/StringBuilder
    //   146: dup
    //   147: ldc 214
    //   149: invokespecial 53	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   152: iload_2
    //   153: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   156: ldc 219
    //   158: invokevirtual 57	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: aload_1
    //   162: invokevirtual 220	org/json/JSONObject:toString	()Ljava/lang/String;
    //   165: invokevirtual 57	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   171: invokestatic 64	com/jingdong/cloud/msg/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   174: aload 4
    //   176: aload_1
    //   177: invokevirtual 220	org/json/JSONObject:toString	()Ljava/lang/String;
    //   180: invokevirtual 226	java/lang/String:getBytes	()[B
    //   183: arraylength
    //   184: invokestatic 232	com/jingdong/cloud/msg/util/NumberUtil:getByteArray	(I)[B
    //   187: invokevirtual 238	java/io/OutputStream:write	([B)V
    //   190: aload 4
    //   192: aload_1
    //   193: invokevirtual 220	org/json/JSONObject:toString	()Ljava/lang/String;
    //   196: invokevirtual 226	java/lang/String:getBytes	()[B
    //   199: invokevirtual 238	java/io/OutputStream:write	([B)V
    //   202: aload 4
    //   204: invokevirtual 241	java/io/OutputStream:flush	()V
    //   207: getstatic 22	com/jingdong/cloud/msg/PushSocketProtocol:TAG	Ljava/lang/String;
    //   210: ldc 243
    //   212: invokestatic 147	com/jingdong/cloud/msg/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   215: iload_2
    //   216: tableswitch	default:+118 -> 334, 0:+40->256, 1:+40->256, 2:+118->334, 3:+118->334, 4:+40->256, 5:+40->256
    //   257: lconst_0
    //   258: ifnull -223 -> 35
    //   261: new 245	com/jingdong/cloud/msg/entity/Call
    //   264: dup
    //   265: iload_2
    //   266: aload 9
    //   268: invokespecial 248	com/jingdong/cloud/msg/entity/Call:<init>	(ILjava/lang/String;)V
    //   271: invokestatic 253	com/jingdong/cloud/msg/util/RequestQueue:put	(Lcom/jingdong/cloud/msg/entity/Call;)V
    //   274: goto -239 -> 35
    //   277: astore 5
    //   279: getstatic 22	com/jingdong/cloud/msg/PushSocketProtocol:TAG	Ljava/lang/String;
    //   282: aload 5
    //   284: invokevirtual 254	java/lang/Exception:toString	()Ljava/lang/String;
    //   287: invokestatic 167	com/jingdong/cloud/msg/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   290: aload 4
    //   292: ifnull +8 -> 300
    //   295: aload 4
    //   297: invokevirtual 257	java/io/OutputStream:close	()V
    //   300: invokestatic 260	com/jingdong/cloud/msg/PushSocket:closeConnect	()V
    //   303: aload_0
    //   304: iconst_0
    //   305: invokestatic 262	com/jingdong/cloud/msg/PushSocketProtocol:openOrCloseHeartBeat	(Landroid/content/Context;Z)V
    //   308: invokestatic 267	com/jingdong/cloud/msg/PushService:getInstance	()Lcom/jingdong/cloud/msg/PushService;
    //   311: aload_0
    //   312: invokevirtual 270	com/jingdong/cloud/msg/PushService:connectServer	(Landroid/content/Context;)V
    //   315: goto -280 -> 35
    //   318: astore_3
    //   319: ldc 2
    //   321: monitorexit
    //   322: aload_3
    //   323: athrow
    //   324: astore 6
    //   326: aload 6
    //   328: invokevirtual 271	java/io/IOException:printStackTrace	()V
    //   331: goto -31 -> 300
    //   334: goto -299 -> 35
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	337	0	paramContext	Context
    //   0	337	1	paramJSONObject	JSONObject
    //   0	337	2	paramInt	int
    //   318	5	3	localObject	Object
    //   40	256	4	localOutputStream	java.io.OutputStream
    //   277	6	5	localException	java.lang.Exception
    //   324	3	6	localIOException	java.io.IOException
    //   45	47	7	localSocket	java.net.Socket
    //   50	6	8	bool	boolean
    //   113	154	9	str	String
    // Exception table:
    //   from	to	target	type
    //   42	52	277	java/lang/Exception
    //   60	83	277	java/lang/Exception
    //   91	98	277	java/lang/Exception
    //   120	134	277	java/lang/Exception
    //   134	174	277	java/lang/Exception
    //   174	215	277	java/lang/Exception
    //   261	274	277	java/lang/Exception
    //   3	31	318	finally
    //   42	52	318	finally
    //   60	83	318	finally
    //   91	98	318	finally
    //   120	134	318	finally
    //   134	174	318	finally
    //   174	215	318	finally
    //   261	274	318	finally
    //   279	290	318	finally
    //   295	300	318	finally
    //   300	315	318	finally
    //   326	331	318	finally
    //   295	300	324	java/io/IOException
  }
  
  static void sendLogin(Context paramContext, String paramString)
  {
    putJsonMsg(paramContext, 1, null, paramString, null);
  }
  
  static void sendRegister(Context paramContext)
  {
    Log.i(TAG, "sendRegister...");
    putJsonMsg(paramContext, 0, null, null, null);
  }
  
  private static final class ConnTask
    extends TimerTask
  {
    private Context context;
    
    public void run()
    {
      if (!PushSocketProtocol.isConn) {
        return;
      }
      if (Log.D) {
        Log.d(PushSocketProtocol.TAG, "ConnTask retry Conn.....");
      }
      PushSocket.closeConnect();
      PushService.getInstance().connectServer(this.context);
    }
    
    public void setContext(Context paramContext)
    {
      this.context = paramContext;
    }
  }
  
  private static final class HeartbeatTask
    extends TimerTask
  {
    private Context context;
    long initial = 0L;
    
    public void run()
    {
      if (!PushSocketProtocol.isOpenHeartBeat) {}
      long l;
      do
      {
        return;
        if (Log.D) {
          Log.d(PushSocketProtocol.TAG, "Send heartbeat.");
        }
        PushSocketProtocol.putJsonMsg(this.context, 2, null, null, null);
        l = System.currentTimeMillis();
        if (Log.D) {
          Log.d(HeartbeatTask.class.getSimpleName(), "now - initial = " + l + "-" + this.initial + " = " + (l - this.initial) + ", CHECK_REQ_QUEUE_TIMEOUT_INTERVAL = " + 1800000L);
        }
      } while (l - this.initial <= 1800000L);
      Log.i(HeartbeatTask.class.getSimpleName(), "Prepare to scan timeout requests...");
      int i = RequestQueue.purge(180000000L);
      Log.i(HeartbeatTask.class.getSimpleName(), "Done: " + i + " timeout requests are purged.");
      this.initial = l;
    }
    
    public void setContext(Context paramContext)
    {
      this.context = paramContext;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.cloud.msg.PushSocketProtocol
 * JD-Core Version:    0.7.0.1
 */