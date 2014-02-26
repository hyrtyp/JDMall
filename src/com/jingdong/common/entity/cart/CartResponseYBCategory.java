package com.jingdong.common.entity.cart;

import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;

public class CartResponseYBCategory
  implements Serializable
{
  private static final long serialVersionUID = -2937304836227475060L;
  private String describe;
  private Integer sort;
  private String virtualSkuName;
  private String virtualSkuType;
  private ArrayList<CartResponseYBBrand> ybBrands;
  
  public CartResponseYBCategory(JSONObjectProxy paramJSONObjectProxy)
  {
    setVirtualSkuName(paramJSONObjectProxy.getStringOrNull("VirtualTypeName"));
    setVirtualSkuType(paramJSONObjectProxy.getStringOrNull("VirtualSkuType"));
    setSort(paramJSONObjectProxy.getIntOrNull("Sort"));
    setDescribe(paramJSONObjectProxy.getStringOrNull("Describe"));
    JSONArrayPoxy localJSONArrayPoxy = paramJSONObjectProxy.getJSONArrayOrNull("YBTrademarkVO");
    if ((localJSONArrayPoxy != null) && (localJSONArrayPoxy.length() > 0)) {
      this.ybBrands = new ArrayList();
    }
    for (int i = 0;; i++)
    {
      if (i >= localJSONArrayPoxy.length()) {
        return;
      }
      JSONObjectProxy localJSONObjectProxy = localJSONArrayPoxy.getJSONObjectOrNull(i);
      if (localJSONObjectProxy != null) {
        this.ybBrands.add(new CartResponseYBBrand(localJSONObjectProxy));
      }
    }
  }
  
  public String getDescribe()
  {
    if (this.describe == null) {
      return "";
    }
    return this.describe;
  }
  
  public Integer getSort()
  {
    if (this.sort == null) {
      return Integer.valueOf(0);
    }
    return this.sort;
  }
  
  public String getVirtualSkuName()
  {
    if (this.virtualSkuName == null) {
      return "";
    }
    return this.virtualSkuName;
  }
  
  public String getVirtualSkuType()
  {
    if (this.virtualSkuType == null) {
      return "";
    }
    return this.virtualSkuType;
  }
  
  public ArrayList<CartResponseYBBrand> getYbDetails()
  {
    return this.ybBrands;
  }
  
  public void setDescribe(String paramString)
  {
    this.describe = paramString;
  }
  
  public void setSort(Integer paramInteger)
  {
    this.sort = paramInteger;
  }
  
  public void setVirtualSkuName(String paramString)
  {
    this.virtualSkuName = paramString;
  }
  
  public void setVirtualSkuType(String paramString)
  {
    this.virtualSkuType = paramString;
  }
  
  public void setYbDetails(ArrayList<CartResponseYBBrand> paramArrayList)
  {
    this.ybBrands = paramArrayList;
  }
  
  public String toString()
  {
    return "CartResponseYBCategory [sort=" + this.sort + ", virtualSkuType=" + this.virtualSkuType + ", virtualSkuName=" + this.virtualSkuName + ", describe=" + this.describe + ", ybBrands=" + this.ybBrands + "]";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.cart.CartResponseYBCategory
 * JD-Core Version:    0.7.0.1
 */