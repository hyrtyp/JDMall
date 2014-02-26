package com.jingdong.common.entity;

import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.util.ArrayList;

public class OrderCommodity
{
  private static final String SYMBOL_AFFIX = "[附件]";
  public static final String SYMBOL_EMPTY = "-";
  private static final String SYMBOL_GIFT = "[赠品]";
  public static final String SYMBOL_STOCK_NO = "无货";
  public static final String SYMBOL_STOCK_YES = "现货";
  public static final int TYPE_GIFT_CHOOSE = 16;
  public static final int TYPE_GIFT_MUST_AFFIX = 5;
  public static final int TYPE_GIFT_MUST_DONG = 3;
  public static final int TYPE_GIFT_MUST_JING = 0;
  public static final int TYPE_GIFT_MUST_SKU = 2;
  public static final int TYPE_PACK_COMMON = 4;
  public static final int TYPE_PORDUCT_COMMON = 1;
  public static final int TYPE_PORDUCT_UNKNOW = -1;
  public static final int TYPE_PRODUCT_FULL_CUT = 11;
  public static final int TYPE_PRODUCT_FULL_GIVE = 13;
  public static final int TYPE_YANBAO = 8;
  private static int colorIntGray = -7829368;
  private static int colorIntRed = -65536;
  private String desc;
  private ArrayList<OrderCommodityGift> gifts;
  private String id;
  private String imageDomain;
  private String imageUrl;
  private String jdPrice;
  private String name;
  private String num;
  private String point;
  private String rePrice;
  private String stockStatus;
  private Integer type;
  
