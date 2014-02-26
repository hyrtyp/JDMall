package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;

public class UsedBalance
  implements Serializable
{
  public static final int USE_BALANCE = 0;
  private static final long serialVersionUID = 572502601955860950L;
  @Deprecated
  private String balanceDesc;
  private String balanceName;
  private Double balanceValue;
  
  public UsedBalance() {}
  
  public UsedBalance(JSONObjectProxy paramJSONObjectProxy, int paramInt)
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
      localJSONObjectProxy = paramJSONObjectProxy.getJSONObjectOrNull("usedBalanceMap");
    } while (localJSONObjectProxy == null);
    setBalanceValue(localJSONObjectProxy.getDoubleOrNull("Balance"));
    setBalanceName(localJSONObjectProxy.getStringOrNull("Message1"));
    setBalanceDesc(localJSONObjectProxy.getStringOrNull("Message2"));
  }
  
  public UsedBalance(Double paramDouble, String paramString1, String paramString2, Boolean paramBoolean, String paramString3, String paramString4)
  {
    this.balanceValue = paramDouble;
    this.balanceName = paramString1;
    this.balanceDesc = paramString2;
  }
  
  public String getBalanceDesc()
  {
    return this.balanceDesc;
  }
  
  public String getBalanceName()
  {
    return this.balanceName;
  }
  
  public Double getBalanceValue()
  {
    if (this.balanceValue == null) {
      return Double.valueOf(0.0D);
    }
    return this.balanceValue;
  }
  
  public boolean isShowBanance()
  {
    return !TextUtils.isEmpty(this.balanceName);
  }
  
  public void setBalanceDesc(String paramString)
  {
    this.balanceDesc = paramString;
  }
  
  public void setBalanceName(String paramString)
  {
    this.balanceName = paramString;
  }
  
  public void setBalanceValue(Double paramDouble)
  {
    this.balanceValue = paramDouble;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.UsedBalance
 * JD-Core Version:    0.7.0.1
 */