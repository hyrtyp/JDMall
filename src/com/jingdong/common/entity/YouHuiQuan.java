package com.jingdong.common.entity;

import org.json.JSONObject;

public class YouHuiQuan
{
  public JSONObject Coupons;
  private final int DONG_QUAN = 2;
  private final int JING_QUAN = 1;
  private final int LI_PIN_KA = 3;
  public JSONObject LipinKas;
  
  public JSONObject getJingDongQuanDetailInfo(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 1: 
      return jingQuan.jbJingQuanInfo;
    }
    return dongQuan.jbDongQuanInfo;
  }
  
  public int getJingDongQuanTotalCount(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return 0;
    case 1: 
      return jingQuan.nTotalCount;
    }
    return dongQuan.nTotalCount;
  }
  
  public int getJingDongQuanUsedCount(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return -1;
    case 1: 
      return jingQuan.nUsedCount;
    }
    return dongQuan.nUsedCount;
  }
  
  public JSONObject getLiPinKaInfo()
  {
    return liPinKa.jbLiPinKaInfo;
  }
  
  public double getLiPinKaTotalMoney()
  {
    return liPinKa.nTotalBalance;
  }
  
  public double getLiPinKaUsedBalance()
  {
    return liPinKa.nUsedBalance;
  }
  
  public void setJingDongQuanDetailInfo(int paramInt, JSONObject paramJSONObject)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 1: 
      jingQuan.jbJingQuanInfo = paramJSONObject;
    }
    dongQuan.jbDongQuanInfo = paramJSONObject;
  }
  
  public void setJingDongQuanTotalCount(int paramInt1, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return;
    case 1: 
      jingQuan.nTotalCount = paramInt2;
      return;
    }
    dongQuan.nTotalCount = paramInt2;
  }
  
  public void setJingDongQuanUsedCount(int paramInt1, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return;
    case 1: 
      jingQuan.nUsedCount = paramInt2;
      return;
    }
    dongQuan.nUsedCount = paramInt2;
  }
  
  public void setLiPinKaInfo(JSONObject paramJSONObject)
  {
    liPinKa.jbLiPinKaInfo = paramJSONObject;
  }
  
  public void setLiPinKaTotalMoney(double paramDouble)
  {
    liPinKa.nTotalBalance = paramDouble;
  }
  
  public void setLiPinKaUsedBalance(double paramDouble)
  {
    liPinKa.nUsedBalance = paramDouble;
  }
  
  static class dongQuan
  {
    public static JSONObject jbDongQuanInfo;
    public static int nTotalCount = 0;
    public static int nUsedCount = 0;
    
    public dongQuan()
    {
      jbDongQuanInfo = new JSONObject();
    }
  }
  
  static class jingQuan
  {
    public static JSONObject jbJingQuanInfo = null;
    public static int nTotalCount = 0;
    public static int nUsedCount = 0;
    
    public jingQuan()
    {
      jbJingQuanInfo = new JSONObject();
    }
  }
  
  static class liPinKa
  {
    public static JSONObject jbLiPinKaInfo;
    public static double nTotalBalance = 0.0D;
    public static double nUsedBalance = 0.0D;
    
    public liPinKa()
    {
      jbLiPinKaInfo = new JSONObject();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.YouHuiQuan
 * JD-Core Version:    0.7.0.1
 */