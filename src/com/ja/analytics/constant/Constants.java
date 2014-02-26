package com.ja.analytics.constant;

public class Constants
{
  public static final int CLEAR_SESSION_ID = 257;
  public static final String CONFIGURATION_ADDRESS = "http://jma.man.jcloud.com/maengine/jmasdkservice/sdkdata/boot/configuration";
  public static final String DURATION_SHARE_PREFERENCE = "__duration_preference";
  public static boolean ISAPPKEY_VALIDE = false;
  public static final String JD_LOCATION_SHARE_PREFERENCE = "__jd_location_preference";
  public static final String JD_MOB_SHARE_PREFERENCE = "__jd_mob_preference";
  public static final String KEY_FIRST_TIME = "firstStartTime";
  public static final String KEY_GPS_TIME = "last_terminate_location_time";
  public static final String KEY_PROTOCOL_HEADER = "protocolHeader";
  public static final String KEY_SESSION_COUNT = "sessionCount";
  public static final int MAX_LOG_DATA_NUM = 5;
  public static final String OFFLINE_LOG_ADDRESS = "http://jma.man.jcloud.com/maengine/jmalog/receiveMobileAppLog.action";
  public static final String ONLINE_ERRORLOG_ADDRESS = "http://jma.man.jcloud.com/maengine/jmalog/receiveExceptionLog.action";
  public static int SEND_INTERVAL = 0;
  public static boolean SEND_INTERVAL_STRATEGY = false;
  public static boolean SEND_STRATEGY = false;
  public static final String SESSION_COUNTER_ADDRESS = "http://jma.man.jcloud.com/maengine/jmadata/RealTimeAnalysis";
  public static final String SESSION_SHARE_PREFERENCE = "__jd_sdk_Session";
  public static final String SESSION_TIME_ADDRESS = "http://jma.man.jcloud.com/maengine/jmadata/RealTimeTimeLength";
  public static final String URI_EXCEPTION = "jma/mobile/log/receiveMobileAppExceptionLog.action";
  public static final String URL_REALTIME = "jma/JmaData/RealTimeAnalysis";
  
  static
  {
    SEND_INTERVAL = 30000;
    SEND_STRATEGY = false;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.analytics.constant.Constants
 * JD-Core Version:    0.7.0.1
 */