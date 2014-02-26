package com.jd.droidlib.executor.concurrent;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.jd.droidlib.util.L;

public class ConnectivityAwareExecutor
  extends BackgroundExecutor
{
  private final ConnectivityManager connectivityManager;
  private BroadcastReceiver connectivityReceiver = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      ConnectivityAwareExecutor.this.detemineNetworTypeAndUpdatePoolSize();
    }
  };
  private final Context ctx;
  private final int fastMobileThreads;
  private final int slowMobileThreads;
  private final int wifiThreads;
  
  public ConnectivityAwareExecutor(Context paramContext)
  {
    this(paramContext, 1, 2, 4);
  }
  
  public ConnectivityAwareExecutor(Context paramContext, int paramInt1, int paramInt2, int paramInt3)
  {
    super(1);
    this.ctx = paramContext.getApplicationContext();
    this.slowMobileThreads = paramInt1;
    this.fastMobileThreads = paramInt2;
    this.wifiThreads = paramInt3;
    this.connectivityManager = ((ConnectivityManager)paramContext.getSystemService("connectivity"));
    paramContext.registerReceiver(this.connectivityReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
  }
  
  private void detemineNetworTypeAndUpdatePoolSize()
  {
    for (;;)
    {
      int i;
      try
      {
        localNetworkInfo = this.connectivityManager.getActiveNetworkInfo();
        switch (localNetworkInfo.getType())
        {
        case 0: 
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = Integer.valueOf(i);
          L.i("Pool size: %d.", arrayOfObject);
          setCorePoolSize(i);
          setMaximumPoolSize(i);
          return;
        }
      }
      catch (SecurityException localSecurityException)
      {
        NetworkInfo localNetworkInfo;
        L.e("'android.permission.ACCESS_NETWORK_STATE' required.");
        return;
      }
      catch (Exception localException)
      {
        L.e(localException);
        return;
      }
      if (localNetworkInfo.getSubtype() < 3)
      {
        i = this.slowMobileThreads;
      }
      else
      {
        i = this.fastMobileThreads;
        continue;
        i = this.fastMobileThreads;
        continue;
        i = this.wifiThreads;
        continue;
        i = 1;
      }
    }
  }
  
  protected void terminated()
  {
    super.terminated();
    this.ctx.unregisterReceiver(this.connectivityReceiver);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.executor.concurrent.ConnectivityAwareExecutor
 * JD-Core Version:    0.7.0.1
 */