package com.jingdong.lib.zxing.client.android.result;

import android.app.Activity;
import android.telephony.PhoneNumberUtils;
import com.google.zxing.client.result.ParsedResult;
import com.google.zxing.client.result.SMSParsedResult;

public final class SMSResultHandler
  extends ResultHandler
{
  private static final int[] buttons = { 2131166604, 2131166592 };
  
  public SMSResultHandler(Activity paramActivity, ParsedResult paramParsedResult)
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
  
  public CharSequence getDisplayContents()
  {
    SMSParsedResult localSMSParsedResult = (SMSParsedResult)getResult();
    StringBuilder localStringBuilder = new StringBuilder(50);
    String[] arrayOfString1 = localSMSParsedResult.getNumbers();
    String[] arrayOfString2 = new String[arrayOfString1.length];
    for (int i = 0;; i++)
    {
      if (i >= arrayOfString1.length)
      {
        ParsedResult.maybeAppend(arrayOfString2, localStringBuilder);
        ParsedResult.maybeAppend(localSMSParsedResult.getSubject(), localStringBuilder);
        ParsedResult.maybeAppend(localSMSParsedResult.getBody(), localStringBuilder);
        return localStringBuilder.toString();
      }
      arrayOfString2[i] = PhoneNumberUtils.formatNumber(arrayOfString1[i]);
    }
  }
  
  public int getDisplayTitle()
  {
    return 2131166687;
  }
  
  public void handleButtonPress(int paramInt)
  {
    SMSParsedResult localSMSParsedResult = (SMSParsedResult)getResult();
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      sendSMS(localSMSParsedResult.getNumbers()[0], localSMSParsedResult.getBody());
      return;
    }
    sendMMS(localSMSParsedResult.getNumbers()[0], localSMSParsedResult.getSubject(), localSMSParsedResult.getBody());
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.result.SMSResultHandler
 * JD-Core Version:    0.7.0.1
 */