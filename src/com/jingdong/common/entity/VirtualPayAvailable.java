package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;

public class VirtualPayAvailable
  implements Serializable
{
  public static final int VIRTUAL_PAY_AVAILABLE = 0;
  private static final long serialVersionUID = 2786634691332712009L;
  private Boolean balanceAvailable;
  private String balanceTip;
  private Boolean dongCouponAvailable;
  private String dongCouponTip;
  private Boolean giftCardAvailable;
  private String giftCardTip;
  private Boolean jdBeanAvailable;
  private String jdBeanTip;
  private Boolean jingCouponAvailable;
  private String jingCouponTip;
  
  public VirtualPayAvailable(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    if (paramJSONObjectProxy == null) {
      return;
    }
    switch (paramInt)
    {
    default: 
      return;
    }
    setGiftCardTip(paramJSONObjectProxy.getStringOrNull("giftCardTip"));
    setGiftCardAvailable(paramJSONObjectProxy.getBooleanOrNull("giftCardAvailable"));
    setDongCouponTip(paramJSONObjectProxy.getStringOrNull("dongCouponTip"));
    setDongCouponAvailable(paramJSONObjectProxy.getBooleanOrNull("dongCouponAvailable"));
    setJingCouponTip(paramJSONObjectProxy.getStringOrNull("jingCouponTip"));
    setJingCouponAvailable(paramJSONObjectProxy.getBooleanOrNull("jingCouponAvailable"));
    setBalanceTip(paramJSONObjectProxy.getStringOrNull("balanceTip"));
    setBalanceAvailable(paramJSONObjectProxy.getBooleanOrNull("balanceAvailable"));
    setJdBeanTip(paramJSONObjectProxy.getStringOrNull("jdBeanTip"));
    setJdBeanAvailable(paramJSONObjectProxy.getBooleanOrNull("jdBeanAvailable"));
  }
  
  public VirtualPayAvailable(String paramString1, Boolean paramBoolean1, String paramString2, Boolean paramBoolean2, String paramString3, Boolean paramBoolean3, String paramString4, Boolean paramBoolean4, String paramString5, Boolean paramBoolean5)
  {
    this.giftCardTip = paramString1;
    this.giftCardAvailable = paramBoolean1;
    this.dongCouponTip = paramString2;
    this.dongCouponAvailable = paramBoolean2;
    this.jingCouponTip = paramString3;
    this.jingCouponAvailable = paramBoolean3;
    this.balanceTip = paramString4;
    this.balanceAvailable = paramBoolean4;
    this.jdBeanTip = paramString5;
    this.jdBeanAvailable = paramBoolean5;
  }
  
  public Boolean getBalanceAvailable()
  {
    if (this.balanceAvailable == null) {
      return Boolean.valueOf(false);
    }
    return this.balanceAvailable;
  }
  
  public String getBalanceTip()
  {
    return this.balanceTip;
  }
  
  public Boolean getDongCouponAvailable()
  {
    if (this.dongCouponAvailable == null) {
      return Boolean.valueOf(false);
    }
    return this.dongCouponAvailable;
  }
  
  public String getDongCouponTip()
  {
    return this.dongCouponTip;
  }
  
  public Boolean getGiftCardAvailable()
  {
    if (this.giftCardAvailable == null) {
      return Boolean.valueOf(false);
    }
    return this.giftCardAvailable;
  }
  
  public String getGiftCardTip()
  {
    return this.giftCardTip;
  }
  
  public Boolean getJdBeanAvailable()
  {
    if (this.jdBeanAvailable == null) {
      return Boolean.valueOf(false);
    }
    return this.jdBeanAvailable;
  }
  
  public String getJdBeanTip()
  {
    return this.jdBeanTip;
  }
  
  public Boolean getJingCouponAvailable()
  {
    if (this.jingCouponAvailable == null) {
      return Boolean.valueOf(false);
    }
    return this.jingCouponAvailable;
  }
  
  public String getJingCouponTip()
  {
    return this.jingCouponTip;
  }
  
  public void setBalanceAvailable(Boolean paramBoolean)
  {
    this.balanceAvailable = paramBoolean;
  }
  
  public void setBalanceTip(String paramString)
  {
    this.balanceTip = paramString;
  }
  
  public void setDongCouponAvailable(Boolean paramBoolean)
  {
    this.dongCouponAvailable = paramBoolean;
  }
  
  public void setDongCouponTip(String paramString)
  {
    this.dongCouponTip = paramString;
  }
  
  public void setGiftCardAvailable(Boolean paramBoolean)
  {
    this.giftCardAvailable = paramBoolean;
  }
  
  public void setGiftCardTip(String paramString)
  {
    this.giftCardTip = paramString;
  }
  
  public void setJdBeanAvailable(Boolean paramBoolean)
  {
    this.jdBeanAvailable = paramBoolean;
  }
  
  public void setJdBeanTip(String paramString)
  {
    this.jdBeanTip = paramString;
  }
  
  public void setJingCouponAvailable(Boolean paramBoolean)
  {
    this.jingCouponAvailable = paramBoolean;
  }
  
  public void setJingCouponTip(String paramString)
  {
    this.jingCouponTip = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.VirtualPayAvailable
 * JD-Core Version:    0.7.0.1
 */