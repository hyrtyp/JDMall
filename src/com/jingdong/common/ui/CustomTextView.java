package com.jingdong.common.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.FontMetrics;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.TextView;
import com.jingdong.common.utils.DPIUtil;

public class CustomTextView
  extends TextView
{
  private static final String TAG = "MyTextView";
  private String content;
  private int width;
  
  public CustomTextView(Context paramContext)
  {
    super(paramContext);
  }
  
  public CustomTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public CustomTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    this.width = getWidth();
    this.content = getText().toString();
    int i = DPIUtil.dip2px(10.0F);
    TextPaint localTextPaint = getPaint();
    localTextPaint.setColor(Color.argb(255, 0, 0, 0));
    localTextPaint.setTextSize(DPIUtil.dip2px(14.0F));
    Paint.FontMetrics localFontMetrics = localTextPaint.getFontMetrics();
    float f1 = localFontMetrics.descent - localFontMetrics.ascent;
    (this.width / 2 - DPIUtil.dip2px(1.0F));
    float f2 = f1 - DPIUtil.dip2px(1.0F);
    int j = 0;
    float[] arrayOfFloat = new float[this.content.length()];
    localTextPaint.getTextWidths(this.content, arrayOfFloat);
    if (localTextPaint.measureText(this.content) <= this.width - i)
    {
      localTextPaint.setTextAlign(Paint.Align.CENTER);
      float f4 = this.width / 2 - DPIUtil.dip2px(1.0F);
      paramCanvas.drawText(this.content, f4, f2, localTextPaint);
      return;
    }
    localTextPaint.setTextAlign(Paint.Align.LEFT);
    int k = 0;
    label186:
    int m;
    float f3;
    if ((k < 2) && (j < arrayOfFloat.length))
    {
      m = j;
      f3 = 0.0F;
    }
    for (int n = j;; n++)
    {
      if (n >= arrayOfFloat.length) {}
      while (f3 >= this.width - i)
      {
        j++;
        paramCanvas.drawText(this.content.substring(m, j), 0.0F, f2 + f1 * k, localTextPaint);
        k++;
        break label186;
        break;
      }
      f3 += arrayOfFloat[n];
      j = n;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.ui.CustomTextView
 * JD-Core Version:    0.7.0.1
 */