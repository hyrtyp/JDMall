package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;

public class ProductDetailCruxBasicInfo
  implements Serializable
{
  private static final long serialVersionUID = 7262879100961590686L;
  private String adword;
  private String comNum;
  private Boolean consult;
  private String cousultNum;
  private Boolean downPrice;
  private Boolean gift;
  private String good;
  private Boolean isPostByJd;
  private Boolean isStore;
  private String orderNum;
  private String proInfo;
  private String proTitle;
  private Boolean read;
  private String readUrl;
  private String score;
  private String service;
  private String shopInfo;
  private Boolean suit;
  
  public ProductDetailCruxBasicInfo() {}
  
  public ProductDetailCruxBasicInfo(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    }
    setConsult(paramJSONObjectProxy.getBooleanOrNull("consult"));
    setRead(paramJSONObjectProxy.getBooleanOrNull("read"));
    setAdword(paramJSONObjectProxy.getStringOrNull("adword"));
    setProInfo(paramJSONObjectProxy.getStringOrNull("proInfo"));
    setService(paramJSONObjectProxy.getStringOrNull("service"));
    setComNum(paramJSONObjectProxy.getStringOrNull("comNum"));
    setOrderNum(paramJSONObjectProxy.getStringOrNull("orderNum"));
    setCousultNum(paramJSONObjectProxy.getStringOrNull("cousultNum"));
    setScore(paramJSONObjectProxy.getStringOrNull("score"));
    setGood(paramJSONObjectProxy.getStringOrNull("good"));
    setShopInfo(paramJSONObjectProxy.getStringOrNull("shopInfo"));
    setProTitle(paramJSONObjectProxy.getStringOrNull("proTitle"));
    setReadUrl(paramJSONObjectProxy.getStringOrNull("readUrl"));
    setSuit(paramJSONObjectProxy.getBooleanOrNull("suit"));
    setStore(paramJSONObjectProxy.getBooleanOrNull("isStore"));
    setGift(paramJSONObjectProxy.getBooleanOrNull("gift"));
    setIsPostByJd(paramJSONObjectProxy.getBooleanOrNull("isPostByJd"));
    setDownPrice(paramJSONObjectProxy.getBooleanOrNull("downPrice"));
  }
  
  public String getAdword()
  {
    return this.adword;
  }
  
  public String getComNum()
  {
    return this.comNum;
  }
  
  public String getCousultNum()
  {
    return this.cousultNum;
  }
  
  public Boolean getDownPrice()
  {
    if (this.downPrice == null) {}
    for (boolean bool = false;; bool = this.downPrice.booleanValue()) {
      return Boolean.valueOf(bool);
    }
  }
  
  public String getGood()
  {
    return this.good;
  }
  
  public Boolean getIsPostByJd()
  {
    if (this.isPostByJd == null) {
      return Boolean.valueOf(false);
    }
    return this.isPostByJd;
  }
  
  public String getOrderNum()
  {
    return this.orderNum;
  }
  
  public String getProInfo()
  {
    return this.proInfo;
  }
  
  public String getProTitle()
  {
    return this.proTitle;
  }
  
  public String getReadUrl()
  {
    return this.readUrl;
  }
  
  public String getScore()
  {
    return this.score;
  }
  
  public String getService()
  {
    return this.service;
  }
  
  public String getShopInfo()
  {
    return this.shopInfo;
  }
  
  public Boolean isConsult()
  {
    if (this.consult == null) {
      return Boolean.valueOf(false);
    }
    return this.consult;
  }
  
  public Boolean isGift()
  {
    if (this.gift == null) {
      return Boolean.valueOf(false);
    }
    return this.gift;
  }
  
  public Boolean isRead()
  {
    if (this.read == null) {
      return Boolean.valueOf(false);
    }
    return this.read;
  }
  
  public Boolean isStore()
  {
    if (this.isStore == null) {
      return Boolean.valueOf(false);
    }
    return this.isStore;
  }
  
  public Boolean isSuit()
  {
    if (this.suit == null) {
      return Boolean.valueOf(false);
    }
    return this.suit;
  }
  
  public void setAdword(String paramString)
  {
    this.adword = paramString;
  }
  
  public void setComNum(String paramString)
  {
    this.comNum = paramString;
  }
  
  public void setConsult(Boolean paramBoolean)
  {
    this.consult = paramBoolean;
  }
  
  public void setCousultNum(String paramString)
  {
    this.cousultNum = paramString;
  }
  
  public void setDownPrice(Boolean paramBoolean)
  {
    this.downPrice = paramBoolean;
  }
  
  public void setGift(Boolean paramBoolean)
  {
    this.gift = paramBoolean;
  }
  
  public void setGood(String paramString)
  {
    this.good = paramString;
  }
  
  public void setIsPostByJd(Boolean paramBoolean)
  {
    this.isPostByJd = paramBoolean;
  }
  
  public void setOrderNum(String paramString)
  {
    this.orderNum = paramString;
  }
  
  public void setProInfo(String paramString)
  {
    this.proInfo = paramString;
  }
  
  public void setProTitle(String paramString)
  {
    this.proTitle = paramString;
  }
  
  public void setRead(Boolean paramBoolean)
  {
    this.read = paramBoolean;
  }
  
  public void setReadUrl(String paramString)
  {
    this.readUrl = paramString;
  }
  
  public void setScore(String paramString)
  {
    this.score = paramString;
  }
  
  public void setService(String paramString)
  {
    this.service = paramString;
  }
  
  public void setShopInfo(String paramString)
  {
    this.shopInfo = paramString;
  }
  
  public void setStore(Boolean paramBoolean)
  {
    this.isStore = paramBoolean;
  }
  
  public void setSuit(Boolean paramBoolean)
  {
    this.suit = paramBoolean;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.ProductDetailCruxBasicInfo
 * JD-Core Version:    0.7.0.1
 */