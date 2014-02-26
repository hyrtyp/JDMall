package com.jingdong.common.entity.cart;

import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.util.ArrayList;

public class CartResponseGift
  extends CartResponseSku
{
  protected ArrayList<CartSkuSummary> gifts = new ArrayList();
  
  public CartResponseGift(JSONObjectProxy paramJSONObjectProxy, String paramString)
  {
    super(paramJSONObjectProxy, paramString);
  }
  
  public CartResponseGift(JSONObjectProxy paramJSONObjectProxy, String paramString1, String paramString2)
  {
    super(paramJSONObjectProxy.getJSONObjectOrNull(paramString1), paramString2);
    JSONArrayPoxy localJSONArrayPoxy = paramJSONObjectProxy.getJSONArrayOrNull("Gifts");
    if ((localJSONArrayPoxy != null) && (localJSONArrayPoxy.length() > 0)) {
      this.gifts = new ArrayList();
    }
    for (int i = 0;; i++)
    {
      if (i >= localJSONArrayPoxy.length()) {
        return;
      }
      JSONObjectProxy localJSONObjectProxy = localJSONArrayPoxy.getJSONObjectOrNull(i);
      if (localJSONObjectProxy != null) {
        this.gifts.add(new CartResponseSku(localJSONObjectProxy, paramString2));
      }
    }
  }
  
  public ArrayList<CartSkuSummary> getGifts()
  {
    return this.gifts;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.cart.CartResponseGift
 * JD-Core Version:    0.7.0.1
 */