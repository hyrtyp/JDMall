package com.jingdong.app.mall.home;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.jingdong.common.database.table.MS_AlarmTable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class PanicBuyingReceive
  extends BroadcastReceiver
{
  public static final String ACTION_OPENPANICBUYING = "com.jingdong.app.mall.panicbuyinglist";
  public static final String ACTION_PANICBUYING = "com.jingdong.app.mall.panicbuying";
  public static final int ALARM_TIME = 60000;
  private static final String TAG = "PanicBuyingReceive";
  public static final String TEXT_BOOT_COMPLETED = "text_boot_completed";
  
  public Notification getNotification(Context paramContext, PendingIntent paramPendingIntent, int paramInt, String paramString)
  {
    Notification localNotification = new Notification();
    localNotification.vibrate = new long[] { 1000L, 1000L, 1000L };
    localNotification.icon = paramInt;
    localNotification.tickerText = paramString;
    localNotification.defaults = 1;
    localNotification.flags = 16;
    localNotification.setLatestEventInfo(paramContext, "您关注的商品秒杀开始了", paramString, paramPendingIntent);
    return localNotification;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Intent localIntent1 = new Intent(paramContext, PanicBuyingService.class);
    String str = paramIntent.getAction();
    if ((!TextUtils.isEmpty(str)) && (str.equals("com.jingdong.app.mall.panicbuying"))) {}
    try
    {
      int i = paramIntent.getExtras().getInt("id", 0);
      long l1 = paramIntent.getExtras().getLong("millis");
      if (!MS_AlarmTable.isExists(i)) {
        return;
      }
      HashMap localHashMap = MS_AlarmTable.getMap(Long.valueOf(l1));
      int j;
      String[] arrayOfString;
      Iterator localIterator;
      if (localHashMap.size() > 0)
      {
        j = 0;
        arrayOfString = new String[localHashMap.size()];
        localIterator = localHashMap.keySet().iterator();
      }
      for (;;)
      {
        if (!localIterator.hasNext())
        {
          paramIntent.putExtra("list", arrayOfString);
          paramIntent.putExtra("size", localHashMap.size());
          Intent localIntent2 = new Intent(paramContext, PanicBuyingActivity.class);
          localIntent2.setAction(str);
          localIntent2.putExtras(paramIntent.getExtras());
          localIntent2.setFlags(402653184);
          paramContext.startActivity(localIntent2);
          MS_AlarmTable.delById(i);
          return;
        }
        long l2 = ((Long)localIterator.next()).longValue();
        arrayOfString[j] = ((String)localHashMap.get(Long.valueOf(l2)));
        try
        {
          MS_AlarmTable.delById(l2);
          label231:
          j++;
          continue;
          if ((!TextUtils.isEmpty(str)) && (str.equals("android.intent.action.BOOT_COMPLETED"))) {
            try
            {
              localIntent1.setAction(str);
              localIntent1.putExtra("text_boot_completed", true);
              paramContext.startService(localIntent1);
              return;
            }
            catch (Exception localException1)
            {
              return;
            }
          }
        }
        catch (Exception localException3)
        {
          break label231;
        }
      }
      return;
    }
    catch (Exception localException2) {}
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.home.PanicBuyingReceive
 * JD-Core Version:    0.7.0.1
 */