package com.jingdong.lib.zxing.client.android.result;

import android.app.Activity;
import com.google.zxing.client.result.GeoParsedResult;
import com.google.zxing.client.result.ParsedResult;

public final class GeoResultHandler
  extends ResultHandler
{
  private static final int[] buttons = { 2131166603, 2131166590 };
  
  public GeoResultHandler(Activity paramActivity, ParsedResult paramParsedResult)
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
    return 2131166684;
  }
  
  public void handleButtonPress(int paramInt)
  {
    GeoParsedResult localGeoParsedResult = (GeoParsedResult)getResult();
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      openMap(localGeoParsedResult.getGeoURI());
      return;
    }
    getDirections(localGeoParsedResult.getLatitude(), localGeoParsedResult.getLongitude());
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.result.GeoResultHandler
 * JD-Core Version:    0.7.0.1
 */