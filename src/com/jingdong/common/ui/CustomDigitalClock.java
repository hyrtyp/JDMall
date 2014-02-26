package com.jingdong.common.ui;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.SystemClock;
import android.provider.Settings.System;
import android.text.SpannableStringBuilder;
import android.text.format.DateFormat;
import android.text.style.CharacterStyle;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.util.AttributeSet;
import android.widget.TextView;
import java.util.Calendar;

public class CustomDigitalClock
  extends TextView
{
  public static final int MIAOSHA_BEGINING = 2;
  public static final int MIAOSHA_FINISH = 3;
  public static final int MIAOSHA_WILLBEGIN = 1;
  private static final String m12 = "h:mm aa";
  private static final String m24 = "k:mm";
  private final String TAG = "CustomDigitalClock";
  private long endTime;
  private boolean isScaleTextSize = false;
  private Calendar mCalendar;
  private String mFormat;
  private FormatChangeObserver mFormatChangeObserver;
  private Handler mHandler;
  private CountDownListener mListener;
  private Runnable mTicker;
  private boolean mTickerStopped = false;
  private boolean noneText;
  private final CharacterStyle span_hh = new ForegroundColorSpan(-65536);
  private final CharacterStyle span_mm = new ForegroundColorSpan(-65536);
  private final CharacterStyle span_ss = new ForegroundColorSpan(-65536);
  private final String tag_hh = "时";
  private final String tag_mm = "分";
  private String tag_ss = "秒";
  private String tag_start = "还有";
  private int what;
  
  public CustomDigitalClock(Context paramContext)
  {
    super(paramContext);
    initClock(paramContext);
  }
  
  public CustomDigitalClock(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initClock(paramContext);
  }
  
  public static long[] dealTime(long paramLong)
  {
    long l1 = paramLong % 86400L / 3600L;
    long l2 = paramLong % 86400L % 3600L / 60L;
    long l3 = paramLong % 86400L % 3600L % 60L;
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
  
  private boolean get24HourMode()
  {
    return DateFormat.is24HourFormat(getContext());
  }
  
  private void initClock(Context paramContext)
  {
    if (this.mCalendar == null) {
      this.mCalendar = Calendar.getInstance();
    }
    this.mFormatChangeObserver = new FormatChangeObserver();
    getContext().getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this.mFormatChangeObserver);
    setFormat();
  }
  
  private void setFormat()
  {
    if (get24HourMode())
    {
      this.mFormat = "k:mm";
      return;
    }
    this.mFormat = "h:mm aa";
  }
  
  public String format(long paramLong)
  {
    String str = paramLong;
    if (str.length() == 1) {
      str = "0" + str;
    }
    return str;
  }
  
  public SpannableStringBuilder hmsToString(long[] paramArrayOfLong)
  {
    String str1 = format(paramArrayOfLong[0]);
    String str2 = format(paramArrayOfLong[1]);
    String str3 = format(paramArrayOfLong[2]);
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(this.tag_start + str1 + "时" + str2 + "分" + str3 + this.tag_ss);
    if (isScaleTextSize())
    {
      localSpannableStringBuilder.setSpan(new RelativeSizeSpan(1.2F), this.tag_start.length(), this.tag_start.length() + str1.length(), 33);
      localSpannableStringBuilder.setSpan(new RelativeSizeSpan(1.2F), this.tag_start.length() + str1.length() + "时".length(), this.tag_start.length() + str1.length() + "时".length() + str2.length(), 33);
      localSpannableStringBuilder.setSpan(new RelativeSizeSpan(1.2F), this.tag_start.length() + str1.length() + "时".length() + str2.length() + "分".length(), this.tag_start.length() + str1.length() + "时".length() + str2.length() + "分".length() + str3.length(), 33);
    }
    localSpannableStringBuilder.setSpan(this.span_hh, this.tag_start.length(), this.tag_start.length() + str1.length(), 33);
    localSpannableStringBuilder.setSpan(this.span_mm, this.tag_start.length() + str1.length() + "时".length(), this.tag_start.length() + str1.length() + "时".length() + str2.length(), 33);
    localSpannableStringBuilder.setSpan(this.span_ss, this.tag_start.length() + str1.length() + "时".length() + str2.length() + "分".length(), this.tag_start.length() + str1.length() + "时".length() + str2.length() + "分".length() + str3.length(), 33);
    return localSpannableStringBuilder;
  }
  
  public boolean isScaleTextSize()
  {
    return this.isScaleTextSize;
  }
  
  protected void onAttachedToWindow()
  {
    this.mTickerStopped = false;
    super.onAttachedToWindow();
    this.mHandler = new Handler();
    this.mTicker = new Runnable()
    {
      public void run()
      {
        if (CustomDigitalClock.this.mTickerStopped) {
          return;
        }
        long l1 = System.currentTimeMillis();
        long l2 = CustomDigitalClock.this.endTime - l1;
        long[] arrayOfLong = CustomDigitalClock.this.toHMS(l2);
        SpannableStringBuilder localSpannableStringBuilder = CustomDigitalClock.this.hmsToString(arrayOfLong);
        if (CustomDigitalClock.this.mListener != null) {
          CustomDigitalClock.this.mListener.changed(CustomDigitalClock.this, l2, arrayOfLong, localSpannableStringBuilder, CustomDigitalClock.this.what);
        }
        if (l2 <= 0L)
        {
          if (!CustomDigitalClock.this.noneText) {
            CustomDigitalClock.this.setText(CustomDigitalClock.this.hmsToString(CustomDigitalClock.this.toHMS(0L)));
          }
          if (CustomDigitalClock.this.mListener != null) {
            CustomDigitalClock.this.mTickerStopped = CustomDigitalClock.this.mListener.finish(CustomDigitalClock.this, CustomDigitalClock.this.what);
          }
          if (CustomDigitalClock.this.mTickerStopped) {
            CustomDigitalClock.this.onDetachedFromWindow();
          }
        }
        for (;;)
        {
          CustomDigitalClock.this.invalidate();
          long l3 = SystemClock.uptimeMillis();
          long l4 = l3 + (1000L - l3 % 1000L);
          CustomDigitalClock.this.mHandler.postAtTime(CustomDigitalClock.this.mTicker, l4);
          return;
          if (!CustomDigitalClock.this.noneText) {
            CustomDigitalClock.this.setText(localSpannableStringBuilder);
          }
        }
      }
    };
    this.mTicker.run();
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    this.mTickerStopped = true;
  }
  
  public void setCountDownListener(CountDownListener paramCountDownListener)
  {
    this.mListener = paramCountDownListener;
  }
  
  public void setEndTime(long paramLong)
  {
    this.endTime = (paramLong + System.currentTimeMillis());
  }
  
  public void setEndTime(long paramLong, int paramInt)
  {
    this.what = paramInt;
    setEndTime(paramLong);
  }
  
  public void setNoneText(boolean paramBoolean)
  {
    this.noneText = paramBoolean;
  }
  
  public void setPrefixText(String paramString)
  {
    this.tag_start = paramString;
  }
  
  public void setScaleTextSize(boolean paramBoolean)
  {
    this.isScaleTextSize = paramBoolean;
  }
  
  public void setSuffixText(String paramString)
  {
    this.tag_ss = paramString;
  }
  
  public void setTickerStopped(boolean paramBoolean)
  {
    this.mTickerStopped = paramBoolean;
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
    public abstract void changed(CustomDigitalClock paramCustomDigitalClock, long paramLong, long[] paramArrayOfLong, SpannableStringBuilder paramSpannableStringBuilder, int paramInt);
    
    public abstract boolean finish(CustomDigitalClock paramCustomDigitalClock, int paramInt);
  }
  
  private class FormatChangeObserver
    extends ContentObserver
  {
    public FormatChangeObserver()
    {
      super();
    }
    
    public void onChange(boolean paramBoolean)
    {
      CustomDigitalClock.this.setFormat();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.ui.CustomDigitalClock
 * JD-Core Version:    0.7.0.1
 */