  public OrderCommodity(JSONObjectProxy paramJSONObjectProxy, String paramString)
  {
    try
    {
      this.imageDomain = paramString;
      setId(paramJSONObjectProxy.getStringOrNull("id"));
      setImageUrl(paramJSONObjectProxy.getStringOrNull("imageUrl"));
      setJdPrice(paramJSONObjectProxy.getStringOrNull("jdPrice"));
      setName(paramJSONObjectProxy.getStringOrNull("name"));
      setNum(paramJSONObjectProxy.getStringOrNull("num"));
      setPoint(paramJSONObjectProxy.getStringOrNull("point"));
      setRePrice(paramJSONObjectProxy.getStringOrNull("rePrice"));
      setStockStatus(paramJSONObjectProxy.getStringOrNull("stockStatus"));
      setType(paramJSONObjectProxy.getIntOrNull("type"));
      setGifts(OrderCommodityGift.toList(paramJSONObjectProxy.getJSONArrayOrNull("gifts")));
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  private CharSequence makeSpannableStringBuilder(String paramString, ForegroundColorSpan paramForegroundColorSpan)
  {
    if (paramString == null) {
      return null;
    }
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(paramString);
    localSpannableStringBuilder.setSpan(paramForegroundColorSpan, 0, paramString.length(), 33);
    return localSpannableStringBuilder;
  }
  
  public static ArrayList<OrderCommodity> toList(JSONArrayPoxy paramJSONArrayPoxy, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramJSONArrayPoxy == null) {}
    for (;;)
    {
      return localArrayList;
      for (int i = 0; i < paramJSONArrayPoxy.length(); i++)
      {
        JSONObjectProxy localJSONObjectProxy = paramJSONArrayPoxy.getJSONObjectOrNull(i);
        if (localJSONObjectProxy != null) {
          localArrayList.add(new OrderCommodity(localJSONObjectProxy, paramString));
        }
      }
    }
  }
  
  public String getDesc()
  {
    if (this.desc == null) {
      return "";
    }
    return this.desc;
  }
  
  public CharSequence getGiftDesc()
  {
    int i = this.gifts.size();
    ArrayList localArrayList = this.gifts;
    SpannableStringBuilder localSpannableStringBuilder1 = null;
    int j;
    if (localArrayList != null)
    {
      localSpannableStringBuilder1 = null;
      if (i > 0)
      {
        localSpannableStringBuilder1 = new SpannableStringBuilder();
        j = 0;
        if (j < i) {
          break label44;
        }
      }
    }
    return localSpannableStringBuilder1;
    label44:
    if (j > 0) {
      localSpannableStringBuilder1.append("\n");
    }
    OrderCommodityGift localOrderCommodityGift = (OrderCommodityGift)this.gifts.get(j);
    if (localOrderCommodityGift.getType().intValue() == 5)
    {
      SpannableStringBuilder localSpannableStringBuilder2 = new SpannableStringBuilder("[附件]");
      localSpannableStringBuilder2.setSpan(new ForegroundColorSpan(colorIntRed), 0, "[附件]".length(), 33);
      localSpannableStringBuilder1.append(localSpannableStringBuilder2);
    }
    for (;;)
    {
      localSpannableStringBuilder1.append(" ");
      localSpannableStringBuilder1.append(localOrderCommodityGift.getName());
      localSpannableStringBuilder1.append(" ");
      String str = localOrderCommodityGift.getNum() + localOrderCommodityGift.getDesc();
      SpannableStringBuilder localSpannableStringBuilder3 = new SpannableStringBuilder(str);
      localSpannableStringBuilder3.setSpan(new ForegroundColorSpan(colorIntRed), 0, str.length(), 33);
      localSpannableStringBuilder1.append(localSpannableStringBuilder3);
      j++;
      break;
      SpannableStringBuilder localSpannableStringBuilder4 = new SpannableStringBuilder("[赠品]");
      localSpannableStringBuilder4.setSpan(new ForegroundColorSpan(colorIntRed), 0, "[赠品]".length(), 33);
      localSpannableStringBuilder1.append(localSpannableStringBuilder4);
    }
  }
  
  public ArrayList<OrderCommodityGift> getGifts()
  {
    if (this.gifts == null) {
      return new ArrayList();
    }
    return this.gifts;
  }
  
  public String getId()
  {
    if (this.id == null) {
      return "";
    }
    return this.id;
  }
  
  public String getImageUrl()
  {
    if (this.imageUrl == null) {
      return "";
    }
    if (this.imageUrl.startsWith("http://")) {
      return this.imageUrl;
    }
    if (this.imageDomain == null) {
      this.imageDomain = "";
    }
    return this.imageDomain + this.imageUrl;
  }
  
  public CharSequence getJdPrice()
  {
    if ((TextUtils.isEmpty(this.jdPrice)) || (TextUtils.equals(this.jdPrice, "-"))) {
      return "";
    }
    if (isNoStock()) {
      return makeSpannableStringBuilder(this.jdPrice, new ForegroundColorSpan(colorIntGray));
    }
    return this.jdPrice;
  }
  
  public CharSequence getName()
  {
    if (this.name == null) {
      return "";
    }
    if (isNoStock()) {
      return makeSpannableStringBuilder(this.name + getDesc(), new ForegroundColorSpan(colorIntGray));
    }
    return this.name;
  }
  
  public CharSequence getNum()
  {
    if (this.num == null) {
      return "";
    }
    if (isNoStock()) {
      return makeSpannableStringBuilder(this.num, new ForegroundColorSpan(colorIntGray));
    }
    return this.num;
  }
  
  public String getPoint()
  {
    if (this.point == null) {
      return "";
    }
    return this.point;
  }
  
  public String getRePrice()
  {
    if (this.rePrice == null) {
      return "";
    }
    return this.rePrice;
  }
  
  public String getStockStatus()
  {
    if (this.stockStatus == null) {
      return "";
    }
    return this.stockStatus;
  }
  
  public Integer getType()
  {
    if (this.type == null) {
      return Integer.valueOf(-1);
    }
    return this.type;
  }
  
  public boolean isNoStock()
  {
    return TextUtils.equals(getStockStatus(), "无货");
  }
  
  public void setDesc(String paramString)
  {
    this.desc = paramString;
  }
  
  public void setGifts(ArrayList<OrderCommodityGift> paramArrayList)
  {
    this.gifts = paramArrayList;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setImageUrl(String paramString)
  {
    this.imageUrl = paramString;
  }
  
  public void setJdPrice(String paramString)
  {
    this.jdPrice = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setNum(String paramString)
  {
    this.num = paramString;
  }
  
  public void setPoint(String paramString)
  {
    this.point = paramString;
  }
  
  public void setRePrice(String paramString)
  {
    this.rePrice = paramString;
  }
  
  public void setStockStatus(String paramString)
  {
    this.stockStatus = paramString;
  }
  
  public void setType(Integer paramInteger)
  {
    this.type = paramInteger;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.OrderCommodity
 * JD-Core Version:    0.7.0.1
 */