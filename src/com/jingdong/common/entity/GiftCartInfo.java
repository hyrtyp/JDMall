package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;

public class GiftCartInfo
  implements Serializable
{
  public static final int GET_GIFT_CART = 1;
  private static final long serialVersionUID = 4148249244968038363L;
  private Double discount;
  private Integer discountBind;
  private Double discountCurUsed;
  private Double discountUsed;
  private String id;
  private boolean isModify;
  private String key;
  private Double leaveMoney;
  private String pin;
  private Boolean selected;
  private String timeBegin;
  private String timeEnd;
  
  public GiftCartInfo() {}
  
  public GiftCartInfo(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    update(paramJSONObjectProxy, paramInt);
  }
  
  public static ArrayList<GiftCartInfo> lookupSelectedForList(ArrayList<GiftCartInfo> paramArrayList)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramArrayList == null) {}
    for (;;)
    {
      return localArrayList;
      Iterator localIterator = paramArrayList.iterator();
      while (localIterator.hasNext())
      {
        GiftCartInfo localGiftCartInfo = (GiftCartInfo)localIterator.next();
        if ((localGiftCartInfo != null) && (localGiftCartInfo.getSelected().booleanValue())) {
          localArrayList.add(localGiftCartInfo);
        }
      }
    }
  }
  
  public static ArrayList<GiftCartInfo> lookupSelectedOrModifyForList(ArrayList<GiftCartInfo> paramArrayList)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramArrayList == null) {}
    for (;;)
    {
      return localArrayList;
      Iterator localIterator = paramArrayList.iterator();
      while (localIterator.hasNext())
      {
        GiftCartInfo localGiftCartInfo = (GiftCartInfo)localIterator.next();
        if ((localGiftCartInfo != null) && ((localGiftCartInfo.getSelected().booleanValue()) || (localGiftCartInfo.isModify()))) {
          localArrayList.add(localGiftCartInfo);
        }
      }
    }
  }
  
  /* Error */
  public static ArrayList<GiftCartInfo> toList(com.jingdong.common.utils.JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    // Byte code:
    //   0: new 42	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 43	java/util/ArrayList:<init>	()V
    //   7: astore_2
    //   8: iconst_0
    //   9: istore_3
    //   10: iload_3
    //   11: aload_0
    //   12: invokevirtual 83	com/jingdong/common/utils/JSONArrayPoxy:length	()I
    //   15: if_icmplt +5 -> 20
    //   18: aload_2
    //   19: areturn
    //   20: aload_2
    //   21: new 2	com/jingdong/common/entity/GiftCartInfo
    //   24: dup
    //   25: aload_0
    //   26: iload_3
    //   27: invokevirtual 87	com/jingdong/common/utils/JSONArrayPoxy:getJSONObject	(I)Lcom/jingdong/common/utils/JSONObjectProxy;
    //   30: iload_1
    //   31: invokespecial 89	com/jingdong/common/entity/GiftCartInfo:<init>	(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    //   34: invokevirtual 70	java/util/ArrayList:add	(Ljava/lang/Object;)Z
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
  
  public Double getDiscount()
  {
    return this.discount;
  }
  
  public Integer getDiscountBind()
  {
    return this.discountBind;
  }
  
  public Double getDiscountCurUsed()
  {
    return this.discountCurUsed;
  }
  
  public String getDiscountName()
  {
    try
    {
      String str = this.discount + "元";
      return str;
    }
    catch (Exception localException) {}
    return "";
  }
  
  public Double getDiscountUsed()
  {
    return this.discountUsed;
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
  
  public Double getLeaveMoney()
  {
    return this.leaveMoney;
  }
  
  public String getLeaveMoneyShow()
  {
    if (this.leaveMoney != null) {
      return this.leaveMoney + "元";
    }
    return "";
  }
  
  public String getPin()
  {
    if (this.pin == null) {
      return "";
    }
    return this.pin;
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
  
  public void setDiscount(Double paramDouble)
  {
    this.discount = paramDouble;
  }
  
  public void setDiscountBind(Integer paramInteger)
  {
    this.discountBind = paramInteger;
  }
  
  public void setDiscountCurUsed(Double paramDouble)
  {
    this.discountCurUsed = paramDouble;
  }
  
  public void setDiscountUsed(Double paramDouble)
  {
    this.discountUsed = paramDouble;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setKey(String paramString)
  {
    this.key = paramString;
  }
  
  public void setLeaveMoney(Double paramDouble)
  {
    this.leaveMoney = paramDouble;
  }
  
  public void setModify(boolean paramBoolean)
  {
    this.isModify = paramBoolean;
  }
  
  public void setPin(String paramString)
  {
    this.pin = paramString;
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
      localJSONObject.put("DiscountUsed", getDiscountUsed());
      localJSONObject.put("DiscountBind", getDiscountBind());
      localJSONObject.put("DiscountCurUsed", getDiscountCurUsed());
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
    setDiscountBind(paramJSONObjectProxy.getIntOrNull("DiscountBind"));
    setPin(paramJSONObjectProxy.getStringOrNull("Pin"));
    setKey(paramJSONObjectProxy.getStringOrNull("Key"));
    setDiscountUsed(paramJSONObjectProxy.getDoubleOrNull("DiscountUsed"));
    setLeaveMoney(paramJSONObjectProxy.getDoubleOrNull("LeaveMoney"));
    setSelected(paramJSONObjectProxy.getBooleanOrNull("Selected"));
    setTimeBegin(paramJSONObjectProxy.getStringOrNull("TimeBegin"));
    setDiscount(paramJSONObjectProxy.getDoubleOrNull("Discount"));
    setId(paramJSONObjectProxy.getStringOrNull("Id"));
    setDiscountCurUsed(paramJSONObjectProxy.getDoubleOrNull("DiscountCurUsed"));
    setTimeEnd(paramJSONObjectProxy.getStringOrNull("TimeEnd"));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.GiftCartInfo
 * JD-Core Version:    0.7.0.1
 */