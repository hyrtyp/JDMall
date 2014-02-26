package com.jingdong.common.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;

public class CountdownDrawable
  extends Drawable
{
  public static final int TYPE_DIY = 1;
  public static final int TYPE_NORMOL;
  private final String HH = "时";
  private final String MM = "分";
  private final String PREFIX = "还剩";
  private final String SS = "秒";
  private CharSequence hh;
  private CharSequence mm;
  private TextPaint paint = new TextPaint(1);
  private CharSequence ss;
  private CharSequence text;
  private int text_color = -16777216;
  private float text_size;
  private int type;
  
  public CountdownDrawable(Context paramContext)
  {
    this.paint.setAntiAlias(true);
    this.paint.setTextSize(18.0F);
    this.paint.setTypeface(Typeface.DEFAULT_BOLD);
    this.paint.setStyle(Paint.Style.FILL);
    setType(0);
  }
  
  public CountdownDrawable(Context paramContext, CharSequence paramCharSequence)
  {
    this(paramContext);
    this.text = paramCharSequence;
  }
  
  public void draw(Canvas paramCanvas)
  {
    float f1;
    float f2;
    try
    {
      Rect localRect1 = getBounds();
      Rect localRect2 = new Rect();
      getPadding(localRect2);
      f1 = localRect1.left + localRect2.left;
      (localRect1.top + localRect2.bottom + this.text_size);
      f2 = 1.0F + (localRect1.top + localRect2.top + this.text_size);
      switch (this.type)
      {
      case 0: 
        this.paint.setColor(-16777216);
        paramCanvas.drawText("还剩", 0, "还剩".length(), f1, f2, this.paint);
        this.paint.setColor(-65536);
        paramCanvas.drawText(this.hh, 0, this.hh.length(), f1 + this.paint.measureText("还剩"), f2, this.paint);
        this.paint.setColor(-16777216);
        paramCanvas.drawText("时", 0, "时".length(), f1 + this.paint.measureText("还剩" + this.hh), f2, this.paint);
        this.paint.setColor(-65536);
        paramCanvas.drawText(this.mm, 0, this.mm.length(), f1 + this.paint.measureText("还剩" + this.hh + "时"), f2, this.paint);
        this.paint.setColor(-16777216);
        paramCanvas.drawText("分", 0, "分".length(), f1 + this.paint.measureText("还剩" + this.hh + "时" + this.mm), f2, this.paint);
        this.paint.setColor(-65536);
        paramCanvas.drawText(this.ss, 0, this.ss.length(), f1 + this.paint.measureText("还剩" + this.hh + "时" + this.mm + "分"), f2, this.paint);
        this.paint.setColor(-16777216);
        paramCanvas.drawText("秒", 0, "秒".length(), f1 + this.paint.measureText("还剩" + this.hh + "时" + this.mm + "分" + this.ss), f2, this.paint);
        return;
      }
    }
    catch (Exception localException1)
    {
      return;
    }
    try
    {
      this.paint.setColor(this.text_color);
      paramCanvas.drawText(this.text, 0, this.text.length(), f1, f2, this.paint);
      return;
    }
    catch (Exception localException2) {}
  }
  
  public int getOpacity()
  {
    return 0;
  }
  
  public int getTextColor()
  {
    return this.text_color;
  }
  
  public float getTextSize()
  {
    return this.text_size;
  }
  
  public int getType()
  {
    return this.type;
  }
  
  public void setAlpha(int paramInt) {}
  
  public void setColorFilter(ColorFilter paramColorFilter) {}
  
  public void setHour(CharSequence paramCharSequence)
  {
    this.hh = paramCharSequence;
  }
  
  public void setMinute(CharSequence paramCharSequence)
  {
    this.mm = paramCharSequence;
  }
  
  public void setSecond(CharSequence paramCharSequence)
  {
    this.ss = paramCharSequence;
  }
  
  public void setText(CharSequence paramCharSequence)
  {
    this.text = paramCharSequence;
  }
  
  public void setTextColor(int paramInt)
  {
    this.text_color = paramInt;
  }
  
  public void setTextSize(float paramFloat)
  {
    this.text_size = paramFloat;
    if (this.paint != null) {
      this.paint.setTextSize(paramFloat);
    }
  }
  
  public void setType(int paramInt)
  {
    this.type = paramInt;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.ui.CountdownDrawable
 * JD-Core Version:    0.7.0.1
 */