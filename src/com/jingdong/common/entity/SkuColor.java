package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;
import org.json.JSONException;

public class SkuColor
  implements Serializable
{
  public static final int CONSTRUCTOR = 0;
  private static final long serialVersionUID = -1953037815425591903L;
  private String colorImg;
  private String colorName;
  private Boolean promotion;
  private Long wareId;
  private String wareName;
  private String wareTitle;
  
  public SkuColor(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    }
    setColorName(paramJSONObjectProxy.getStringOrNull("color"));
    setColorImg(paramJSONObjectProxy.getStringOrNull("colorImg"));
    setPromotion(paramJSONObjectProxy.getBooleanOrNull("promotion"));
    setWareId(paramJSONObjectProxy.getLongOrNull("wareId"));
    setWareTitle(paramJSONObjectProxy.getStringOrNull("waretitle"));
    setWareName(paramJSONObjectProxy.getStringOrNull("wname"));
  }
  
  public static ArrayList<SkuColor> toList(JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
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
          ((ArrayList)localObject2).add(new SkuColor(paramJSONArrayPoxy.getJSONObject(i), paramInt));
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
  
  public String getColorImg()
  {
    if (this.colorImg == null) {
      return "";
    }
    return this.colorImg;
  }
  
  public String getColorName()
  {
    if (this.colorName == null) {
      return "";
    }
    return this.colorName;
  }
  
  public Boolean getPromotion()
  {
    if (this.promotion == null) {}
    for (boolean bool = false;; bool = this.promotion.booleanValue()) {
      return Boolean.valueOf(bool);
    }
  }
  
  public Long getWareId()
  {
    if (this.wareId == null) {}
    for (long l = 0L;; l = this.wareId.longValue()) {
      return Long.valueOf(l);
    }
  }
  
  public String getWareName()
  {
    if (this.wareName == null) {
      return "";
    }
    return this.wareName;
  }
  
  public String getWareTitle()
  {
    if (this.wareTitle == null) {
      return "";
    }
    return this.wareTitle;
  }
  
  public void setColorImg(String paramString)
  {
    this.colorImg = paramString;
  }
  
  public void setColorName(String paramString)
  {
    this.colorName = paramString;
  }
  
  public void setPromotion(Boolean paramBoolean)
  {
    this.promotion = paramBoolean;
  }
  
  public void setWareId(Long paramLong)
  {
    this.wareId = paramLong;
  }
  
  public void setWareName(String paramString)
  {
    this.wareName = paramString;
  }
  
  public void setWareTitle(String paramString)
  {
    this.wareTitle = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.SkuColor
 * JD-Core Version:    0.7.0.1
 */