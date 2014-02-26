package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;

public class UsedJdbean
  implements Serializable
{
  public static final int USE_JDBEAN = 0;
  private static final long serialVersionUID = 572502601955860950L;
  private Double canUseJdBeanCount;
  private Boolean isShowJdbean;
  @Deprecated
  private String jdbeanDesc;
  private String jdbeanName;
  private Double totalJdBeanCount;
  
  public UsedJdbean(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    if (paramJSONObjectProxy == null) {}
    JSONObjectProxy localJSONObjectProxy;
    do
    {
      return;
      switch (paramInt)
      {
      default: 
        return;
      }
      localJSONObjectProxy = paramJSONObjectProxy.getJSONObjectOrNull("usedJdBeanMap");
    } while (localJSONObjectProxy == null);
    setIsShowJdbean(localJSONObjectProxy.getBooleanOrNull("isShowJd"));
    setJdbeanName(localJSONObjectProxy.getStringOrNull("Message1"));
    setJdbeanDesc(localJSONObjectProxy.getStringOrNull("Message2"));
    setCanUseJdBeanCount(localJSONObjectProxy.getDoubleOrNull("canUseJdBeanCount"));
    setTotalJdBeanCount(localJSONObjectProxy.getDoubleOrNull("totalJdBeanCount"));
  }
  
  public UsedJdbean(Boolean paramBoolean, String paramString1, String paramString2, Double paramDouble1, Double paramDouble2)
  {
    this.isShowJdbean = paramBoolean;
    this.jdbeanName = paramString1;
    this.jdbeanDesc = paramString2;
    this.canUseJdBeanCount = paramDouble1;
    this.totalJdBeanCount = paramDouble2;
  }
  
  public Double getCanUseJdBeanCount()
  {
    if (this.canUseJdBeanCount == null) {
      return Double.valueOf(0.0D);
    }
    return this.canUseJdBeanCount;
  }
  
  public Boolean getIsShowJdbean()
  {
    if (this.isShowJdbean == null) {
      return Boolean.valueOf(false);
    }
    return this.isShowJdbean;
  }
  
  public String getJdbeanDesc()
  {
    return this.jdbeanDesc;
  }
  
  public String getJdbeanName()
  {
    return this.jdbeanName;
  }
  
  public Double getTotalJdBeanCount()
  {
    if (this.totalJdBeanCount == null) {
      return Double.valueOf(0.0D);
    }
    return this.totalJdBeanCount;
  }
  
  public void setCanUseJdBeanCount(Double paramDouble)
  {
    this.canUseJdBeanCount = paramDouble;
  }
  
  public void setIsShowJdbean(Boolean paramBoolean)
  {
    this.isShowJdbean = paramBoolean;
  }
  
  public void setJdbeanDesc(String paramString)
  {
    this.jdbeanDesc = paramString;
  }
  
  public void setJdbeanName(String paramString)
  {
    this.jdbeanName = paramString;
  }
  
  public void setTotalJdBeanCount(Double paramDouble)
  {
    this.totalJdBeanCount = paramDouble;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.UsedJdbean
 * JD-Core Version:    0.7.0.1
 */