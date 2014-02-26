package com.jingdong.lib.zxing.client.android.result;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.zxing.Result;
import com.google.zxing.client.result.ISBNParsedResult;
import com.google.zxing.client.result.ParsedResult;

public final class ISBNResultHandler
  extends ResultHandler
{
  private static final int[] buttons = { 2131166595, 2131166584, 2131166596, 2131166586 };
  
  public ISBNResultHandler(Activity paramActivity, ParsedResult paramParsedResult, Result paramResult)
  {
    super(paramActivity, paramParsedResult, paramResult);
    showGoogleShopperButton(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ISBNParsedResult localISBNParsedResult = (ISBNParsedResult)ISBNResultHandler.this.getResult();
        ISBNResultHandler.this.openGoogleShopper(localISBNParsedResult.getISBN());
      }
    });
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
    return 2131166685;
  }
  
  public void handleButtonPress(int paramInt)
  {
    ISBNParsedResult localISBNParsedResult = (ISBNParsedResult)getResult();
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      openProductSearch(localISBNParsedResult.getISBN());
      return;
    case 1: 
      openBookSearch(localISBNParsedResult.getISBN());
      return;
    case 2: 
      searchBookContents(localISBNParsedResult.getISBN());
      return;
    }
    openURL(fillInCustomSearchURL(localISBNParsedResult.getISBN()));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.result.ISBNResultHandler
 * JD-Core Version:    0.7.0.1
 */