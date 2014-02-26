package com.ja.analytics.utils;

public class NetUtils4SDK4
{
  private static NetUtils4SDK4 instance = new NetUtils4SDK4();
  
  public static NetUtils4SDK4 getInstance()
  {
    return instance;
  }
  
  public String getNetworkTypeName(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "UNKNOWN";
    case 8: 
      return "HSDPA";
    case 9: 
      return "HSUPA";
    }
    return "HSPA";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.analytics.utils.NetUtils4SDK4
 * JD-Core Version:    0.7.0.1
 */