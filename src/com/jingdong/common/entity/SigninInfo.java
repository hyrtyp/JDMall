package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONObjectProxy;
import org.json.JSONException;

public class SigninInfo
{
  private String clearText;
  private String currentTotalText;
  private String hintText;
  private String hintTextTitle;
  private Integer isDone;
  private Integer isLogin;
  private String isSucc;
  private String loginText;
  private String loginTextTitle;
  private String nextUpdateTime;
  private String shareText;
  private String sustainedNumTimes;
  private String sustainedText;
  private String titleText;
  private String totalNumTimes;
  
  public SigninInfo() {}
  
  public SigninInfo(JSONObjectProxy paramJSONObjectProxy)
    throws JSONException
  {
    setNextUpdateTime(paramJSONObjectProxy.getStringOrNull("nextUpdateTime"));
    setIsLogin(paramJSONObjectProxy.getIntOrNull("isLogin"));
    setIsDone(paramJSONObjectProxy.getIntOrNull("isDone"));
    setTitleText(paramJSONObjectProxy.getStringOrNull("titleText"));
    setHintTextTitle(paramJSONObjectProxy.getStringOrNull("hintTextTitle"));
    setCurrentTotalText(paramJSONObjectProxy.getStringOrNull("currentTotalText"));
    setTotalNumTimes(paramJSONObjectProxy.getStringOrNull("totalNumTimes"));
    setSustainedText(paramJSONObjectProxy.getStringOrNull("sustainedText"));
    setSustainedNumTimes(paramJSONObjectProxy.getStringOrNull("sustainedNumTimes"));
    setHintText(paramJSONObjectProxy.getStringOrNull("hintText"));
    setShareText(paramJSONObjectProxy.getStringOrNull("shareText"));
    setLoginText(paramJSONObjectProxy.getStringOrNull("loginText"));
    setLoginTextTitle(paramJSONObjectProxy.getStringOrNull("loginTextTitle"));
    setIsSucc(paramJSONObjectProxy.getStringOrNull("isSucc"));
    setClearText(paramJSONObjectProxy.getStringOrNull("clearText"));
  }
  
  public String getClearText()
  {
    return this.clearText;
  }
  
  public String getCurrentTotalText()
  {
    return this.currentTotalText;
  }
  
  public String getHintText()
  {
    return this.hintText;
  }
  
  public String getHintTextTitle()
  {
    return this.hintTextTitle;
  }
  
  public Integer getIsDone()
  {
    return this.isDone;
  }
  
  public Integer getIsLogin()
  {
    return this.isLogin;
  }
  
  public String getIsSucc()
  {
    return this.isSucc;
  }
  
  public String getLoginText()
  {
    return this.loginText;
  }
  
  public String getLoginTextTitle()
  {
    return this.loginTextTitle;
  }
  
  public String getNextUpdateTime()
  {
    return this.nextUpdateTime;
  }
  
  public String getShareText()
  {
    return this.shareText;
  }
  
  public String getSustainedNumTimes()
  {
    return this.sustainedNumTimes;
  }
  
  public String getSustainedText()
  {
    return this.sustainedText;
  }
  
  public String getTitleText()
  {
    return this.titleText;
  }
  
  public String getTotalNumTimes()
  {
    return this.totalNumTimes;
  }
  
  public void setClearText(String paramString)
  {
    this.clearText = paramString;
  }
  
  public void setCurrentTotalText(String paramString)
  {
    this.currentTotalText = paramString;
  }
  
  public void setHintText(String paramString)
  {
    this.hintText = paramString;
  }
  
  public void setHintTextTitle(String paramString)
  {
    this.hintTextTitle = paramString;
  }
  
  public void setIsDone(Integer paramInteger)
  {
    this.isDone = paramInteger;
  }
  
  public void setIsLogin(Integer paramInteger)
  {
    this.isLogin = paramInteger;
  }
  
  public void setIsSucc(String paramString)
  {
    this.isSucc = paramString;
  }
  
  public void setLoginText(String paramString)
  {
    this.loginText = paramString;
  }
  
  public void setLoginTextTitle(String paramString)
  {
    this.loginTextTitle = paramString;
  }
  
  public void setNextUpdateTime(String paramString)
  {
    this.nextUpdateTime = paramString;
  }
  
  public void setShareText(String paramString)
  {
    this.shareText = paramString;
  }
  
  public void setSustainedNumTimes(String paramString)
  {
    this.sustainedNumTimes = paramString;
  }
  
  public void setSustainedText(String paramString)
  {
    this.sustainedText = paramString;
  }
  
  public void setTitleText(String paramString)
  {
    this.titleText = paramString;
  }
  
  public void setTotalNumTimes(String paramString)
  {
    this.totalNumTimes = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.SigninInfo
 * JD-Core Version:    0.7.0.1
 */