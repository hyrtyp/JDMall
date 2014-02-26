package com.jd.droidlib.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ScrollView;

public class VerticalScrollView
  extends ScrollView
{
  private float lastX;
  private float lastY;
  private float xDistance;
  private float yDistance;
  
  public VerticalScrollView(Context paramContext)
  {
    super(paramContext);
  }
  
  public VerticalScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public VerticalScrollView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
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
        this.lastX = paramMotionEvent.getX();
        this.lastY = paramMotionEvent.getY();
      }
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      this.xDistance += Math.abs(f1 - this.lastX);
      this.yDistance += Math.abs(f2 - this.lastY);
      this.lastX = f1;
      this.lastY = f2;
    } while (this.xDistance <= this.yDistance);
    return false;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.widget.VerticalScrollView
 * JD-Core Version:    0.7.0.1
 */