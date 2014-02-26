package com.jingdong.app.mall.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.text.TextUtils;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.common.utils.URLParamMap;

public class ForwardActionService
  extends Service
{
  public void killSelf()
  {
    stopSelf();
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
  }
  
  public void onStart(Intent paramIntent, int paramInt)
  {
    super.onStart(paramIntent, paramInt);
    if (paramIntent == null) {}
    String str;
    do
    {
      return;
      str = paramIntent.getStringExtra("a");
    } while (TextUtils.isEmpty(str));
    URLParamMap localURLParamMap = new URLParamMap();
    localURLParamMap.put("to", str);
    CommonUtil.getInstance().forwardWebActivityForAction(this, "to", localURLParamMap);
    killSelf();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.service.ForwardActionService
 * JD-Core Version:    0.7.0.1
 */