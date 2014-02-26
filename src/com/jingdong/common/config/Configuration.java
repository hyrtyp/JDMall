package com.jingdong.common.config;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.jingdong.common.utils.CommonUtil;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

public class Configuration
{
  public static final String ALARM_NEED_WAKE_UP = "alarmNeedWakeUp";
  public static final String APPLICATION_SHORTCUT = "applicationShortcut";
  public static final String APPLICATION_UPGRADE = "applicationUpgrade";
  public static final String ATTEMPTS = "attempts";
  public static final String ATTEMPTS_TIME = "attemptsTime";
  public static final String BARCODE_SCAN = "barCodeScan";
  public static final String CBTMODE = "CBTMode";
  public static final String CHECK_NEW_VERSION = "checkNewVersion";
  public static final String CONNECT_TIMEOUT = "connectTimeout";
  public static final String CONNECT_TIMEOUT_FOR_WIFI = "connectTimeoutForWIFI";
  public static final String COST_HINT = "costHint";
  public static final String DEFAULT_FIRST_GET_TOKEN_DELAY = "defaultFirstGetTokenDelay";
  public static final String DEFAULT_PUSH_MESSAGE_ALARM_DELAY = "defaultPushMessageAlarmDelay";
  public static final String DISCUSSUPLOADIMAGE_HEIGHT = "discussUploadImageHeight";
  public static final String DISCUSSUPLOADIMAGE_QUALITY = "discussUploadImageQuality";
  public static final String DISCUSSUPLOADIMAGE_WIDTH = "discussUploadImageWidth";
  public static final String HOST = "host";
  public static final String INIT_FIRST_POOL_SIZE = "initFirstPoolSize";
  public static final String INIT_SECOND_POOL_SIZE = "initSecondPoolSize";
  public static final String INIT_THIRD_POOL_SIZE = "initThirdPoolSize";
  public static final String IS_COOLMART = "isCoolMart";
  public static final String JLOG_VERSION = "JLogVersion";
  public static final String LEAVE_TIME_GAP = "leaveTimeGap";
  public static final String LOCAL_FILE_CACHE = "localFileCache";
  public static final String LOCAL_MEMORY_CACHE = "localMemoryCache";
  public static final String MAX_FIRST_POOL_SIZE = "maxFirstPoolSize";
  public static final String MAX_SECOND_POOL_SIZE = "maxSecondPoolSize";
  public static final String MAX_THIRD_POOL_SIZE = "maxThirdPoolSize";
  public static final String MSG_HOST = "msgHost";
  public static final String M_HOST = "mHost";
  public static final String OTHER_APP = "otherApp";
  public static final String PAI_HOST = "paiHost";
  public static final String PARTNER = "partner";
  public static final String PHOTO_SHUT = "photoShut";
  public static final String PLUG_HOST = "plugHost";
  public static final String PRINT_JLOG = "useJLog";
  public static final String PUSH_MSG_MODE = "msgMode";
  public static final String READ_TIMEOUT = "readTimeout";
  public static final String READ_TIMEOUT_FOR_WIFI = "readTimeoutForWIFI";
  public static final String REQUEST_METHOD = "requestMethod";
  public static final String ROUTINE_CHECK_DELAY_TIME = "routineCheckDelayTime";
  public static final String SUB_UNION_ID = "subunionId";
  public static final String TEST_MODE = "testMode";
  public static final String UNION_ID = "unionId";
  public static final String VOICE_SEARCH_SHUT = "voiseSearchShut";
  private static Map<String, String> localProperties;
  private static Properties properties;
  
  public static Boolean getBooleanProperty(String paramString)
  {
    return getBooleanProperty(paramString, null);
  }
  
  public static Boolean getBooleanProperty(String paramString, Boolean paramBoolean)
  {
    String str = getProperty(paramString);
    if (str == null) {
      return paramBoolean;
    }
    try
    {
      Boolean localBoolean = Boolean.valueOf(str);
      return localBoolean;
    }
    catch (Exception localException) {}
    return paramBoolean;
  }
  
  public static Integer getIntegerProperty(String paramString)
  {
    return getIntegerProperty(paramString, null);
  }
  
  public static Integer getIntegerProperty(String paramString, Integer paramInteger)
  {
    String str = getProperty(paramString);
    if (str == null) {
      return paramInteger;
    }
    try
    {
      Integer localInteger = Integer.valueOf(str);
      return localInteger;
    }
    catch (Exception localException) {}
    return paramInteger;
  }
  
