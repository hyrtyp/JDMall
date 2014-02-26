package com.jingdong.app.mall.broadcastReceiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.jingdong.common.broadcastReceiver.KillSelfManager;
import com.jingdong.common.utils.AlarmUtils;
import com.jingdong.common.utils.MessageUtil;

public class AppStateRecevier
  extends BroadcastReceiver
{
  private static final String TAG = "AppStateRecevier";
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Object localObject = KillSelfManager.StartKillSelfTimer();
    String str = paramIntent.getDataString();
    if ((!TextUtils.isEmpty(str)) && (str.contains(":")))
    {
      String[] arrayOfString = str.split(":");
      if ((arrayOfString.length > 1) && (paramContext.getPackageName().equals(arrayOfString[1])) && (!paramIntent.getAction().equals("android.intent.action.PACKAGE_ADDED"))) {
        break label94;
      }
    }
    for (;;)
    {
      if (paramIntent.getAction().equals("android.intent.action.PACKAGE_RESTARTED")) {
        AlarmUtils.alarmPushMsgTask(paramContext, -1L);
      }
      KillSelfManager.killSelf(localObject);
      return;
      label94:
      if (paramIntent.getAction().equals("android.intent.action.PACKAGE_REMOVED")) {
        MessageUtil.clearMsgData(paramContext);
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.broadcastReceiver.AppStateRecevier
 * JD-Core Version:    0.7.0.1
 */