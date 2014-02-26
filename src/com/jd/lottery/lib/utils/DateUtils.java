package com.jd.lottery.lib.utils;

public class DateUtils
{
  private static final long ND = 86400000L;
  private static final long NH = 3600000L;
  private static final long NM = 60000L;
  private static final long NS = 1000L;
  
  public static String getDateDiff(long paramLong)
  {
    if (paramLong <= 0L) {
      return "0:00:00";
    }
    long l1 = paramLong / 86400000L;
    long l2 = paramLong % 86400000L / 3600000L;
    long l3 = paramLong % 86400000L % 3600000L / 60000L;
    long l4 = paramLong % 86400000L % 3600000L % 60000L / 1000L;
    String str = "";
    if (l1 > 0L) {
      str = l1 + "天";
    }
    StringBuilder localStringBuilder1 = new StringBuilder(String.valueOf(str)).append(l2).append(":");
    Object localObject1;
    StringBuilder localStringBuilder2;
    if (l3 < 10L)
    {
      localObject1 = "0" + l3;
      localStringBuilder2 = localStringBuilder1.append(localObject1).append(":");
      if (l4 >= 10L) {
        break label206;
      }
    }
    label206:
    for (Object localObject2 = "0" + l4;; localObject2 = Long.valueOf(l4))
    {
      return localObject2;
      localObject1 = Long.valueOf(l3);
      break;
    }
  }
  
  public static String getDateDiff4List(long paramLong)
  {
    if (paramLong <= 0L) {
      return "0小时00分00秒";
    }
    long l1 = paramLong / 86400000L;
    long l2 = paramLong % 86400000L / 3600000L;
    long l3 = paramLong % 86400000L % 3600000L / 60000L;
    long l4 = paramLong % 86400000L % 3600000L % 60000L / 1000L;
    String str = "";
    if (l1 > 0L) {
      str = l1 + "天";
    }
    StringBuilder localStringBuilder1 = new StringBuilder(String.valueOf(str)).append(l2).append("小时");
    Object localObject1;
    StringBuilder localStringBuilder2;
    if (l3 < 10L)
    {
      localObject1 = "0" + l3;
      localStringBuilder2 = localStringBuilder1.append(localObject1).append("分");
      if (l4 >= 10L) {
        break label211;
      }
    }
    label211:
    for (Object localObject2 = "0" + l4;; localObject2 = Long.valueOf(l4))
    {
      return localObject2 + "秒";
      localObject1 = Long.valueOf(l3);
      break;
    }
  }
  
  public static String getDateDiffDay(long paramLong)
  {
    if (paramLong <= 0L) {
      return "0天00小时00分00秒";
    }
    long l1 = paramLong / 86400000L;
    long l2 = paramLong % 86400000L / 3600000L;
    long l3 = paramLong % 86400000L % 3600000L / 60000L;
    long l4 = paramLong % 86400000L % 3600000L % 60000L / 1000L;
    return l1 + "天" + l2 + "小时" + l3 + "分" + l4 + "秒";
  }
  
  public static String getDateDiffHour(long paramLong)
  {
    if (paramLong <= 0L) {
      return "0:00:00";
    }
    long l1 = paramLong / 3600000L;
    long l2 = paramLong % 3600000L / 60000L;
    long l3 = paramLong % 3600000L % 60000L / 1000L;
    StringBuilder localStringBuilder1 = new StringBuilder(String.valueOf(l1)).append(":");
    Object localObject1;
    StringBuilder localStringBuilder2;
    if (l2 < 10L)
    {
      localObject1 = "0" + l2;
      localStringBuilder2 = localStringBuilder1.append(localObject1).append(":");
      if (l3 >= 10L) {
        break label150;
      }
    }
    label150:
    for (Object localObject2 = "0" + l3;; localObject2 = Long.valueOf(l3))
    {
      return localObject2;
      localObject1 = Long.valueOf(l2);
      break;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.utils.DateUtils
 * JD-Core Version:    0.7.0.1
 */