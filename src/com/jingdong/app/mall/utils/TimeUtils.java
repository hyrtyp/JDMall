package com.jingdong.app.mall.utils;

import android.content.Context;
import android.content.SharedPreferences;
import com.jingdong.app.mall.MyApplication;
import java.util.Calendar;

public class TimeUtils
{
  private static final String CURRENT_DAY = "每日";
  private static final String DIVIDER = " - ";
  private static final String FIFTY_NIGHT = ":59";
  private static final String HOUR = "时";
  private static final String NEXT_DAY = "次日";
  private static final String PREFIX = "时间段：";
  private static final String ZERO = ":00";
  
  public static String getSimpleUnPushTimeSummary(int paramInt1, int paramInt2)
  {
    if (paramInt1 > paramInt2) {
      return "每日" + paramInt1 + ":00" + " - " + "次日" + paramInt2 + ":59";
    }
    return "每日" + paramInt1 + ":00" + " - " + "每日" + paramInt2 + ":59";
  }
  
  public static String getUnPushTimeSummary(int paramInt1, int paramInt2)
  {
    if (paramInt1 > paramInt2) {
      return "时间段：每日" + paramInt1 + ":00" + " - " + "次日" + paramInt2 + ":59";
    }
    return "时间段：每日" + paramInt1 + ":00" + " - " + "每日" + paramInt2 + ":59";
  }
  
  public static boolean isPushMsgMuteNow()
  {
    boolean bool = true;
    Context localContext = MyApplication.getInstance().getApplicationContext();
    SharedPreferences localSharedPreferences = CommonUtil.getJdSharedPreferences();
    int i = localSharedPreferences.getInt(localContext.getString(2131166141), 23);
    int j = localSharedPreferences.getInt(localContext.getString(2131166142), 7);
    if ((i == -1) || (j == -1)) {
      bool = false;
    }
    int k;
    do
    {
      do
      {
        do
        {
          return bool;
          k = Calendar.getInstance().get(11);
        } while ((k == j) || (k == i));
        if (j < i) {
          break;
        }
      } while ((k > i) && (k < j));
      return false;
    } while (((k > i) && (k < 24)) || ((k >= 0) && (k < j)));
    return false;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.TimeUtils
 * JD-Core Version:    0.7.0.1
 */