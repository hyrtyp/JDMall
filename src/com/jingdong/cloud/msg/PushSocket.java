package com.jingdong.cloud.msg;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.jingdong.cloud.msg.util.Log;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.UnknownHostException;

public class PushSocket
{
  private static final String TAG = PushSocket.class.getSimpleName();
  private static int connectCount = 0;
  private static Socket socketClient;
  
  static void closeConnect()
  {
    try
    {
      if (socketClient != null)
      {
        socketClient.close();
        Log.i(TAG, "Connection closed.");
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  static void connect(Context paramContext, ConnectListener paramConnectListener)
  {
    if (socketClient != null) {
      socketClient = null;
    }
    for (;;)
    {
      if (socketClient != null) {
        label16:
        return;
      }
      try
      {
        if (Log.D) {
          Log.d(TAG, "Target host: host = jmp1.jcloud.com");
        }
        if (!isNetworkAvailable(paramContext))
        {
          if (Log.D) {
            Log.d(TAG, "isNetworkAvailable = false");
          }
          delayReConnect();
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        Log.e(TAG, localNumberFormatException.toString());
        return;
        socketClient = new Socket();
        socketClient.connect(new InetSocketAddress("jmp1.jcloud.com", 80), 10000);
        socketClient.setKeepAlive(true);
        connectCount = 0;
        paramConnectListener.onConnectSuccess();
        if (!Log.D) {
          break label16;
        }
        Log.d(TAG, "Connected.");
        return;
      }
      catch (UnknownHostException localUnknownHostException)
      {
        Log.e(TAG, localUnknownHostException.toString());
        socketClient = null;
        delayReConnect();
      }
      catch (Exception localException)
      {
        Log.e(TAG, localException.toString());
        socketClient = null;
        delayReConnect();
      }
    }
  }
  
  private static void delayReConnect()
  {
    int i = connectCount;
    int j = 0;
    switch (i)
    {
    }
    for (;;)
    {
      long l = j;
      try
      {
        Thread.sleep(l);
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
      j = 3000;
      connectCount = 1 + connectCount;
      continue;
      j = 10000;
      connectCount = 1 + connectCount;
      continue;
      j = 60000;
      connectCount = 1 + connectCount;
      continue;
      j = 180000;
      connectCount = 1 + connectCount;
      continue;
      j = 300000;
      connectCount = 1 + connectCount;
      continue;
      j = 420000;
      connectCount = 1 + connectCount;
      continue;
      j = 600000;
    }
  }
  
  static Socket getInstance()
  {
    return socketClient;
  }
  
  private static boolean isNetworkAvailable(Context paramContext)
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (localConnectivityManager == null) {}
    NetworkInfo localNetworkInfo;
    do
    {
      return false;
      localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
    } while ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()));
    return true;
  }
  
  public static abstract interface ConnectListener
  {
    public abstract void onConnectSuccess();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.cloud.msg.PushSocket
 * JD-Core Version:    0.7.0.1
 */