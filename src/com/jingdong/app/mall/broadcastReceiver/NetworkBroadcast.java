package com.jingdong.app.mall.broadcastReceiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.jingdong.common.utils.GlobalInitialization;

public class NetworkBroadcast
  extends BroadcastReceiver
{
  private static final String TAG = "NetworkBroadcast";
  
  public void doCpa()
  {
    GlobalInitialization.initNetwork(false);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    doCpa();
    new WorksInBackground(paramContext).execute();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.broadcastReceiver.NetworkBroadcast
 * JD-Core Version:    0.7.0.1
 */