package com.jd.lottery.lib.model;

import com.jd.droidlib.annotation.json.Key;
import com.jd.droidlib.model.Model;
import com.jd.droidlib.persist.json.JSONSerializer;
import org.json.JSONException;
import org.json.JSONObject;

public class TokenInfo
  extends Model
{
  private static final long serialVersionUID = 1L;
  @Key
  public String code;
  @Key
  public String tokenKey;
  @Key
  public String url;
  
  public static TokenInfo parseModel(JSONObject paramJSONObject)
    throws JSONException
  {
    return (TokenInfo)new JSONSerializer(null).deserialize(paramJSONObject, TokenInfo.class);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.model.TokenInfo
 * JD-Core Version:    0.7.0.1
 */