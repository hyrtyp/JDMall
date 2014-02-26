package com.jingdong.common.entity;

public class JdTradeProduct
{
  protected int count;
  protected String sJdPrice;
  protected String sProdID;
  protected String sProdName;
  
  public void addCount()
  {
    this.count = (1 + this.count);
  }
  
  public int getCount()
  {
    if (this.count < 0) {
      return 0;
    }
    return this.count;
  }
  
  public String getProdID()
  {
    if (this.sProdID == null) {
      return "";
    }
    return this.sProdID;
  }
  
  public String getProdName()
  {
    if (this.sProdName == null) {
      return "";
    }
    return this.sProdName;
  }
  
  public String getProdPrice()
  {
    if (this.sJdPrice == null) {
      return "";
    }
    return this.sJdPrice;
  }
  
  public void setProdID(String paramString)
  {
    this.sProdID = paramString;
  }
  
  public void setProdName(String paramString)
  {
    this.sProdName = paramString;
  }
  
  public void setProdPrice(String paramString)
  {
    this.sJdPrice = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.JdTradeProduct
 * JD-Core Version:    0.7.0.1
 */