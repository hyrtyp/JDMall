package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;

public class SubmitOrderInfo
  implements Serializable
{
  public static final int SUBMIT_ORDER = 0;
  private static final long serialVersionUID = 4178557579613003070L;
  private String captchaCode;
  private String captchaKey;
  private String captchaUrl;
  private Integer factPrice;
  private String feedBackMsg;
  private Boolean flag;
  private Integer idCompanyBranch;
  private Integer idPaymentType;
  private Boolean isIdTown;
  private Boolean isOnlinePay;
  private String message;
  private Integer messageType;
  private String orderId;
  private Integer orderType;
  private Integer price;
  private Integer submitSkuNum;
  private Integer useBalance;
  private Integer useScore;
  
  public SubmitOrderInfo() {}
  
  public SubmitOrderInfo(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    update(paramJSONObjectProxy, paramInt);
  }
  
  public String getCaptchaCode()
  {
    return this.captchaCode;
  }
  
  public String getCaptchaKey()
  {
    return this.captchaKey;
  }
  
  public String getCaptchaUrl()
  {
    return this.captchaUrl;
  }
  
  public Integer getFactPrice()
  {
    return this.factPrice;
  }
  
  public String getFeedBackMsg()
  {
    return this.feedBackMsg;
  }
  
  public Boolean getFlag()
  {
    return this.flag;
  }
  
  public Integer getIdCompanyBranch()
  {
    return this.idCompanyBranch;
  }
  
  public Integer getIdPaymentType()
  {
    return this.idPaymentType;
  }
  
  public Boolean getIsIdTown()
  {
    if (this.isIdTown == null) {
      return Boolean.valueOf(false);
    }
    return this.isIdTown;
  }
  
  public Boolean getIsOnlinePay()
  {
    return this.isOnlinePay;
  }
  
  public String getMessage()
  {
    return this.message;
  }
  
  public Integer getMessageType()
  {
    return this.messageType;
  }
  
  public String getOrderId()
  {
    return this.orderId;
  }
  
  public Integer getOrderType()
  {
    return this.orderType;
  }
  
  public Integer getPrice()
  {
    return this.price;
  }
  
  public Integer getSubmitSkuNum()
  {
    return this.submitSkuNum;
  }
  
  public Integer getUseBalance()
  {
    return this.useBalance;
  }
  
  public Integer getUseScore()
  {
    return this.useScore;
  }
  
  public void setCaptchaCode(String paramString)
  {
    this.captchaCode = paramString;
  }
  
  public void setCaptchaKey(String paramString)
  {
    this.captchaKey = paramString;
  }
  
  public void setCaptchaUrl(String paramString)
  {
    this.captchaUrl = paramString;
  }
  
  public void setFactPrice(Integer paramInteger)
  {
    this.factPrice = paramInteger;
  }
  
  public void setFeedBackMsg(String paramString)
  {
    this.feedBackMsg = paramString;
  }
  
  public void setFlag(Boolean paramBoolean)
  {
    this.flag = paramBoolean;
  }
  
  public void setIdCompanyBranch(Integer paramInteger)
  {
    this.idCompanyBranch = paramInteger;
  }
  
  public void setIdPaymentType(Integer paramInteger)
  {
    this.idPaymentType = paramInteger;
  }
  
  public void setIsIdTown(Boolean paramBoolean)
  {
    this.isIdTown = paramBoolean;
  }
  
  public void setIsOnlinePay(Boolean paramBoolean)
  {
    this.isOnlinePay = paramBoolean;
  }
  
  public void setMessage(String paramString)
  {
    this.message = paramString;
  }
  
  public void setMessageType(Integer paramInteger)
  {
    this.messageType = paramInteger;
  }
  
  public void setOrderId(String paramString)
  {
    this.orderId = paramString;
  }
  
  public void setOrderType(Integer paramInteger)
  {
    this.orderType = paramInteger;
  }
  
  public void setPrice(Integer paramInteger)
  {
    this.price = paramInteger;
  }
  
  public void setSubmitSkuNum(Integer paramInteger)
  {
    this.submitSkuNum = paramInteger;
  }
  
  public void setUseBalance(Integer paramInteger)
  {
    this.useBalance = paramInteger;
  }
  
  public void setUseScore(Integer paramInteger)
  {
    this.useScore = paramInteger;
  }
  
  public void update(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    switch (paramInt)
    {
    }
    JSONObjectProxy localJSONObjectProxy;
    do
    {
      return;
      this.feedBackMsg = paramJSONObjectProxy.getStringOrNull("coMsg");
      this.isOnlinePay = paramJSONObjectProxy.getBooleanOrNull("onlinePay");
      localJSONObjectProxy = paramJSONObjectProxy.getJSONObjectOrNull("submitOrder");
    } while (localJSONObjectProxy == null);
    setCaptchaUrl(localJSONObjectProxy.getStringOrNull("url"));
    setMessage(localJSONObjectProxy.getStringOrNull("Message"));
    setOrderId(localJSONObjectProxy.getStringOrNull("OrderId"));
    setFlag(localJSONObjectProxy.getBooleanOrNull("Flag"));
    setUseScore(localJSONObjectProxy.getIntOrNull("UseScore"));
    setSubmitSkuNum(localJSONObjectProxy.getIntOrNull("SubmitSkuNum"));
    setPrice(localJSONObjectProxy.getIntOrNull("Price"));
    setOrderType(localJSONObjectProxy.getIntOrNull("OrderType"));
    setUseBalance(localJSONObjectProxy.getIntOrNull("UseBalance"));
    setIdCompanyBranch(localJSONObjectProxy.getIntOrNull("IdCompanyBranch"));
    setMessageType(localJSONObjectProxy.getIntOrNull("MessageType"));
    setFactPrice(localJSONObjectProxy.getIntOrNull("FactPrice"));
    setIdPaymentType(localJSONObjectProxy.getIntOrNull("IdPaymentType"));
    setIsIdTown(localJSONObjectProxy.getBooleanOrNull("isIdTown"));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.SubmitOrderInfo
 * JD-Core Version:    0.7.0.1
 */