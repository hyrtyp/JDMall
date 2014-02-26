package com.jd.lottery.lib.utils;

import android.os.Handler;

public class CountDownUtil
{
  private CountDownListner mCountDownListner;
  private long mEndTime;
  private Handler mHandler;
  private Runnable mRunnable = new Runnable()
  {
    public void run()
    {
      long l = CountDownUtil.this.mEndTime - System.currentTimeMillis();
      if (l < 0L) {
        return;
      }
      if (CountDownUtil.this.mCountDownListner != null) {
        CountDownUtil.this.mCountDownListner.onCountDown(l);
      }
      CountDownUtil.this.mHandler.postDelayed(CountDownUtil.this.mRunnable, 1000L);
    }
  };
  
  public void pause()
  {
    if (this.mHandler != null) {
      this.mHandler.removeCallbacks(this.mRunnable);
    }
  }
  
  public void resume()
  {
    if (this.mHandler != null) {
      this.mHandler.post(this.mRunnable);
    }
  }
  
  public void setCountDownListner(CountDownListner paramCountDownListner)
  {
    this.mCountDownListner = paramCountDownListner;
  }
  
  public void start(long paramLong)
  {
    this.mHandler = new Handler();
    this.mEndTime = paramLong;
    resume();
  }
  
  public void stop()
  {
    this.mEndTime = 0L;
  }
  
  public static abstract interface CountDownListner
  {
    public abstract void onCountDown(long paramLong);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.utils.CountDownUtil
 * JD-Core Version:    0.7.0.1
 */