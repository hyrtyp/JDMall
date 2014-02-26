package com.jingdong.common.plug;

import com.jingdong.common.utils.CommonUtil;

public class MergeSwitcher
{
  public static final int CLOSE = 0;
  public static final int KEEP_SAME = 2;
  public static final int OPEN = 1;
  public static final String PLUG_ON_OFF = "plug_on_off";
  public static final String STATUS = "status";
  
  public static boolean isPlugOn()
  {
    return CommonUtil.getPlugOn();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.plug.MergeSwitcher
 * JD-Core Version:    0.7.0.1
 */