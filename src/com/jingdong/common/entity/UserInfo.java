package com.jingdong.common.entity;

import org.json.JSONObject;

public class UserInfo
{
  private JSONObject jbAddr;
  private String sMoble;
  private String sPhone;
  private String sUserName;
  private String sZip;
  private String where;
  
  public UserInfo()
  {
    this.jbAddr = new JSONObject();
  }
  
  public UserInfo(String paramString1, String paramString2, String paramString3, String paramString4, JSONObject paramJSONObject)
  {
    this.sUserName = paramString1;
    this.sMoble = paramString2;
    this.sZip = paramString3;
    this.where = paramString4;
    this.jbAddr = new JSONObject();
    this.jbAddr = paramJSONObject;
  }
  
  public JSONObject getUserAddr()
  {
    return this.jbAddr;
  }
  
  public String getUserMobile()
  {
    return this.sMoble;
  }
  
  public String getUserName()
  {
    return this.sUserName;
  }
  
  public String getUserPhone()
  {
    return this.sPhone;
  }
  
  public String getUserWhere()
  {
    return this.where;
  }
  
  public String getUserZip()
  {
    return this.sZip;
  }
  
  public void setUserAddr(JSONObject paramJSONObject)
  {
    this.jbAddr = new JSONObject();
    this.jbAddr = paramJSONObject;
  }
  
  public void setUserMobile(String paramString)
  {
    this.sMoble = paramString;
  }
  
  public void setUserName(String paramString)
  {
    this.sUserName = paramString;
  }
  
  public void setUserPhone(String paramString)
  {
    this.sPhone = paramString;
  }
  
  public void setUserWhere(String paramString)
  {
    this.where = paramString;
  }
  
  public void setUserZip(String paramString)
  {
    this.sZip = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.UserInfo
 * JD-Core Version:    0.7.0.1
 */