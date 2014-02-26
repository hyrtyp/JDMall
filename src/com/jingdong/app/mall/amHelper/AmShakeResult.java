package com.jingdong.app.mall.amHelper;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.NetUtils;
import java.io.Serializable;

public class AmShakeResult
  implements Serializable
{
  private static final long serialVersionUID = -4292153167082248927L;
  private String code;
  private String imgUrl;
  private int isWin;
  private String msg;
  private String pin;
  private String title;
  private String token;
  
  public AmShakeResult(JSONObjectProxy paramJSONObjectProxy)
  {
    this.code = paramJSONObjectProxy.optString("sc");
    if (!"0".equals(this.code)) {
      return;
    }
    if (NetUtils.getNetworkType().equals("wifi")) {}
    for (this.imgUrl = paramJSONObjectProxy.optString("imgLoc");; this.imgUrl = paramJSONObjectProxy.optString("imgUrl"))
    {
      this.isWin = paramJSONObjectProxy.optInt("win");
      this.msg = paramJSONObjectProxy.optString("msg");
      this.title = paramJSONObjectProxy.optString("tt", "京东祝福");
      return;
    }
  }
  
  public String getCode()
  {
    if (TextUtils.isEmpty(this.code)) {
      return "";
    }
    return this.code;
  }
  
  public String getImgUrl()
  {
    if (TextUtils.isEmpty(this.imgUrl)) {
      return "";
    }
    return this.imgUrl;
  }
  
  public int getIsWin()
  {
    return this.isWin;
  }
  
  public String getMsg()
  {
    if (TextUtils.isEmpty(this.msg)) {
      return "";
    }
    return this.msg;
  }
  
  public String getPin()
  {
    if (TextUtils.isEmpty(this.pin)) {
      return "";
    }
    return this.pin;
  }
  
  public String getTitle()
  {
    if (TextUtils.isEmpty(this.title)) {
      return "";
    }
    return this.title;
  }
  
  public String getToken()
  {
    return this.token;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.amHelper.AmShakeResult
 * JD-Core Version:    0.7.0.1
 */