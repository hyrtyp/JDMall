package com.jingdong.common.entity.cart;

import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;

public class CartResponseYBDetail
  implements Serializable
{
  private static final long serialVersionUID = 3541110157070270884L;
  private String cid;
  private String id;
  private String message;
  private String name;
  private String priceCent;
  private String priceShow;
  private String rSuitId;
  private String rWid;
  private String serviceYear;
  private String skuName;
  
  public CartResponseYBDetail(JSONObjectProxy paramJSONObjectProxy)
  {
    setServiceYear(paramJSONObjectProxy.getStringOrNull("ServiceYear"));
    setCid(paramJSONObjectProxy.getStringOrNull("Cid"));
    setId(paramJSONObjectProxy.getStringOrNull("Id"));
    setName(paramJSONObjectProxy.getStringOrNull("Name"));
    setPriceShow(paramJSONObjectProxy.getStringOrNull("PriceShow"));
    setPriceCent(paramJSONObjectProxy.getStringOrNull("PriceCent"));
    setrWid(paramJSONObjectProxy.getStringOrNull("RWid"));
    setrSuitId(paramJSONObjectProxy.getStringOrNull("RSuitId"));
    setSkuName(paramJSONObjectProxy.getStringOrNull("SkuName"));
    setMessage(paramJSONObjectProxy.getStringOrNull("Message"));
  }
  
  public String getCid()
  {
    if (this.cid == null) {
      return "";
    }
    return this.cid;
  }
  
  public String getId()
  {
    if (this.id == null) {
      return "";
    }
    return this.id;
  }
  
  public String getMessage()
  {
    if (this.message == null) {
      return "";
    }
    return this.message;
  }
  
  public String getName()
  {
    if (this.name == null) {
      return "";
    }
    return this.name;
  }
  
  public String getPriceCent()
  {
    if (this.priceCent == null) {
      return "";
    }
    return this.priceCent;
  }
  
  public String getPriceShow()
  {
    if (this.priceShow == null) {
      return "";
    }
    return this.priceShow;
  }
  
  public String getServiceYear()
  {
    if (this.serviceYear == null) {
      return "";
    }
    return this.serviceYear;
  }
  
  public String getSkuName()
  {
    if (this.skuName == null) {
      return "";
    }
    return this.skuName;
  }
  
  public String getrSuitId()
  {
    if (this.rSuitId == null) {
      return "";
    }
    return this.rSuitId;
  }
  
  public String getrWid()
  {
    if (this.rWid == null) {
      return "";
    }
    return this.rWid;
  }
  
  public void setCid(String paramString)
  {
    this.cid = paramString;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setMessage(String paramString)
  {
    this.message = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setPriceCent(String paramString)
  {
    this.priceCent = paramString;
  }
  
  public void setPriceShow(String paramString)
  {
    this.priceShow = paramString;
  }
  
  public void setServiceYear(String paramString)
  {
    this.serviceYear = paramString;
  }
  
  public void setSkuName(String paramString)
  {
    this.skuName = paramString;
  }
  
  public void setrSuitId(String paramString)
  {
    this.rSuitId = paramString;
  }
  
  public void setrWid(String paramString)
  {
    this.rWid = paramString;
  }
  
  public String toString()
  {
    return "CartResponseYBDetail [serviceYear=" + this.serviceYear + ", name=" + this.name + ", id=" + this.id + ", priceShow=" + this.priceShow + ", cid=" + this.cid + ", priceCent=" + this.priceCent + ", rSuitId=" + this.rSuitId + ", rWid=" + this.rWid + ", skuName=" + this.skuName + ", message=" + this.message + "]";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.cart.CartResponseYBDetail
 * JD-Core Version:    0.7.0.1
 */