package com.jd.lottery.lib.model;

import com.jd.droidlib.annotation.json.Key;
import com.jd.droidlib.annotation.sql.Column;
import com.jd.droidlib.model.Entity;
import com.jd.droidlib.persist.json.JSONSerializer;
import com.jd.droidlib.util.L;
import com.jd.lottery.lib.exception.ErrorCodeException;
import org.json.JSONException;
import org.json.JSONObject;

public class UserInfoEntity
  extends Entity
{
  private static final long serialVersionUID = 4578674936363226699L;
  @Key
  @Column
  public String fullname;
  @Key
  @Column
  public String idcardnumber;
  @Key
  @Column
  public String mobile;
  @Key(optional=true)
  @Column
  public Integer usertype;
  
  public static UserInfoEntity parseModel(JSONObject paramJSONObject)
    throws JSONException, ErrorCodeException
  {
    L.d("@@@@@@@@@@@@" + paramJSONObject.toString());
    if (paramJSONObject.toString().contains("digest")) {}
    for (JSONObject localJSONObject = EncryptEntity.parseModel(paramJSONObject);; localJSONObject = ResultModel.parseModel(paramJSONObject))
    {
      L.d("@@@@@@@@@@@@" + localJSONObject.toString());
      UserInfoEntity localUserInfoEntity = (UserInfoEntity)new JSONSerializer(null).deserialize(localJSONObject, UserInfoEntity.class);
      if (localUserInfoEntity.usertype == null) {
        localUserInfoEntity.usertype = Integer.valueOf(1);
      }
      return localUserInfoEntity;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.model.UserInfoEntity
 * JD-Core Version:    0.7.0.1
 */