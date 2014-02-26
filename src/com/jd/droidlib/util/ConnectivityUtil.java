package com.jd.droidlib.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public class ConnectivityUtil
{
  private final ConnectivityManager connectivityManager;
  
  public ConnectivityUtil(Context paramContext)
  {
    this.connectivityManager = ((ConnectivityManager)paramContext.getSystemService("connectivity"));
  }
  
  public boolean backgroundDataEnabled()
  {
    return this.connectivityManager.getBackgroundDataSetting();
  }
  
  public boolean connected()
  {
    NetworkInfo localNetworkInfo = this.connectivityManager.getActiveNetworkInfo();
    return (localNetworkInfo != null) && (localNetworkInfo.isConnected());
  }
  
  public boolean onWiFi()
  {
    NetworkInfo localNetworkInfo = this.connectivityManager.getActiveNetworkInfo();
    return (connected()) && (localNetworkInfo.getType() == 1);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.util.ConnectivityUtil
 * JD-Core Version:    0.7.0.1
 */