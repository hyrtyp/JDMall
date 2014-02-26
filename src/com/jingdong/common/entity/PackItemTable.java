package com.jingdong.common.entity;

public class PackItemTable
{
  public static final String TB_CLOUMN_BUY_COUNT = "buyCount";
  public static final String TB_CLOUMN_EXTEND = "extendProt";
  public static final String TB_CLOUMN_PACKS_CODE = "packId";
  public static final String TB_CLOUMN_PRODUCT_CODE = "productCode";
  public static final String TB_CLOUMN_PRODUCT_NAME = "name";
  public static final String TB_CLOUMN_USER_NAME = "userName";
  public static final String TB_PACK_ITEM = "PackItemTable";
  public int buyCount;
  public String name;
  public long packId;
  public long productCode;
  
  public PackItemTable() {}
  
  public PackItemTable(String paramString, long paramLong, int paramInt)
  {
    this.productCode = paramLong;
    this.name = paramString;
    this.buyCount = paramInt;
  }
  
  public PackItemTable(String paramString, long paramLong1, int paramInt, long paramLong2)
  {
    this.productCode = paramLong1;
    this.name = paramString;
    this.buyCount = paramInt;
    this.packId = paramLong2;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.PackItemTable
 * JD-Core Version:    0.7.0.1
 */