package com.jingdong.common.utils;

import android.bluetooth.BluetoothAdapter;

public class BlueUtils
{
  public static String getWiFiAddress()
  {
    BluetoothAdapter localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    if ((localBluetoothAdapter == null) || (!localBluetoothAdapter.isEnabled())) {
      return null;
    }
    return localBluetoothAdapter.getAddress();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.BlueUtils
 * JD-Core Version:    0.7.0.1
 */