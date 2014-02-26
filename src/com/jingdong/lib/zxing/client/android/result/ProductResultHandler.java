package com.jingdong.lib.zxing.client.android.result;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.zxing.Result;
import com.google.zxing.client.result.ParsedResult;
import com.google.zxing.client.result.ProductParsedResult;

public final class ProductResultHandler
  extends ResultHandler
{
  private static final int[] buttons = { 2131166595, 2131166605, 2131166586 };
  
  public ProductResultHandler(Activity paramActivity, ParsedResult paramParsedResult, Result paramResult)
  {
    super(paramActivity, paramParsedResult, paramResult);
    showGoogleShopperButton(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ProductParsedResult localProductParsedResult = (ProductParsedResult)ProductResultHandler.this.getResult();
        ProductResultHandler.this.openGoogleShopper(localProductParsedResult.getNormalizedProductID());
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
    return 2131166686;
  }
  
  public void handleButtonPress(int paramInt)
  {
    ProductParsedResult localProductParsedResult = (ProductParsedResult)getResult();
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      openProductSearch(localProductParsedResult.getNormalizedProductID());
      return;
    case 1: 
      webSearch(localProductParsedResult.getNormalizedProductID());
      return;
    }
    openURL(fillInCustomSearchURL(localProductParsedResult.getNormalizedProductID()));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.result.ProductResultHandler
 * JD-Core Version:    0.7.0.1
 */