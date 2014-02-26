package com.jingdong.common.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.jingdong.cloud.msg.JDPushInterface;
import com.jingdong.cloud.msg.util.SharedPreferenceUtil;
import com.jingdong.common.MyApplication;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.res.StringUtil;

public class MessageUtil
{
  private static Boolean MSG_MODE;
  private static final String TAG = "MessageUtil";
  
  public static void clearMsgData(Context paramContext)
  {
    SharedPreferences.Editor localEditor = CommonUtil.getJdSharedPreferences().edit();
    localEditor.putLong("nextPushMsgTaskTime", 0L);
    localEditor.putBoolean("msg_auto_has_bind", false);
    localEditor.putString("msg_auto_device_token", "");
    localEditor.commit();
    SharedPreferenceUtil.putStringValueByKey(paramContext, "regid", "");
  }
  
  public static void closeMsgService()
  {
    if (!getMsgMode()) {
      return;
    }
    JDPushInterface.stopPush(MyApplication.getInstance().getApplicationContext());
  }
  
  public static boolean getMsgMode()
  {
    if (MSG_MODE == null) {
      MSG_MODE = Configuration.getBooleanProperty("msgMode", Boolean.valueOf(false));
    }
    return MSG_MODE.booleanValue();
  }
  
  public static void openMsgService()
  {
    if (!getMsgMode()) {}
    while (!CommonUtil.getBooleanFromPreference(StringUtil.msg_auto_update_switch_key, Boolean.valueOf(true)).booleanValue()) {
      return;
    }
    try
    {
      JDPushInterface.startPush(MyApplication.getInstance().getApplicationContext(), StatisticsReportUtil.readDeviceUUID());
      return;
    }
    catch (Exception localException) {}
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.MessageUtil
 * JD-Core Version:    0.7.0.1
 */