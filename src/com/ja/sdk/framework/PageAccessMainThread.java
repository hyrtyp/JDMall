package com.ja.sdk.framework;

import android.content.Context;
import com.ja.sdk.pagevisitsend.SendPageAccessDataMainThread;
import com.ja.sdk.utils.LogUtil;

public class PageAccessMainThread
  extends Thread
{
  private static final String TAG = "PageAccessMainThread";
  private static PageAccessMainThread mainWorkThread = new PageAccessMainThread();
  private Boolean isMainWorkThreadObject = Boolean.valueOf(false);
  private Boolean isMainWorkThreadRun = Boolean.valueOf(false);
  private Context mContext;
  
  public static PageAccessMainThread getSingleInstance()
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
    SendPageAccessDataMainThread.getSignleInstance().setPageAccessSendStrategy(this.mContext);
    setMainWorkThreadRunFlag(Boolean.valueOf(true));
    synchronized (mainWorkThread)
    {
      try
      {
        notifyAll();
        SendPageAccessDataMainThread.getSignleInstance().postTaskToMainThread(this.mContext);
        return;
      }
      catch (IllegalMonitorStateException localIllegalMonitorStateException)
      {
        for (;;)
        {
          LogUtil.logException("PageAccessMainThread", localIllegalMonitorStateException);
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
 * Qualified Name:     com.ja.sdk.framework.PageAccessMainThread
 * JD-Core Version:    0.7.0.1
 */