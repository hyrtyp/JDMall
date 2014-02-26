package com.jingdong.app.mall.shopping;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.CheckedTextView;

public class MyLeftCheckedTextView
  extends CheckedTextView
{
  public MyLeftCheckedTextView(Context paramContext)
  {
    super(paramContext);
  }
  
  public MyLeftCheckedTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public MyLeftCheckedTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void setChecked(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      setBackgroundColor(getResources().getColor(2131296387));
      setTextColor(-16777216);
      return;
    }
    setBackgroundDrawable(getResources().getDrawable(2130838121));
    setTextColor(getResources().getColor(2131296390));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.MyLeftCheckedTextView
 * JD-Core Version:    0.7.0.1
 */