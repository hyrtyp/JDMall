package com.jingdong.lib.zxing.client.android.result;

import android.app.Activity;
import android.telephony.PhoneNumberUtils;
import com.google.zxing.client.result.ParsedResult;
import com.google.zxing.client.result.TelParsedResult;

public final class TelResultHandler
  extends ResultHandler
{
  private static final int[] buttons = { 2131166587, 2131166582 };
  
  public TelResultHandler(Activity paramActivity, ParsedResult paramParsedResult)
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
    return PhoneNumberUtils.formatNumber(getResult().getDisplayResult().replace("\r", ""));
  }
  
  public int getDisplayTitle()
  {
    return 2131166688;
  }
  
  public void handleButtonPress(int paramInt)
  {
    TelParsedResult localTelParsedResult = (TelParsedResult)getResult();
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      dialPhoneFromUri(localTelParsedResult.getTelURI());
      getActivity().finish();
      return;
    }
    String[] arrayOfString = new String[1];
    arrayOfString[0] = localTelParsedResult.getNumber();
    addPhoneOnlyContact(arrayOfString, null);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.result.TelResultHandler
 * JD-Core Version:    0.7.0.1
 */