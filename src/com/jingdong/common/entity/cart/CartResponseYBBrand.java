package com.jingdong.common.entity.cart;

import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;

public class CartResponseYBBrand
  implements Serializable
{
  private static final long serialVersionUID = -9090265749062343667L;
  private String brandId;
  private String brandLinks;
  private String brandName;
  private Integer sort;
  private ArrayList<CartResponseYBDetail> ybDetails;
  
  public CartResponseYBBrand(JSONObjectProxy paramJSONObjectProxy)
  {
    setBrandId(paramJSONObjectProxy.getStringOrNull("BrandId"));
    setBrandLinks(paramJSONObjectProxy.getStringOrNull("BrandLinks"));
    setBrandName(paramJSONObjectProxy.getStringOrNull("BrandName"));
    setSort(paramJSONObjectProxy.getIntOrNull("Sort"));
    JSONArrayPoxy localJSONArrayPoxy = paramJSONObjectProxy.getJSONArrayOrNull("YBConfigVOs");
    if ((localJSONArrayPoxy != null) && (localJSONArrayPoxy.length() > 0)) {
      this.ybDetails = new ArrayList();
    }
    for (int i = 0;; i++)
    {
      if (i >= localJSONArrayPoxy.length()) {
        return;
      }
      JSONObjectProxy localJSONObjectProxy = localJSONArrayPoxy.getJSONObjectOrNull(i);
      if (localJSONObjectProxy != null) {
        this.ybDetails.add(new CartResponseYBDetail(localJSONObjectProxy));
      }
    }
  }
  
  public String getBrandId()
  {
    if (this.brandId == null) {
      return "";
    }
    return this.brandId;
  }
  
  public String getBrandLinks()
  {
    if (this.brandLinks == null) {
      return "";
    }
    return this.brandLinks;
  }
  
  public String getBrandName()
  {
    if (this.brandName == null) {
      return "";
    }
    return this.brandName;
  }
  
  public Integer getSort()
  {
    if (this.sort == null) {
      return Integer.valueOf(0);
    }
    return this.sort;
  }
  
  public ArrayList<CartResponseYBDetail> getYbDetails()
  {
    return this.ybDetails;
  }
  
  public void setBrandId(String paramString)
  {
    this.brandId = paramString;
  }
  
  public void setBrandLinks(String paramString)
  {
    this.brandLinks = paramString;
  }
  
  public void setBrandName(String paramString)
  {
    this.brandName = paramString;
  }
  
  public void setSort(Integer paramInteger)
  {
    this.sort = paramInteger;
  }
  
  public void setYbDetails(ArrayList<CartResponseYBDetail> paramArrayList)
  {
    this.ybDetails = paramArrayList;
  }
  
  public String toString()
  {
    return "CartResponseYBBrand [brandId=" + this.brandId + ", sort=" + this.sort + ", brandName=" + this.brandName + ", brandLinks=" + this.brandLinks + ", ybDetails=" + this.ybDetails + "]";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.cart.CartResponseYBBrand
 * JD-Core Version:    0.7.0.1
 */