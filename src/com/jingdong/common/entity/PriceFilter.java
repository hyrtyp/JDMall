package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.util.ArrayList;
import java.util.List;

public class PriceFilter
{
  private String maxPrice;
  private String minPrice;
  
  public PriceFilter(JSONObjectProxy paramJSONObjectProxy)
  {
    this.minPrice = paramJSONObjectProxy.getStringOrNull("min");
    this.maxPrice = paramJSONObjectProxy.getStringOrNull("max");
  }
  
  public static List<PriceFilter> toList(JSONArrayPoxy paramJSONArrayPoxy)
  {
    if (paramJSONArrayPoxy == null) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    for (int i = 0;; i++)
    {
      if (i >= paramJSONArrayPoxy.length()) {
        return localArrayList;
      }
      JSONObjectProxy localJSONObjectProxy = paramJSONArrayPoxy.getJSONObjectOrNull(i);
      if (localJSONObjectProxy != null) {
        localArrayList.add(new PriceFilter(localJSONObjectProxy));
      }
    }
  }
  
  public String getMaxPrice()
  {
    if (this.maxPrice == null) {
      return "";
    }
    return this.maxPrice;
  }
  
  public String getMinPrice()
  {
    if (this.minPrice == null) {
      return "";
    }
    return this.minPrice;
  }
  
  public void setMaxPrice(String paramString)
  {
    this.maxPrice = paramString;
  }
  
  public void setMinPrice(String paramString)
  {
    this.minPrice = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.PriceFilter
 * JD-Core Version:    0.7.0.1
 */