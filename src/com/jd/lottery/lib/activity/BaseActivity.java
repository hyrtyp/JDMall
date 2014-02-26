package com.jd.lottery.lib.activity;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.os.Bundle;
import android.widget.Toast;
import com.jd.droidlib.activity.support.FragmentActivity;
import com.jd.lottery.lib.R.string;

public class BaseActivity
  extends FragmentActivity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setRequestedOrientation(1);
    NetworkInfo localNetworkInfo = ((ConnectivityManager)getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()) || (localNetworkInfo.getState() != NetworkInfo.State.CONNECTED)) {
      Toast.makeText(getApplicationContext(), getApplicationContext().getString(R.string.no_network), 0).show();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.activity.BaseActivity
 * JD-Core Version:    0.7.0.1
 */