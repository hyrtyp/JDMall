package com.jingdong.common.utils;

import android.os.Build.VERSION;

public class SDKUtils
{
  private static int getSDKVersion()
  {
    return Build.VERSION.SDK_INT;
  }
  
  public static boolean isSDKVersionMoreThan16()
  {
    return getSDKVersion() > 4;
  }
  
  public static boolean isSDKVersionMoreThan20()
  {
    return getSDKVersion() > 6;
  }
  
  public static boolean isSDKVersionMoreThan21()
  {
    return getSDKVersion() > 7;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.SDKUtils
 * JD-Core Version:    0.7.0.1
 */