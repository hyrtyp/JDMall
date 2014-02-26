package com.jingdong.common.entity.cart;

import com.jingdong.common.utils.JSONObjectProxy;

public class CartResponse
{
  private Integer code;
  private String errorMessage;
  private String imageDomain;
  private CartResponseInfo info;
  private String message;
  
  public CartResponse(JSONObjectProxy paramJSONObjectProxy)
  {
    setCode(paramJSONObjectProxy.getIntOrNull("code"));
    setImageDomain(paramJSONObjectProxy.getStringOrNull("imageDomain"));
    setMessage(paramJSONObjectProxy.getStringOrNull("message"));
    setErrorMessage(paramJSONObjectProxy.getStringOrNull("msg"));
    JSONObjectProxy localJSONObjectProxy = paramJSONObjectProxy.getJSONObjectOrNull("cartInfo");
    if (localJSONObjectProxy != null) {
      setInfo(new CartResponseInfo(localJSONObjectProxy, getImageDomain()));
    }
  }
  
  public Integer getCode()
  {
    if (this.code == null) {
      return Integer.valueOf(-1);
    }
    return this.code;
  }
  
  public String getErrorMessage()
  {
    if (this.errorMessage == null) {
      return "";
    }
    return this.errorMessage;
  }
  
  public String getImageDomain()
  {
    if (this.imageDomain == null) {
      return "";
    }
    return this.imageDomain;
  }
  
  public CartResponseInfo getInfo()
  {
    return this.info;
  }
  
  public String getMessage()
  {
    if (this.message == null) {
      return "";
    }
    return this.message;
  }
  
  public void setCode(Integer paramInteger)
  {
    this.code = paramInteger;
  }
  
  public void setErrorMessage(String paramString)
  {
    this.errorMessage = paramString;
  }
  
  public void setImageDomain(String paramString)
  {
    this.imageDomain = paramString;
  }
  
  public void setInfo(CartResponseInfo paramCartResponseInfo)
  {
    this.info = paramCartResponseInfo;
  }
  
  public void setMessage(String paramString)
  {
    this.message = paramString;
  }
  
  public String toString()
  {
    return "CartResponse [info=" + this.info + ", code=" + this.code + ", imageDomain=" + this.imageDomain + ", message=" + this.message + ", errorMessage=" + this.errorMessage + "]";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.cart.CartResponse
 * JD-Core Version:    0.7.0.1
 */