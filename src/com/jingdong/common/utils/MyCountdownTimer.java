package com.jingdong.common.utils;

import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;

public abstract class MyCountdownTimer
{
  private static final int MSG = 1;
  private long mCountdownInterval;
  private Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      int i = paramAnonymousMessage.what;
      long l1;
      synchronized (MyCountdownTimer.this)
      {
        l1 = MyCountdownTimer.this.mStopTimeInFuture - SystemClock.elapsedRealtime();
        if (l1 <= 0L)
        {
          MyCountdownTimer.this.onFinish(i);
          return;
        }
        if (l1 < MyCountdownTimer.this.mCountdownInterval) {
          sendMessageDelayed(obtainMessage(i), l1);
        }
      }
      long l2 = SystemClock.elapsedRealtime();
      MyCountdownTimer.this.onTick(l1, i);
      long l4;
      for (long l3 = l2 + MyCountdownTimer.this.mCountdownInterval - SystemClock.elapsedRealtime();; l3 += l4)
      {
        if (l3 >= 0L)
        {
          sendMessageDelayed(obtainMessage(i), l3);
          break;
        }
        l4 = MyCountdownTimer.this.mCountdownInterval;
      }
    }
  };
  private long mMillisInFuture;
  private long mStopTimeInFuture;
  private int what;
  
  public MyCountdownTimer(long paramLong1, long paramLong2, int paramInt)
  {
    this.mMillisInFuture = paramLong1;
    this.mCountdownInterval = paramLong2;
    this.what = paramInt;
  }
  
  public final void cancel(int paramInt)
  {
    this.mHandler.removeMessages(paramInt);
  }
  
  public abstract void onFinish(int paramInt);
  
  public abstract void onTick(long paramLong, int paramInt);
  
  public final void reset(long paramLong1, long paramLong2, int paramInt)
  {
    try
    {
      this.mMillisInFuture = paramLong1;
      this.mCountdownInterval = paramLong2;
      this.what = paramInt;
      start();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  /* Error */
  public final MyCountdownTimer start()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 28	com/jingdong/common/utils/MyCountdownTimer:mMillisInFuture	J
    //   6: lconst_0
    //   7: lcmp
    //   8: ifgt +17 -> 25
    //   11: aload_0
    //   12: aload_0
    //   13: getfield 32	com/jingdong/common/utils/MyCountdownTimer:what	I
    //   16: invokevirtual 54	com/jingdong/common/utils/MyCountdownTimer:onFinish	(I)V
    //   19: aload_0
    //   20: astore_3
    //   21: aload_0
    //   22: monitorexit
    //   23: aload_3
    //   24: areturn
    //   25: aload_0
    //   26: invokestatic 60	android/os/SystemClock:elapsedRealtime	()J
    //   29: aload_0
    //   30: getfield 28	com/jingdong/common/utils/MyCountdownTimer:mMillisInFuture	J
    //   33: ladd
    //   34: putfield 36	com/jingdong/common/utils/MyCountdownTimer:mStopTimeInFuture	J
    //   37: aload_0
    //   38: getfield 26	com/jingdong/common/utils/MyCountdownTimer:mHandler	Landroid/os/Handler;
    //   41: aload_0
    //   42: getfield 26	com/jingdong/common/utils/MyCountdownTimer:mHandler	Landroid/os/Handler;
    //   45: aload_0
    //   46: getfield 32	com/jingdong/common/utils/MyCountdownTimer:what	I
    //   49: invokevirtual 64	android/os/Handler:obtainMessage	(I)Landroid/os/Message;
    //   52: invokevirtual 68	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   55: pop
    //   56: aload_0
    //   57: astore_3
    //   58: goto -37 -> 21
    //   61: astore_1
    //   62: aload_0
    //   63: monitorexit
    //   64: aload_1
    //   65: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	66	0	this	MyCountdownTimer
    //   61	4	1	localObject	Object
    //   20	38	3	localMyCountdownTimer	MyCountdownTimer
    // Exception table:
    //   from	to	target	type
    //   2	19	61	finally
    //   25	56	61	finally
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.MyCountdownTimer
 * JD-Core Version:    0.7.0.1
 */