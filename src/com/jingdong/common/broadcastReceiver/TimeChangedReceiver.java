package com.jingdong.common.broadcastReceiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

public class TimeChangedReceiver
  extends BroadcastReceiver
{
  private static IntentFilter intentFilter;
  private static TimeChangedReceiver timeChangedReceiver;
  
  public static void registerReceiver(Context paramContext)
  {
    if (timeChangedReceiver == null) {
      timeChangedReceiver = new TimeChangedReceiver();
    }
    if (paramContext != null)
    {
      intentFilter = new IntentFilter("android.intent.action.TIME_SET");
      intentFilter.addAction("android.intent.action.DATE_CHANGED");
      paramContext.registerReceiver(timeChangedReceiver, intentFilter);
    }
  }
  
  public static void unregisterReceiver(Context paramContext)
  {
    if ((paramContext != null) && (timeChangedReceiver != null)) {
      paramContext.unregisterReceiver(timeChangedReceiver);
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      com.jingdong.common.utils.TimerUntil.isChangedDate = true;
      return;
    }
    finally {}
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.broadcastReceiver.TimeChangedReceiver
 * JD-Core Version:    0.7.0.1
 */