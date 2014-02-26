package com.ja.sdk.framework;

import android.content.Context;
import com.ja.sdk.exceptionsend.SendExceptionDataMainThread;
import com.ja.sdk.utils.LogUtil;

public class ExceptionMainThread
  extends Thread
{
  public static final String TAG = "ExceptionMainThread";
  private static ExceptionMainThread mainWorkThread = new ExceptionMainThread();
  private Boolean isMainWorkThreadObject = Boolean.valueOf(false);
  private Boolean isMainWorkThreadRun = Boolean.valueOf(false);
  private Context mContext;
  
  public static ExceptionMainThread getSingleInstance()
  {
    return mainWorkThread;
  }
  
  private void setMainWorkThreadObject()
  {
    this.isMainWorkThreadObject = Boolean.valueOf(true);
  }
  
  public boolean getMainWorkThreadRunFlag()
  {
    try
    {
      boolean bool = this.isMainWorkThreadRun.booleanValue();
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public boolean isMainWorkThreadOk()
  {
    return this.isMainWorkThreadObject.booleanValue();
  }
  
  public void run()
  {
    SendExceptionDataMainThread.getSignleInstance().setDataSendStrategy(this.mContext);
    setMainWorkThreadRunFlag(Boolean.valueOf(true));
    synchronized (mainWorkThread)
    {
      try
      {
        notifyAll();
        SendExceptionDataMainThread.getSignleInstance().postTaskToMainThread(this.mContext);
        return;
      }
      catch (IllegalMonitorStateException localIllegalMonitorStateException)
      {
        for (;;)
        {
          LogUtil.logException("ExceptionMainThread", localIllegalMonitorStateException);
        }
      }
    }
  }
  
  public void setMainWorkThreadRunFlag(Boolean paramBoolean)
  {
    try
    {
      this.isMainWorkThreadRun = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void startMainWorkThread(Context paramContext)
  {
    if ((paramContext == null) || (isMainWorkThreadOk())) {
      return;
    }
    this.mContext = paramContext;
    setMainWorkThreadObject();
    start();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.sdk.framework.ExceptionMainThread
 * JD-Core Version:    0.7.0.1
 */