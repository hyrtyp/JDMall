package com.jingdong.lib.zxing.client.android.result;

import com.google.zxing.Result;
import com.google.zxing.client.result.ParsedResult;
import com.google.zxing.client.result.ResultParser;
import com.jingdong.lib.zxing.client.android.CaptureActivity;

public final class ResultHandlerFactory
{
  public static ResultHandler makeResultHandler(CaptureActivity paramCaptureActivity, Result paramResult)
  {
    ParsedResult localParsedResult = parseResult(paramResult);
    switch (localParsedResult.getType())
    {
    case ISBN: 
    default: 
      return new TextResultHandler(paramCaptureActivity, localParsedResult, paramResult);
    case ADDRESSBOOK: 
      return new AddressBookResultHandler(paramCaptureActivity, localParsedResult);
    case CALENDAR: 
      return new EmailAddressResultHandler(paramCaptureActivity, localParsedResult);
    case EMAIL_ADDRESS: 
      return new ProductResultHandler(paramCaptureActivity, localParsedResult, paramResult);
    case GEO: 
      return new URIResultHandler(paramCaptureActivity, localParsedResult);
    case URI: 
      return new WifiResultHandler(paramCaptureActivity, localParsedResult);
    case PRODUCT: 
      return new GeoResultHandler(paramCaptureActivity, localParsedResult);
    case SMS: 
      return new TelResultHandler(paramCaptureActivity, localParsedResult);
    case TEL: 
      return new SMSResultHandler(paramCaptureActivity, localParsedResult);
    case TEXT: 
      return new CalendarResultHandler(paramCaptureActivity, localParsedResult);
    }
    return new ISBNResultHandler(paramCaptureActivity, localParsedResult, paramResult);
  }
  
  private static ParsedResult parseResult(Result paramResult)
  {
    return ResultParser.parseResult(paramResult);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.result.ResultHandlerFactory
 * JD-Core Version:    0.7.0.1
 */