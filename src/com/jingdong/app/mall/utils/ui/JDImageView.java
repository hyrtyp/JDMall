package com.jingdong.app.mall.utils.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View.MeasureSpec;
import android.widget.ImageView;
import com.jingdong.app.mall.R.styleable;

public class JDImageView
  extends ImageView
{
  private float ratio;
  
  public JDImageView(Context paramContext)
  {
    super(paramContext);
  }
  
  public JDImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.ratio = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.image).getFloat(0, 1.0F);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getSize(paramInt1);
    int j = View.MeasureSpec.getSize(paramInt2);
    if (this.ratio >= 1.0F)
    {
      setMeasuredDimension(i, Math.round(i / this.ratio));
      return;
    }
    setMeasuredDimension(Math.round(j * this.ratio), j);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    super.onTouchEvent(paramMotionEvent);
    return false;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.ui.JDImageView
 * JD-Core Version:    0.7.0.1
 */