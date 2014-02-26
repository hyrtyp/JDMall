package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONObjectProxy;

public class SigninListUser
{
  private String accNumTimers;
  private String sustainedNumTimers;
  private String userIcon;
  private String userName;
  private Integer userRank;
  private String usrType;
  
  public SigninListUser() {}
  
  public SigninListUser(JSONObjectProxy paramJSONObjectProxy)
  {
    setUserRank(paramJSONObjectProxy.getIntOrNull("userRank"));
    setUserName(paramJSONObjectProxy.getStringOrNull("userName"));
    setUserIcon(paramJSONObjectProxy.getStringOrNull("userIcon"));
    setAccNumTimers(paramJSONObjectProxy.getStringOrNull("accNumTimers"));
    setSustainedNumTimers(paramJSONObjectProxy.getStringOrNull("sustainedNumTimers"));
    setUsrType(paramJSONObjectProxy.getStringOrNull("usrType"));
  }
  
  public String getAccNumTimers()
  {
    return this.accNumTimers;
  }
  
  public String getSustainedNumTimers()
  {
    return this.sustainedNumTimers;
  }
  
  public String getUserIcon()
  {
    return this.userIcon;
  }
  
  public String getUserName()
  {
    return this.userName;
  }
  
  public Integer getUserRank()
  {
    return this.userRank;
  }
  
  public String getUsrType()
  {
    return this.usrType;
  }
  
  public void setAccNumTimers(String paramString)
  {
    this.accNumTimers = paramString;
  }
  
  public void setSustainedNumTimers(String paramString)
  {
    this.sustainedNumTimers = paramString;
  }
  
  public void setUserIcon(String paramString)
  {
    this.userIcon = paramString;
  }
  
  public void setUserName(String paramString)
  {
    this.userName = paramString;
  }
  
  public void setUserRank(Integer paramInteger)
  {
    this.userRank = paramInteger;
  }
  
  public void setUsrType(String paramString)
  {
    this.usrType = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.SigninListUser
 * JD-Core Version:    0.7.0.1
 */