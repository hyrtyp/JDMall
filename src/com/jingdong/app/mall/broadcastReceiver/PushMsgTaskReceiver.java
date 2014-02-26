package com.jingdong.app.mall.broadcastReceiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.text.TextUtils;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.NotificationUtils;
import com.jingdong.app.mall.utils.TimeUtils;
import com.jingdong.common.broadcastReceiver.KillSelfManager;
import com.jingdong.common.database.table.PushMessageTable;
import com.jingdong.common.entity.BaseMessage;
import com.jingdong.common.entity.MessageSummary;
import com.jingdong.common.utils.AlarmUtils;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MessageUtil;
import com.jingdong.common.utils.PushMessageUtils;
import java.util.ArrayList;
import org.json.JSONException;

public class PushMsgTaskReceiver
  extends BroadcastReceiver
{
  public static final String TAG = "PushMessageReceiver";
  private Handler handler = new Handler();
  private int needNotifySize = 1;
  
  private void getUnreadMessages(Context paramContext, final Object paramObject)
  {
    PushMessageUtils.getAllUnReadMessageIds(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        ArrayList localArrayList1 = new ArrayList();
        JSONArrayPoxy localJSONArrayPoxy = localJSONObjectProxy.getJSONArrayOrNull("msgIds");
        int i;
        if ((localJSONArrayPoxy != null) && (localJSONArrayPoxy.length() > 0)) {
          i = 0;
        }
        for (;;)
        {
          Long localLong1;
          Long localLong2;
          if (i >= localJSONArrayPoxy.length())
          {
            PushMessageUtils.saveUnReadMsgIds(localJSONObjectProxy.toString());
            localJSONObjectProxy.getLongOrNull("issued");
            localLong1 = localJSONObjectProxy.getLongOrNull("issued");
            if (localLong1 != null) {
              break label227;
            }
            localLong2 = Long.valueOf(AlarmUtils.getDefaultDelay());
            label82:
            SharedPreferences localSharedPreferences = CommonUtil.getJdSharedPreferences();
            if (localSharedPreferences != null)
            {
              SharedPreferences.Editor localEditor = localSharedPreferences.edit();
              localEditor.putLong("nextPushMsgTaskDelayTime", localLong2.longValue());
              localEditor.commit();
            }
            final ArrayList localArrayList2 = PushMessageUtils.initNotfyWithMessageList(localArrayList1);
            PushMsgTaskReceiver.this.needNotifySize = localArrayList2.size();
            if (PushMsgTaskReceiver.this.needNotifySize <= 0) {
              break label244;
            }
            String str = ((BaseMessage)localArrayList2.get(-1 + PushMsgTaskReceiver.this.needNotifySize)).getMsgId();
            if (TextUtils.isEmpty(str)) {
              KillSelfManager.killSelf(paramObject);
            }
            PushMessageUtils.getMessageSummaryWithMsgId(str, new HttpGroup.OnCommonListener()
            {
              public void onEnd(HttpGroup.HttpResponse paramAnonymous2HttpResponse)
              {
                try
                {
                  PushMessageTable.insertNotifyMessages(localArrayList2);
                  label7:
                  JSONArrayPoxy localJSONArrayPoxy = paramAnonymous2HttpResponse.getJSONObject().getJSONArrayOrNull("msgList");
                  if ((localJSONArrayPoxy != null) && (localJSONArrayPoxy.length() > 0))
                  {
                    final JSONObjectProxy localJSONObjectProxy = localJSONArrayPoxy.getJSONObjectOrNull(0);
                    if (localJSONObjectProxy != null)
                    {
                      PushMsgTaskReceiver.this.handler.post(new Runnable()
                      {
                        public void run()
                        {
                          MessageSummary localMessageSummary = new MessageSummary(localJSONObjectProxy);
                          int i = PushMsgTaskReceiver.this.needNotifySize;
                          if (TimeUtils.isPushMsgMuteNow()) {}
                          for (boolean bool = false;; bool = true)
                          {
                            NotificationUtils.addPushMessageNotify(localMessageSummary, i, bool);
                            PushMessageUtils.sendNotiftyMessageLog(localMessageSummary, this.val$needNotifys, new HttpGroup.OnCommonListener()
                            {
                              public void onEnd(HttpGroup.HttpResponse paramAnonymous4HttpResponse)
                              {
                                KillSelfManager.killSelf(this.val$killSelfToken);
                              }
                              
                              public void onError(HttpGroup.HttpError paramAnonymous4HttpError)
                              {
                                KillSelfManager.killSelf(this.val$killSelfToken);
                              }
                              
                              public void onReady(HttpGroup.HttpSettingParams paramAnonymous4HttpSettingParams) {}
                            });
                            return;
                          }
                        }
                      });
                      return;
                    }
                    KillSelfManager.killSelf(this.val$killSelfToken);
                    return;
                  }
                  KillSelfManager.killSelf(this.val$killSelfToken);
                  return;
                }
                catch (Throwable localThrowable)
                {
                  break label7;
                }
              }
              
              public void onError(HttpGroup.HttpError paramAnonymous2HttpError)
              {
                KillSelfManager.killSelf(this.val$killSelfToken);
              }
              
              public void onReady(HttpGroup.HttpSettingParams paramAnonymous2HttpSettingParams) {}
            });
          }
          try
          {
            localArrayList1.add(localJSONArrayPoxy.getString(i));
            label221:
            i++;
            continue;
            label227:
            localLong2 = Long.valueOf(1000L * localLong1.longValue());
            break label82;
            label244:
            KillSelfManager.killSelf(paramObject);
            return;
          }
          catch (JSONException localJSONException)
          {
            break label221;
          }
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        KillSelfManager.killSelf(paramObject);
      }
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    });
  }
  
  public void onReceive(final Context paramContext, Intent paramIntent)
  {
    if (MessageUtil.getMsgMode()) {
      return;
    }
    final Object localObject = KillSelfManager.StartKillSelfTimer();
    if (!CommonUtil.getJdSharedPreferences().getBoolean("msg_auto_update_switch", true))
    {
      KillSelfManager.killSelf(localObject);
      return;
    }
    this.needNotifySize = 1;
    AlarmUtils.alarmPushMsgTask(paramContext, -1L);
    if (TimeUtils.isPushMsgMuteNow())
    {
      KillSelfManager.killSelf(localObject);
      return;
    }
    if (!TextUtils.isEmpty(PushMessageUtils.getDeviceTokenFromLocal()))
    {
      getUnreadMessages(paramContext, localObject);
      return;
    }
    PushMessageUtils.regPushMessageToken(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        PushMsgTaskReceiver.this.getUnreadMessages(paramContext, localObject);
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    }, null, null);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.broadcastReceiver.PushMsgTaskReceiver
 * JD-Core Version:    0.7.0.1
 */