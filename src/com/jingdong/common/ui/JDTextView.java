package com.jingdong.common.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.TextView;

public class JDTextView
  extends TextView
{
  public JDTextView(Context paramContext)
  {
    super(paramContext);
  }
  
  public JDTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public JDTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    paramCanvas.rotate(-45.0F, getMeasuredWidth() / 2, getMeasuredHeight() / 2);
    super.onDraw(paramCanvas);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.ui.JDTextView
 * JD-Core Version:    0.7.0.1
 */