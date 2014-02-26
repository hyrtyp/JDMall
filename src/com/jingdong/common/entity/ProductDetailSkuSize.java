package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;
import org.json.JSONException;

public class ProductDetailSkuSize
  implements Serializable
{
  private static final long serialVersionUID = 5496553802650926805L;
  private String size;
  private String skuId;
  
  public ProductDetailSkuSize() {}
  
  private ProductDetailSkuSize(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    }
    setSkuId(paramJSONObjectProxy.getStringOrNull("skuId"));
    setSize(paramJSONObjectProxy.getStringOrNull("size"));
  }
  
  public static ArrayList<ProductDetailSkuSize> toList(JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    localArrayList = new ArrayList();
    if (paramJSONArrayPoxy == null) {
      localArrayList = null;
    }
    for (;;)
    {
      return localArrayList;
      int i = 0;
      try
      {
        while (i < paramJSONArrayPoxy.length())
        {
          localArrayList.add(new ProductDetailSkuSize(paramJSONArrayPoxy.getJSONObject(i), paramInt));
          i++;
        }
        return localArrayList;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  public String getSize()
  {
    if (TextUtils.isEmpty(this.size)) {
      return "";
    }
    return this.size;
  }
  
  public String getSkuId()
  {
    if (TextUtils.isEmpty(this.skuId)) {
      return "";
    }
    return this.skuId;
  }
  
  public void setSize(String paramString)
  {
    this.size = paramString;
  }
  
  public void setSkuId(String paramString)
  {
    this.skuId = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.ProductDetailSkuSize
 * JD-Core Version:    0.7.0.1
 */