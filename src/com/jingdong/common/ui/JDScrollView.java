package com.jingdong.common.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ScrollView;

public class JDScrollView
  extends ScrollView
{
  private float xDistance;
  private float xLast;
  private float yDistance;
  private float yLast;
  
  public JDScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    do
    {
      for (;;)
      {
        return super.onInterceptTouchEvent(paramMotionEvent);
        this.yDistance = 0.0F;
        this.xDistance = 0.0F;
        this.xLast = paramMotionEvent.getX();
        this.yLast = paramMotionEvent.getY();
      }
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      this.xDistance += Math.abs(f1 - this.xLast);
      this.yDistance += Math.abs(f2 - this.yLast);
      this.xLast = f1;
      this.yLast = f2;
    } while (this.xDistance <= this.yDistance);
    return false;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.ui.JDScrollView
 * JD-Core Version:    0.7.0.1
 */