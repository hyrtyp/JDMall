package com.jingdong.app.mall.ime;

import android.content.Context;
import android.inputmethodservice.Keyboard.Key;
import android.inputmethodservice.KeyboardView;
import android.inputmethodservice.KeyboardView.OnKeyboardActionListener;
import android.util.AttributeSet;

public class JDKeyboardView
  extends KeyboardView
{
  public JDKeyboardView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public JDKeyboardView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected boolean onLongPress(Keyboard.Key paramKey)
  {
    if (paramKey.codes[0] == -3)
    {
      getOnKeyboardActionListener().onKey(-100, null);
      return true;
    }
    return super.onLongPress(paramKey);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.ime.JDKeyboardView
 * JD-Core Version:    0.7.0.1
 */