package com.jingdong.app.mall.personel;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ListAdapter;
import android.widget.ListView;

public class CornerListView
  extends ListView
{
  public CornerListView(Context paramContext)
  {
    super(paramContext);
  }
  
  public CornerListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public CornerListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return super.onInterceptTouchEvent(paramMotionEvent);
      int i = pointToPosition((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
      if (i != -1) {
        if (i == 0)
        {
          if (i == -1 + getAdapter().getCount()) {
            setSelector(2130838025);
          } else {
            setSelector(2130838025);
          }
        }
        else if (i == -1 + getAdapter().getCount()) {
          setSelector(2130838026);
        } else {
          setSelector(2130838027);
        }
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.personel.CornerListView
 * JD-Core Version:    0.7.0.1
 */