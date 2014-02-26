package com.jingdong.cloud.msg;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.jingdong.cloud.msg.entity.LoginState;
import com.jingdong.cloud.msg.service.JDReceiveMsgService;
import com.jingdong.cloud.msg.util.CommonUtil;
import com.jingdong.cloud.msg.util.Log;
import com.jingdong.cloud.msg.util.SharedPreferenceUtil;

public final class JDPushInterface
{
  public static final String EXTRA_PUSH_ERROR_ACTION = "com.jd.msg.error";
  public static final String EXTRA_PUSH_MSG_ACTION = "com.jd.msg";
  public static final String EXTRA_PUSH_NOT_LOGIN_ACTION = "com.jd.msg.not.login";
  public static final String EXTRA_PUSH_REGISTER_ID_ACTION = "com.jd.register.action";
  public static final String EXTRA_PUSH_TAG_ACTION = "com.jd.msg.tag";
  private static final String TAG = JDPushInterface.class.getSimpleName();
  
  public static void addTag(Context paramContext, String paramString)
  {
    Log.i(TAG, "Add tags; tags = " + paramString);
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    PushService.getInstance().addTag(paramContext, paramString);
  }
  
  public static void removeTag(Context paramContext, String paramString)
  {
    Log.i(TAG, "Remove tags; tags = " + paramString);
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    PushService.getInstance().removeTag(paramContext, paramString);
  }
  
  public static void startPush(Context paramContext, String paramString)
  {
    if (paramContext == null) {}
    do
    {
      return;
      SharedPreferenceUtil.putStringValueByKey(paramContext, "jd.cloud.uuid", paramString);
      if (!CommonUtil.isServiceRunning(paramContext))
      {
        Log.i(TAG, "PUSH service is not running now, try to start it...");
        paramContext.startService(new Intent(paramContext, JDReceiveMsgService.class));
        Log.i(TAG, "Succeed to start PUSH service!");
        return;
      }
    } while (!Log.D);
    Log.d(TAG, "PUSH service is running now.");
  }
  
  public static void stopPush(Context paramContext)
  {
    if (paramContext == null) {
      return;
    }
    Log.i(TAG, "Close heartbeat service.");
    JDReceiveMsgService.isNeedLive = false;
    PushSocketProtocol.openOrCloseHeartBeat(paramContext, false);
    LoginState.setHasLogin(false);
    PushSocket.closeConnect();
    Intent localIntent = new Intent(paramContext, JDReceiveMsgService.class);
    Log.i(TAG, "Try to stop PUSH service.");
    paramContext.stopService(localIntent);
    Log.i(TAG, "Succeed to stop PUSH service!");
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.cloud.msg.JDPushInterface
 * JD-Core Version:    0.7.0.1
 */