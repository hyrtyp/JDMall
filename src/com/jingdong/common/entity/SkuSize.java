package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;
import org.json.JSONException;

public class SkuSize
  implements Serializable
{
  public static final int CONSTRUCTOR = 0;
  private static final long serialVersionUID = -2367217923502645109L;
  private Boolean directShow;
  private Boolean promotion;
  private String sizeName;
  private Long wareId;
  
  public SkuSize(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    }
    setDirectShow(paramJSONObjectProxy.getBooleanOrNull("directShow"));
    setPromotion(paramJSONObjectProxy.getBooleanOrNull("promotion"));
    setSizeName(paramJSONObjectProxy.getStringOrNull("size"));
    setWareId(paramJSONObjectProxy.getLongOrNull("wareId"));
  }
  
  public static ArrayList<SkuSize> toList(JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    if (paramJSONArrayPoxy == null) {
      return null;
    }
    int i = 0;
    Object localObject1 = null;
    for (;;)
    {
      try
      {
        if (i >= paramJSONArrayPoxy.length()) {
          return localObject1;
        }
        if (localObject1 == null) {
          localObject2 = new ArrayList();
        }
      }
      catch (JSONException localJSONException1)
      {
        try
        {
          ((ArrayList)localObject2).add(new SkuSize(paramJSONArrayPoxy.getJSONObject(i), paramInt));
          i++;
          localObject1 = localObject2;
        }
        catch (JSONException localJSONException2)
        {
          return localObject2;
        }
        localJSONException1 = localJSONException1;
        return localObject1;
      }
      Object localObject2 = localObject1;
    }
  }
  
  public Boolean getDirectShow()
  {
    if (this.directShow == null) {}
    for (boolean bool = false;; bool = this.directShow.booleanValue()) {
      return Boolean.valueOf(bool);
    }
  }
  
  public Boolean getPromotion()
  {
    if (this.promotion == null) {}
    for (boolean bool = false;; bool = this.promotion.booleanValue()) {
      return Boolean.valueOf(bool);
    }
  }
  
  public String getSizeName()
  {
    if (this.sizeName == null) {
      return "";
    }
    return this.sizeName;
  }
  
  public Long getWareId()
  {
    return this.wareId;
  }
  
  public void setDirectShow(Boolean paramBoolean)
  {
    this.directShow = paramBoolean;
  }
  
  public void setPromotion(Boolean paramBoolean)
  {
    this.promotion = paramBoolean;
  }
  
  public void setSizeName(String paramString)
  {
    this.sizeName = paramString;
  }
  
  public void setWareId(Long paramLong)
  {
    this.wareId = paramLong;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.SkuSize
 * JD-Core Version:    0.7.0.1
 */