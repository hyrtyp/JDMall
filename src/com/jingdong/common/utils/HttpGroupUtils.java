package com.jingdong.common.utils;

public class HttpGroupUtils
{
  public static HttpGroup getHttpGroupaAsynPool()
  {
    return getHttpGroupaAsynPool(1000);
  }
  
  public static HttpGroup getHttpGroupaAsynPool(int paramInt)
  {
    HttpGroup.HttpGroupSetting localHttpGroupSetting = new HttpGroup.HttpGroupSetting();
    localHttpGroupSetting.setType(paramInt);
    return getHttpGroupaAsynPool(localHttpGroupSetting);
  }
  
  public static HttpGroup getHttpGroupaAsynPool(HttpGroup.HttpGroupSetting paramHttpGroupSetting)
  {
    return new HttpGroup.HttpGroupaAsynPool(paramHttpGroupSetting);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.HttpGroupUtils
 * JD-Core Version:    0.7.0.1
 */