package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONObjectProxy;

public class JDCoupon
{
  public static final int COUPON;
  private int agency;
  private String consumption;
  private int couponCount;
  private int couponId;
  private String couponType;
  private String couponUuid;
  private int coupon_batch;
  private String endTime;
  private String id;
  private String money;
  private String scope;
  private String startTime;
  private String typeName;
  private int validDay;
  
  public JDCoupon() {}
  
  public JDCoupon(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      setTypeName(paramJSONObjectProxy.getStringOrNull("typeDescription"));
      setId(paramJSONObjectProxy.getStringOrNull("id"));
      setMoney(paramJSONObjectProxy.getStringOrNull("faceValue"));
      setConsumption(paramJSONObjectProxy.getStringOrNull("amountMoney"));
      setScope(paramJSONObjectProxy.getStringOrNull("scope"));
      setStartTime(paramJSONObjectProxy.getStringOrNull("fromTime"));
      setEndTime(paramJSONObjectProxy.getStringOrNull("endTime"));
      return;
    }
    setTypeName(paramJSONObjectProxy.getStringOrNull("couponTitle"));
    setId(paramJSONObjectProxy.getStringOrNull("id"));
    setScope(paramJSONObjectProxy.getStringOrNull("couponScope"));
    setStartTime(paramJSONObjectProxy.getStringOrNull("couponStartTime"));
    setEndTime(paramJSONObjectProxy.getStringOrNull("couponEndTime"));
    setCouponUuid(paramJSONObjectProxy.getStringOrNull("couponUuid"));
    setCouponType(paramJSONObjectProxy.getStringOrNull("couponType"));
    setValidDay(paramJSONObjectProxy.getIntOrNull("validDay").intValue());
    setAgency(paramJSONObjectProxy.getIntOrNull("agency").intValue());
    setCouponBatch(paramJSONObjectProxy.getIntOrNull("coupon_batch").intValue());
    setCouponCount(paramJSONObjectProxy.getIntOrNull("couponCount").intValue());
  }
  
  /* Error */
  public static java.util.ArrayList<JDCoupon> toList(com.jingdong.common.utils.JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: aconst_null
    //   7: astore_2
    //   8: new 114	java/util/ArrayList
    //   11: dup
    //   12: invokespecial 115	java/util/ArrayList:<init>	()V
    //   15: astore_3
    //   16: iconst_0
    //   17: istore 4
    //   19: iload 4
    //   21: aload_0
    //   22: invokevirtual 120	com/jingdong/common/utils/JSONArrayPoxy:length	()I
    //   25: if_icmplt +5 -> 30
    //   28: aload_3
    //   29: areturn
    //   30: aload_3
    //   31: new 2	com/jingdong/common/entity/JDCoupon
    //   34: dup
    //   35: aload_0
    //   36: iload 4
    //   38: invokevirtual 124	com/jingdong/common/utils/JSONArrayPoxy:getJSONObject	(I)Lcom/jingdong/common/utils/JSONObjectProxy;
    //   41: iload_1
    //   42: invokespecial 126	com/jingdong/common/entity/JDCoupon:<init>	(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    //   45: invokevirtual 130	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   48: pop
    //   49: iinc 4 1
    //   52: goto -33 -> 19
    //   55: astore 5
    //   57: aload 5
    //   59: invokevirtual 133	org/json/JSONException:printStackTrace	()V
    //   62: aload_2
    //   63: areturn
    //   64: astore 5
    //   66: aload_3
    //   67: astore_2
    //   68: goto -11 -> 57
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	71	0	paramJSONArrayPoxy	com.jingdong.common.utils.JSONArrayPoxy
    //   0	71	1	paramInt	int
    //   7	61	2	localObject	Object
    //   15	52	3	localArrayList	java.util.ArrayList
    //   17	33	4	i	int
    //   55	3	5	localJSONException1	org.json.JSONException
    //   64	1	5	localJSONException2	org.json.JSONException
    // Exception table:
    //   from	to	target	type
    //   8	16	55	org/json/JSONException
    //   19	28	64	org/json/JSONException
    //   30	49	64	org/json/JSONException
  }
  
  public int getAgency()
  {
    return this.agency;
  }
  
  public String getConsumption()
  {
    return this.consumption;
  }
  
  public int getCouponBatch()
  {
    return this.coupon_batch;
  }
  
  public int getCouponCount()
  {
    return this.couponCount;
  }
  
  public String getCouponType()
  {
    return this.couponType;
  }
  
  public String getCouponUuid()
  {
    if (TextUtils.isEmpty(this.couponUuid)) {
      return "";
    }
    return this.couponUuid;
  }
  
  public String getEndTime()
  {
    return this.endTime;
  }
  
  public String getId()
  {
    return this.id;
  }
  
  public String getMoney()
  {
    return this.money;
  }
  
  public String getScope()
  {
    if (TextUtils.isEmpty(this.scope)) {
      return "";
    }
    return this.scope;
  }
  
  public String getStartTime()
  {
    return this.startTime;
  }
  
  public String getTypeName()
  {
    return this.typeName;
  }
  
  public int getValidDay()
  {
    return this.validDay;
  }
  
  public void setAgency(int paramInt)
  {
    this.agency = paramInt;
  }
  
  public void setConsumption(String paramString)
  {
    this.consumption = paramString;
  }
  
  public void setCouponBatch(int paramInt)
  {
    this.coupon_batch = paramInt;
  }
  
  public void setCouponCount(int paramInt)
  {
    this.couponCount = paramInt;
  }
  
  public void setCouponType(String paramString)
  {
    this.couponType = paramString;
  }
  
  public void setCouponUuid(String paramString)
  {
    this.couponUuid = paramString;
  }
  
  public void setEndTime(String paramString)
  {
    this.endTime = paramString;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setMoney(String paramString)
  {
    this.money = paramString;
  }
  
  public void setScope(String paramString)
  {
    this.scope = paramString;
  }
  
  public void setStartTime(String paramString)
  {
    this.startTime = paramString;
  }
  
  public void setTypeName(String paramString)
  {
    this.typeName = paramString;
  }
  
  public void setValidDay(int paramInt)
  {
    this.validDay = paramInt;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.JDCoupon
 * JD-Core Version:    0.7.0.1
 */