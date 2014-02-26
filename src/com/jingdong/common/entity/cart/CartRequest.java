package com.jingdong.common.entity.cart;

import java.util.ArrayList;

public class CartRequest
{
  private CartRequestCommon cartCommon;
  private ArrayList<CartRequestOperate> cartOperates = new ArrayList();
  private Boolean noResponse = Boolean.valueOf(false);
  
  public CartRequest() {}
  
  public CartRequest(CartRequestCommon paramCartRequestCommon)
  {
    this.cartCommon = paramCartRequestCommon;
  }
  
  public CartRequest(CartRequestOperate paramCartRequestOperate)
  {
    if (paramCartRequestOperate != null) {
      this.cartOperates.add(paramCartRequestOperate);
    }
  }
  
  public CartRequest(ArrayList<CartRequestOperate> paramArrayList)
  {
    this.cartOperates = paramArrayList;
  }
  
  public CartRequest(ArrayList<CartRequestOperate> paramArrayList, CartRequestCommon paramCartRequestCommon)
  {
    this.cartOperates = paramArrayList;
    this.cartCommon = paramCartRequestCommon;
  }
  
  public CartRequestCommon getCartCommon()
  {
    return this.cartCommon;
  }
  
  public ArrayList<CartRequestOperate> getCartOperates()
  {
    return this.cartOperates;
  }
  
  public Boolean getNoResponse()
  {
    if (this.noResponse == null) {
      return Boolean.valueOf(false);
    }
    return this.noResponse;
  }
  
  public void setCartCommon(CartRequestCommon paramCartRequestCommon)
  {
    this.cartCommon = paramCartRequestCommon;
  }
  
  public void setCartOperates(ArrayList<CartRequestOperate> paramArrayList)
  {
    this.cartOperates = paramArrayList;
  }
  
  public void setNoResponse(Boolean paramBoolean)
  {
    this.noResponse = paramBoolean;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.cart.CartRequest
 * JD-Core Version:    0.7.0.1
 */