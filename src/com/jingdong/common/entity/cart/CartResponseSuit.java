package com.jingdong.common.entity.cart;

import com.jingdong.common.entity.Pack;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.util.ArrayList;

public class CartResponseSuit
  extends CartPackSummary
{
  private String addMoney;
  private ArrayList<CartResponseGift> canSelectGifts;
  private Integer canSelectedGiftNum;
  private Integer checkType;
  private String discount;
  private String name;
  private Integer needMoney;
  private Integer point;
  private String price;
  private String priceShow;
  private String rePrice;
  private Boolean selectedGift;
  private String suitTip;
  
  public CartResponseSuit(JSONObjectProxy paramJSONObjectProxy, String paramString)
  {
    super(paramJSONObjectProxy);
    setName(paramJSONObjectProxy.getStringOrNull("Name"));
    setNeedMoney(paramJSONObjectProxy.getIntOrNull("NeedMoney"));
    setNum(paramJSONObjectProxy.getIntOrNull("Num"));
    setRePrice(paramJSONObjectProxy.getStringOrNull("RePrice"));
    setPrice(paramJSONObjectProxy.getStringOrNull("Price"));
    setsType(paramJSONObjectProxy.getStringOrNull("SType"));
    setDiscount(paramJSONObjectProxy.getStringOrNull("Discount"));
    setPackId(paramJSONObjectProxy.getStringOrNull("Id"));
    setPriceShow(paramJSONObjectProxy.getStringOrNull("PriceShow"));
    setSuitTip(paramJSONObjectProxy.getStringOrNull("STip"));
    setSelectedGift(paramJSONObjectProxy.getBooleanOrNull("SelectedGift"));
    setPoint(paramJSONObjectProxy.getIntOrNull("Point"));
    setAddMoney(paramJSONObjectProxy.getStringOrNull("AddMoney"));
    setCanSelectedGiftNum(paramJSONObjectProxy.getIntOrNull("CanSelectedGiftNum"));
    setCheckType(paramJSONObjectProxy.getIntOrNull("CheckType"));
    JSONArrayPoxy localJSONArrayPoxy1 = paramJSONObjectProxy.getJSONArrayOrNull("Skus");
    int k;
    JSONArrayPoxy localJSONArrayPoxy2;
    int j;
    label231:
    JSONArrayPoxy localJSONArrayPoxy3;
    if ((localJSONArrayPoxy1 != null) && (localJSONArrayPoxy1.length() > 0))
    {
      this.skus = new ArrayList();
      k = 0;
      if (k < localJSONArrayPoxy1.length()) {}
    }
    else
    {
      localJSONArrayPoxy2 = paramJSONObjectProxy.getJSONArrayOrNull("Gifts");
      if ((localJSONArrayPoxy2 != null) && (localJSONArrayPoxy2.length() > 0))
      {
        this.gifts = new ArrayList();
        j = 0;
        if (j < localJSONArrayPoxy2.length()) {
          break label324;
        }
      }
      localJSONArrayPoxy3 = paramJSONObjectProxy.getJSONArrayOrNull("CanSelectGifts");
      if ((localJSONArrayPoxy3 != null) && (localJSONArrayPoxy3.length() > 0)) {
        this.canSelectGifts = new ArrayList();
      }
    }
    for (int i = 0;; i++)
    {
      if (i >= localJSONArrayPoxy3.length())
      {
        return;
        JSONObjectProxy localJSONObjectProxy3 = localJSONArrayPoxy1.getJSONObjectOrNull(k);
        if (localJSONObjectProxy3 != null) {
          this.skus.add(new CartResponseSku(localJSONObjectProxy3, paramString));
        }
        k++;
        break;
        label324:
        JSONObjectProxy localJSONObjectProxy2 = localJSONArrayPoxy2.getJSONObjectOrNull(j);
        if (localJSONObjectProxy2 != null) {
          this.gifts.add(new CartResponseGift(localJSONObjectProxy2, paramString));
        }
        j++;
        break label231;
      }
      JSONObjectProxy localJSONObjectProxy1 = localJSONArrayPoxy3.getJSONObjectOrNull(i);
      if (localJSONObjectProxy1 != null) {
        this.canSelectGifts.add(new CartResponseGift(localJSONObjectProxy1, paramString));
      }
    }
  }
  
  public String getAddMoney()
  {
    if (this.addMoney == null) {
      return "";
    }
    return this.addMoney;
  }
  
  public ArrayList<CartResponseGift> getCanSelectGifts()
  {
    return this.canSelectGifts;
  }
  
  public Integer getCanSelectedGiftNum()
  {
    if (this.canSelectedGiftNum == null) {
      return Integer.valueOf(0);
    }
    return this.canSelectedGiftNum;
  }
  
  public Integer getCheckType()
  {
    if (this.checkType == null) {
      this.checkType = Integer.valueOf(0);
    }
    return this.checkType;
  }
  
  public String getDiscount()
  {
    if (this.discount == null) {
      return "";
    }
    return this.discount;
  }
  
  public String getName()
  {
    if (this.name == null) {
      return "";
    }
    return this.name;
  }
  
  public Integer getNeedMoney()
  {
    if (this.needMoney == null) {
      return Integer.valueOf(0);
    }
    return this.needMoney;
  }
  
  public Integer getNum()
  {
    if (this.num == null) {
      return Integer.valueOf(0);
    }
    return this.num;
  }
  
  public Integer getPoint()
  {
    if (this.point == null) {
      return Integer.valueOf(0);
    }
    return this.point;
  }
  
  public String getPrice()
  {
    if (this.price == null) {
      return "";
    }
    return this.price;
  }
  
  public String getPriceShow()
  {
    if (this.priceShow == null) {
      return "";
    }
    return this.priceShow;
  }
  
  public String getRePrice()
  {
    if (this.rePrice == null) {
      return "";
    }
    return this.rePrice;
  }
  
  public Boolean getSelectedGift()
  {
    if (this.selectedGift == null) {
      this.selectedGift = Boolean.valueOf(false);
    }
    return this.selectedGift;
  }
  
  public String getSuitId()
  {
    return super.getPackId();
  }
  
  public String getSuitTip()
  {
    if (this.suitTip == null) {
      return "";
    }
    return this.suitTip;
  }
  
  public String getSuitType()
  {
    return super.getsType();
  }
  
  public boolean isChecked()
  {
    return -1 + getCheckType().intValue() == 0;
  }
  
  public void setAddMoney(String paramString)
  {
    this.addMoney = paramString;
  }
  
  public void setCanSelectGifts(ArrayList<CartResponseGift> paramArrayList)
  {
    this.canSelectGifts = paramArrayList;
  }
  
  public void setCanSelectedGiftNum(Integer paramInteger)
  {
    this.canSelectedGiftNum = paramInteger;
  }
  
  public void setCheckType(Integer paramInteger)
  {
    this.checkType = paramInteger;
  }
  
  public void setDiscount(String paramString)
  {
    this.discount = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setNeedMoney(Integer paramInteger)
  {
    this.needMoney = paramInteger;
  }
  
  public void setNum(Integer paramInteger)
  {
    this.num = paramInteger;
  }
  
  public void setPoint(Integer paramInteger)
  {
    this.point = paramInteger;
  }
  
  public void setPrice(String paramString)
  {
    this.price = paramString;
  }
  
  public void setPriceShow(String paramString)
  {
    this.priceShow = paramString;
  }
  
  public void setRePrice(String paramString)
  {
    this.rePrice = paramString;
  }
  
  public void setSelectedGift(Boolean paramBoolean)
  {
    this.selectedGift = paramBoolean;
  }
  
  public void setSuitTip(String paramString)
  {
    this.suitTip = paramString;
  }
  
  public Pack toPack()
  {
    Pack localPack = super.toPack();
    localPack.setName(this.name);
    return localPack;
  }
  
  public String toString()
  {
    return "CartResponseSuit [canSelectGifts=" + this.canSelectGifts + ", addMoney=" + this.addMoney + ", canSelectedGiftNum=" + this.canSelectedGiftNum + ", name=" + this.name + ", needMoney=" + this.needMoney + ", rePrice=" + this.rePrice + ", price=" + this.price + ", discount=" + this.discount + ", priceShow=" + this.priceShow + ", point=" + this.point + ", suitTip=" + this.suitTip + ", selectedGift=" + this.selectedGift + ", skus=" + this.skus + ", gifts=" + this.gifts + ", packId=" + this.packId + ", num=" + this.num + ", sType=" + this.sType + "]";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.cart.CartResponseSuit
 * JD-Core Version:    0.7.0.1
 */