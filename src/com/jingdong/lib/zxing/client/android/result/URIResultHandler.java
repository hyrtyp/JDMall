package com.jingdong.lib.zxing.client.android.result;

import android.app.Activity;
import com.google.zxing.client.result.ParsedResult;
import com.google.zxing.client.result.URIParsedResult;
import com.jingdong.lib.zxing.client.android.LocaleManager;
import java.util.Locale;

public final class URIResultHandler
  extends ResultHandler
{
  private static final String[] SECURE_PROTOCOLS = { "otpauth:" };
  private static final int[] buttons = { 2131166594, 2131166599, 2131166600, 2131166596 };
  
  public URIResultHandler(Activity paramActivity, ParsedResult paramParsedResult)
  {
    super(paramActivity, paramParsedResult);
  }
  
  public boolean areContentsSecure()
  {
    String str = ((URIParsedResult)getResult()).getURI().toLowerCase(Locale.ENGLISH);
    String[] arrayOfString = SECURE_PROTOCOLS;
    int i = arrayOfString.length;
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return false;
      }
      if (str.startsWith(arrayOfString[j])) {
        return true;
      }
    }
  }
  
  public int getButtonCount()
  {
    if (LocaleManager.isBookSearchUrl(((URIParsedResult)getResult()).getURI())) {
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
    return 2131166690;
  }
  
  public void handleButtonPress(int paramInt)
  {
    String str = ((URIParsedResult)getResult()).getURI();
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      openURL(str);
      return;
    case 1: 
      shareByEmail(str);
      return;
    case 2: 
      shareBySMS(str);
      return;
    }
    searchBookContents(str);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.result.URIResultHandler
 * JD-Core Version:    0.7.0.1
 */