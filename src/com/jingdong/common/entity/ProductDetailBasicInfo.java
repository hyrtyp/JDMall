package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;

public class ProductDetailBasicInfo
  implements Serializable
{
  private static final long serialVersionUID = 1596522925443511843L;
  private boolean cartFlag;
  private String cartImag;
  private String cartTip;
  private boolean easyBuy;
  private String infoPageImag;
  private boolean miaosha;
  private String name;
  private String stock;
  private String wareId;
  
  public ProductDetailBasicInfo() {}
  
  public ProductDetailBasicInfo(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    }
    setName(paramJSONObjectProxy.getStringOrNull("name"));
    setStock(paramJSONObjectProxy.getStringOrNull("stock"));
    setCartTip(paramJSONObjectProxy.getStringOrNull("cartTip"));
    setEasyBuy(paramJSONObjectProxy.getBooleanOrNull("easyBuy").booleanValue());
    setMiaosha(paramJSONObjectProxy.getBooleanOrNull("miaosha").booleanValue());
    setCartFlag(paramJSONObjectProxy.getBooleanOrNull("cartFlag").booleanValue());
    setWareId(paramJSONObjectProxy.getStringOrNull("wareId"));
    setCartImag(paramJSONObjectProxy.getStringOrNull("cartImag"));
    setInfoPageImag(paramJSONObjectProxy.getStringOrNull("infoPageImag"));
  }
  
  public String getCartImag()
  {
    return this.cartImag;
  }
  
  public String getCartTip()
  {
    if (TextUtils.isEmpty(this.cartTip)) {
      return "";
    }
    return this.cartTip;
  }
  
  public String getInfoPageImag()
  {
    return this.infoPageImag;
  }
  
  public String getName()
  {
    if (TextUtils.isEmpty(this.name)) {
      return "";
    }
    return this.name;
  }
  
  public String getStock()
  {
    if (TextUtils.isEmpty(this.stock)) {
      return "";
    }
    return this.stock;
  }
  
  public String getWareId()
  {
    if (TextUtils.isEmpty(this.wareId)) {
      return "";
    }
    return this.wareId;
  }
  
  public boolean isCartFlag()
  {
    return this.cartFlag;
  }
  
  public boolean isEasyBuy()
  {
    return this.easyBuy;
  }
  
  public boolean isMiaosha()
  {
    return this.miaosha;
  }
  
  public void setCartFlag(boolean paramBoolean)
  {
    this.cartFlag = paramBoolean;
  }
  
  public void setCartImag(String paramString)
  {
    this.cartImag = paramString;
  }
  
  public void setCartTip(String paramString)
  {
    this.cartTip = paramString;
  }
  
  public void setEasyBuy(boolean paramBoolean)
  {
    this.easyBuy = paramBoolean;
  }
  
  public void setInfoPageImag(String paramString)
  {
    this.infoPageImag = paramString;
  }
  
  public void setMiaosha(boolean paramBoolean)
  {
    this.miaosha = paramBoolean;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setStock(String paramString)
  {
    this.stock = paramString;
  }
  
  public void setWareId(String paramString)
  {
    this.wareId = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.ProductDetailBasicInfo
 * JD-Core Version:    0.7.0.1
 */