package com.jingdong.cloud.msg.entity;

import java.io.PrintStream;
import java.util.LinkedList;
import java.util.Queue;

public class Call
{
  private int opType;
  private String reqId;
  
  public Call(int paramInt, String paramString)
  {
    this.opType = paramInt;
    this.reqId = paramString;
  }
  
  public static void main(String[] paramArrayOfString)
  {
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.add(new Call(1, "111111"));
    localLinkedList.add(new Call(1, "222222"));
    System.out.println(localLinkedList.contains(new Call(1, "111111")));
    System.out.println(localLinkedList);
    localLinkedList.remove(new Call(1, "111111"));
    System.out.println(localLinkedList);
    long l1 = System.nanoTime();
    System.out.println(l1);
    try
    {
      Thread.sleep(1000L);
      long l2 = System.nanoTime();
      System.out.println(l2);
      System.out.println((l2 - l1) / 1000000.0D);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        localInterruptedException.printStackTrace();
      }
    }
  }
  
  public boolean equals(Object paramObject)
  {
    Call localCall = (Call)paramObject;
    return (this.opType == localCall.opType) && (this.reqId.equals(localCall.reqId));
  }
  
  public int getOpType()
  {
    return this.opType;
  }
  
  public String getReqId()
  {
    return this.reqId;
  }
  
  public String toString()
  {
    return "[" + this.opType + ", " + this.reqId + "]";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.cloud.msg.entity.Call
 * JD-Core Version:    0.7.0.1
 */