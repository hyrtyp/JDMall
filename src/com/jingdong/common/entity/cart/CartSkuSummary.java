package com.jingdong.common.entity.cart;

import com.jingdong.common.entity.Product;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;

public class CartSkuSummary
  implements Serializable
{
  private static final long serialVersionUID = 766310350156986378L;
  protected Integer num;
  protected String skuId;
  
  protected CartSkuSummary(JSONObjectProxy paramJSONObjectProxy)
  {
    setNum(paramJSONObjectProxy.getIntOrNull("Num"));
    setSkuId(paramJSONObjectProxy.getStringOrNull("Id"));
  }
  
  public CartSkuSummary(String paramString, Integer paramInteger)
  {
    this.skuId = paramString;
    this.num = paramInteger;
  }
  
  public Integer getNum()
  {
    if (this.num == null) {
      return Integer.valueOf(0);
    }
    return this.num;
  }
  
  public String getSkuId()
  {
    if (this.skuId == null) {
      return "";
    }
    return this.skuId;
  }
  
  public void setNum(Integer paramInteger)
  {
    this.num = paramInteger;
  }
  
  public void setSkuId(String paramString)
  {
    this.skuId = paramString;
  }
  
  public Product toProduct()
  {
    Product localProduct = new Product();
    try
    {
      localProduct.setId(Long.valueOf(Long.parseLong(this.skuId)));
      label22:
      localProduct.setNum(this.num);
      return localProduct;
    }
    catch (Exception localException)
    {
      break label22;
    }
  }
  
  public String toString()
  {
    return "CartSkuSummary [skuId=" + this.skuId + ", num=" + this.num + "]";
  }
  
  public JSONObject toSummaryParams()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("Id", getSkuId());
    localJSONObject.put("num", getNum().toString());
    return localJSONObject;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.cart.CartSkuSummary
 * JD-Core Version:    0.7.0.1
 */