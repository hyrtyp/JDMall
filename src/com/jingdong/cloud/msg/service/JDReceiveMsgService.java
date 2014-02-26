package com.jingdong.cloud.msg.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.jingdong.cloud.msg.PushService;
import com.jingdong.cloud.msg.entity.LoginState;
import com.jingdong.cloud.msg.util.Log;

public class JDReceiveMsgService
  extends Service
{
  private static final String TAG = JDReceiveMsgService.class.getSimpleName();
  public static boolean isNeedLive = true;
  private MsgThread msgThread = new MsgThread(null);
  
  private void quitThread()
  {
    isNeedLive = false;
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    if (Log.D) {
      Log.d(TAG, "Invoke onCreate()");
    }
    this.msgThread.start();
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    if (Log.D) {
      Log.d(TAG, "Invoke onDestroy()");
    }
    LoginState.setHasLogin(false);
    quitThread();
  }
  
  public void onStart(Intent paramIntent, int paramInt)
  {
    super.onStart(paramIntent, paramInt);
  }
  
  private class MsgThread
    extends Thread
  {
    private MsgThread() {}
    
    public void run()
    {
      super.run();
      try
      {
        JDReceiveMsgService.isNeedLive = true;
        PushService.getInstance().connectServer(JDReceiveMsgService.this);
        return;
      }
      catch (Exception localException)
      {
        Log.e(JDReceiveMsgService.TAG, "Fail to connect server: " + localException.toString());
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.cloud.msg.service.JDReceiveMsgService
 * JD-Core Version:    0.7.0.1
 */