package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;
import org.json.JSONException;

public class ProductDetailSkuColor
  implements Serializable
{
  private static final long serialVersionUID = -1810442797591816788L;
  private String color;
  private String skuId;
  
  public ProductDetailSkuColor() {}
  
  private ProductDetailSkuColor(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    }
    setSkuId(paramJSONObjectProxy.getStringOrNull("skuId"));
    setColor(paramJSONObjectProxy.getStringOrNull("color"));
  }
  
  public static ArrayList<ProductDetailSkuColor> toList(JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
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
          localArrayList.add(new ProductDetailSkuColor(paramJSONArrayPoxy.getJSONObject(i), paramInt));
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
  
  public String getColor()
  {
    if (TextUtils.isEmpty(this.color)) {
      return "";
    }
    return this.color;
  }
  
  public String getSkuId()
  {
    if (TextUtils.isEmpty(this.skuId)) {
      return "";
    }
    return this.skuId;
  }
  
  public void setColor(String paramString)
  {
    this.color = paramString;
  }
  
  public void setSkuId(String paramString)
  {
    this.skuId = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.ProductDetailSkuColor
 * JD-Core Version:    0.7.0.1
 */