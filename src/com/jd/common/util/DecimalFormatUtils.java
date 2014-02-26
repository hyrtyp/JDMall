package com.jd.common.util;

import java.io.PrintStream;
import java.text.DecimalFormat;

public class DecimalFormatUtils
{
  public static String format(double paramDouble)
  {
    return new DecimalFormat("0.00").format(paramDouble);
  }
  
  public static String format(double paramDouble, String paramString)
  {
    return new DecimalFormat(paramString).format(paramDouble);
  }
  
  public static String format(long paramLong)
  {
    return new DecimalFormat("0.00").format(paramLong);
  }
  
  public static String format(long paramLong, String paramString)
  {
    return new DecimalFormat(paramString).format(paramLong);
  }
  
  public static void main(String[] paramArrayOfString)
  {
    System.out.println(format(-23423434234.343399D));
    System.out.println(format(34234234234234L));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.util.DecimalFormatUtils
 * JD-Core Version:    0.7.0.1
 */