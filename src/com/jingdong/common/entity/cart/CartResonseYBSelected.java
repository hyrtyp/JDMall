package com.jingdong.common.entity.cart;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;

public class CartResonseYBSelected
  implements Serializable, Cloneable
{
  private static final long serialVersionUID = 6943233645318552547L;
  private String rSuitId;
  private String rWid;
  private CartResponseSku ybSku;
  
  public CartResonseYBSelected(JSONObjectProxy paramJSONObjectProxy, String paramString)
  {
    setrWid(paramJSONObjectProxy.getStringOrNull("RWid"));
    setrSuitId(paramJSONObjectProxy.getStringOrNull("RSuitId"));
    JSONObjectProxy localJSONObjectProxy = paramJSONObjectProxy.getJSONObjectOrNull("MainYbSku");
    if (localJSONObjectProxy != null) {
      setYbSku(new CartResponseSku(localJSONObjectProxy, paramString));
    }
  }
  
  protected Object clone()
  {
    CartResonseYBSelected localCartResonseYBSelected = null;
    try
    {
      localCartResonseYBSelected = (CartResonseYBSelected)super.clone();
      localCartResonseYBSelected.ybSku = ((CartResponseSku)this.ybSku.clone());
      return localCartResonseYBSelected;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException) {}
    return localCartResonseYBSelected;
  }
  
  public String getYbId()
  {
    if (this.ybSku != null) {
      return this.ybSku.getSkuId();
    }
    return "";
  }
  
  public Integer getYbNum()
  {
    if (this.ybSku != null) {
      return this.ybSku.getNum();
    }
    return Integer.valueOf(0);
  }
  
  public CartResponseSku getYbSku()
  {
    return this.ybSku;
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
  
  public void setYbSku(CartResponseSku paramCartResponseSku)
  {
    this.ybSku = paramCartResponseSku;
  }
  
  public void setrSuitId(String paramString)
  {
    this.rSuitId = paramString;
  }
  
  public void setrWid(String paramString)
  {
    this.rWid = paramString;
  }
  
  public String toOrderParamsString()
  {
    if (!TextUtils.isEmpty(getrSuitId())) {
      return "4_" + getrSuitId() + "_" + getrWid() + "_" + getYbId();
    }
    return "1_" + getrWid() + "_" + getYbId();
  }
  
  public String toString()
  {
    return "CartResonseYBSelected [rWid=" + this.rWid + ", rSuitId=" + this.rSuitId + ", ybSku=" + this.ybSku + "]";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.cart.CartResonseYBSelected
 * JD-Core Version:    0.7.0.1
 */