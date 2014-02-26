package com.jd.common.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateFormatUtils
  extends org.apache.commons.lang.time.DateFormatUtils
{
  public static String format(Date paramDate)
  {
    String str;
    if (paramDate == null) {
      str = null;
    }
    do
    {
      return str;
      str = org.apache.commons.lang.time.DateFormatUtils.format(paramDate, "yyyy-MM-dd HH:mm:ss");
    } while (str != null);
    return org.apache.commons.lang.time.DateFormatUtils.format(paramDate, "yyyy-MM-dd");
  }
  
  public static Date formatDate(Date paramDate, String paramString)
  {
    SimpleDateFormat localSimpleDateFormat1 = new SimpleDateFormat(paramString);
    SimpleDateFormat localSimpleDateFormat2 = new SimpleDateFormat(paramString);
    try
    {
      Date localDate = localSimpleDateFormat2.parse(localSimpleDateFormat1.format(paramDate));
      return localDate;
    }
    catch (Exception localException) {}
    return paramDate;
  }
  
  public static final Date parseDate(String paramString1, String paramString2)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat(paramString2);
    try
    {
      Date localDate = localSimpleDateFormat.parse(paramString1);
      return localDate;
    }
    catch (ParseException localParseException) {}
    return null;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.util.DateFormatUtils
 * JD-Core Version:    0.7.0.1
 */