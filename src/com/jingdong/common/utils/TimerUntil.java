package com.jingdong.common.utils;

public class TimerUntil
{
  public static final String CHANGED_TIME = "changed_time";
  public static final String USER_TIME = "user_time";
  public static long endTime;
  public static boolean isChangedDate;
  public static long startTime;
  
  public static long getUserTime()
  {
    long l = 0L;
    if ((endTime - startTime) / 1000L > l) {
      l = (endTime - startTime) / 1000L;
    }
    return l;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.TimerUntil
 * JD-Core Version:    0.7.0.1
 */