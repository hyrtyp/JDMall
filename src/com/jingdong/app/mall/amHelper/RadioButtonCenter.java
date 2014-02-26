package com.jingdong.app.mall.amHelper;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.RadioButton;
import com.jingdong.app.mall.R.styleable;

public class RadioButtonCenter
  extends RadioButton
{
  Drawable buttonDrawable;
  
  public RadioButtonCenter(Context paramContext)
  {
    super(paramContext);
  }
  
  public RadioButtonCenter(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.buttonDrawable = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CompoundButton, 0, 0).getDrawable(1);
    setButtonDrawable(2130838616);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int j;
    int k;
    if (this.buttonDrawable != null)
    {
      this.buttonDrawable.setState(getDrawableState());
      int i = 0x70 & getGravity();
      j = this.buttonDrawable.getIntrinsicHeight();
      k = 0;
      switch (i)
      {
      }
    }
    for (;;)
    {
      int m = this.buttonDrawable.getIntrinsicWidth();
      int n = (getWidth() - m) / 2;
      this.buttonDrawable.setBounds(n, k, n + m, k + j);
      this.buttonDrawable.draw(paramCanvas);
      return;
      k = getHeight() - j;
      continue;
      k = (getHeight() - j) / 2;
    }
  }
  
  public void setButton(Drawable paramDrawable)
  {
    this.buttonDrawable = paramDrawable;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.amHelper.RadioButtonCenter
 * JD-Core Version:    0.7.0.1
 */