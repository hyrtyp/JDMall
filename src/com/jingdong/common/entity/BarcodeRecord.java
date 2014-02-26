package com.jingdong.common.entity;

import java.io.Serializable;

public class BarcodeRecord
  implements Serializable
{
  private static final long serialVersionUID = -8631766404071371818L;
  private String content;
  private String format;
  private Product product;
  private String productName = "查询中...";
  
  public String getContent()
  {
    return this.content;
  }
  
  public String getFormat()
  {
    return this.format;
  }
  
  public Product getProduct()
  {
    return this.product;
  }
  
  public String getProductName()
  {
    if (this.product != null) {
      return this.product.getName();
    }
    return this.productName;
  }
  
  public void setContent(String paramString)
  {
    this.content = paramString;
  }
  
  public void setFormat(String paramString)
  {
    this.format = paramString;
  }
  
  public void setProduct(Product paramProduct)
  {
    this.product = paramProduct;
  }
  
  public void setProductName(String paramString)
  {
    this.productName = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.BarcodeRecord
 * JD-Core Version:    0.7.0.1
 */