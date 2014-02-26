package com.jingdong.common.entity;

public class CartTable
{
  public int buyCount;
  public String name;
  public long packId;
  public long productCode;
  public String sourceType;
  public String sourceValue;
  
  public CartTable() {}
  
  public CartTable(String paramString1, long paramLong, int paramInt, String paramString2, String paramString3)
  {
    this.productCode = paramLong;
    this.name = paramString1;
    this.buyCount = paramInt;
    this.sourceType = paramString2;
    this.sourceValue = paramString3;
  }
  
  public CartTable(String paramString1, long paramLong1, int paramInt, String paramString2, String paramString3, long paramLong2)
  {
    this.productCode = paramLong1;
    this.name = paramString1;
    this.buyCount = paramInt;
    this.sourceType = paramString2;
    this.sourceValue = paramString3;
    this.packId = paramLong2;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.CartTable
 * JD-Core Version:    0.7.0.1
 */