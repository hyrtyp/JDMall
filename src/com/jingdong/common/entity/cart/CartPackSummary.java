package com.jingdong.common.entity.cart;

import android.text.TextUtils;
import com.jingdong.common.entity.Pack;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class CartPackSummary
  implements Serializable
{
  private static final long serialVersionUID = -288935021682962654L;
  protected ArrayList<? super CartSkuSummary> gifts = new ArrayList();
  protected Integer num;
  protected String packId;
  protected String sType = "";
  protected ArrayList<? super CartSkuSummary> skus = new ArrayList();
  protected String ybPackId;
  
  protected CartPackSummary(JSONObjectProxy paramJSONObjectProxy) {}
  
  public CartPackSummary(String paramString, Integer paramInteger)
  {
    this.packId = paramString;
    this.num = paramInteger;
  }
  
  public CartPackSummary(String paramString1, Integer paramInteger, String paramString2)
  {
    this(paramString1, paramInteger);
    this.sType = paramString2;
  }
  
  public CartPackSummary(String paramString1, Integer paramInteger, ArrayList<CartSkuSummary> paramArrayList, String paramString2)
  {
    this(paramString1, paramInteger);
    this.gifts = paramArrayList;
    this.sType = paramString2;
  }
  
  public CartPackSummary(String paramString1, String paramString2, Integer paramInteger, String paramString3)
  {
    this(paramString1, paramInteger);
    this.ybPackId = paramString2;
    this.sType = paramString3;
  }
  
  public void addGift(CartSkuSummary paramCartSkuSummary)
  {
    if (paramCartSkuSummary != null) {
      this.gifts.add(paramCartSkuSummary);
    }
  }
  
  public void addSku(CartSkuSummary paramCartSkuSummary)
  {
    if (paramCartSkuSummary != null) {
      this.skus.add(paramCartSkuSummary);
    }
  }
  
  public ArrayList<? super CartSkuSummary> getGifts()
  {
    return this.gifts;
  }
  
  public Integer getNum()
  {
    if (this.num == null) {
      return Integer.valueOf(0);
    }
    return this.num;
  }
  
  public String getPackId()
  {
    if (this.packId == null) {
      return "";
    }
    return this.packId;
  }
  
  public ArrayList<? super CartSkuSummary> getSkus()
  {
    return this.skus;
  }
  
  public String getYbPackId()
  {
    if (this.ybPackId == null) {
      return "";
    }
    return this.ybPackId;
  }
  
  public String getsType()
  {
    if (this.sType == null) {
      return "";
    }
    return this.sType;
  }
  
  public void setGifts(ArrayList<? super CartSkuSummary> paramArrayList)
  {
    this.gifts = paramArrayList;
  }
  
  public void setNum(Integer paramInteger)
  {
    this.num = paramInteger;
  }
  
  public void setPackId(String paramString)
  {
    this.packId = paramString;
  }
  
  public void setSkus(ArrayList<? super CartSkuSummary> paramArrayList)
  {
    this.skus = paramArrayList;
  }
  
  public void setYbPackId(String paramString)
  {
    this.ybPackId = paramString;
  }
  
  public void setsType(String paramString)
  {
    this.sType = paramString;
  }
  
  public Pack toPack()
  {
    Pack localPack = new Pack();
    try
    {
      localPack.setId(Long.valueOf(Long.parseLong(this.packId)));
      label22:
      localPack.setNum(this.num);
      return localPack;
    }
    catch (Exception localException)
    {
      break label22;
    }
  }
  
  public String toString()
  {
    return "CartPackSummary [packId=" + this.packId + ", num=" + this.num + ", gifts=" + this.gifts + ", skus=" + this.skus + ", sType=" + this.sType + "]";
  }
  
  public JSONObject toSummaryParams()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("Id", getPackId());
    if (!TextUtils.isEmpty(getYbPackId())) {
      localJSONObject.put("ybPackId", getYbPackId());
    }
    localJSONObject.put("num", getNum().toString());
    JSONArray localJSONArray;
    Iterator localIterator2;
    label153:
    Iterator localIterator1;
    if (!"".equals(getsType()))
    {
      if ((TextUtils.equals(getsType(), "16")) && (this.skus != null) && (this.skus.size() > 0)) {
        localJSONObject.put("sType", "13");
      }
    }
    else
    {
      ArrayList localArrayList = this.gifts;
      localJSONArray = null;
      if (localArrayList != null)
      {
        int i = this.gifts.size();
        localJSONArray = null;
        if (i > 0)
        {
          localJSONArray = new JSONArray();
          localIterator2 = this.gifts.iterator();
          if (localIterator2.hasNext()) {
            break label243;
          }
        }
      }
      if ((this.skus != null) && (this.skus.size() > 0))
      {
        if (localJSONArray == null) {
          localJSONArray = new JSONArray();
        }
        localIterator1 = this.skus.iterator();
      }
    }
    for (;;)
    {
      if (!localIterator1.hasNext())
      {
        if (localJSONArray != null) {
          localJSONObject.put("TheSkus", localJSONArray);
        }
        return localJSONObject;
        localJSONObject.put("sType", getsType());
        break;
        label243:
        localJSONArray.put(((CartSkuSummary)localIterator2.next()).toSummaryParams());
        break label153;
      }
      localJSONArray.put(((CartSkuSummary)localIterator1.next()).toSummaryParams());
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.cart.CartPackSummary
 * JD-Core Version:    0.7.0.1
 */