package com.jd.lottery.lib.config;

import android.graphics.Color;

public final class Config
{
  public static final int[] TEXT_COLOR;
  
  static
  {
    int[] arrayOfInt = new int[3];
    arrayOfInt[0] = Color.parseColor("#d51e2d");
    arrayOfInt[1] = Color.parseColor("#1e92b6");
    arrayOfInt[2] = Color.parseColor("#333333");
    TEXT_COLOR = arrayOfInt;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.config.Config
 * JD-Core Version:    0.7.0.1
 */