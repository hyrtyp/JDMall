package com.jingdong.common.entity.cart;

import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class CartRequestCommon
  extends CartRequestBase
{
  public CartRequestCommon(ArrayList<CartSkuSummary> paramArrayList, ArrayList<CartPackSummary> paramArrayList1)
  {
    super(paramArrayList, paramArrayList1);
  }
  
  public JSONObject toParams()
    throws JSONException
  {
    return super.toParams();
  }
  
  public String toString()
  {
    return "CartRequestCommon [skus=" + this.skus + ", packs=" + this.packs + "]";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.cart.CartRequestCommon
 * JD-Core Version:    0.7.0.1
 */