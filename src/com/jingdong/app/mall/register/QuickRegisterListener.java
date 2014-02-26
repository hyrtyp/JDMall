package com.jingdong.app.mall.register;

import android.view.View;
import android.view.View.OnClickListener;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JSONObjectProxy;
import org.json.JSONException;

public abstract class QuickRegisterListener
  implements View.OnClickListener
{
  public QuickRegisterStatusListener listener;
  public MyActivity myactivity;
  
  public QuickRegisterListener(QuickRegisterStatusListener paramQuickRegisterStatusListener, MyActivity paramMyActivity)
  {
    this.listener = paramQuickRegisterStatusListener;
    this.myactivity = paramMyActivity;
  }
  
  public abstract boolean checkInputs();
  
  public abstract String getPhone();
  
  public void onClick(View paramView)
  {
    if (!checkInputs()) {
      return;
    }
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.putJsonParam("mobileNum", getPhone());
    localHttpSetting.setNotifyUser(true);
    localHttpSetting.setFunctionId("regMobileNum");
    localHttpSetting.setListener(new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        paramAnonymousHttpResponse.getCode();
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        if (!localJSONObjectProxy.isNull("success")) {
          try
          {
            String str2 = localJSONObjectProxy.getString("success");
            QuickRegisterListener.this.listener.onSuccess(str2);
            return;
          }
          catch (JSONException localJSONException2)
          {
            localJSONException2.printStackTrace();
            return;
          }
        }
        try
        {
          String str1 = localJSONObjectProxy.getString("message");
          QuickRegisterListener.this.listener.onFailed(str1);
          return;
        }
        catch (JSONException localJSONException1)
        {
          localJSONException1.printStackTrace();
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        QuickRegisterListener.this.listener.onFailed("发送失败,请重试!");
      }
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    this.myactivity.getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  public static abstract interface QuickRegisterStatusListener
  {
    public abstract void onFailed(String paramString);
    
    public abstract void onSuccess(String paramString);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.register.QuickRegisterListener
 * JD-Core Version:    0.7.0.1
 */