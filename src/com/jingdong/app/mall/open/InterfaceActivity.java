package com.jingdong.app.mall.open;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.jingdong.app.mall.broadcastReceiver.InterfaceBroadcastReceiver.Command;

public class InterfaceActivity
  extends Activity
{
  private final String TAG = "InterfaceActivity";
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    InterfaceBroadcastReceiver.Command localCommand = InterfaceBroadcastReceiver.Command.createCommand(getIntent());
    Intent localIntent = new Intent("com.360buy.interfaceBroadcastReceiver");
    localIntent.setFlags(32);
    if (localCommand != null) {
      localIntent.putExtras(localCommand.getBundle());
    }
    sendBroadcast(localIntent);
    finish();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.open.InterfaceActivity
 * JD-Core Version:    0.7.0.1
 */