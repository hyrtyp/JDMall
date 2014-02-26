package com.jingdong.app.mall.broadcastReceiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.jingdong.common.broadcastReceiver.KillSelfManager;
import com.jingdong.common.utils.AlarmUtils;

public class DateChangedRecevier
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Object localObject = KillSelfManager.StartKillSelfTimer();
    AlarmUtils.alarmPushMsgTask(paramContext, -1L);
    KillSelfManager.killSelf(localObject);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.broadcastReceiver.DateChangedRecevier
 * JD-Core Version:    0.7.0.1
 */