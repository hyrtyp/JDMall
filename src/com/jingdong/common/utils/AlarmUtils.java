package com.jingdong.common.utils;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.jingdong.common.config.Configuration;

public class AlarmUtils
{
  private static long DEFAULT_DELAY = 0L;
  public static final long MAX_INTERVAL_TIME = 7200000L;
  public static final String PUSH_MSG_ACTION = "com.360buy.PUSH_MSG_TASK";
  public static final String TAG = "AlarmUtils";
  public static final long UNKONW_DELAY = -1L;
  
  public static void alarmPushMsgTask(Context paramContext, long paramLong)
  {
    for (;;)
    {
      SharedPreferences localSharedPreferences;
      long l1;
      try
      {
        boolean bool = MessageUtil.getMsgMode();
        if (bool) {
          return;
        }
        localSharedPreferences = CommonUtil.getJdSharedPreferences();
        l1 = localSharedPreferences.getLong("nextPushMsgTaskDelayTime", getDefaultDelay());
        long l2 = localSharedPreferences.getLong("nextPushMsgTaskTime", 0L);
        long l3 = System.currentTimeMillis() - l2;
        if (l3 >= 0L) {
          break label209;
        }
        if (l3 > -7200000L) {
          continue;
        }
      }
      finally {}
      long l4 = paramLong + System.currentTimeMillis();
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      localEditor.putLong("nextPushMsgTaskTime", l4);
      localEditor.commit();
      AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
      Intent localIntent = new Intent("com.360buy.PUSH_MSG_TASK");
      localIntent.setFlags(32);
      localIntent.putExtra("delay", paramLong);
      PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext.getApplicationContext(), 0, localIntent, 268435456);
      if (Boolean.parseBoolean(Configuration.getProperty("alarmNeedWakeUp", "true")))
      {
        localAlarmManager.set(0, l4, localPendingIntent);
      }
      else
      {
        localAlarmManager.set(1, l4, localPendingIntent);
        continue;
        label209:
        if (paramLong == -1L) {
          paramLong = l1;
        }
      }
    }
  }
  
  public static long getDefaultDelay()
  {
    if (DEFAULT_DELAY == 0L) {
      DEFAULT_DELAY = Configuration.getLongProperty("defaultPushMessageAlarmDelay").longValue();
    }
    return DEFAULT_DELAY;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.AlarmUtils
 * JD-Core Version:    0.7.0.1
 */