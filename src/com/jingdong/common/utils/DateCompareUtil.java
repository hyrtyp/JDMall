package com.jingdong.common.utils;

import android.text.TextUtils;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateCompareUtil
{
  public static int compareTo(String paramString1, String paramString2, String paramString3)
    throws Exception
  {
    String str;
    SimpleDateFormat localSimpleDateFormat;
    Date localDate1;
    Calendar localCalendar;
    if (TextUtils.isEmpty(paramString2))
    {
      str = "yyyy-MM-dd";
      localSimpleDateFormat = new SimpleDateFormat(str);
      localDate1 = localSimpleDateFormat.parse(paramString1);
      if (!TextUtils.isEmpty(paramString3)) {
        break label58;
      }
      localCalendar = Calendar.getInstance();
    }
    for (;;)
    {
      return localDate1.compareTo(formatDate(localCalendar, localSimpleDateFormat));
      str = paramString2;
      break;
      label58:
      Date localDate2 = localSimpleDateFormat.parse(paramString3);
      localCalendar = Calendar.getInstance();
      localCalendar.setTime(localDate2);
    }
  }
  
  private static Date formatDate(Calendar paramCalendar, SimpleDateFormat paramSimpleDateFormat)
    throws Exception
  {
    paramCalendar.add(5, -1);
    return paramSimpleDateFormat.parse(paramSimpleDateFormat.format(paramCalendar.getTime()));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.DateCompareUtil
 * JD-Core Version:    0.7.0.1
 */