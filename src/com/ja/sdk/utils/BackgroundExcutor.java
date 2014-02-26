package com.ja.sdk.utils;

import android.os.AsyncTask;
import java.util.PriorityQueue;

public class BackgroundExcutor
{
  private static BackgroundAsynTask excutor;
  private static PriorityQueue<BackgroundTask> taskQueue = new PriorityQueue();
  
  public static void run(BackgroundTask paramBackgroundTask)
  {
    taskQueue.add(paramBackgroundTask);
    if (excutor == null)
    {
      excutor = new BackgroundAsynTask();
      excutor.execute(new Void[0]);
    }
  }
  
  static class BackgroundAsynTask
    extends AsyncTask<Void, Void, Void>
  {
    protected Void doInBackground(Void... paramVarArgs)
    {
      for (;;)
      {
        BackgroundExcutor.BackgroundTask localBackgroundTask = (BackgroundExcutor.BackgroundTask)BackgroundExcutor.taskQueue.poll();
        if (localBackgroundTask == null)
        {
          BackgroundExcutor.excutor = null;
          return null;
        }
        localBackgroundTask.run();
      }
    }
  }
  
  public static abstract class BackgroundTask
    implements Runnable, Comparable<BackgroundTask>
  {
    public static final int COMMON_PRIORITY = 0;
    public static final int HIGH_PRIORITY = 1;
    public static final int LOW_PRIORITY = -1;
    private int priority = 0;
    
    public BackgroundTask() {}
    
    public BackgroundTask(int paramInt)
    {
      this.priority = paramInt;
    }
    
    public int compareTo(BackgroundTask paramBackgroundTask)
    {
      if (paramBackgroundTask == null) {}
      do
      {
        return -1;
        if (getPriority() < paramBackgroundTask.getPriority()) {
          return 1;
        }
      } while (getPriority() > paramBackgroundTask.getPriority());
      return 0;
    }
    
    public int getPriority()
    {
      return this.priority;
    }
    
    public abstract void run();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.sdk.utils.BackgroundExcutor
 * JD-Core Version:    0.7.0.1
 */