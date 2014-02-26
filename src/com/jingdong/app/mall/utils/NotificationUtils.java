package com.jingdong.app.mall.utils;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.media.AudioManager;
import android.text.TextUtils;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.personel.MyWebMessage;
import com.jingdong.common.entity.MessageSummary;
import com.jingdong.common.utils.PushMessageUtils;

public class NotificationUtils
{
  public static final String ISFROMNF = "isFromNF";
  public static final String IS_HAS_ACTION = "isHasAction";
  public static final int PUSH_MESSAGE_NOTIFY_ID = 65623;
  public static final String TAG = "NotificationUtils";
  public static int count = 0;
  private static NotificationManager mNotificationManager;
  
  public static void addPushMessageNotify(MessageSummary paramMessageSummary, int paramInt, boolean paramBoolean)
  {
    Context localContext = MyApplication.getInstance().getApplicationContext();
    count = paramInt + count;
    Notification localNotification = new Notification(2130837564, paramMessageSummary.getTitle(), System.currentTimeMillis());
    localNotification.number = count;
    localNotification.flags = 16;
    localNotification.defaults = (0x4 | localNotification.defaults);
    localNotification.ledARGB = -1712259328;
    localNotification.ledOnMS = 300;
    localNotification.ledOffMS = 2000;
    localNotification.flags = (0x1 | localNotification.flags);
    int i = ((AudioManager)localContext.getSystemService("audio")).getRingerMode();
    if ((paramBoolean) && (i != 0) && (i != 1)) {
      localNotification.defaults = (0x1 | localNotification.defaults);
    }
    Intent localIntent;
    int j;
    if (count == 1)
    {
      boolean bool = TextUtils.isEmpty(paramMessageSummary.getAction());
      localIntent = null;
      j = 0;
      if (!bool)
      {
        j = 1;
        int k = paramMessageSummary.getType().intValue();
        if (k != 20)
        {
          localIntent = null;
          if (k != 31) {}
        }
        else
        {
          localIntent = new Intent("com.360buy.interfaceBroadcastReceiver");
          localIntent.putExtra("a", paramMessageSummary.getAction());
          localIntent.putExtra("isHasAction", true);
        }
      }
      if (localIntent == null)
      {
        localIntent = new Intent(localContext, MyWebMessage.class);
        localIntent.putExtra("isFromNF", true);
        SharedPreferences.Editor localEditor = CommonUtil.getJdSharedPreferences().edit();
        localEditor.putString("message", paramMessageSummary.getJsonObjectString());
        localEditor.commit();
      }
      PushMessageUtils.saveNotifyIdAndTime(paramMessageSummary.getId());
      if (j == 0) {
        break label390;
      }
    }
    label390:
    for (PendingIntent localPendingIntent = PendingIntent.getBroadcast(localContext, 2131165185, localIntent, 134217728);; localPendingIntent = PendingIntent.getActivity(localContext, 2131165185, localIntent, 134217728))
    {
      localNotification.setLatestEventInfo(localContext, paramMessageSummary.getTitle() + " (共" + count + "条)", paramMessageSummary.getContent(), localPendingIntent);
      getNotificationManager(localContext).notify(65623, localNotification);
      return;
      localIntent = new Intent(localContext, MyWebMessage.class);
      localIntent.putExtra("isFromNF", true);
      j = 0;
      break;
    }
  }
  
  private static NotificationManager getNotificationManager(Context paramContext)
  {
    if (mNotificationManager == null) {
      mNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
    }
    return mNotificationManager;
  }
  
  public static void removeNotify(Context paramContext, int paramInt)
  {
    getNotificationManager(paramContext).cancel(paramInt);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.NotificationUtils
 * JD-Core Version:    0.7.0.1
 */