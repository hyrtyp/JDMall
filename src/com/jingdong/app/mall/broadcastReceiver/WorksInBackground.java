package com.jingdong.app.mall.broadcastReceiver;

import android.content.Context;
import android.text.TextUtils;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.broadcastReceiver.KillSelfManager;
import com.jingdong.common.database.table.UnExcuteFunctionTable;
import com.jingdong.common.entity.UnExcuteFunction;
import com.jingdong.common.utils.AlarmUtils;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.HttpGroup.OnGroupCompleteListener;
import com.jingdong.common.utils.HttpGroupUtils;
import com.jingdong.common.utils.MessageUtil;
import com.jingdong.common.utils.PushMessageUtils;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class WorksInBackground
{
  private static final String TAG = "WorksInBackground";
  private Context context;
  private boolean isDoneRegMessage = false;
  private boolean isDoneUnExcute = false;
  private boolean isRunUnExcute = true;
  private Object killSelfToken;
  
  public WorksInBackground(Context paramContext)
  {
    this.context = paramContext;
    this.killSelfToken = KillSelfManager.StartKillSelfTimer();
  }
  
  private void close()
  {
    if ((this.isDoneRegMessage & this.isDoneUnExcute)) {
      KillSelfManager.killSelf(this.killSelfToken);
    }
  }
  
  private void doUnExcuteFunctions()
  {
    ArrayList localArrayList = UnExcuteFunctionTable.getUnExcuteFunctionList();
    if (localArrayList.size() < 1)
    {
      this.isDoneUnExcute = true;
      close();
    }
    do
    {
      return;
      try
      {
        MyActivity localMyActivity2 = MyApplication.getInstance().getCurrentMyActivity();
        localMyActivity1 = localMyActivity2;
      }
      catch (Exception localException)
      {
        try
        {
          for (;;)
          {
            Iterator localIterator;
            final UnExcuteFunction localUnExcuteFunction;
            HttpGroup.HttpSetting localHttpSetting;
            String str;
            localHttpSetting.setJsonParams(new JSONObject(str));
            localHttpSetting.setListener(new HttpGroup.OnCommonListener()
            {
              public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
              {
                UnExcuteFunctionTable.deleteUnExcuteFunction(localUnExcuteFunction.getId());
              }
              
              public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
              
              public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
            });
            localHttpGroup.add(localHttpSetting);
            continue;
            localException = localException;
            MyActivity localMyActivity1 = null;
          }
          HttpGroup localHttpGroup = HttpGroupUtils.getHttpGroupaAsynPool();
        }
        catch (JSONException localJSONException)
        {
          break;
        }
      }
      if (localMyActivity1 == null) {
        break label202;
      }
      localHttpGroup = localMyActivity1.getHttpGroupaAsynPool();
      localHttpGroup.setOnGroupCompleteListener(new HttpGroup.OnGroupCompleteListener()
      {
        public void onComplete()
        {
          WorksInBackground.this.isDoneUnExcute = true;
          WorksInBackground.this.close();
        }
      });
      localIterator = localArrayList.iterator();
    } while (!localIterator.hasNext());
    localUnExcuteFunction = (UnExcuteFunction)localIterator.next();
    localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setHost(localUnExcuteFunction.getHost());
    localHttpSetting.setFunctionId(localUnExcuteFunction.getFunctionId());
    if (localUnExcuteFunction.isIfNeedLodingModel()) {
      localHttpSetting.setEffect(1);
    }
    if (localUnExcuteFunction.isIfNeedNotifyUser()) {
      localHttpSetting.setNotifyUser(true);
    }
    str = localUnExcuteFunction.getJsonParams();
    if (TextUtils.isEmpty(str)) {}
  }
  
  public void execute()
  {
    if (CommonUtil.CheckNetWork())
    {
      if (MessageUtil.getMsgMode()) {
        MessageUtil.openMsgService();
      }
      while (this.isRunUnExcute)
      {
        doUnExcuteFunctions();
        return;
        if (TextUtils.isEmpty(PushMessageUtils.getDeviceTokenFromLocal()))
        {
          PushMessageUtils.regPushMessageToken(new HttpGroup.OnCommonListener()
          {
            public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
            {
              AlarmUtils.alarmPushMsgTask(WorksInBackground.this.context, -1L);
              WorksInBackground.this.isDoneRegMessage = true;
              WorksInBackground.this.close();
            }
            
            public void onError(HttpGroup.HttpError paramAnonymousHttpError)
            {
              WorksInBackground.this.isDoneRegMessage = true;
              WorksInBackground.this.close();
            }
            
            public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
          }, null, null);
        }
        else
        {
          AlarmUtils.alarmPushMsgTask(this.context, -1L);
          this.isDoneRegMessage = true;
          close();
        }
      }
      this.isDoneUnExcute = true;
      close();
      return;
    }
    KillSelfManager.killSelf(this.killSelfToken);
  }
  
  public void setRunUnExcute(boolean paramBoolean)
  {
    this.isRunUnExcute = paramBoolean;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.broadcastReceiver.WorksInBackground
 * JD-Core Version:    0.7.0.1
 */