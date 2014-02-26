package com.ja.analytics.utils;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;

public class DisplayUtils
{
  private static final String TAG = DisplayUtils.class.getName();
  private static Display display;
  
  public static int GetOrientation(Context paramContext)
  {
    int i = -1;
    try
    {
      getDeviceDisplayWidthPixels(paramContext);
      getDeviceDisplayHeightPixels(paramContext);
      i = paramContext.getResources().getConfiguration().orientation;
      if (i == 2)
      {
        LogUtil.logD(TAG, "Configuration.ORIENTATION_LANDSCAPE");
        return 1;
      }
      if (i == 1) {
        return 0;
      }
    }
    catch (Exception localException)
    {
      LogUtil.logException(localException);
    }
    return i;
  }
  
  public static String GetResolution(Context paramContext)
  {
    try
    {
      int i = getDeviceDisplayWidthPixels(paramContext);
      int j = getDeviceDisplayHeightPixels(paramContext);
      if (paramContext.getResources().getConfiguration().orientation == 2)
      {
        LogUtil.logD(TAG, "Configuration.ORIENTATION_LANDSCAPE");
        int k = i ^ j;
        int m = j ^ k;
        int n = k ^ m;
        return m + "x" + n;
      }
      String str = i + "x" + j;
      return str;
    }
    catch (Exception localException)
    {
      LogUtil.logException(localException);
    }
    return null;
  }
  
  public static int getDeviceDisplayHeightPixels(Context paramContext)
  {
    Object localObject = new DisplayMetrics();
    try
    {
      DisplayMetrics localDisplayMetrics = getDisplayMetrics(paramContext);
      localObject = localDisplayMetrics;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        LogUtil.logException("createAdReqURL", localException);
      }
    }
    return ((DisplayMetrics)localObject).heightPixels;
  }
  
  public static int getDeviceDisplayWidthPixels(Context paramContext)
  {
    Object localObject = new DisplayMetrics();
    try
    {
      DisplayMetrics localDisplayMetrics = getDisplayMetrics(paramContext);
      localObject = localDisplayMetrics;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        LogUtil.logException(TAG, localException);
      }
    }
    return ((DisplayMetrics)localObject).widthPixels;
  }
  
  private static Display getDisplay(Context paramContext)
  {
    if (display == null) {
      display = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    }
    return display;
  }
  
  public static DisplayMetrics getDisplayMetrics(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)paramContext.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    return localDisplayMetrics;
  }
  
  public static int getScreenHeigth(Context paramContext)
  {
    return getDisplay(paramContext).getHeight();
  }
  
  public static int getScreenWidth(Context paramContext)
  {
    return getDisplay(paramContext).getWidth();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.analytics.utils.DisplayUtils
 * JD-Core Version:    0.7.0.1
 */