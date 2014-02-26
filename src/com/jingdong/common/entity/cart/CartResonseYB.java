package com.jingdong.common.entity.cart;

import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;

public class CartResonseYB
  implements Serializable
{
  private static final long serialVersionUID = -7044027677820700070L;
  private ArrayList<CartResponseYBCategory> categories;
  private String skuId;
  
  public CartResonseYB(JSONObjectProxy paramJSONObjectProxy)
  {
    setSkuId(paramJSONObjectProxy.getStringOrNull("SkuID"));
    JSONArrayPoxy localJSONArrayPoxy = paramJSONObjectProxy.getJSONArrayOrNull("YBTongVOs");
    if ((localJSONArrayPoxy != null) && (localJSONArrayPoxy.length() > 0)) {
      this.categories = new ArrayList();
    }
    for (int i = 0;; i++)
    {
      if (i >= localJSONArrayPoxy.length()) {
        return;
      }
      JSONObjectProxy localJSONObjectProxy = localJSONArrayPoxy.getJSONObjectOrNull(i);
      if (localJSONObjectProxy != null) {
        this.categories.add(new CartResponseYBCategory(localJSONObjectProxy));
      }
    }
  }
  
  public ArrayList<CartResponseYBCategory> getCategories()
  {
    return this.categories;
  }
  
  public String getSkuId()
  {
    if (this.skuId == null) {
      return "";
    }
    return this.skuId;
  }
  
  public void setCategories(ArrayList<CartResponseYBCategory> paramArrayList)
  {
    this.categories = paramArrayList;
  }
  
  public void setSkuId(String paramString)
  {
    this.skuId = paramString;
  }
  
  public String toString()
  {
    return "CartResonseYB [skuId=" + this.skuId + ", categories=" + this.categories + "]";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.cart.CartResonseYB
 * JD-Core Version:    0.7.0.1
 */