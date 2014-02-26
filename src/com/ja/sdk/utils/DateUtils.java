package com.ja.sdk.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtils
{
  private static SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
  private static SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  private static SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");
  
  public static String format(Date paramDate)
  {
    return format.format(paramDate);
  }
  
  public static String formatDate(Date paramDate)
  {
    return dateFormat.format(paramDate);
  }
  
  public static String formatTime(Date paramDate)
  {
    return timeFormat.format(paramDate);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.sdk.utils.DateUtils
 * JD-Core Version:    0.7.0.1
 */