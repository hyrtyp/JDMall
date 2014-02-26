package com.jingdong.app.lib.pay.web;

import android.net.Uri;
import android.net.Uri.Builder;
import com.jd.droidlib.annotation.json.Key;
import com.jd.droidlib.model.Model;
import com.jd.droidlib.persist.json.JSONSerializer;
import com.jd.droidlib.util.L;
import org.json.JSONException;
import org.json.JSONObject;

public class TokenRequest
  extends Model
{
  private static final String GW_M_HOST_NAME = "http://gw.m.360buy.com";
  private static String REQUEST_URL_GET_TOKEN = "http://gw.m.360buy.com/client.action";
  private static final long serialVersionUID = 1L;
  @Key(optional=true)
  private String body;
  @Key(optional=true)
  private String brand;
  @Key(optional=true)
  private String clientVersion;
  @Key(optional=true)
  private String model;
  @Key(optional=true)
  private String nettype;
  @Key(optional=true)
  private String osVersion;
  @Key(optional=true)
  private String partner;
  @Key(optional=true)
  private int platform;
  @Key(optional=true)
  private String screen;
  @Key(optional=true)
  private String uuid;
  
  public static Uri getUriFromJson(String paramString1, String paramString2, String paramString3)
  {
    JSONSerializer localJSONSerializer = new JSONSerializer(null);
    try
    {
      TokenRequest localTokenRequest = (TokenRequest)localJSONSerializer.deserialize(new JSONObject(paramString1), TokenRequest.class);
      L.d("@@@@@@@@@@@2" + localTokenRequest.toQueryString());
      localTokenRequest.body = paramString3;
      Uri localUri = Uri.parse(REQUEST_URL_GET_TOKEN + "?" + localTokenRequest.toQueryString()).buildUpon().appendQueryParameter("functionId", paramString2).appendQueryParameter("client", "android").build();
      return localUri;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
    return null;
  }
  
  private static class Body
    extends Model
  {
    private static final long serialVersionUID = -7222900831698081008L;
    @Key
    String body;
    
    Body(String paramString)
    {
      this.body = paramString;
    }
    
    public String toString()
    {
      JSONSerializer localJSONSerializer = new JSONSerializer(null);
      try
      {
        String str = localJSONSerializer.serialize(this).toString();
        return str;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
      }
      return null;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.lib.pay.web.TokenRequest
 * JD-Core Version:    0.7.0.1
 */