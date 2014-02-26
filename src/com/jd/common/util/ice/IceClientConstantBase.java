package com.jd.common.util.ice;

public class IceClientConstantBase
{
  public static final int CONNECT_TIMEOUT = 5000;
  public static final String HELPER_CLASS_METHOD_NAME = "uncheckedCast";
  public static final String HELPER_CLASS_NAME = "Helper";
  public static final String TOKEN = "token";
  private String configFile;
  private String propertyName;
  private String proxyName;
  private String token;
  private String url;
  
  public String getConfigFile()
  {
    return this.configFile;
  }
  
  public String getPropertyName()
  {
    return this.propertyName;
  }
  
  public String getProxyName()
  {
    return this.proxyName;
  }
  
  public String getToken()
  {
    return this.token;
  }
  
  public String getUrl()
  {
    return this.url;
  }
  
  public void setConfigFile(String paramString)
  {
    this.configFile = paramString;
  }
  
  public void setPropertyName(String paramString)
  {
    this.propertyName = paramString;
  }
  
  public void setProxyName(String paramString)
  {
    this.proxyName = paramString;
  }
  
  public void setToken(String paramString)
  {
    this.token = paramString;
  }
  
  public void setUrl(String paramString)
  {
    this.url = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.util.ice.IceClientConstantBase
 * JD-Core Version:    0.7.0.1
 */