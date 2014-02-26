package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.constant.Constants;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

public class Pack
  implements Serializable
{
  public static final int CART = 1;
  private static final String CONST_NO_PRICE = "暂无报价";
  public static final int PACKS = 0;
  private static final long serialVersionUID = 1L;
  private String discount;
  private String finalPrice;
  private List<Product> giftList = new ArrayList();
  private Long id;
  private Long mainId;
  private Product mainProduct;
  private String mainSkuName;
  private String mainSkuPicUrl;
  private String name;
  private Integer num;
  private String originalPrice;
  private Long point;
  private Integer productCount;
  private List<Product> productList = new ArrayList();
  private String rePrice;
  private SourceEntity sourceEntity;
  private Integer suitType;
  
  public Pack() {}
  
  public Pack(JSONObjectProxy paramJSONObjectProxy, int paramInt, Object[] paramArrayOfObject)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      setId(paramJSONObjectProxy.getLongOrNull("PackId"));
      setMainId(paramJSONObjectProxy.getLongOrNull("MainSkuId"));
      setMainSkuName(paramJSONObjectProxy.getStringOrNull("MainSkuName"));
      setName(paramJSONObjectProxy.getStringOrNull("PackName"));
      setNum(paramJSONObjectProxy.getIntOrNull("Num"));
      setRePrice(paramJSONObjectProxy.getStringOrNull("RePrice"));
      setMainSkuPicUrl(paramJSONObjectProxy.getStringOrNull("MainSkuPicUrl"));
      setOriginalPrice(paramJSONObjectProxy.getStringOrNull("PackListPrice"));
      setFinalPrice(paramJSONObjectProxy.getStringOrNull("PackPrice"));
      setDiscount(paramJSONObjectProxy.getStringOrNull("Discount"));
      setProductList(Product.toList(paramJSONObjectProxy.getJSONArrayOrNull("ProductList"), 24, paramArrayOfObject));
      addProduct(new Product(paramJSONObjectProxy, 25, paramArrayOfObject), true);
      return;
    }
    setId(paramJSONObjectProxy.getLongOrNull("Id"));
    setName(paramJSONObjectProxy.getStringOrNull("Name"));
    setNum(paramJSONObjectProxy.getIntOrNull("Num"));
    setOriginalPrice(paramJSONObjectProxy.getStringOrNull("Price"));
    setFinalPrice(paramJSONObjectProxy.getStringOrNull("PriceShow"));
    setPoint(paramJSONObjectProxy.getLongOrNull("Point"));
    setSuitType(paramJSONObjectProxy.getIntOrNull("SuitType"));
    setDiscount(paramJSONObjectProxy.getStringOrNull("Discount"));
    setProductList(Product.toList(paramJSONObjectProxy.getJSONArrayOrNull("Skus"), 9, paramArrayOfObject));
    setGiftList(Product.toList(paramJSONObjectProxy.getJSONArrayOrNull("Gifts"), 9, paramArrayOfObject));
  }
  
  /* Error */
  public static ArrayList<Pack> toList(com.jingdong.common.utils.JSONArrayPoxy paramJSONArrayPoxy, int paramInt, Object[] paramArrayOfObject)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: aconst_null
    //   7: astore_3
    //   8: new 48	java/util/ArrayList
    //   11: dup
    //   12: invokespecial 49	java/util/ArrayList:<init>	()V
    //   15: astore 4
    //   17: iconst_0
    //   18: istore 5
    //   20: iload 5
    //   22: aload_0
    //   23: invokevirtual 176	com/jingdong/common/utils/JSONArrayPoxy:length	()I
    //   26: if_icmplt +6 -> 32
    //   29: aload 4
    //   31: areturn
    //   32: aload 4
    //   34: new 2	com/jingdong/common/entity/Pack
    //   37: dup
    //   38: aload_0
    //   39: iload 5
    //   41: invokevirtual 180	com/jingdong/common/utils/JSONArrayPoxy:getJSONObject	(I)Lcom/jingdong/common/utils/JSONObjectProxy;
    //   44: iload_1
    //   45: aload_2
    //   46: invokespecial 181	com/jingdong/common/entity/Pack:<init>	(Lcom/jingdong/common/utils/JSONObjectProxy;I[Ljava/lang/Object;)V
    //   49: invokevirtual 185	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   52: pop
    //   53: iinc 5 1
    //   56: goto -36 -> 20
    //   59: astore 6
    //   61: aload 6
    //   63: invokevirtual 188	org/json/JSONException:printStackTrace	()V
    //   66: aload_3
    //   67: areturn
    //   68: astore 6
    //   70: aload 4
    //   72: astore_3
    //   73: goto -12 -> 61
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	76	0	paramJSONArrayPoxy	com.jingdong.common.utils.JSONArrayPoxy
    //   0	76	1	paramInt	int
    //   0	76	2	paramArrayOfObject	Object[]
    //   7	66	3	localObject	Object
    //   15	56	4	localArrayList	ArrayList
    //   18	36	5	i	int
    //   59	3	6	localJSONException1	org.json.JSONException
    //   68	1	6	localJSONException2	org.json.JSONException
    // Exception table:
    //   from	to	target	type
    //   8	17	59	org/json/JSONException
    //   20	29	68	org/json/JSONException
    //   32	53	68	org/json/JSONException
  }
  
  public void addNum(int paramInt)
  {
    this.num = Integer.valueOf(paramInt + getNum().intValue());
  }
  
  public void addProduct(Product paramProduct, boolean paramBoolean)
  {
    if (paramBoolean) {
      setMainProduct(paramProduct);
    }
    this.productList.add(paramProduct);
    setProductCount(Integer.valueOf(getProductCount().intValue() + paramProduct.getNum().intValue()));
  }
  
  public String getDiscount()
  {
    String str = "暂无报价";
    try
    {
      if (this.discount != null) {
        str = this.discount;
      }
      return str;
    }
    catch (Exception localException) {}
    return str;
  }
  
  public String getFinalPrice()
  {
    return this.finalPrice;
  }
  
  public List<Product> getGiftList()
  {
    return this.giftList;
  }
  
  public Long getId()
  {
    return this.id;
  }
  
  public Long getMainId()
  {
    return this.mainId;
  }
  
  public Product getMainProduct()
  {
    return this.mainProduct;
  }
  
  public String getMainSkuName()
  {
    return this.mainSkuName;
  }
  
  public String getMainSkuPicUrl()
  {
    return this.mainSkuPicUrl;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public Integer getNum()
  {
    if ((this.num == null) || (this.num.intValue() == 0)) {
      return Integer.valueOf(1);
    }
    return this.num;
  }
  
  public String getOriginalPrice()
  {
    return this.originalPrice;
  }
  
  public Long getPoint()
  {
    return this.point;
  }
  
  public String getPriceForAfterDiscount()
  {
    Object localObject = "暂无报价";
    try
    {
      if (!TextUtils.isEmpty(this.finalPrice)) {
        return this.finalPrice;
      }
      float f = Float.valueOf(this.originalPrice).floatValue() - Float.valueOf(this.discount).floatValue();
      if (f > 0.0F)
      {
        String str = Constants.REN_MIN_BI + new DecimalFormat("0.00").format(f);
        localObject = str;
      }
    }
    catch (Exception localException) {}
    return localObject;
  }
  
  public Integer getProductCount()
  {
    if ((this.productList != null) && (!this.productList.isEmpty())) {
      return Integer.valueOf(this.productList.size());
    }
    return this.productCount;
  }
  
  public List<Product> getProductList()
  {
    return this.productList;
  }
  
  public String getRePrice()
  {
    return this.rePrice;
  }
  
  public Pack getSimpleClone()
  {
    Pack localPack = new Pack();
    localPack.setId(getId());
    localPack.setName(getName());
    localPack.setNum(getNum());
    localPack.setDiscount(getDiscount());
    localPack.setRePrice(getRePrice());
    localPack.setPoint(getPoint());
    localPack.setProductCount(getProductCount());
    localPack.setSourceEntity(getSourceEntity());
    return localPack;
  }
  
  public SourceEntity getSourceEntity()
  {
    return this.sourceEntity;
  }
  
  public Integer getSuitType()
  {
    return this.suitType;
  }
  
  public void setDiscount(String paramString)
  {
    this.discount = paramString;
  }
  
  public void setFinalPrice(String paramString)
  {
    this.finalPrice = paramString;
  }
  
  public void setGiftList(List<Product> paramList)
  {
    this.giftList = paramList;
  }
  
  public void setId(Long paramLong)
  {
    this.id = paramLong;
  }
  
  public void setMainId(Long paramLong)
  {
    this.mainId = paramLong;
  }
  
  public void setMainProduct(Product paramProduct)
  {
    this.mainProduct = paramProduct;
  }
  
  public void setMainSkuName(String paramString)
  {
    this.mainSkuName = paramString;
  }
  
  public void setMainSkuPicUrl(String paramString)
  {
    this.mainSkuPicUrl = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setNum(Integer paramInteger)
  {
    this.num = paramInteger;
  }
  
  public void setOriginalPrice(String paramString)
  {
    this.originalPrice = paramString;
  }
  
  public void setPoint(Long paramLong)
  {
    this.point = paramLong;
  }
  
  public void setProductCount(Integer paramInteger)
  {
    this.productCount = paramInteger;
  }
  
  public void setProductList(List<Product> paramList)
  {
    this.productList = paramList;
  }
  
  public void setRePrice(String paramString)
  {
    this.rePrice = paramString;
  }
  
  public void setSourceEntity(SourceEntity paramSourceEntity)
  {
    this.sourceEntity = paramSourceEntity;
  }
  
  public void setSuitType(Integer paramInteger)
  {
    this.suitType = paramInteger;
  }
  
  public String toString()
  {
    return "Pack [discount=" + this.discount + ", finalPrice=" + this.finalPrice + ", giftList=" + this.giftList + ", id=" + this.id + ", mainProduct=" + this.mainProduct + ", name=" + this.name + ", num=" + this.num + ", originalPrice=" + this.originalPrice + ", point=" + this.point + ", productCount=" + this.productCount + ", productList=" + this.productList + ", rePrice=" + this.rePrice + ", suitType=" + this.suitType + "]";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.Pack
 * JD-Core Version:    0.7.0.1
 */