package com.jingdong.common.utils;

import android.app.ActivityManager;

public class ActivityManagerUtils
{
  public static int getMemoryClass(ActivityManager paramActivityManager)
  {
    if (paramActivityManager == null) {
      return 0;
    }
    return paramActivityManager.getMemoryClass();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.ActivityManagerUtils
 * JD-Core Version:    0.7.0.1
 */