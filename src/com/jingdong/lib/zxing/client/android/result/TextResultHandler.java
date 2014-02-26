package com.jingdong.lib.zxing.client.android.result;

import android.app.Activity;
import com.google.zxing.Result;
import com.google.zxing.client.result.ParsedResult;

public final class TextResultHandler
  extends ResultHandler
{
  private static final int[] buttons = { 2131166605, 2131166599, 2131166600, 2131166586 };
  
  public TextResultHandler(Activity paramActivity, ParsedResult paramParsedResult, Result paramResult)
  {
    super(paramActivity, paramParsedResult, paramResult);
  }
  
  public int getButtonCount()
  {
    if (hasCustomProductSearch()) {
      return buttons.length;
    }
    return -1 + buttons.length;
  }
  
  public int getButtonText(int paramInt)
  {
    return buttons[paramInt];
  }
  
  public int getDisplayTitle()
  {
    return 2131166689;
  }
  
  public void handleButtonPress(int paramInt)
  {
    String str = getResult().getDisplayResult();
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      webSearch(str);
      return;
    case 1: 
      shareByEmail(str);
      return;
    case 2: 
      shareBySMS(str);
      return;
    }
    openURL(fillInCustomSearchURL(str));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.result.TextResultHandler
 * JD-Core Version:    0.7.0.1
 */