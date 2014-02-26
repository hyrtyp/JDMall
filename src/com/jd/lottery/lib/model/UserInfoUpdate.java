package com.jd.lottery.lib.model;

import android.net.Uri;
import com.jd.droidlib.annotation.json.Key;
import org.json.JSONException;

public class UserInfoUpdate
  extends UserInfoRequest
{
  private static final long serialVersionUID = -6425892827047693751L;
  @Key
  private String fullname;
  @Key
  private String idcardnumber;
  @Key
  private String mobile;
  
  public static Uri getUri(String paramString1, String paramString2, String paramString3, String paramString4)
    throws JSONException
  {
    UserInfoUpdate localUserInfoUpdate = new UserInfoUpdate();
    if (paramString1 == null) {
      paramString1 = "mobile_test";
    }
    localUserInfoUpdate.pin = paramString1;
    localUserInfoUpdate.funcid = 3004;
    localUserInfoUpdate.fullname = paramString2;
    localUserInfoUpdate.mobile = paramString4;
    localUserInfoUpdate.idcardnumber = paramString3;
    return EncryptEntity.getEncryptUri(localUserInfoUpdate);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.model.UserInfoUpdate
 * JD-Core Version:    0.7.0.1
 */