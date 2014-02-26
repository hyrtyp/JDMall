package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.config.Configuration;

public class UnExcuteFunction
{
  public static final int FALSE = 0;
  public static final int TRUE = 1;
  private String callBack;
  private String functionId;
  private String host;
  private int id;
  private int ifNeedLodingModel;
  private int ifNeedNotifyUser;
  private String jsonParams;
  private String md5;
  
  public UnExcuteFunction() {}
  
  public UnExcuteFunction(int paramInt1, String paramString1, int paramInt2, int paramInt3, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    this.id = paramInt1;
    this.functionId = paramString1;
    this.ifNeedNotifyUser = paramInt2;
    this.ifNeedLodingModel = paramInt3;
    this.jsonParams = paramString2;
    this.callBack = paramString3;
    this.host = paramString4;
    this.md5 = paramString5;
  }
  
  public String getCallBack()
  {
    if (this.callBack == null) {
      return "";
    }
    return this.callBack;
  }
  
  public String getFunctionId()
  {
    if (this.functionId == null) {
      return "";
    }
    return this.functionId;
  }
  
  public String getHost()
  {
    if (TextUtils.isEmpty(this.host)) {
      this.host = Configuration.getProperty("host");
    }
    return this.host;
  }
  
  public int getId()
  {
    return this.id;
  }
  
  public int getIfNeedLodingModel()
  {
    return this.ifNeedLodingModel;
  }
  
  public int getIfNeedNotifyUser()
  {
    return this.ifNeedNotifyUser;
  }
  
  public String getJsonParams()
  {
    if (this.jsonParams == null) {
      return "";
    }
    return this.jsonParams;
  }
  
  public String getMd5()
  {
    return this.md5;
  }
  
  public boolean isIfNeedLodingModel()
  {
    return this.ifNeedLodingModel == 1;
  }
  
  public boolean isIfNeedNotifyUser()
  {
    return this.ifNeedNotifyUser == 1;
  }
  
  public void setCallBack(String paramString)
  {
    this.callBack = paramString;
  }
  
  public void setFunctionId(String paramString)
  {
    this.functionId = paramString;
  }
  
  public void setHost(String paramString)
  {
    this.host = paramString;
  }
  
  public void setId(int paramInt)
  {
    this.id = paramInt;
  }
  
  public void setIfNeedLodingModel(int paramInt)
  {
    this.ifNeedLodingModel = paramInt;
  }
  
  public void setIfNeedNotifyUser(int paramInt)
  {
    this.ifNeedNotifyUser = paramInt;
  }
  
  public void setJsonParams(String paramString)
  {
    this.jsonParams = paramString;
  }
  
  public void setMd5(String paramString)
  {
    this.md5 = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.UnExcuteFunction
 * JD-Core Version:    0.7.0.1
 */