package com.jingdong.common.entity;

import com.jingdong.common.constant.Constants;
import java.util.ArrayList;

public class JdCartInfo
  extends JdTradeProduct
{
  private double dTotalPrice = 0.0D;
  private ArrayList<JdCartItemInfo> mCartItemList = new ArrayList();
  private int nItemCount = 0;
  
  public boolean appendCartItem(JdCartItemInfo paramJdCartItemInfo)
  {
    if ((this.mCartItemList.size() < Constants.MAX_CART_PROD_COUNT) && (paramJdCartItemInfo != null))
    {
      this.mCartItemList.add(paramJdCartItemInfo);
      this.nItemCount = (1 + this.nItemCount);
      return true;
    }
    return false;
  }
  
  public void clearCart()
  {
    this.mCartItemList.clear();
    this.mCartItemList = null;
    this.nItemCount = 0;
  }
  
  public ArrayList<JdCartItemInfo> getAllCartItems()
  {
    return this.mCartItemList;
  }
  
  public JdCartItemInfo getCartItem(int paramInt)
  {
    return (JdCartItemInfo)this.mCartItemList.get(paramInt);
  }
  
  public int getTotalCount()
  {
    return this.nItemCount;
  }
  
  public double getTotalPrice()
  {
    return this.dTotalPrice;
  }
  
  public void setTotalCount(int paramInt)
  {
    this.nItemCount = paramInt;
  }
  
  public void setTotalPrice(double paramDouble)
  {
    this.dTotalPrice = paramDouble;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.JdCartInfo
 * JD-Core Version:    0.7.0.1
 */