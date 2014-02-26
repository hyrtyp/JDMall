package com.ja.sdk.utils;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import java.util.List;

public class LocationUtils
{
  private static final String TAG = "LocationUtils";
  
  public static String getLocationBaseStation(Context paramContext)
  {
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Integer.valueOf(0);
    arrayOfObject1[1] = Integer.valueOf(0);
    arrayOfObject1[2] = Integer.valueOf(0);
    String str = String.format("%s_%s_%s", arrayOfObject1);
    boolean bool1 = FileUtils.isManifestPermission(paramContext, "android.permission.ACCESS_FINE_LOCATION");
    CellLocation localCellLocation = null;
    if (!bool1)
    {
      boolean bool2 = FileUtils.isManifestPermission(paramContext, "android.permission.ACCESS_COARSE_LOCATION");
      localCellLocation = null;
      if (!bool2)
      {
        localCellLocation = ((TelephonyManager)paramContext.getSystemService("phone")).getCellLocation();
        LogUtil.logD("getLocation cell:", localCellLocation + "");
        if (localCellLocation == null) {
          return str;
        }
      }
    }
    if (!(localCellLocation instanceof GsmCellLocation))
    {
      GsmCellLocation localGsmCellLocation = (GsmCellLocation)localCellLocation;
      Object[] arrayOfObject3 = new Object[3];
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = Integer.valueOf(localGsmCellLocation.getCid());
      arrayOfObject3[0] = String.format("%d", arrayOfObject4);
      Object[] arrayOfObject5 = new Object[1];
      arrayOfObject5[0] = Integer.valueOf(localGsmCellLocation.getLac());
      arrayOfObject3[1] = String.format("%d", arrayOfObject5);
      arrayOfObject3[2] = Integer.valueOf(0);
      return String.format("%s_%s_%s", arrayOfObject3);
    }
    String[] arrayOfString = localCellLocation.toString().replace("[", "").replace("]", "").split(",");
    Object[] arrayOfObject2 = new Object[3];
    arrayOfObject2[0] = arrayOfString[0];
    arrayOfObject2[1] = arrayOfString[3];
    arrayOfObject2[2] = arrayOfString[4];
    return String.format("%s_%s_%s", arrayOfObject2);
  }
  
  public static String getLocationGPS(Context paramContext)
  {
    if (!FileUtils.isManifestPermission(paramContext, "android.permission.ACCESS_FINE_LOCATION")) {
      return "";
    }
    Location localLocation = ((LocationManager)paramContext.getSystemService("location")).getLastKnownLocation("gps");
    LogUtil.logD("LocationUtils", "location: " + localLocation);
    if (localLocation != null)
    {
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Long.valueOf(localLocation.getTime());
      arrayOfObject[1] = Double.valueOf(localLocation.getLongitude());
      arrayOfObject[2] = Double.valueOf(localLocation.getLatitude());
      return String.format("%s_%s_%s", arrayOfObject);
    }
    return "";
  }
  
  public static String getWifiLocation(Context paramContext)
  {
    str1 = "";
    try
    {
      if (FileUtils.isManifestPermission(paramContext, "android.permission.ACCESS_WIFI_STATE"))
      {
        WifiManager localWifiManager = (WifiManager)paramContext.getSystemService("wifi");
        if (localWifiManager.isWifiEnabled())
        {
          LogUtil.logD("[d]", localWifiManager.getScanResults() + "");
          int i = 2147483647;
          int j = -1;
          for (int k = 0;; k++)
          {
            if (k >= localWifiManager.getScanResults().size())
            {
              if (j >= 0)
              {
                ScanResult localScanResult1 = (ScanResult)localWifiManager.getScanResults().get(j);
                String str2 = localScanResult1.BSSID.replace(":", "").toLowerCase();
                Object[] arrayOfObject1 = new Object[2];
                arrayOfObject1[0] = str2;
                arrayOfObject1[1] = Integer.valueOf(Math.abs(localScanResult1.level));
                str1 = String.format("%s_%s", arrayOfObject1);
              }
              WifiInfo localWifiInfo = localWifiManager.getConnectionInfo();
              Object[] arrayOfObject2 = new Object[3];
              arrayOfObject2[0] = localWifiInfo.getSSID();
              arrayOfObject2[1] = localWifiInfo.getMacAddress();
              arrayOfObject2[2] = Integer.valueOf(Math.abs(localWifiInfo.getRssi()));
              LogUtil.logD(String.format("[active]%s %s_%s", arrayOfObject2));
              return str1;
            }
            ScanResult localScanResult2 = (ScanResult)localWifiManager.getScanResults().get(k);
            int m = Math.abs(localScanResult2.level);
            Object[] arrayOfObject3 = new Object[3];
            arrayOfObject3[0] = localScanResult2.SSID;
            arrayOfObject3[1] = localScanResult2.BSSID;
            arrayOfObject3[2] = Integer.valueOf(m);
            LogUtil.logD(String.format("%s %s_%s", arrayOfObject3));
            if (i > m)
            {
              i = m;
              j = k;
            }
          }
        }
      }
      return str1;
    }
    catch (Exception localException)
    {
      LogUtil.logException("getWifiLocation", localException);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.sdk.utils.LocationUtils
 * JD-Core Version:    0.7.0.1
 */