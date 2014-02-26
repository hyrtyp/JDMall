package com.jingdong.lib.zxing.client.android.wifi;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import java.util.Timer;
import java.util.TimerTask;

final class Killer
  implements Runnable
{
  private static final long DELAY_MS = 3000L;
  private final Activity parent;
  
  Killer(Activity paramActivity)
  {
    this.parent = paramActivity;
  }
  
  void launchIntent(Intent paramIntent)
  {
    if (paramIntent != null) {
      paramIntent.addFlags(524288);
    }
    try
    {
      this.parent.startActivity(paramIntent);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.parent);
      localBuilder.setTitle(2131165185);
      localBuilder.setMessage(2131166637);
      localBuilder.setPositiveButton(2131166593, null);
      localBuilder.show();
    }
  }
  
  public void run()
  {
    final Handler localHandler = new Handler();
    new Timer().schedule(new TimerTask()
    {
      public void run()
      {
        localHandler.post(new Runnable()
        {
          public void run()
          {
            Killer.this.launchIntent(new Intent("android.intent.action.VIEW", Uri.parse("http://www.google.com/")));
          }
        });
      }
    }, 3000L);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.wifi.Killer
 * JD-Core Version:    0.7.0.1
 */