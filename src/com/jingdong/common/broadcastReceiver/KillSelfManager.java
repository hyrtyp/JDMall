package com.jingdong.common.broadcastReceiver;

import com.jingdong.common.MyApplication;
import java.util.HashSet;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;

public class KillSelfManager
{
  protected static final String TAG = "KillSelfManager";
  private static Timer killSelfTimer;
  private static Set<Object> synchronizTokenSet = new HashSet();
  
  public static Object StartKillSelfTimer()
  {
    try
    {
      Object localObject1 = new Object();
      synchronizTokenSet.add(localObject1);
      if (MyApplication.getInstance().getMainFrameActivity() == null)
      {
        if (killSelfTimer != null) {
          killSelfTimer.cancel();
        }
        killSelfTimer = new Timer();
        killSelfTimer.schedule(new TimerTask()
        {
          public void run() {}
        }, 60000L);
      }
      return localObject1;
    }
    finally {}
  }
  
  public static void killSelf(Object paramObject)
  {
    try
    {
      synchronizTokenSet.remove(paramObject);
      if (synchronizTokenSet.size() == 0) {
        killSelfMethod();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private static void killSelfMethod()
  {
    try
    {
      if (killSelfTimer != null)
      {
        killSelfTimer.cancel();
        killSelfTimer = null;
      }
      new Thread()
      {
        public void run()
        {
          setName("KillSelfManager");
          MyApplication.killStageNoUI();
        }
      }.start();
      return;
    }
    finally {}
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.broadcastReceiver.KillSelfManager
 * JD-Core Version:    0.7.0.1
 */