package com.jingdong.common.entity.cart;

import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class CartRequestBase
{
  protected ArrayList<CartPackSummary> packs = new ArrayList();
  protected ArrayList<CartSkuSummary> skus = new ArrayList();
  
  public CartRequestBase() {}
  
  public CartRequestBase(CartSkuSummary paramCartSkuSummary, CartPackSummary paramCartPackSummary)
  {
    if (paramCartSkuSummary != null) {
      this.skus.add(paramCartSkuSummary);
    }
    if (paramCartPackSummary != null) {
      this.packs.add(paramCartPackSummary);
    }
  }
  
  public CartRequestBase(ArrayList<CartSkuSummary> paramArrayList, ArrayList<CartPackSummary> paramArrayList1)
  {
    this.skus = paramArrayList;
    this.packs = paramArrayList1;
  }
  
  public ArrayList<CartPackSummary> getPacks()
  {
    return this.packs;
  }
  
  public ArrayList<CartSkuSummary> getSkus()
  {
    return this.skus;
  }
  
  public void setOperatePacks(ArrayList<CartPackSummary> paramArrayList)
  {
    this.packs = paramArrayList;
  }
  
  public void setOperateSkus(ArrayList<CartSkuSummary> paramArrayList)
  {
    this.skus = paramArrayList;
  }
  
  public JSONObject toParams()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    this.skus = getSkus();
    JSONArray localJSONArray2;
    Iterator localIterator2;
    JSONArray localJSONArray1;
    Iterator localIterator1;
    if ((this.skus != null) && (this.skus.size() > 0))
    {
      localJSONArray2 = new JSONArray();
      localIterator2 = this.skus.iterator();
      if (!localIterator2.hasNext()) {
        localJSONObject.put("TheSkus", localJSONArray2);
      }
    }
    else
    {
      this.packs = getPacks();
      if ((this.packs != null) && (this.packs.size() > 0))
      {
        localJSONArray1 = new JSONArray();
        localIterator1 = this.packs.iterator();
      }
    }
    for (;;)
    {
      if (!localIterator1.hasNext())
      {
        localJSONObject.put("ThePacks", localJSONArray1);
        return localJSONObject;
        localJSONArray2.put(((CartSkuSummary)localIterator2.next()).toSummaryParams());
        break;
      }
      localJSONArray1.put(((CartPackSummary)localIterator1.next()).toSummaryParams());
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.cart.CartRequestBase
 * JD-Core Version:    0.7.0.1
 */