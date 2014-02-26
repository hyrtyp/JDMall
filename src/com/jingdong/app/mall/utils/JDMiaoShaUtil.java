package com.jingdong.app.mall.utils;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import com.jingdong.common.utils.MyCountdownTimer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class JDMiaoShaUtil
{
  public static final int MIAOSHA_BEGINING = 2;
  public static final int MIAOSHA_FINISH = 3;
  public static final int MIAOSHA_WILLBEGIN = 1;
  public static final String TAG = "JDMiaoSha";
  private Map<Integer, CountDownListener> countdownMap = new HashMap();
  private MyCountdownTimer myCountdownTimer;
  private int what;
  
  private String format(long paramLong)
  {
    String str = paramLong;
    if (str.length() == 1) {
      str = "0" + str;
    }
    return str;
  }
  
  public void addListener(Integer paramInteger, CountDownListener paramCountDownListener)
  {
    this.countdownMap.put(paramInteger, paramCountDownListener);
  }
  
  public void countdownCancel()
  {
    if (this.myCountdownTimer != null) {
      this.myCountdownTimer.cancel(0);
    }
  }
  
  public long getCountdownTime(long paramLong1, long paramLong2)
  {
    long l = 0L;
    if (paramLong1 > 0L)
    {
      l = paramLong1;
      this.what = 1;
    }
    do
    {
      return l;
      if ((paramLong2 > 0L) && (paramLong1 < 0L))
      {
        this.what = 2;
        return paramLong2;
      }
    } while ((paramLong2 >= 0L) || (paramLong1 >= 0L));
    this.what = 3;
    return 1L;
  }
  
  public SpannableStringBuilder hmsToString(long[] paramArrayOfLong)
  {
    String str1 = format(paramArrayOfLong[0]);
    String str2 = format(paramArrayOfLong[1]);
    String str3 = format(paramArrayOfLong[2]);
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder("还剩" + str1 + "时" + str2 + "分" + str3 + "秒");
    ForegroundColorSpan localForegroundColorSpan1 = new ForegroundColorSpan(-65536);
    ForegroundColorSpan localForegroundColorSpan2 = new ForegroundColorSpan(-65536);
    ForegroundColorSpan localForegroundColorSpan3 = new ForegroundColorSpan(-65536);
    localSpannableStringBuilder.setSpan(localForegroundColorSpan1, "还剩".length(), "还剩".length() + str1.length(), 33);
    localSpannableStringBuilder.setSpan(localForegroundColorSpan2, "还剩".length() + str1.length() + "时".length(), "还剩".length() + str1.length() + "时".length() + str2.length(), 33);
    localSpannableStringBuilder.setSpan(localForegroundColorSpan3, "还剩".length() + str1.length() + "时".length() + str2.length() + "分".length(), "还剩".length() + str1.length() + "时".length() + str2.length() + "分".length() + str3.length(), 33);
    return localSpannableStringBuilder;
  }
  
  public void setCountdown(long paramLong1, long paramLong2)
  {
    setCountdown(paramLong1, paramLong2, this.countdownMap);
  }
  
  public void setCountdown(long paramLong1, long paramLong2, CountDownListener paramCountDownListener)
  {
    this.countdownMap.put(Integer.valueOf(0), paramCountDownListener);
    setCountdown(paramLong1, paramLong2, this.countdownMap);
  }
  
  public void setCountdown(long paramLong1, long paramLong2, Map<Integer, CountDownListener> paramMap)
  {
    if ((paramMap == null) || (paramMap.size() == 0)) {
      return;
    }
    long l = getCountdownTime(paramLong1, paramLong2);
    if (this.myCountdownTimer == null)
    {
      this.myCountdownTimer = new MyCountdownTimer(l, 1000L, this.what)
      {
        public void onFinish(int paramAnonymousInt)
        {
          Iterator localIterator = this.val$map.keySet().iterator();
          for (;;)
          {
            if (!localIterator.hasNext()) {
              return;
            }
            Integer localInteger = (Integer)localIterator.next();
            JDMiaoShaUtil.CountDownListener localCountDownListener = (JDMiaoShaUtil.CountDownListener)this.val$map.get(localInteger);
            if (localCountDownListener != null) {
              localCountDownListener.finish(this, this.val$endRemainTime, paramAnonymousInt);
            }
          }
        }
        
        public void onTick(long paramAnonymousLong, int paramAnonymousInt)
        {
          long[] arrayOfLong = JDMiaoShaUtil.this.toHMS(paramAnonymousLong);
          Iterator localIterator = this.val$map.keySet().iterator();
          for (;;)
          {
            if (!localIterator.hasNext()) {
              return;
            }
            Integer localInteger = (Integer)localIterator.next();
            JDMiaoShaUtil.CountDownListener localCountDownListener = (JDMiaoShaUtil.CountDownListener)this.val$map.get(localInteger);
            if (localCountDownListener != null) {
              localCountDownListener.changed(this, paramAnonymousLong, arrayOfLong, paramAnonymousInt);
            }
          }
        }
      }.start();
      return;
    }
    this.myCountdownTimer.reset(l, 1000L, this.what);
  }
  
  public void setHMS(long paramLong)
  {
    if (this.myCountdownTimer != null) {
      this.myCountdownTimer.reset(paramLong, 1000L, this.what);
    }
  }
  
  public long[] toHMS(long paramLong)
  {
    long l1 = paramLong / 1000L / 60L / 60L;
    long l2 = (paramLong - 1000L * (60L * (60L * l1))) / 1000L / 60L;
    long l3 = paramLong / 1000L - 60L * (60L * l1) - 60L * l2;
    if (l1 < 0L) {
      l1 = 0L;
    }
    if (l2 < 0L) {
      l2 = 0L;
    }
    if (l3 < 0L) {
      l3 = 0L;
    }
    return new long[] { l1, l2, l3 };
  }
  
  public static abstract interface CountDownListener
  {
    public abstract void changed(MyCountdownTimer paramMyCountdownTimer, long paramLong, long[] paramArrayOfLong, int paramInt);
    
    public abstract boolean finish(MyCountdownTimer paramMyCountdownTimer, long paramLong, int paramInt);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.JDMiaoShaUtil
 * JD-Core Version:    0.7.0.1
 */