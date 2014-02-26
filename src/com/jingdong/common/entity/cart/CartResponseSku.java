package com.jingdong.common.entity.cart;

import com.jingdong.common.entity.Product;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;

public class CartResponseSku
  extends CartSkuSummary
  implements Serializable, Cloneable
{
  private static final long serialVersionUID = 7690790213860205809L;
  private Integer awardType;
  private Integer checkType;
  private String discount;
  private String imageDomail;
  private String imgUrl;
  private ArrayList<CartResponseGift> mustGifts;
  private String name;
  private Integer point;
  private String price;
  private String priceImg;
  private String priceShow;
  private String rePrice;
  private ArrayList<Tag> tags;
  private Integer targetId;
  private ArrayList<CartResonseYB> ybCanSelectedCategorys;
  private ArrayList<CartResonseYBSelected> ybSkus;
  
  public CartResponseSku(JSONObjectProxy paramJSONObjectProxy, String paramString)
  {
    super(paramJSONObjectProxy);
    this.imageDomail = paramString;
    setName(paramJSONObjectProxy.getStringOrNull("Name"));
    setAwardType(paramJSONObjectProxy.getIntOrNull("AwardType"));
    setPriceImg(paramJSONObjectProxy.getStringOrNull("PriceImg"));
    setTargetId(paramJSONObjectProxy.getIntOrNull("targetId"));
    setPriceShow(paramJSONObjectProxy.getStringOrNull("PriceShow"));
    setImgUrl(paramJSONObjectProxy.getStringOrNull("ImgUrl"));
    setCheckType(paramJSONObjectProxy.getIntOrNull("CheckType"));
    setRePrice(paramJSONObjectProxy.getStringOrNull("RePrice"));
    setPrice(paramJSONObjectProxy.getStringOrNull("Price"));
    setDiscount(paramJSONObjectProxy.getStringOrNull("Discount"));
    setPoint(paramJSONObjectProxy.getIntOrNull("Point"));
    JSONArrayPoxy localJSONArrayPoxy1 = paramJSONObjectProxy.getJSONArrayOrNull("Tags");
    if ((localJSONArrayPoxy1 != null) && (localJSONArrayPoxy1.length() > 0)) {
      this.tags = new ArrayList();
    }
    JSONArrayPoxy localJSONArrayPoxy2 = paramJSONObjectProxy.getJSONArrayOrNull("YbSkus");
    int k;
    JSONArrayPoxy localJSONArrayPoxy3;
    int j;
    label229:
    JSONArrayPoxy localJSONArrayPoxy4;
    if ((localJSONArrayPoxy2 != null) && (localJSONArrayPoxy2.length() > 0))
    {
      this.ybSkus = new ArrayList();
      k = 0;
      if (k < localJSONArrayPoxy2.length()) {}
    }
    else
    {
      localJSONArrayPoxy3 = paramJSONObjectProxy.getJSONArrayOrNull("CanSelectYB");
      if ((localJSONArrayPoxy3 != null) && (localJSONArrayPoxy3.length() > 0))
      {
        this.ybCanSelectedCategorys = new ArrayList();
        j = 0;
        if (j < localJSONArrayPoxy3.length()) {
          break label323;
        }
      }
      localJSONArrayPoxy4 = paramJSONObjectProxy.getJSONArrayOrNull("Gifts");
      if ((localJSONArrayPoxy4 != null) && (localJSONArrayPoxy4.length() > 0)) {
        this.mustGifts = new ArrayList();
      }
    }
    for (int i = 0;; i++)
    {
      if (i >= localJSONArrayPoxy4.length())
      {
        return;
        JSONObjectProxy localJSONObjectProxy3 = localJSONArrayPoxy2.getJSONObjectOrNull(k);
        if (localJSONObjectProxy3 != null) {
          this.ybSkus.add(new CartResonseYBSelected(localJSONObjectProxy3, paramString));
        }
        k++;
        break;
        label323:
        JSONObjectProxy localJSONObjectProxy2 = localJSONArrayPoxy3.getJSONObjectOrNull(j);
        if (localJSONObjectProxy2 != null) {
          this.ybCanSelectedCategorys.add(new CartResonseYB(localJSONObjectProxy2));
        }
        j++;
        break label229;
      }
      JSONObjectProxy localJSONObjectProxy1 = localJSONArrayPoxy4.getJSONObjectOrNull(i);
      if (localJSONObjectProxy1 != null) {
        this.mustGifts.add(new CartResponseGift(localJSONObjectProxy1, paramString));
      }
    }
  }
  
  protected Object clone()
    throws CloneNotSupportedException
  {
    return super.clone();
  }
  
  public Integer getAwardType()
  {
    if (this.awardType == null) {
      return Integer.valueOf(0);
    }
    return this.awardType;
  }
  
  public Integer getCheckType()
  {
    if (this.checkType == null) {
      return Integer.valueOf(0);
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
  
  public String getImgUrl()
  {
    if (this.imgUrl == null) {
      return "";
    }
    if (this.imgUrl.startsWith("http://")) {
      return this.imgUrl;
    }
    if (this.imageDomail == null) {
      this.imageDomail = "";
    }
    return this.imageDomail + this.imgUrl;
  }
  
  public ArrayList<CartResponseGift> getMustGifts()
  {
    return this.mustGifts;
  }
  
  public String getName()
  {
    if (this.name == null) {
      return "";
    }
    return this.name;
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
  
  public String getPriceImg()
  {
    if (this.priceImg == null) {
      return "";
    }
    return this.priceImg;
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
  
  public ArrayList<Tag> getTags()
  {
    return this.tags;
  }
  
  public Integer getTargetId()
  {
    if (this.targetId == null) {
      return Integer.valueOf(0);
    }
    return this.targetId;
  }
  
  public ArrayList<CartResonseYB> getYbCanSelectedCategorys()
  {
    return this.ybCanSelectedCategorys;
  }
  
  public ArrayList<CartResonseYBSelected> getYbSkus()
  {
    return this.ybSkus;
  }
  
  public boolean isChecked()
  {
    return -1 + getCheckType().intValue() == 0;
  }
  
  public void setAwardType(Integer paramInteger)
  {
    this.awardType = paramInteger;
  }
  
  public void setCheckType(Integer paramInteger)
  {
    this.checkType = paramInteger;
  }
  
  public void setDiscount(String paramString)
  {
    this.discount = paramString;
  }
  
  public void setImgUrl(String paramString)
  {
    this.imgUrl = paramString;
  }
  
  public void setMustGifts(ArrayList<CartResponseGift> paramArrayList)
  {
    this.mustGifts = paramArrayList;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setPoint(Integer paramInteger)
  {
    this.point = paramInteger;
  }
  
  public void setPrice(String paramString)
  {
    this.price = paramString;
  }
  
  public void setPriceImg(String paramString)
  {
    this.priceImg = paramString;
  }
  
  public void setPriceShow(String paramString)
  {
    this.priceShow = paramString;
  }
  
  public void setRePrice(String paramString)
  {
    this.rePrice = paramString;
  }
  
  public void setTags(ArrayList<Tag> paramArrayList)
  {
    this.tags = paramArrayList;
  }
  
  public void setTargetId(Integer paramInteger)
  {
    this.targetId = paramInteger;
  }
  
  public void setYbCanSelectedCategorys(ArrayList<CartResonseYB> paramArrayList)
  {
    this.ybCanSelectedCategorys = paramArrayList;
  }
  
  public void setYbCategorys(ArrayList<CartResonseYBSelected> paramArrayList)
  {
    this.ybSkus = paramArrayList;
  }
  
  public Product toProduct()
  {
    Product localProduct = super.toProduct();
    localProduct.setName(this.name);
    return localProduct;
  }
  
  public String toString()
  {
    return "CartResponseSku [awardType=" + this.awardType + ", priceImg=" + this.priceImg + ", targetId=" + this.targetId + ", priceShow=" + this.priceShow + ", name=" + this.name + ", tags=" + this.tags + ", ybCategorys=" + this.ybSkus + ", ybSelectedCategorys=" + this.ybCanSelectedCategorys + ", imgUrl=" + this.imgUrl + ", checkType=" + this.checkType + ", rePrice=" + this.rePrice + ", price=" + this.price + ", discount=" + this.discount + ", point=" + this.point + ", skuId=" + this.skuId + ", num=" + this.num + "]";
  }
  
  public class Tag
    implements Serializable
  {
    private Integer tag;
    
    public Tag(Integer paramInteger)
    {
      this.tag = paramInteger;
    }
    
    public Integer getTag()
    {
      if (this.tag == null) {
        return Integer.valueOf(0);
      }
      return this.tag;
    }
    
    public void setTag(Integer paramInteger)
    {
      this.tag = paramInteger;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.cart.CartResponseSku
 * JD-Core Version:    0.7.0.1
 */