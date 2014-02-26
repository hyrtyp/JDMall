package com.jingdong.cloud.msg.util;

import java.util.LinkedList;
import java.util.Queue;

public class MsgIdQueue
{
  private static Queue<String> msgIdQueue = new LinkedList();
  
  public static boolean isContainId(String paramString)
  {
    return msgIdQueue.contains(paramString);
  }
  
  public static void pollQueue()
  {
    if (Log.D) {
      Log.d("MainActivity", " pollQueue --->msgid : ");
    }
    msgIdQueue.poll();
  }
  
  public static void pushQueue(String paramString)
  {
    if (Log.D) {
      Log.d("MainActivity", " pushQueue --->msgid : " + paramString);
    }
    if (msgIdQueue.size() >= 10) {
      pollQueue();
    }
    msgIdQueue.offer(paramString);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.cloud.msg.util.MsgIdQueue
 * JD-Core Version:    0.7.0.1
 */