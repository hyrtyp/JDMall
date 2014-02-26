package com.jingdong.common.utils.thread;

import android.os.Process;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class PooledThread
  extends Thread
{
  private static ThreadPool sFirstPool;
  private static ThreadPool sSecondPool;
  private static ThreadPool sThirdPool;
  protected boolean killed = false;
  protected boolean paused = false;
  private ThreadPool pool;
  protected boolean running = false;
  protected boolean stopped = false;
  protected List<Runnable> tasks = new ArrayList();
  
  public PooledThread(ThreadPool paramThreadPool)
  {
    this.pool = paramThreadPool;
  }
  
  public static ThreadPool getFirstThreadPool()
  {
    try
    {
      if (sFirstPool == null)
      {
        sFirstPool = new ThreadPool(2, 2);
        sFirstPool.init();
      }
      ThreadPool localThreadPool = sFirstPool;
      return localThreadPool;
    }
    finally {}
  }
  
  public static ThreadPool getSecondThreadPool()
  {
    try
    {
      if (sSecondPool == null)
      {
        sSecondPool = new ThreadPool(2, 2);
        sSecondPool.init();
      }
      ThreadPool localThreadPool = sSecondPool;
      return localThreadPool;
    }
    finally {}
  }
  
  public static ThreadPool getThirdThreadPool()
  {
    try
    {
      if (sThirdPool == null)
      {
        sThirdPool = new ThreadPool(2, 2);
        sThirdPool.init();
      }
      ThreadPool localThreadPool = sThirdPool;
      return localThreadPool;
    }
    finally {}
  }
  
  public boolean isRunning()
  {
    return this.running;
  }
  
  public void kill()
  {
    if (!this.running)
    {
      interrupt();
      return;
    }
    this.killed = true;
  }
  
  public void killSync()
  {
    kill();
    for (;;)
    {
      if (!isAlive()) {
        return;
      }
      try
      {
        sleep(5L);
      }
      catch (InterruptedException localInterruptedException) {}
    }
  }
  
  public void pauseTasks()
  {
    this.paused = true;
  }
  
  public void pauseTasksSync()
  {
    pauseTasks();
    for (;;)
    {
      if (!isRunning()) {
        return;
      }
      try
      {
        sleep(5L);
      }
      catch (InterruptedException localInterruptedException) {}
    }
  }
  
  protected Runnable popTask()
  {
    if (this.tasks.size() > 0) {
      return (Runnable)this.tasks.remove(0);
    }
    return null;
  }
  
  public void putTask(Runnable paramRunnable)
  {
    this.tasks.add(paramRunnable);
  }
  
  public void putTasks(Collection paramCollection)
  {
    this.tasks.addAll(paramCollection);
  }
  
  public void run()
  {
    for (;;)
    {
      label52:
      Runnable localRunnable;
      try
      {
        Process.setThreadPriority(19);
      }
      finally {}
      try
      {
        if ((this.running) && (this.tasks.size() != 0)) {
          continue;
        }
        this.pool.notifyForIdleThread();
        wait();
        if (this.killed) {
          this.killed = false;
        }
      }
      catch (InterruptedException localInterruptedException) {}
    }
    return;
    localRunnable.run();
    if (this.stopped)
    {
      this.stopped = false;
      if (this.tasks.size() > 0) {
        this.tasks.clear();
      }
    }
    for (;;)
    {
      this.running = false;
      break;
      if (this.paused)
      {
        this.paused = false;
        if (this.tasks.size() > 0) {}
      }
      else
      {
        localRunnable = popTask();
        if (localRunnable != null) {
          break label52;
        }
      }
    }
  }
  
  public void startTasks()
  {
    try
    {
      this.running = true;
      notify();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void stopTasks()
  {
    this.stopped = true;
  }
  
  public void stopTasksSync()
  {
    stopTasks();
    for (;;)
    {
      if (!isRunning()) {
        return;
      }
      try
      {
        sleep(5L);
      }
      catch (InterruptedException localInterruptedException) {}
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.thread.PooledThread
 * JD-Core Version:    0.7.0.1
 */