package com.jingdong.cloud.msg.util;

import com.jingdong.cloud.msg.entity.Call;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class RequestQueue
{
  private static final Map<String, Call> TASKS = Collections.synchronizedMap(new HashMap());
  
  /* Error */
  public static boolean contains(java.lang.Integer paramInteger)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 22	com/jingdong/cloud/msg/util/RequestQueue:TASKS	Ljava/util/Map;
    //   6: invokeinterface 31 1 0
    //   11: invokeinterface 37 1 0
    //   16: astore_2
    //   17: aload_2
    //   18: invokeinterface 43 1 0
    //   23: istore_3
    //   24: iconst_0
    //   25: istore 4
    //   27: iload_3
    //   28: ifne +9 -> 37
    //   31: ldc 2
    //   33: monitorexit
    //   34: iload 4
    //   36: ireturn
    //   37: aload_2
    //   38: invokeinterface 47 1 0
    //   43: checkcast 49	java/util/Map$Entry
    //   46: invokeinterface 52 1 0
    //   51: checkcast 54	com/jingdong/cloud/msg/entity/Call
    //   54: invokevirtual 58	com/jingdong/cloud/msg/entity/Call:getOpType	()I
    //   57: istore 5
    //   59: aload_0
    //   60: invokevirtual 63	java/lang/Integer:intValue	()I
    //   63: istore 6
    //   65: iload 5
    //   67: iload 6
    //   69: if_icmpne -52 -> 17
    //   72: iconst_1
    //   73: istore 4
    //   75: goto -44 -> 31
    //   78: astore_1
    //   79: ldc 2
    //   81: monitorexit
    //   82: aload_1
    //   83: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	84	0	paramInteger	java.lang.Integer
    //   78	5	1	localObject	Object
    //   16	22	2	localIterator	java.util.Iterator
    //   23	5	3	bool1	boolean
    //   25	49	4	bool2	boolean
    //   57	13	5	i	int
    //   63	7	6	j	int
    // Exception table:
    //   from	to	target	type
    //   3	17	78	finally
    //   17	24	78	finally
    //   37	65	78	finally
  }
  
  public static void discard(String paramString)
  {
    try
    {
      TASKS.remove(paramString);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static Map<String, Call> getTasks()
  {
    return TASKS;
  }
  
  public static Call peek(String paramString)
  {
    try
    {
      Call localCall = (Call)TASKS.get(paramString);
      return localCall;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  /* Error */
  public static int purge(long paramLong)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 22	com/jingdong/cloud/msg/util/RequestQueue:TASKS	Ljava/util/Map;
    //   6: invokeinterface 31 1 0
    //   11: invokeinterface 37 1 0
    //   16: astore_3
    //   17: iconst_0
    //   18: istore 4
    //   20: aload_3
    //   21: invokeinterface 43 1 0
    //   26: istore 5
    //   28: iload 5
    //   30: ifne +9 -> 39
    //   33: ldc 2
    //   35: monitorexit
    //   36: iload 4
    //   38: ireturn
    //   39: aload_3
    //   40: invokeinterface 47 1 0
    //   45: checkcast 49	java/util/Map$Entry
    //   48: astore 6
    //   50: aload 6
    //   52: invokeinterface 81 1 0
    //   57: checkcast 83	java/lang/String
    //   60: invokestatic 89	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   63: invokestatic 95	java/lang/System:nanoTime	()J
    //   66: lsub
    //   67: lload_0
    //   68: lcmp
    //   69: ifle -49 -> 20
    //   72: aload_3
    //   73: invokeinterface 97 1 0
    //   78: ldc 2
    //   80: invokevirtual 103	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   83: new 105	java/lang/StringBuilder
    //   86: dup
    //   87: ldc 107
    //   89: invokespecial 109	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   92: aload 6
    //   94: invokeinterface 52 1 0
    //   99: checkcast 54	com/jingdong/cloud/msg/entity/Call
    //   102: invokevirtual 58	com/jingdong/cloud/msg/entity/Call:getOpType	()I
    //   105: invokevirtual 113	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   108: ldc 115
    //   110: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: aload 6
    //   115: invokeinterface 52 1 0
    //   120: checkcast 54	com/jingdong/cloud/msg/entity/Call
    //   123: invokevirtual 121	com/jingdong/cloud/msg/entity/Call:getReqId	()Ljava/lang/String;
    //   126: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   129: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   132: invokestatic 130	com/jingdong/cloud/msg/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   135: iinc 4 1
    //   138: goto -118 -> 20
    //   141: astore_2
    //   142: ldc 2
    //   144: monitorexit
    //   145: aload_2
    //   146: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	147	0	paramLong	long
    //   141	5	2	localObject	Object
    //   16	57	3	localIterator	java.util.Iterator
    //   18	118	4	i	int
    //   26	3	5	bool	boolean
    //   48	66	6	localEntry	java.util.Map.Entry
    // Exception table:
    //   from	to	target	type
    //   3	17	141	finally
    //   20	28	141	finally
    //   39	135	141	finally
  }
  
  public static void put(Call paramCall)
  {
    try
    {
      TASKS.put(paramCall.getReqId(), paramCall);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static Call take(String paramString)
  {
    try
    {
      Call localCall = (Call)TASKS.remove(paramString);
      return localCall;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.cloud.msg.util.RequestQueue
 * JD-Core Version:    0.7.0.1
 */