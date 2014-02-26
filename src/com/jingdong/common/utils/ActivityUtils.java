package com.jingdong.common.utils;

import android.app.Activity;

public class ActivityUtils
{
  public static void setOverridePendingTransition(Activity paramActivity, int paramInt1, int paramInt2)
  {
    if (paramActivity == null) {
      return;
    }
    paramActivity.overridePendingTransition(paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.ActivityUtils
 * JD-Core Version:    0.7.0.1
 */