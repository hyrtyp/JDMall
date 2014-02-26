package com.jingdong.common.entity;

public class PacksTable
{
  public int buyCount;
  public int childCount;
  public long mainSkuId;
  public String name;
  public long packId;
  public long productCode;
  public String sourceType;
  public String sourceValue;
  
  public PacksTable() {}
  
  public PacksTable(long paramLong, String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3)
  {
    this.childCount = paramInt2;
    this.name = paramString1;
    this.buyCount = paramInt1;
    this.packId = paramLong;
    this.sourceType = paramString2;
    this.sourceValue = paramString3;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.PacksTable
 * JD-Core Version:    0.7.0.1
 */