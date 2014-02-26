package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;

public class CouponInfo
  implements Serializable
{
  private static final int CONSTANT_COUPON_STYLE_ENTITY = 1;
  private static final int CONSTANT_COUPON_STYLE_INTERNET = 0;
  private static final int CONSTANT_COUPON_TYPE_DONG = 1;
  private static final int CONSTANT_COUPON_TYPE_JING = 0;
  public static final int USED_ELEC_COUPONS = 0;
  private static final long serialVersionUID = -758303959220033663L;
  private String Pin;
  private Boolean canUsed;
  private Integer couponStyle;
  private Integer couponType;
  private Double discount;
  private String id;
  private boolean isModify;
  private String key;
  private Integer platform;
  private Float quota;
  private String scope;
  private Boolean selected;
  private String timeBegin;
  private String timeEnd;
  
  public CouponInfo() {}
  
  public CouponInfo(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    update(paramJSONObjectProxy, paramInt);
  }
  
  public static boolean isSelectedDongForList(ArrayList<CouponInfo> paramArrayList)
  {
    if (paramArrayList == null) {
      return false;
    }
    Iterator localIterator = paramArrayList.iterator();
    boolean bool1 = localIterator.hasNext();
    boolean bool2 = false;
    if (!bool1) {}
    for (;;)
    {
      return bool2;
      CouponInfo localCouponInfo = (CouponInfo)localIterator.next();
      if ((localCouponInfo == null) || (!localCouponInfo.getSelected().booleanValue()) || (localCouponInfo.getCouponType().intValue() != 1)) {
        break;
      }
      bool2 = true;
    }
  }
  
  public static boolean isSelectedJingForList(ArrayList<CouponInfo> paramArrayList)
  {
    if (paramArrayList == null) {
      return false;
    }
    Iterator localIterator = paramArrayList.iterator();
    boolean bool1 = localIterator.hasNext();
    boolean bool2 = false;
    if (!bool1) {}
    for (;;)
    {
      return bool2;
      CouponInfo localCouponInfo = (CouponInfo)localIterator.next();
      if ((localCouponInfo == null) || (!localCouponInfo.getSelected().booleanValue()) || (localCouponInfo.getCouponType().intValue() != 0)) {
        break;
      }
      bool2 = true;
    }
  }
  
  public static ArrayList<CouponInfo> lookupDongForList(ArrayList<CouponInfo> paramArrayList)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramArrayList == null) {}
    for (;;)
    {
      return localArrayList;
      Iterator localIterator = paramArrayList.iterator();
      while (localIterator.hasNext())
      {
        CouponInfo localCouponInfo = (CouponInfo)localIterator.next();
        if ((localCouponInfo != null) && (localCouponInfo.getCouponType().intValue() == 1)) {
          localArrayList.add(localCouponInfo);
        }
      }
    }
  }
  
  public static ArrayList<CouponInfo> lookupJingForList(ArrayList<CouponInfo> paramArrayList)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramArrayList == null) {}
    for (;;)
    {
      return localArrayList;
      Iterator localIterator = paramArrayList.iterator();
      while (localIterator.hasNext())
      {
        CouponInfo localCouponInfo = (CouponInfo)localIterator.next();
        if ((localCouponInfo != null) && (localCouponInfo.getCouponType().intValue() == 0)) {
          localArrayList.add(localCouponInfo);
        }
      }
    }
  }
  
  public static ArrayList<CouponInfo> lookupSelectedForList(ArrayList<CouponInfo> paramArrayList)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramArrayList == null) {}
    for (;;)
    {
      return localArrayList;
      Iterator localIterator = paramArrayList.iterator();
      while (localIterator.hasNext())
      {
        CouponInfo localCouponInfo = (CouponInfo)localIterator.next();
        if ((localCouponInfo != null) && (localCouponInfo.getSelected().booleanValue())) {
          localArrayList.add(localCouponInfo);
        }
      }
    }
  }
  
  public static ArrayList<CouponInfo> lookupSelectedOrModifyForList(ArrayList<CouponInfo> paramArrayList)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramArrayList == null) {}
    for (;;)
    {
      return localArrayList;
      Iterator localIterator = paramArrayList.iterator();
      while (localIterator.hasNext())
      {
        CouponInfo localCouponInfo = (CouponInfo)localIterator.next();
        if ((localCouponInfo != null) && ((localCouponInfo.getSelected().booleanValue()) || (localCouponInfo.isModify()))) {
          localArrayList.add(localCouponInfo);
        }
      }
    }
  }
  
  /* Error */
  public static ArrayList<CouponInfo> toList(com.jingdong.common.utils.JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    // Byte code:
    //   0: new 50	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 87	java/util/ArrayList:<init>	()V
    //   7: astore_2
    //   8: iconst_0
    //   9: istore_3
    //   10: iload_3
    //   11: aload_0
    //   12: invokevirtual 105	com/jingdong/common/utils/JSONArrayPoxy:length	()I
    //   15: if_icmplt +5 -> 20
    //   18: aload_2
    //   19: areturn
    //   20: aload_2
    //   21: new 2	com/jingdong/common/entity/CouponInfo
    //   24: dup
    //   25: aload_0
    //   26: iload_3
    //   27: invokevirtual 109	com/jingdong/common/utils/JSONArrayPoxy:getJSONObject	(I)Lcom/jingdong/common/utils/JSONObjectProxy;
    //   30: iload_1
    //   31: invokespecial 111	com/jingdong/common/entity/CouponInfo:<init>	(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    //   34: invokevirtual 91	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   37: pop
    //   38: iinc 3 1
    //   41: goto -31 -> 10
    //   44: astore 6
    //   46: aconst_null
    //   47: areturn
    //   48: astore 4
    //   50: aload_2
    //   51: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	paramJSONArrayPoxy	com.jingdong.common.utils.JSONArrayPoxy
    //   0	52	1	paramInt	int
    //   7	44	2	localArrayList	ArrayList
    //   9	30	3	i	int
    //   48	1	4	localJSONException1	org.json.JSONException
    //   44	1	6	localJSONException2	org.json.JSONException
    // Exception table:
    //   from	to	target	type
    //   0	8	44	org/json/JSONException
    //   10	18	48	org/json/JSONException
    //   20	38	48	org/json/JSONException
  }
  
  public Boolean getCanUsed()
  {
    if (this.canUsed == null) {
      return Boolean.valueOf(false);
    }
    return this.canUsed;
  }
  
  public Integer getCouponStyle()
  {
    return this.couponStyle;
  }
  
  public Integer getCouponType()
  {
    return this.couponType;
  }
  
  public Double getDiscount()
  {
    return this.discount;
  }
  
  public String getDiscountName()
  {
    try
    {
      if ((this.couponType != null) && (this.couponType.intValue() == 1)) {
        return this.discount.intValue() + "元" + "(满" + this.quota.intValue() + "减" + this.discount.intValue() + ")";
      }
      String str = this.discount + "元";
      return str;
    }
    catch (Exception localException) {}
    return "";
  }
  
  public String getId()
  {
    return this.id;
  }
  
  public String getKey()
  {
    if (this.key == null) {
      return "";
    }
    return this.key;
  }
  
  public String getPin()
  {
    if (this.Pin == null) {
      return "";
    }
    return this.Pin;
  }
  
  public Integer getPlatform()
  {
    return this.platform;
  }
  
  public Float getQuota()
  {
    return this.quota;
  }
  
  public String getScope()
  {
    if (this.scope == null) {
      return "";
    }
    return this.scope;
  }
  
  public Boolean getSelected()
  {
    if (this.selected == null) {
      return Boolean.valueOf(false);
    }
    return this.selected;
  }
  
  public String getTimeBegin()
  {
    return this.timeBegin;
  }
  
  public String getTimeEnd()
  {
    if ((this.timeEnd != null) && (this.timeEnd.length() >= 10)) {
      return this.timeEnd.substring(0, 10);
    }
    return null;
  }
  
  public String getTimeEndShow()
  {
    String str = getTimeEnd();
    if (TextUtils.isEmpty(str)) {
      return "";
    }
    return str + "到期";
  }
  
  public boolean isModify()
  {
    return this.isModify;
  }
  
  public void setCanUsed(Boolean paramBoolean)
  {
    this.canUsed = paramBoolean;
  }
  
  public void setCouponStyle(Integer paramInteger)
  {
    this.couponStyle = paramInteger;
  }
  
  public void setCouponType(Integer paramInteger)
  {
    this.couponType = paramInteger;
  }
  
  public void setDiscount(Double paramDouble)
  {
    this.discount = paramDouble;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setKey(String paramString)
  {
    this.key = paramString;
  }
  
  public void setModify(boolean paramBoolean)
  {
    this.isModify = paramBoolean;
  }
  
  public void setPin(String paramString)
  {
    this.Pin = paramString;
  }
  
  public void setPlatform(Integer paramInteger)
  {
    this.platform = paramInteger;
  }
  
  public void setQuota(Float paramFloat)
  {
    this.quota = paramFloat;
  }
  
  public void setScope(String paramString)
  {
    this.scope = paramString;
  }
  
  public void setSelected(Boolean paramBoolean)
  {
    this.selected = paramBoolean;
  }
  
  public void setTimeBegin(String paramString)
  {
    this.timeBegin = paramString;
  }
  
  public void setTimeEnd(String paramString)
  {
    this.timeEnd = paramString;
  }
  
  public JSONObject toOrderJson()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("Id", getId());
      localJSONObject.put("Key", getKey());
      localJSONObject.put("Selected", getSelected());
      return localJSONObject;
    }
    catch (Exception localException) {}
    return localJSONObject;
  }
  
  public void update(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    }
    setPlatform(paramJSONObjectProxy.getIntOrNull("platform"));
    setQuota(Float.valueOf(paramJSONObjectProxy.getIntOrNull("Quota").floatValue()));
    setPin(paramJSONObjectProxy.getStringOrNull("Pin"));
    setScope(paramJSONObjectProxy.getStringOrNull("scope"));
    setKey(paramJSONObjectProxy.getStringOrNull("Key"));
    setCouponType(paramJSONObjectProxy.getIntOrNull("CouponType"));
    setCanUsed(paramJSONObjectProxy.getBooleanOrNull("CanUsed"));
    setSelected(paramJSONObjectProxy.getBooleanOrNull("Selected"));
    setTimeBegin(paramJSONObjectProxy.getStringOrNull("TimeBegin"));
    setDiscount(paramJSONObjectProxy.getDoubleOrNull("Discount"));
    setId(paramJSONObjectProxy.getStringOrNull("Id"));
    setCouponStyle(paramJSONObjectProxy.getIntOrNull("CouponStyle"));
    setTimeEnd(paramJSONObjectProxy.getStringOrNull("TimeEnd"));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.CouponInfo
 * JD-Core Version:    0.7.0.1
 */