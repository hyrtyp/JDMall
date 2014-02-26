package com.jingdong.common.utils;

import java.util.ArrayList;
import java.util.List;

public class MyHandlerList
{
  private int currentTaskIndex;
  private boolean multiThread;
  private List<MyHandler> taskList = new ArrayList();
  
  public MyHandlerList(boolean paramBoolean)
  {
    this.multiThread = paramBoolean;
  }
  
  public void add(MyHandler paramMyHandler)
  {
    this.taskList.add(paramMyHandler);
  }
  
  public void doLast()
  {
    int i = -1 + this.taskList.size();
    this.currentTaskIndex = (i + 1);
    ((MyHandler)this.taskList.get(i)).run();
    if (!this.multiThread) {
      this.currentTaskIndex = i;
    }
  }
  
  public void doNext()
  {
    int i = this.currentTaskIndex;
    this.currentTaskIndex = (1 + this.currentTaskIndex);
    if (i < this.taskList.size())
    {
      ((MyHandler)this.taskList.get(i)).run();
      if (!this.multiThread) {
        this.currentTaskIndex = i;
      }
    }
  }
  
  public void start()
  {
    if (this.currentTaskIndex == 0) {
      doNext();
    }
  }
  
  public static abstract interface MyHandler
  {
    public abstract void run();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.MyHandlerList
 * JD-Core Version:    0.7.0.1
 */