  public static Long getLongProperty(String paramString)
  {
    return getLongProperty(paramString, null);
  }
  
  public static Long getLongProperty(String paramString, Long paramLong)
  {
    String str = getProperty(paramString);
    if (str == null) {
      return paramLong;
    }
    try
    {
      Long localLong = Long.valueOf(str);
      return localLong;
    }
    catch (Exception localException) {}
    return paramLong;
  }
  
  public static Properties getProperties()
  {
    init();
    return properties;
  }
  
  public static String getProperty(String paramString)
  {
    return getProperty(paramString, null);
  }
  
  public static String getProperty(String paramString1, String paramString2)
  {
    init();
    Properties localProperties1 = properties;
    String str = null;
    if (localProperties1 != null) {
      str = properties.getProperty(paramString1);
    }
    if (str == null) {
      str = (String)localProperties.get(paramString1);
    }
    if (str == null) {
      str = paramString2;
    }
    return str;
  }
  
  private static void init()
  {
    if (localProperties != null) {}
    for (;;)
    {
      return;
      localProperties = new HashMap();
      localProperties.put("paiHost", "pai.m.360buy.com");
      localProperties.put("host", "gw.m.360buy.com");
      localProperties.put("mHost", null);
      localProperties.put("plugHost", "jdmps.m.jd.com");
      localProperties.put("msgHost", "jpns.m.360buy.com");
      localProperties.put("connectTimeout", "40000");
      localProperties.put("connectTimeoutForWIFI", "30000");
      localProperties.put("readTimeout", "40000");
      localProperties.put("readTimeoutForWIFI", "30000");
      localProperties.put("attempts", "3");
      localProperties.put("attemptsTime", "0");
      localProperties.put("requestMethod", "post");
      localProperties.put("localMemoryCache", "false");
      localProperties.put("localFileCache", "false");
      localProperties.put("initFirstPoolSize", "5");
      localProperties.put("maxFirstPoolSize", "5");
      localProperties.put("initSecondPoolSize", "3");
      localProperties.put("maxSecondPoolSize", "3");
      localProperties.put("initThirdPoolSize", "3");
      localProperties.put("maxThirdPoolSize", "3");
      localProperties.put("discussUploadImageWidth", "500");
      localProperties.put("discussUploadImageHeight", "500");
      localProperties.put("discussUploadImageQuality", "80");
      localProperties.put("routineCheckDelayTime", "2000");
      localProperties.put("leaveTimeGap", "1800000");
      localProperties.put("defaultFirstGetTokenDelay", "180000");
      localProperties.put("defaultPushMessageAlarmDelay", "600000");
      localProperties.put("testMode", "false");
      localProperties.put("useJLog", "true");
      localProperties.put("JLogVersion", "2");
      localProperties.put("CBTMode", "false");
      localProperties.put("checkNewVersion", "true");
      localProperties.put("otherApp", "true");
      localProperties.put("msgMode", "true");
      localProperties.put("partner", "jingdong");
      localProperties.put("unionId", "50965");
      localProperties.put("subunionId", "jingdong");
      localProperties.put("applicationUpgrade", "true");
      localProperties.put("applicationShortcut", "true");
      localProperties.put("costHint", "false");
      localProperties.put("barCodeScan", "true");
      localProperties.put("photoShut", "false");
      localProperties.put("voiseSearchShut", "false");
      localProperties.put("isCoolMart", "false");
      try
      {
        InputStream localInputStream = Configuration.class.getClassLoader().getResourceAsStream("config.properties");
        if (localInputStream != null)
        {
          properties = new Properties();
          properties.load(localInputStream);
          return;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }
  
  public static boolean setHostProperty(String paramString1, String paramString2)
  {
    init();
    CommonUtil.getJdSharedPreferences().edit().putString(paramString1, paramString2).commit();
    properties.setProperty(paramString1, paramString2);
    return true;
  }
  
  public static void setTestModeProperty(Boolean paramBoolean)
  {
    
    if (paramBoolean.booleanValue()) {
      properties.setProperty("testMode", "true");
    }
    for (;;)
    {
      CommonUtil.getJdSharedPreferences().edit().putBoolean("testMode", paramBoolean.booleanValue()).commit();
      return;
      properties.setProperty("testMode", "false");
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.config.Configuration
 * JD-Core Version:    0.7.0.1
 */