package com.jd.lottery.lib.model;

import com.jd.droidlib.annotation.json.Key;
import com.jd.droidlib.annotation.sql.Column;
import com.jd.droidlib.model.Entity;
import com.jd.droidlib.persist.json.JSONSerializer;
import com.jd.droidlib.util.L;
import org.json.JSONException;
import org.json.JSONObject;

public class UserBscEntity
  extends Entity
{
  private static final long serialVersionUID = 1L;
  @Key
  @Column
  public double balance;
  @Key
  @Column
  public int beans;
  @Key(optional=true)
  @Column
  public CouponInfo[] coupon;
  
  public static UserBscEntity parseModel(JSONObject paramJSONObject)
    throws JSONException
  {
    L.d("@@@@@@@@@@@@" + paramJSONObject.toString());
    return (UserBscEntity)new JSONSerializer(null).deserialize(paramJSONObject, UserBscEntity.class);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.model.UserBscEntity
 * JD-Core Version:    0.7.0.1
 */