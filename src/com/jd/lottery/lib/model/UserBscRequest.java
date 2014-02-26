package com.jd.lottery.lib.model;

import android.net.Uri;
import com.jd.droidlib.annotation.json.Key;
import com.jd.droidlib.model.Model;
import com.jd.lottery.lib.net.LotteryUri;

public class UserBscRequest
  extends Model
{
  private static final long serialVersionUID = 1L;
  @Key
  private String pin;
  @Key(optional=true)
  private String type;
  
  public static Uri getUri(String paramString)
  {
    UserBscRequest localUserBscRequest = new UserBscRequest();
    localUserBscRequest.pin = paramString;
    return LotteryUri.getUri(localUserBscRequest, "http://lotterygw.m.jd.com/getBalanceScoreAndCoupon");
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.model.UserBscRequest
 * JD-Core Version:    0.7.0.1
 */