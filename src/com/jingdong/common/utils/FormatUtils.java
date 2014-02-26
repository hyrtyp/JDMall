package com.jingdong.common.utils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class FormatUtils
{
  private static DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  
  public static String formatDate(Date paramDate)
  {
    return dateFormat.format(paramDate);
  }
  
  public static Date parseDate(String paramString)
    throws ParseException
  {
    try
    {
      Date localDate = dateFormat.parse(paramString);
      return localDate;
    }
    catch (ParseException localParseException)
    {
      throw localParseException;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.FormatUtils
 * JD-Core Version:    0.7.0.1
 */