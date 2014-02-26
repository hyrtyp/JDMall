package com.jd.droidlib.executor.concurrent;

import android.os.Process;
import java.util.concurrent.ThreadFactory;

public class BackgroundPriorityThreadFactory
  implements ThreadFactory
{
  public Thread newThread(Runnable paramRunnable)
  {
    new Thread(paramRunnable)
    {
      public void run()
      {
        Process.setThreadPriority(10);
        super.run();
      }
    };
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.executor.concurrent.BackgroundPriorityThreadFactory
 * JD-Core Version:    0.7.0.1
 */