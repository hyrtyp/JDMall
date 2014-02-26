package com.jd.lottery.lib.model;

import android.net.Uri;
import com.jd.droidlib.annotation.json.Key;

public class UserInfoRequest
  extends RequestEntity
{
  private static final long serialVersionUID = -8516805547590671713L;
  @Key(name="pin")
  protected String pin;
  
  public static Uri getUri(String paramString)
  {
    UserInfoRequest localUserInfoRequest = new UserInfoRequest();
    localUserInfoRequest.pin = paramString;
    localUserInfoRequest.funcid = 3005;
    return EncryptEntity.getEncryptUri(localUserInfoRequest);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.model.UserInfoRequest
 * JD-Core Version:    0.7.0.1
 */