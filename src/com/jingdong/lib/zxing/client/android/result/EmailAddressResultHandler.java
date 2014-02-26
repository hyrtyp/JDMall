package com.jingdong.lib.zxing.client.android.result;

import android.app.Activity;
import com.google.zxing.client.result.EmailAddressParsedResult;
import com.google.zxing.client.result.ParsedResult;

public final class EmailAddressResultHandler
  extends ResultHandler
{
  private static final int[] buttons = { 2131166589, 2131166582 };
  
  public EmailAddressResultHandler(Activity paramActivity, ParsedResult paramParsedResult)
  {
    super(paramActivity, paramParsedResult);
  }
  
  public int getButtonCount()
  {
    return buttons.length;
  }
  
  public int getButtonText(int paramInt)
  {
    return buttons[paramInt];
  }
  
  public int getDisplayTitle()
  {
    return 2131166683;
  }
  
  public void handleButtonPress(int paramInt)
  {
    EmailAddressParsedResult localEmailAddressParsedResult = (EmailAddressParsedResult)getResult();
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      sendEmailFromUri(localEmailAddressParsedResult.getMailtoURI(), localEmailAddressParsedResult.getEmailAddress(), localEmailAddressParsedResult.getSubject(), localEmailAddressParsedResult.getBody());
      return;
    }
    String[] arrayOfString = new String[1];
    arrayOfString[0] = localEmailAddressParsedResult.getEmailAddress();
    addEmailOnlyContact(arrayOfString, null);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.result.EmailAddressResultHandler
 * JD-Core Version:    0.7.0.1
 */