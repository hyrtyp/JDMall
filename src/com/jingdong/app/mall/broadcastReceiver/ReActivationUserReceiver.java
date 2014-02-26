package com.jingdong.app.mall.broadcastReceiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.ReActivationUserManager;
import com.jingdong.common.broadcastReceiver.KillSelfManager;
import com.jingdong.common.utils.AlarmUtils;
import com.jingdong.common.utils.MessageUtil;

public class ReActivationUserReceiver
  extends BroadcastReceiver
{
  public static final String ACTION = "com.360buy.RE_ACTIVATION_USER";
  private static final String TAG = "ReActivationUserReceiver";
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    ReActivationUserManager localReActivationUserManager = new ReActivationUserManager(paramContext);
    localReActivationUserManager.setKillSelfToken(KillSelfManager.StartKillSelfTimer());
    String str = paramIntent.getAction();
    if (TextUtils.isEmpty(str)) {}
    do
    {
      return;
      if (str.equals("android.intent.action.BOOT_COMPLETED"))
      {
        if (MessageUtil.getMsgMode())
        {
          MessageUtil.openMsgService();
          return;
        }
        SharedPreferences.Editor localEditor = CommonUtil.getJdSharedPreferences().edit();
        localEditor.putLong("nextPushMsgTaskTime", 0L);
        localEditor.commit();
        AlarmUtils.alarmPushMsgTask(paramContext, -1L);
        localReActivationUserManager.checkOverdueAlarmForBoot();
        return;
      }
      if (str.equals("com.360buy.RE_ACTIVATION_USER"))
      {
        localReActivationUserManager.requestNotifys();
        return;
      }
    } while ((!str.equals("android.intent.action.ACTION_SHUTDOWN")) || (!MessageUtil.getMsgMode()));
    MessageUtil.closeMsgService();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.broadcastReceiver.ReActivationUserReceiver
 * JD-Core Version:    0.7.0.1
 */