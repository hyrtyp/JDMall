package com.jingdong.common.utils;

public class CommercialThread
  extends Thread
{
  public boolean isRunner;
  private CommercialThreadListener listner;
  public long sleepTime = 5000L;
  public boolean stop;
  
  public CommercialThread(CommercialThreadListener paramCommercialThreadListener)
  {
    this.listner = paramCommercialThreadListener;
    this.stop = false;
    this.isRunner = true;
  }
  
  public void run()
  {
    for (;;)
    {
      try
      {
        boolean bool = this.stop;
        if (!bool) {
          continue;
        }
      }
      catch (Exception localException)
      {
        continue;
      }
      finally {}
      return;
      if (!this.isRunner) {
        wait();
      }
      this.listner.doRun();
      Thread.sleep(this.sleepTime);
    }
  }
  
  public static abstract interface CommercialThreadListener
  {
    public abstract void doRun();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.CommercialThread
 * JD-Core Version:    0.7.0.1
 */