package com.jd.lottery.lib.ui.widget;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.GridView;

public class FullSizeGridView
  extends GridView
{
  public FullSizeGridView(Context paramContext)
  {
    super(paramContext);
    setSelector(new ColorDrawable(0));
  }
  
  public FullSizeGridView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setSelector(new ColorDrawable(0));
  }
  
  public FullSizeGridView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setSelector(new ColorDrawable(0));
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, View.MeasureSpec.makeMeasureSpec(536870911, -2147483648));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.ui.widget.FullSizeGridView
 * JD-Core Version:    0.7.0.1
 */