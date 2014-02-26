package com.jingdong.common.utils.thread;

import android.os.Process;
import com.jingdong.common.utils.IPriority;
import com.jingdong.common.utils.PriorityCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.PriorityQueue;
import java.util.Vector;

public class ThreadPool
{
  protected static final String TAG = "ThreadPool";
  protected boolean hasIdleThread = false;
  protected int initPoolSize;
  protected boolean initialized = false;
  protected int maxPoolSize;
  protected PriorityQueue<IPriority> queue = new PriorityQueue();
  protected Vector threads = new Vector();
  
  public ThreadPool(int paramInt1, int paramInt2)
  {
    this.maxPoolSize = paramInt1;
    this.initPoolSize = paramInt2;
  }
  
  private IPriority pollTasks()
  {
    try
    {
      IPriority localIPriority = (IPriority)this.queue.poll();
      return localIPriority;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public PooledThread getIdleThread()
  {
    do
    {
      Iterator localIterator = this.threads.iterator();
      PooledThread localPooledThread1;
      do
      {
        if (!localIterator.hasNext())
        {
          if (getPoolSize() >= this.maxPoolSize) {
            break;
          }
          PooledThread localPooledThread2 = new PooledThread(this);
          localPooledThread2.start();
          this.threads.add(localPooledThread2);
          return localPooledThread2;
        }
        localPooledThread1 = (PooledThread)localIterator.next();
      } while (localPooledThread1.isRunning());
      return localPooledThread1;
    } while (waitForIdleThread());
    return null;
  }
  
  public int getPoolSize()
  {
    return this.threads.size();
  }
  
  public void init()
  {
    this.initialized = true;
    for (int i = 0;; i++)
    {
      if (i >= this.initPoolSize)
      {
        new Thread()
        {
          public void run()
          {
            setName("ThreadPool_init");
            Process.setThreadPriority(19);
            for (;;)
            {
              PooledThread localPooledThread = ThreadPool.this.getIdleThread();
              Collection localCollection = (Collection)ThreadPool.this.pollTasks();
              if (localCollection == null) {
                break;
              }
              localPooledThread.putTasks(localCollection);
              localPooledThread.startTasks();
            }
            try
            {
              synchronized (ThreadPool.this.queue)
              {
                ThreadPool.this.queue.wait();
              }
            }
            catch (InterruptedException localInterruptedException)
            {
              for (;;)
              {
                localInterruptedException.printStackTrace();
              }
            }
          }
        }.start();
        return;
      }
      PooledThread localPooledThread = new PooledThread(this);
      localPooledThread.setName("ThreadPool_" + i);
      localPooledThread.start();
      localPooledThread.setPriority(10);
      this.threads.add(localPooledThread);
    }
  }
  
  protected void notifyForIdleThread()
  {
    try
    {
      this.hasIdleThread = true;
      notify();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void offerTask(Runnable paramRunnable, int paramInt)
  {
    try
    {
      PriorityCollection localPriorityCollection = new PriorityCollection(paramInt);
      localPriorityCollection.add(paramRunnable);
      offerTasks(localPriorityCollection);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  /* Error */
  public void offerTasks(IPriority paramIPriority)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 38	com/jingdong/common/utils/thread/ThreadPool:queue	Ljava/util/PriorityQueue;
    //   6: aload_1
    //   7: invokevirtual 139	java/util/PriorityQueue:offer	(Ljava/lang/Object;)Z
    //   10: pop
    //   11: aload_0
    //   12: getfield 38	com/jingdong/common/utils/thread/ThreadPool:queue	Ljava/util/PriorityQueue;
    //   15: astore 4
    //   17: aload 4
    //   19: monitorenter
    //   20: aload_0
    //   21: getfield 38	com/jingdong/common/utils/thread/ThreadPool:queue	Ljava/util/PriorityQueue;
    //   24: invokevirtual 125	java/lang/Object:notify	()V
    //   27: aload 4
    //   29: monitorexit
    //   30: aload_0
    //   31: monitorexit
    //   32: return
    //   33: astore 5
    //   35: aload 4
    //   37: monitorexit
    //   38: aload 5
    //   40: athrow
    //   41: astore_2
    //   42: aload_0
    //   43: monitorexit
    //   44: aload_2
    //   45: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	46	0	this	ThreadPool
    //   0	46	1	paramIPriority	IPriority
    //   41	4	2	localObject1	Object
    //   33	6	5	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   20	30	33	finally
    //   35	38	33	finally
    //   2	20	41	finally
    //   38	41	41	finally
  }
  
  public void setMaxPoolSize(int paramInt)
  {
    this.maxPoolSize = paramInt;
    if (paramInt < getPoolSize()) {
      setPoolSize(paramInt);
    }
  }
  
  public void setPoolSize(int paramInt)
  {
    if (!this.initialized) {
      this.initPoolSize = paramInt;
    }
    for (;;)
    {
      return;
      if (paramInt > getPoolSize()) {
        for (int i = getPoolSize(); (i < paramInt) && (i < this.maxPoolSize); i++)
        {
          PooledThread localPooledThread = new PooledThread(this);
          localPooledThread.start();
          this.threads.add(localPooledThread);
        }
      } else if (paramInt < getPoolSize()) {
        while (getPoolSize() > paramInt) {
          ((PooledThread)this.threads.remove(0)).kill();
        }
      }
    }
  }
  
  /* Error */
  protected boolean waitForIdleThread()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iconst_0
    //   4: putfield 33	com/jingdong/common/utils/thread/ThreadPool:hasIdleThread	Z
    //   7: aload_0
    //   8: getfield 33	com/jingdong/common/utils/thread/ThreadPool:hasIdleThread	Z
    //   11: ifne +20 -> 31
    //   14: aload_0
    //   15: invokevirtual 70	com/jingdong/common/utils/thread/ThreadPool:getPoolSize	()I
    //   18: istore_3
    //   19: aload_0
    //   20: getfield 40	com/jingdong/common/utils/thread/ThreadPool:maxPoolSize	I
    //   23: istore 4
    //   25: iload_3
    //   26: iload 4
    //   28: if_icmpge +9 -> 37
    //   31: iconst_1
    //   32: istore_2
    //   33: aload_0
    //   34: monitorexit
    //   35: iload_2
    //   36: ireturn
    //   37: aload_0
    //   38: invokevirtual 155	java/lang/Object:wait	()V
    //   41: goto -34 -> 7
    //   44: astore 5
    //   46: iconst_0
    //   47: istore_2
    //   48: goto -15 -> 33
    //   51: astore_1
    //   52: aload_0
    //   53: monitorexit
    //   54: aload_1
    //   55: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	ThreadPool
    //   51	4	1	localObject	Object
    //   32	16	2	bool	boolean
    //   18	11	3	i	int
    //   23	6	4	j	int
    //   44	1	5	localInterruptedException	InterruptedException
    // Exception table:
    //   from	to	target	type
    //   37	41	44	java/lang/InterruptedException
    //   2	7	51	finally
    //   7	25	51	finally
    //   37	41	51	finally
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.thread.ThreadPool
 * JD-Core Version:    0.7.0.1
 */