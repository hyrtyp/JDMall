package com.jingdong.common.broadcastReceiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.jingdong.common.utils.FileService;

public class StorageReceiver
  extends BroadcastReceiver
{
  private static IntentFilter intentFilter;
  private static StorageReceiver storageReceiver;
  
  private static void initFilter()
  {
    intentFilter = new IntentFilter("android.intent.action.MEDIA_MOUNTED");
    intentFilter.addAction("android.intent.action.MEDIA_SCANNER_STARTED");
    intentFilter.addAction("android.intent.action.MEDIA_SCANNER_FINISHED");
    intentFilter.addAction("android.intent.action.MEDIA_REMOVED");
    intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
    intentFilter.addAction("android.intent.action.MEDIA_BAD_REMOVAL");
    intentFilter.addDataScheme("file");
  }
  
  public static void registerReceiver(Context paramContext)
  {
    if (storageReceiver == null) {
      storageReceiver = new StorageReceiver();
    }
    if (paramContext != null)
    {
      initFilter();
      paramContext.registerReceiver(storageReceiver, intentFilter);
    }
  }
  
  public static void unregisterReceiver(Context paramContext)
  {
    if ((paramContext != null) && (storageReceiver != null)) {
      paramContext.unregisterReceiver(storageReceiver);
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent) {}
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.broadcastReceiver.StorageReceiver
 * JD-Core Version:    0.7.0.1
 */