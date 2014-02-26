package com.jingdong.app.mall.home.slide;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageSwitcher;

public class JDImageSwitcher
  extends ImageSwitcher
{
  private ViewPager mPager;
  
  public JDImageSwitcher(Context paramContext)
  {
    super(paramContext);
  }
  
  public JDImageSwitcher(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    this.mPager.requestDisallowInterceptTouchEvent(true);
    return super.dispatchTouchEvent(paramMotionEvent);
  }
  
  public ViewPager getmPager()
  {
    return this.mPager;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    this.mPager.requestDisallowInterceptTouchEvent(true);
    return super.onInterceptTouchEvent(paramMotionEvent);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    this.mPager.requestDisallowInterceptTouchEvent(true);
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setmPager(ViewPager paramViewPager)
  {
    this.mPager = paramViewPager;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.home.slide.JDImageSwitcher
 * JD-Core Version:    0.7.0.1
 */