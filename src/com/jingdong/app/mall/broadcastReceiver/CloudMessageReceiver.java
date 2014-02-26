package com.jingdong.app.mall.broadcastReceiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.jingdong.app.mall.utils.NotificationUtils;
import com.jingdong.app.mall.utils.TimeUtils;
import com.jingdong.cloud.msg.util.CommonUtil;
import com.jingdong.common.entity.MessageSummary;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.login.SafetyManager;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.PushMessageUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class CloudMessageReceiver
  extends BroadcastReceiver
{
  private static final String TAG = "CloudMessageReceiver";
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getAction();
    if (TextUtils.isEmpty(str1)) {}
    for (;;)
    {
      return;
      if ("com.jd.msg".equals(str1))
      {
        String str5 = paramIntent.getStringExtra("com.jd.msg");
        for (;;)
        {
          try
          {
            JSONObjectProxy localJSONObjectProxy2 = new JSONObjectProxy(new JSONObject(str5));
            String str6 = SafetyManager.getCookies();
            MessageSummary localMessageSummary = new MessageSummary(localJSONObjectProxy2);
            String str7 = localMessageSummary.getId();
            if ((TextUtils.isEmpty(str7)) || (!str7.contains("_"))) {
              break;
            }
            String str8 = str7.split("_")[0];
            if (TextUtils.isEmpty(str8)) {
              break;
            }
            int i = Integer.parseInt(str8);
            if ((TextUtils.isEmpty(str6)) && (!LoginUserBase.hasLogin()) && (i != 20)) {
              break;
            }
            if (TimeUtils.isPushMsgMuteNow())
            {
              bool = false;
              NotificationUtils.addPushMessageNotify(localMessageSummary, 1, bool);
              return;
            }
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
            return;
          }
          boolean bool = true;
        }
      }
      String str2;
      if ("com.jd.register.action".equals(str1)) {
        str2 = paramIntent.getStringExtra("com.jd.msg");
      }
      try
      {
        JSONObjectProxy localJSONObjectProxy1 = new JSONObjectProxy(new JSONObject(str2));
        if (localJSONObjectProxy1 != null) {
          try
          {
            String str3 = localJSONObjectProxy1.getString("aid");
            if ((str3 != null) && (str3.equals(CommonUtil.getMetaData(paramContext, "JD_PUSH_APPID"))))
            {
              String str4 = localJSONObjectProxy1.getStringOrNull("rid");
              if (str4 == null) {
                str4 = "";
              }
              PushMessageUtils.registerDevice(str4);
              return;
            }
          }
          catch (JSONException localJSONException1) {}
        }
      }
      catch (JSONException localJSONException2)
      {
        label262:
        break label262;
      }
    }
    localJSONException1.printStackTrace();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.broadcastReceiver.CloudMessageReceiver
 * JD-Core Version:    0.7.0.1
 */