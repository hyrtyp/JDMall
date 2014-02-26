package com.jingdong.app.mall.utils;

import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.ViewParent;
import java.io.PrintStream;

public class IGestureListener
  implements GestureDetector.OnGestureListener
{
  private TouchFlingActionListener onListener;
  private ViewParent parent;
  
  public IGestureListener(ViewParent paramViewParent, TouchFlingActionListener paramTouchFlingActionListener)
  {
    this.onListener = paramTouchFlingActionListener;
    this.parent = paramViewParent;
  }
  
  public boolean onDown(MotionEvent paramMotionEvent)
  {
    return false;
  }
  
  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if ((paramMotionEvent1 != null) && (paramMotionEvent2 != null))
    {
      if (paramMotionEvent1.getX() - paramMotionEvent2.getX() <= 5.0F) {
        break label34;
      }
      this.onListener.previous();
    }
    label34:
    while (paramMotionEvent1.getX() - paramMotionEvent2.getX() >= -5.0F) {
      return false;
    }
    this.onListener.next();
    return false;
  }
  
  public void onLongPress(MotionEvent paramMotionEvent) {}
  
  public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    this.parent.requestDisallowInterceptTouchEvent(true);
    if (Math.abs(paramFloat1) > Math.abs(paramFloat2))
    {
      if ((paramMotionEvent1 != null) && (paramMotionEvent2 != null))
      {
        if (paramMotionEvent1.getX() - paramMotionEvent2.getX() > 50.0F)
        {
          this.onListener.previous();
          return false;
        }
        if (paramMotionEvent1.getX() - paramMotionEvent2.getX() < -50.0F)
        {
          this.onListener.next();
          return false;
        }
      }
      System.out.println("横向");
      return false;
    }
    System.out.println("纵向");
    return true;
  }
  
  public void onShowPress(MotionEvent paramMotionEvent) {}
  
  public boolean onSingleTapUp(MotionEvent paramMotionEvent)
  {
    this.onListener.startActivity();
    return false;
  }
  
  public static abstract interface TouchFlingActionListener
  {
    public abstract void next();
    
    public abstract void previous();
    
    public abstract void startActivity();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.IGestureListener
 * JD-Core Version:    0.7.0.1
 */