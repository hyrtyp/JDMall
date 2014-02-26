package com.jingdong.cloud.msg.configuration;

import com.jingdong.cloud.msg.util.Log;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

public class Configuration
{
  public static final String DEBUG_LOG = "debugLog";
  public static final String ERROR_LOG = "errorLog";
  public static final String INFO_LOG = "infoLog";
  public static final String PRINT_LOG = "printLog";
  public static final String TEST_MODE = "testmode";
  public static final String VIEW_LOG = "viewLog";
  public static final String WARN_LOG = "warnLog";
  private static Map<String, String> localProperties = new HashMap();
  private static Properties properties;
  
  static
  {
    localProperties.put("printLog", "true");
    localProperties.put("debugLog", "true");
    localProperties.put("viewLog", "true");
    localProperties.put("errorLog", "true");
    localProperties.put("infoLog", "true");
    localProperties.put("warnLog", "true");
    localProperties.put("testmode", "false");
    try
    {
      InputStream localInputStream = Configuration.class.getClassLoader().getResourceAsStream("config.properties");
      if (localInputStream != null)
      {
        properties = new Properties();
        properties.load(localInputStream);
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public static String getProperty(String paramString1, String paramString2)
  {
    Properties localProperties1 = properties;
    String str = null;
    if (localProperties1 != null)
    {
      str = properties.getProperty(paramString1);
      Log.d("tag:" + paramString1 + "=", "properties.getProperty(key)");
    }
    if (str == null)
    {
      str = (String)localProperties.get(paramString1);
      Log.d("tag:" + paramString1 + "=", "localProperties.get(key)");
    }
    if (str == null)
    {
      str = paramString2;
      Log.d("tag:" + paramString1 + "=", "result = defaultValue");
    }
    return str;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.cloud.msg.configuration.Configuration
 * JD-Core Version:    0.7.0.1
 */