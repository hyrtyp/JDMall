package com.jingdong.app.mall.shopping;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.CheckedTextView;

public class MyRightCheckedTextView
  extends CheckedTextView
{
  public MyRightCheckedTextView(Context paramContext)
  {
    super(paramContext);
  }
  
  public MyRightCheckedTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public MyRightCheckedTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void setChecked(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      setBackgroundColor(getResources().getColor(2131296388));
      setTextColor(-16777216);
      return;
    }
    setBackgroundDrawable(getResources().getDrawable(2130838122));
    setTextColor(getResources().getColor(2131296389));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.MyRightCheckedTextView
 * JD-Core Version:    0.7.0.1
 */