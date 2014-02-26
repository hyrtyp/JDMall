package com.jingdong.common.entity;

public class CommAddr
{
  public static final String COMMON_ADDR_TABLE_NAME = "comm_addr";
  public static final String TB_COLUMN_AREA = "area";
  public static final String TB_COLUMN_AREA_CODE = "areacode";
  public static final String TB_COLUMN_CITY = "city";
  public static final String TB_COLUMN_CITY_CODE = "citycode";
  public static final String TB_COLUMN_MAIL = "mail";
  public static final String TB_COLUMN_MOBILE = "mobile";
  public static final String TB_COLUMN_PROVINCE = "province";
  public static final String TB_COLUMN_PROVINCE_CODE = "provincecode";
  public static final String TB_COLUMN_USER_NAME = "user_name";
  public static final String TB_COLUMN_WHERE = "swhere";
  public static final String TB_COLUMN_ZIP = "zip";
  public int area_code;
  public int city_code;
  public Boolean isChecked = Boolean.valueOf(false);
  public int province_code;
  public String sArea;
  public String sCity;
  public String sComUsedAddr;
  public String sMail;
  public String sMobile;
  public String sProvince;
  public String sUser_name;
  public String sWhere;
  public String sZip;
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.CommAddr
 * JD-Core Version:    0.7.0.1
 */