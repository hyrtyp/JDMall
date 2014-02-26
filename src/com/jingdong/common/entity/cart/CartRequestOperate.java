package com.jingdong.common.entity.cart;

import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class CartRequestOperate
  extends CartRequestBase
{
  private String operateType;
  
  public CartRequestOperate(CartSkuSummary paramCartSkuSummary, CartPackSummary paramCartPackSummary, String paramString)
  {
    super(paramCartSkuSummary, paramCartPackSummary);
    this.operateType = paramString;
  }
  
  public CartRequestOperate(String paramString)
  {
    this.operateType = paramString;
  }
  
  public CartRequestOperate(ArrayList<CartSkuSummary> paramArrayList, ArrayList<CartPackSummary> paramArrayList1, String paramString)
  {
    super(paramArrayList, paramArrayList1);
    this.operateType = paramString;
  }
  
  public String getOperateType()
  {
    if (this.operateType == null) {
      return "";
    }
    return this.operateType;
  }
  
  public void setOperateType(String paramString)
  {
    this.operateType = paramString;
  }
  
  public JSONObject toParams()
    throws JSONException
  {
    JSONObject localJSONObject = super.toParams();
    localJSONObject.put("carttype", getOperateType());
    return localJSONObject;
  }
  
  public String toString()
  {
    return "CartRequestOperate [operateType=" + this.operateType + ", skus=" + this.skus + ", packs=" + this.packs + "]";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.cart.CartRequestOperate
 * JD-Core Version:    0.7.0.1
 */