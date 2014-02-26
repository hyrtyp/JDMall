package com.jingdong.common.utils;

public class MathsUtils
{
  public static int parseInt(String paramString)
  {
    return parseInt(paramString, 0);
  }
  
  public static int parseInt(String paramString, int paramInt)
  {
    try
    {
      int i = Integer.parseInt(paramString);
      return i;
    }
    catch (NumberFormatException localNumberFormatException) {}
    return paramInt;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.MathsUtils
 * JD-Core Version:    0.7.0.1
 */