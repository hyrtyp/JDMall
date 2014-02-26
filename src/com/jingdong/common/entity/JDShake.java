package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;

public class JDShake
  implements Serializable
{
  public static final String SHAKE_RESULT_COUPON = "coupon";
  public static final String SHAKE_RESULT_MORE = "more";
  public static final String SHAKE_RESULT_NOTHING = "nothing";
  public static final String SHAKE_RESULT_SKU = "sku";
  private static final long serialVersionUID = 5787186625715608387L;
  private JDCoupon couponInfo;
  private String msg;
  private String shakeResult;
  private Product skuInfo;
  
  public JDShake(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    setShakeResult(paramJSONObjectProxy.getStringOrNull("shakeResult"));
    setMsg(paramJSONObjectProxy.getStringOrNull("msg"));
    if (!TextUtils.isEmpty(this.shakeResult))
    {
      if (!TextUtils.equals(this.shakeResult, "sku")) {
        break label65;
      }
      setSkuInfo(new Product(paramJSONObjectProxy.getJSONObjectOrNull("skuInfo"), paramInt));
    }
    label65:
    while (!TextUtils.equals(this.shakeResult, "coupon")) {
      return;
    }
    setCouponInfo(new JDCoupon(paramJSONObjectProxy.getJSONObjectOrNull("couponInfo"), paramInt));
  }
  
  public JDCoupon getCouponInfo()
  {
    if (this.couponInfo == null) {
      return new JDCoupon();
    }
    return this.couponInfo;
  }
  
  public String getMsg()
  {
    if (TextUtils.isEmpty(this.msg)) {
      return "";
    }
    return this.msg;
  }
  
  public String getShakeResult()
  {
    if (TextUtils.isEmpty(this.shakeResult)) {
      return "";
    }
    return this.shakeResult;
  }
  
  public Product getSkuInfo()
  {
    if (this.skuInfo == null) {
      return new Product();
    }
    return this.skuInfo;
  }
  
  public void setCouponInfo(JDCoupon paramJDCoupon)
  {
    this.couponInfo = paramJDCoupon;
  }
  
  public void setMsg(String paramString)
  {
    this.msg = paramString;
  }
  
  public void setShakeResult(String paramString)
  {
    this.shakeResult = paramString;
  }
  
  public void setSkuInfo(Product paramProduct)
  {
    this.skuInfo = paramProduct;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.JDShake
 * JD-Core Version:    0.7.0.1
 */