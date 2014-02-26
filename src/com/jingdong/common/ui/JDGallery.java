package com.jingdong.common.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Gallery;

public class JDGallery
  extends Gallery
{
  public JDGallery(Context paramContext)
  {
    super(paramContext);
  }
  
  public JDGallery(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public JDGallery(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
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
 * Qualified Name:     com.jingdong.common.ui.JDGallery
 * JD-Core Version:    0.7.0.1
 */