package com.jingdong.app.mall.utils.ui;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.text.TextUtils;
import com.jingdong.common.utils.DPIUtil;

public class DateDrawable
  extends Drawable
{
  private final String PREFIX = ":";
  private int background_color = -1;
  private int background_height = 0;
  private int background_width = 0;
  private CharSequence hh = "00";
  private CharSequence mm = "00";
  private TextPaint paint = new TextPaint(1);
  private int prefix_color = -16777216;
  private CharSequence ss = "00";
  private int text_color = -16777216;
  
  public DateDrawable()
  {
    this.paint.setAntiAlias(true);
    this.paint.setTextSize(18.0F);
    this.paint.setTypeface(Typeface.DEFAULT_BOLD);
    this.paint.setStyle(Paint.Style.FILL);
  }
  
  private float measureX(Paint paramPaint, CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      float f = paramPaint.measureText(paramCharSequence.toString());
      return (this.background_width - f) / 2.0F;
    }
    return 0.0F;
  }
  
  private float measureY(Paint paramPaint)
  {
    return 0.0F;
  }
  
  public void draw(Canvas paramCanvas)
  {
    try
    {
      Rect localRect1 = getBounds();
      Rect localRect2 = new Rect();
      getPadding(localRect2);
      int i = DPIUtil.dip2px(2.0F);
      float f1 = 3 * this.background_width + i * 8;
      float f2 = (localRect1.right - f1) / 2.0F;
      float f3 = 1.0F + ((this.background_height - this.paint.getTextSize()) / 2.0F + localRect1.top + localRect2.top + this.paint.getTextSize());
      float f4 = f2 + this.background_width + i * 4;
      float f5 = f2 + 2 * this.background_width + i * 8;
      float f6 = f2 + this.background_width;
      float f7 = f2 + 2 * this.background_width + i * 4;
      float f8 = f2 + 3 * this.background_width + i * 8;
      float f9 = f2 + measureX(this.paint, this.hh);
      float f10 = f2 + this.background_width + i * 4 + measureX(this.paint, this.mm);
      float f11 = f2 + 2 * this.background_width + i * 8 + measureX(this.paint, this.ss);
      if ((DPIUtil.getWidth() <= 240) && (DPIUtil.getHeight() <= 320))
      {
        f9 -= 1.0F;
        f10 -= 1.0F;
        f11 -= 1.0F;
      }
      float f12 = f2 + this.background_width + i;
      float f13 = f2 + 2 * this.background_width + i * 5;
      this.paint.setColor(this.background_color);
      this.paint.setStyle(Paint.Style.FILL);
      paramCanvas.drawRoundRect(new RectF(f2, i, f6, i + this.background_height), DPIUtil.dip2px(3.0F), DPIUtil.dip2px(3.0F), this.paint);
      this.paint.setStyle(Paint.Style.STROKE);
      this.paint.setColor(this.text_color);
      paramCanvas.drawText(this.hh, 0, this.hh.length(), f9, f3 + measureY(this.paint), this.paint);
      this.paint.setColor(this.prefix_color);
      this.paint.setTypeface(Typeface.DEFAULT_BOLD);
      paramCanvas.drawText(":", 0, ":".length(), f12, f3 + measureY(this.paint), this.paint);
      this.paint.setColor(this.background_color);
      this.paint.setStyle(Paint.Style.FILL);
      paramCanvas.drawRoundRect(new RectF(f4, i, f7, i + this.background_height), DPIUtil.dip2px(3.0F), DPIUtil.dip2px(3.0F), this.paint);
      this.paint.setStyle(Paint.Style.STROKE);
      this.paint.setColor(this.text_color);
      paramCanvas.drawText(this.mm, 0, this.mm.length(), f10, f3 + measureY(this.paint), this.paint);
      this.paint.setColor(this.prefix_color);
      this.paint.setTypeface(Typeface.DEFAULT_BOLD);
      paramCanvas.drawText(":", 0, ":".length(), f13, f3 + measureY(this.paint), this.paint);
      this.paint.setColor(this.background_color);
      this.paint.setStyle(Paint.Style.FILL);
      paramCanvas.drawRoundRect(new RectF(f5, i, f8, i + this.background_height), DPIUtil.dip2px(3.0F), DPIUtil.dip2px(3.0F), this.paint);
      this.paint.setStyle(Paint.Style.STROKE);
      this.paint.setColor(this.text_color);
      paramCanvas.drawText(this.ss, 0, this.ss.length(), f11, f3 + measureY(this.paint), this.paint);
      return;
    }
    catch (Exception localException) {}
  }
  
  public int getOpacity()
  {
    return 0;
  }
  
  public int getTextColor()
  {
    return this.text_color;
  }
  
  public void setAlpha(int paramInt) {}
  
  public void setBackgroundColor(int paramInt)
  {
    this.background_color = paramInt;
  }
  
  public void setBackgroundHeight(int paramInt)
  {
    this.background_height = paramInt;
  }
  
  public void setBackgroundWidth(int paramInt)
  {
    this.background_width = paramInt;
  }
  
  public void setColorFilter(ColorFilter paramColorFilter) {}
  
  public void setHour(CharSequence paramCharSequence)
  {
    this.hh = paramCharSequence;
  }
  
  public void setMinute(CharSequence paramCharSequence)
  {
    this.mm = paramCharSequence;
  }
  
  public void setPointColor(int paramInt)
  {
    this.prefix_color = paramInt;
  }
  
  public void setSecond(CharSequence paramCharSequence)
  {
    this.ss = paramCharSequence;
  }
  
  public void setTextColor(int paramInt)
  {
    this.text_color = paramInt;
  }
  
  public void setTextSize(float paramFloat)
  {
    if (this.paint != null) {
      this.paint.setTextSize(paramFloat);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.ui.DateDrawable
 * JD-Core Version:    0.7.0.1
 */