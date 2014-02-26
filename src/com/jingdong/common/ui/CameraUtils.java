package com.jingdong.common.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;

public class CameraUtils
{
  @SuppressLint({"NewApi"})
  public static boolean checkCameraHardware(Context paramContext)
  {
    return (Build.VERSION.SDK_INT < 8) || (paramContext.getPackageManager().hasSystemFeature("android.hardware.camera"));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.ui.CameraUtils
 * JD-Core Version:    0.7.0.1
 */