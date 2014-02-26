package com.jingdong.app.mall.utils.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.TextView;
import com.jingdong.app.mall.R.styleable;
import com.jingdong.common.utils.DPIUtil;

public class PriceTextView
  extends TextView
{
  public static String TAG = PriceTextView.class.getSimpleName();
  private float defaultTextSize;
  private DisplayMetrics dm = null;
  private boolean isShowNumTypeText = false;
  private Paint textP = null;
  private float textSizeResult;
  
  public PriceTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.dm = paramContext.getResources().getDisplayMetrics();
    this.defaultTextSize = getTextSize();
    getPaint().setColor(paramContext.getResources().getColor(2131296288));
    this.isShowNumTypeText = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.pricetext).getBoolean(0, false);
  }
  
  private float caleTextSize(float paramFloat1, String paramString, float paramFloat2)
  {
    this.textP.setTextSize(paramFloat2);
    float f = this.textP.measureText(paramString);
    if (paramFloat1 - paramString.length() <= f) {
      paramFloat2 = caleTextSize(paramFloat1, paramString, paramFloat2 - 1.0F);
    }
    return paramFloat2;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    getPaint().setTextSize(TypedValue.applyDimension(2, DPIUtil.px2sp(getContext(), this.defaultTextSize), this.dm));
    String str = " " + getText().toString();
    this.textSizeResult = caleTextSize(getWidth(), str, this.defaultTextSize);
    if (this.textSizeResult != this.defaultTextSize) {
      getPaint().setTextSize(TypedValue.applyDimension(2, DPIUtil.px2sp(getContext(), this.textSizeResult), this.dm));
    }
    if (this.isShowNumTypeText)
    {
      super.onDraw(paramCanvas);
      return;
    }
    float f = getPaint().measureText(str);
    paramCanvas.drawText(str, getWidth() - f, getHeight() / 2 + this.textSizeResult / 3.0F, getPaint());
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.ui.PriceTextView
 * JD-Core Version:    0.7.0.1
 */