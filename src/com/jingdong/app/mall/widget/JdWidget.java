package com.jingdong.app.mall.widget;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.IBinder;
import android.widget.RemoteViews;
import com.jingdong.app.mall.broadcastReceiver.InterfaceBroadcastReceiver;
import com.jingdong.common.entity.Product;
import com.jingdong.common.utils.Log;
import com.jingdong.common.widget.IJdWidget;

public class JdWidget
  extends AppWidgetProvider
  implements IJdWidget
{
  private final String TAG = JdWidget.class.getSimpleName();
  int[] appWidgetIds;
  Bitmap bitmap;
  AppWidgetManager mAppWidgetManager;
  Product product;
  
  public void onDisabled(Context paramContext)
  {
    super.onDisabled(paramContext);
  }
  
  public void onEnabled(Context paramContext)
  {
    super.onEnabled(paramContext);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    super.onReceive(paramContext, paramIntent);
    onUpdate(paramContext, AppWidgetManager.getInstance(paramContext), null);
  }
  
  public void onUpdate(Context paramContext, AppWidgetManager paramAppWidgetManager, int[] paramArrayOfInt)
  {
    RemoteViews localRemoteViews = new RemoteViews(paramContext.getPackageName(), 2130903359);
    Intent localIntent = InterfaceBroadcastReceiver.createIntent(3, null);
    Log.i("extras", localIntent.getExtras().getInt("moduleId"));
    localRemoteViews.setOnClickPendingIntent(2131495586, PendingIntent.getBroadcast(paramContext, 0, localIntent, 134217728));
    localRemoteViews.setOnClickPendingIntent(2131495587, PendingIntent.getBroadcast(paramContext, 1, InterfaceBroadcastReceiver.createIntent(7, null), 134217728));
    localRemoteViews.setOnClickPendingIntent(2131495589, PendingIntent.getBroadcast(paramContext, 2, InterfaceBroadcastReceiver.createIntent(10, null), 134217728));
    localRemoteViews.setOnClickPendingIntent(2131495590, PendingIntent.getBroadcast(paramContext, 3, InterfaceBroadcastReceiver.createIntent(11, null), 134217728));
    localRemoteViews.setOnClickPendingIntent(2131495591, PendingIntent.getBroadcast(paramContext, 4, InterfaceBroadcastReceiver.createIntent(12, null), 134217728));
    paramAppWidgetManager.updateAppWidget(new ComponentName(paramContext, JdWidget.class), localRemoteViews);
    this.mAppWidgetManager = paramAppWidgetManager;
  }
  
  public IBinder peekService(Context paramContext, Intent paramIntent)
  {
    return super.peekService(paramContext, paramIntent);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.widget.JdWidget
 * JD-Core Version:    0.7.0.1
 */