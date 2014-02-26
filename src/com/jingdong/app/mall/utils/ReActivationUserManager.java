package com.jingdong.app.mall.utils;

import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.text.TextUtils;
import com.jingdong.app.mall.broadcastReceiver.InterfaceBroadcastReceiver;
import com.jingdong.app.mall.broadcastReceiver.ReActivationUserReceiver;
import com.jingdong.common.broadcastReceiver.KillSelfManager;
import com.jingdong.common.utils.FormatUtils;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.CustomOnAllListener;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpGroupSetting;
import com.jingdong.common.utils.HttpGroup.HttpGroupaAsynPool;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.JSONObjectProxy;
import java.util.Calendar;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

public class ReActivationUserManager
{
  private static final long DEFUALT_RETRY_INTERVAL = 30L;
  private static final int NOTIFICATION_ID = 9999;
  private static final long ONE_DAY_FOR_MILLIS = 86400000L;
  private static final long ONE_HOUR_FOR_MILLIS = 3600000L;
  private static final String TAG = "ReActivationUserManager";
  private static PendingIntent mPendingIntent;
  private HttpGroup httpGroup;
  private Object killSelfToken = null;
  private AlarmManager mAlarmManager;
  private Context mContext;
  private NotificationManager mNotificationManager;
  
  public ReActivationUserManager(Context paramContext)
  {
    this.mContext = paramContext;
    this.mAlarmManager = ((AlarmManager)this.mContext.getSystemService("alarm"));
    this.mNotificationManager = ((NotificationManager)this.mContext.getSystemService("notification"));
  }
  
  private void closeAlarm()
  {
    if (this.mAlarmManager != null)
    {
      this.mAlarmManager.cancel(mPendingIntent);
      CommonUtil.removeTriggerAtTime();
    }
  }
  
  private long getMillisDoNotDisturb(long paramLong)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramLong);
    int i = localCalendar.get(11);
    if (i < 9) {
      localCalendar.setTimeInMillis(32400000L + paramLong);
    }
    for (;;)
    {
      return localCalendar.getTimeInMillis();
      if (i > 21) {
        localCalendar.setTimeInMillis(43200000L + paramLong);
      }
    }
  }
  
  private void killSelf()
  {
    if (this.killSelfToken != null)
    {
      KillSelfManager.killSelf(this.killSelfToken);
      this.killSelfToken = null;
    }
  }
  
  private void showNotification(String paramString1, String paramString2, String paramString3)
  {
    Notification localNotification = new Notification(2130837564, paramString2, System.currentTimeMillis());
    Intent localIntent = InterfaceBroadcastReceiver.createIntent(2, null);
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("created", paramString3);
      localJSONObject.put("content", paramString2);
      localJSONObject.put("type", new Integer(4).toString());
      localJSONObject.put("title", paramString1);
      CommonUtil.getJdSharedPreferences().edit().putString("message", localJSONObject.toString()).commit();
      PendingIntent localPendingIntent = PendingIntent.getBroadcast(this.mContext, 0, localIntent, 134217728);
      localNotification.flags = 20;
      localNotification.setLatestEventInfo(this.mContext, paramString1, paramString2, localPendingIntent);
      this.mNotificationManager.notify(9999, localNotification);
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  private void startAlarm(long paramLong)
  {
    long l = getMillisDoNotDisturb(paramLong + System.currentTimeMillis());
    CommonUtil.putTriggerAtTime(l);
    startAlarmForTriggerAtTime(l);
  }
  
  private void startAlarmForTriggerAtTime(long paramLong)
  {
    Intent localIntent = new Intent("com.360buy.RE_ACTIVATION_USER");
    localIntent.setClassName(this.mContext.getPackageName(), ReActivationUserReceiver.class.getName());
    localIntent.setFlags(32);
    mPendingIntent = PendingIntent.getBroadcast(this.mContext, 0, localIntent, 268435456);
    this.mAlarmManager.set(0, paramLong, mPendingIntent);
  }
  
  public void checkOverdueAlarmForBoot()
  {
    long l = CommonUtil.getTriggerAtTime();
    if (l != -1L)
    {
      if (System.currentTimeMillis() > l)
      {
        requestNotifys();
        return;
      }
      startAlarmForTriggerAtTime(l);
      killSelf();
      return;
    }
    killSelf();
  }
  
  public void requestNotifys()
  {
    HttpGroup.CustomOnAllListener local1 = new HttpGroup.CustomOnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject().getJSONObjectOrNull("message");
        if (localJSONObjectProxy != null)
        {
          String str1 = localJSONObjectProxy.getStringOrNull("title");
          String str2 = localJSONObjectProxy.getStringOrNull("created");
          String str3 = localJSONObjectProxy.getStringOrNull("content");
          if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str3))) {
            ReActivationUserManager.this.showNotification(str1, str3, str2);
          }
        }
        ReActivationUserManager.this.startReActivationUserTask();
        ReActivationUserManager.this.killSelf();
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        ReActivationUserManager.this.showNotification(ReActivationUserManager.this.mContext.getResources().getString(2131166243), ReActivationUserManager.this.mContext.getResources().getString(2131166244), FormatUtils.formatDate(new Date()));
        ReActivationUserManager.this.startReActivationUserTask();
        ReActivationUserManager.this.killSelf();
      }
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    };
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("activationMessage");
    localHttpSetting.setListener(local1);
    localHttpSetting.setNotifyUser(false);
    localHttpSetting.setNeedGlobalInitialization(false);
    if (this.httpGroup == null)
    {
      HttpGroup.HttpGroupSetting localHttpGroupSetting = new HttpGroup.HttpGroupSetting();
      localHttpGroupSetting.setPriority(1000);
      localHttpGroupSetting.setType(1000);
      this.httpGroup = new HttpGroup.HttpGroupaAsynPool(localHttpGroupSetting);
    }
    this.httpGroup.add(localHttpSetting);
  }
  
  public void setKillSelfToken(Object paramObject)
  {
    this.killSelfToken = paramObject;
  }
  
  public void startReActivationUserTask()
  {
    startAlarm(86400000L * CommonUtil.getReActivationIntervalDays(30L));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.ReActivationUserManager
 * JD-Core Version:    0.7.0.1
 */