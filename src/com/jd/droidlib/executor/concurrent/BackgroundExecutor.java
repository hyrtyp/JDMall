package com.jd.droidlib.executor.concurrent;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class BackgroundExecutor
  extends ThreadPoolExecutor
{
  public BackgroundExecutor(int paramInt)
  {
    super(paramInt, paramInt, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new BackgroundPriorityThreadFactory());
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.executor.concurrent.BackgroundExecutor
 * JD-Core Version:    0.7.0.1
 */