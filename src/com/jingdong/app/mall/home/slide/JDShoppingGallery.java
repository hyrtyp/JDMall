package com.jingdong.app.mall.home.slide;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Gallery;

public class JDShoppingGallery
  extends Gallery
  implements GestureDetector.OnGestureListener
{
  public JDShoppingGallery(Context paramContext)
  {
    super(paramContext);
  }
  
  public JDShoppingGallery(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private void initPressed()
  {
    for (int i = -1 + getChildCount();; i--)
    {
      if (i < 0)
      {
        setPressed(false);
        return;
      }
      getChildAt(i).setPressed(false);
    }
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    return super.dispatchTouchEvent(paramMotionEvent);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    return super.onInterceptTouchEvent(paramMotionEvent);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    super.onTouchEvent(paramMotionEvent);
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return true;
      initPressed();
      for (int i = -1 + getChildCount(); i >= 0; i--) {
        getChildAt(i).onTouchEvent(paramMotionEvent);
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.home.slide.JDShoppingGallery
 * JD-Core Version:    0.7.0.1
 */