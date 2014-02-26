package com.jingdong.app.mall.utils;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import com.jingdong.app.mall.MainFrameActivity;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.app.mall.WebActivityLandscape;
import com.jingdong.app.mall.home.NewHomeActivity;
import com.jingdong.app.mall.login.LoginActivity;
import com.jingdong.app.mall.personel.MyOrderInfoListActivity;
import com.jingdong.app.mall.personel.MyOrderListActivity;
import com.jingdong.app.mall.utils.ui.DialogController;
import com.jingdong.common.constant.Constants;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.frame.IResumeListener;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.service.MessagePullService;
import com.jingdong.common.utils.CommonBase;
import com.jingdong.common.utils.CommonBase.BrowserUrlListener;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpGroupSetting;
import com.jingdong.common.utils.HttpGroup.HttpGroupaAsynPool;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.PushMessageUtils;
import com.jingdong.common.utils.URLParamMap;
import com.jingdong.common.utils.UserUtil;
import com.unionpay.upomp.bypay.activity.SplashActivity;
import com.unionpay.upomp.bypay.util.UPOMP;
import com.unionpay.upomp.bypay.util.Utils;
import org.json.JSONException;
import org.json.JSONObject;

public final class CommonUtil
  extends CommonBase
{
  private static final String TAG = "CommonUtil";
  private static CommonUtil commonUtil;
  private static long lastToClientTimeMillis;
  private static String mAction = "";
  
  public static CommonUtil getInstance()
  {
    if (commonUtil == null) {
      commonUtil = new CommonUtil();
    }
    return commonUtil;
  }
  
  public static String getString(int paramInt)
  {
    return MyApplication.getInstance().getResources().getString(paramInt);
  }
  
  public static void toBrowserInFrame(MyActivity paramMyActivity, String paramString, URLParamMap paramURLParamMap)
  {
    if (paramMyActivity == null) {
      return;
    }
    queryBrowserUrl(paramString, paramURLParamMap, new CommonBase.BrowserUrlListener()
    {
      public void onComplete(final String paramAnonymousString)
      {
        CommonUtil.this.post(new Runnable()
        {
          public void run()
          {
            if (this.val$activity == null) {
              return;
            }
            Intent localIntent = new Intent(this.val$activity, WebActivity.class);
            localIntent.putExtra("url", paramAnonymousString);
            localIntent.putExtra("com.360buy:clearHistoryFlag", true);
            this.val$activity.startActivityInFrame(localIntent);
          }
        });
      }
    });
  }
  
  public void backToHomePage(Context paramContext)
  {
    MainFrameActivity localMainFrameActivity = (MainFrameActivity)goToMainFrameActivity(paramContext, MainFrameActivity.class);
    if (localMainFrameActivity != null) {
      localMainFrameActivity.toHomeActivity();
    }
  }
  
  public boolean checkSDKForPay()
  {
    int i = 7;
    try
    {
      int j = Integer.parseInt(Build.VERSION.SDK);
      i = j;
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        final DialogController local1;
        localThrowable.printStackTrace();
      }
    }
    if (i < 7)
    {
      local1 = new DialogController()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          switch (paramAnonymousInt)
          {
          default: 
            return;
          }
          MyActivity localMyActivity = MyApplication.getInstance().getCurrentMyActivity();
          ((MainFrameActivity)localMyActivity.getParent()).finish();
          Intent localIntent = new Intent(localMyActivity, MyOrderListActivity.class);
          ((MainFrameActivity)localMyActivity.getParent()).startSubActivity(localIntent);
        }
      };
      local1.setTitle(MyApplication.getInstance().getString(2131165609));
      local1.setMessage(MyApplication.getInstance().getString(2131166181));
      local1.setNeutralButton(MyApplication.getInstance().getString(2131165517));
      local1.init(MyApplication.getInstance().getCurrentMyActivity());
      MyApplication.getInstance().getCurrentMyActivity().post(new Runnable()
      {
        public void run()
        {
          local1.show();
        }
      });
      return false;
    }
    return true;
  }
  
  public void doPay(final String paramString)
  {
    Utils.setPackageName(MyApplication.getInstance().getPackageName());
    UPOMP.init();
    final MyActivity localMyActivity = MyApplication.getInstance().getCurrentMyActivity();
    final Intent localIntent = new Intent(localMyActivity, SplashActivity.class);
    Bundle localBundle = new Bundle();
    localBundle.putString("xml", paramString);
    localIntent.putExtras(localBundle);
    localMyActivity.addResumeListener(new IResumeListener()
    {
      public void onResume()
      {
        localMyActivity.removeResumeListener(this);
        String str = UPOMP.getPayResult();
        if ((str != null) && (str.contains("<respCode>0000</respCode>")))
        {
          MyActivity localMyActivity = MyApplication.getInstance().getCurrentMyActivity();
          Intent localIntent = new Intent(localMyActivity, MyOrderInfoListActivity.class);
          localIntent.putExtra("functionId", "allOrdersFunctionList");
          localIntent.putExtra("title", localMyActivity.getString(2131166344));
          localIntent.putExtra("from", "pay");
          ((MainFrameActivity)localMyActivity.getParent()).startSubActivity(localIntent);
          return;
        }
        final DialogController local1 = new DialogController()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            switch (paramAnonymous2Int)
            {
            default: 
              return;
            }
            CommonUtil.this.doPay(this.val$xml);
          }
        };
        local1.setTitle(MyApplication.getInstance().getString(2131165609));
        local1.setMessage(MyApplication.getInstance().getString(2131166180));
        local1.setPositiveButton(MyApplication.getInstance().getString(2131165603));
        local1.setNegativeButton(MyApplication.getInstance().getString(2131165604));
        local1.init(localMyActivity);
        localMyActivity.post(new Runnable()
        {
          public void run()
          {
            local1.show();
          }
        });
      }
    });
    localMyActivity.post(new Runnable()
    {
      public void run()
      {
        localMyActivity.startActivity(localIntent);
      }
    });
  }
  
  public void forwardWebActivity(IMyActivity paramIMyActivity, String paramString)
  {
    forwardWebActivity(paramIMyActivity, paramString, new URLParamMap(), false);
  }
  
  public void forwardWebActivity(final IMyActivity paramIMyActivity, String paramString, URLParamMap paramURLParamMap)
  {
    queryBrowserUrl(paramString, paramURLParamMap, new CommonBase.BrowserUrlListener()
    {
      public void onComplete(String paramAnonymousString)
      {
        Intent localIntent = new Intent(paramIMyActivity.getThisActivity(), WebActivity.class);
        localIntent.putExtra("url", paramAnonymousString);
        localIntent.setFlags(268435456);
        localIntent.putExtra("isFromNF", true);
        paramIMyActivity.getThisActivity().startActivity(localIntent);
      }
    });
  }
  
  public void forwardWebActivity(final IMyActivity paramIMyActivity, String paramString, URLParamMap paramURLParamMap, final boolean paramBoolean)
  {
    queryBrowserUrl(paramString, paramURLParamMap, new CommonBase.BrowserUrlListener()
    {
      public void onComplete(final String paramAnonymousString)
      {
        paramIMyActivity.post(new Runnable()
        {
          public void run()
          {
            Intent localIntent = new Intent(this.val$myActivity.getThisActivity(), WebActivity.class);
            if (this.val$needCleanHistory) {
              localIntent.putExtra("com.360buy:clearHistoryFlag", true);
            }
            localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
            localIntent.putExtra("url", paramAnonymousString);
            this.val$myActivity.startActivityInFrame(localIntent);
          }
        });
      }
    });
  }
  
  public void forwardWebActivity(final IMyActivity paramIMyActivity, String paramString1, final String paramString2, final boolean paramBoolean, final String paramString3)
  {
    paramIMyActivity.post(new Runnable()
    {
      public void run()
      {
        Intent localIntent = new Intent(paramIMyActivity.getThisActivity(), WebActivityLandscape.class);
        if (paramBoolean) {
          localIntent.putExtra("com.360buy:clearHistoryFlag", true);
        }
        localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
        localIntent.putExtra("url", paramString2);
        localIntent.setFlags(268435456);
        if (TextUtils.equals(paramString3, "screen_land"))
        {
          localIntent.putExtra("orientation", paramString3);
          localIntent.putExtra("isFromGame", true);
        }
        MyApplication.getInstance().startActivity(localIntent);
      }
    });
  }
  
  public void forwardWebActivityForAction(final Context paramContext, String paramString, URLParamMap paramURLParamMap)
  {
    queryBrowserUrl(paramString, paramURLParamMap, new CommonBase.BrowserUrlListener()
    {
      public void onComplete(String paramAnonymousString)
      {
        Intent localIntent = new Intent(paramContext, WebActivity.class);
        localIntent.putExtra("url", paramAnonymousString);
        localIntent.setFlags(268435456);
        localIntent.putExtra("isFromNF", true);
        paramContext.startActivity(localIntent);
      }
    });
  }
  
  public void forwardWebActivityWithWidget(IMyActivity paramIMyActivity, String paramString)
  {
    if (paramString == null) {}
    MyActivity localMyActivity;
    do
    {
      return;
      localMyActivity = MyApplication.getInstance().getCurrentMyActivity();
      if (!(localMyActivity instanceof WebActivity)) {
        break;
      }
    } while (mAction.equals(paramString));
    ((WebActivity)localMyActivity).stopLoading();
    mAction = paramString;
    forwardWebActivity(paramIMyActivity, paramString, new URLParamMap(), true);
  }
  
  public void goToShoppingCartPage(Context paramContext, boolean paramBoolean)
  {
    MainFrameActivity localMainFrameActivity = (MainFrameActivity)goToMainFrameActivity(paramContext, MainFrameActivity.class);
    if (localMainFrameActivity != null) {
      localMainFrameActivity.toShoppingCart(paramBoolean);
    }
  }
  
  public void sendCustomBroadcast(Context paramContext, int paramInt)
  {
    Intent localIntent = new Intent("com.360buy.interfaceBroadcastReceiver");
    localIntent.setFlags(32);
    Bundle localBundle = new Bundle();
    localBundle.putInt("moduleId", paramInt);
    localIntent.putExtras(localBundle);
    paramContext.sendBroadcast(localIntent);
  }
  
  public void startActivityInFrame(Context paramContext, Intent paramIntent)
  {
    MainFrameActivity localMainFrameActivity = (MainFrameActivity)getInstance().goToMainFrameActivity(paramContext, MainFrameActivity.class);
    if (localMainFrameActivity != null) {
      localMainFrameActivity.startSubActivity(paramIntent);
    }
  }
  
  public void toClient(final String paramString)
  {
    if (System.currentTimeMillis() - lastToClientTimeMillis < 3000L) {
      return;
    }
    lastToClientTimeMillis = System.currentTimeMillis();
    HttpGroup.HttpGroupSetting localHttpGroupSetting = new HttpGroup.HttpGroupSetting();
    localHttpGroupSetting.setType(1000);
    localHttpGroupSetting.setMyActivity(MyApplication.getInstance().getCurrentMyActivity());
    final HttpGroup.HttpGroupaAsynPool localHttpGroupaAsynPool = new HttpGroup.HttpGroupaAsynPool(localHttpGroupSetting);
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setNotifyUser(true);
    localHttpSetting.setFunctionId("getToken");
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject().getJSONObjectOrNull("tokenValue");
        String str1;
        if (localJSONObjectProxy != null)
        {
          str1 = localJSONObjectProxy.getStringOrNull("action");
          if (str1 != null) {
            break label26;
          }
        }
        label26:
        String str2;
        label351:
        do
        {
          final MyActivity localMyActivity1;
          do
          {
            for (;;)
            {
              return;
              str2 = localJSONObjectProxy.getStringOrNull("pin");
              String str3 = LoginUserBase.getLoginUserName();
              if (str2 == null) {
                str2 = "";
              }
              if (str3 == null) {
                str3 = "";
              }
              JSONObject localJSONObject1;
              if (!str3.equals(str2))
              {
                final MyActivity localMyActivity3 = MyApplication.getInstance().getCurrentMyActivity();
                if (TextUtils.isEmpty(str2))
                {
                  MyApplication.getInstance().getMainFrameActivity().removeAllRecords(false);
                  LoginActivity.clearRemember(true, true, true);
                  CommonUtil.getJdSharedPreferences().edit().remove("login").commit();
                  LoginUserBase.setUserStateOff(true);
                  Constants.clearOrderInfo();
                  if (!MessagePullService.widgetIsRunInBg())
                  {
                    final Intent localIntent2 = new Intent(localMyActivity3, MessagePullService.class);
                    localIntent2.setAction("Action_Stop_Message_Service");
                    localMyActivity3.post(new Runnable()
                    {
                      public void run()
                      {
                        localMyActivity3.startService(localIntent2);
                      }
                    });
                  }
                  UserUtil.cleanData(localMyActivity3);
                }
              }
              else
              {
                if (!"thirdLogin".equals(str1)) {
                  break label351;
                }
                if (TextUtils.isEmpty(str2)) {
                  continue;
                }
                MyApplication.getInstance().getMainFrameActivity().removeAllRecords(false);
                LoginActivity.clearRemember(true, true, true);
                localJSONObject1 = new JSONObject();
              }
              try
              {
                for (;;)
                {
                  localJSONObject1.put("pin", str2);
                  LoginUserBase.setUserInfo(localJSONObject1);
                  LoginUserBase.setUserState(Constants.LOG_IN);
                  MyActivity localMyActivity2 = MyApplication.getInstance().getCurrentMyActivity();
                  if (!(localMyActivity2 instanceof LoginActivity)) {
                    break;
                  }
                  final LoginActivity localLoginActivity = (LoginActivity)localMyActivity2;
                  localLoginActivity.post(new Runnable()
                  {
                    public void run()
                    {
                      LoginActivity.afterSuccess(localLoginActivity);
                    }
                  });
                  return;
                  MyApplication.getInstance().getMainFrameActivity().removeAllRecords(false);
                  LoginActivity.clearRemember(true, true, true);
                  PushMessageUtils.saveBindState(false);
                  JSONObject localJSONObject2 = new JSONObject();
                  try
                  {
                    localJSONObject2.put("pin", str2);
                    LoginUserBase.setUserInfo(localJSONObject2);
                    LoginUserBase.setUserState(Constants.LOG_IN);
                  }
                  catch (JSONException localJSONException2)
                  {
                    for (;;)
                    {
                      localJSONException2.printStackTrace();
                    }
                  }
                }
              }
              catch (JSONException localJSONException1)
              {
                for (;;)
                {
                  localJSONException1.printStackTrace();
                }
              }
            }
            if (!"pay".equals(str1)) {
              break;
            }
            localMyActivity1 = MyApplication.getInstance().getCurrentMyActivity();
          } while ((localMyActivity1 instanceof NewHomeActivity));
          final Intent localIntent1 = new Intent(localMyActivity1, NewHomeActivity.class);
          localIntent1.putExtra("com.360buy:singleInstanceFlag", true);
          localMyActivity1.post(new Runnable()
          {
            public void run()
            {
              localMyActivity1.startActivityInFrame(localIntent1);
            }
          });
          return;
        } while ((!"unionpay".equals(str1)) || (!CommonUtil.this.checkSDKForPay()));
        final String str4 = str2;
        final String str5 = localJSONObjectProxy.getStringOrNull("orderId");
        final String str6 = localJSONObjectProxy.getStringOrNull("plat");
        HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
        localHttpSetting.setFunctionId("jdMPay");
        localHttpSetting.setListener(new HttpGroup.OnCommonListener()
        {
          public void onEnd(HttpGroup.HttpResponse paramAnonymous2HttpResponse)
          {
            JSONObjectProxy localJSONObjectProxy = paramAnonymous2HttpResponse.getJSONObject();
            String str1 = localJSONObjectProxy.getStringOrNull("error");
            String str2 = localJSONObjectProxy.getStringOrNull("message");
            if (TextUtils.isEmpty(str2))
            {
              if (!TextUtils.isEmpty(str1))
              {
                final DialogController local1 = new DialogController()
                {
                  public void onClick(DialogInterface paramAnonymous3DialogInterface, int paramAnonymous3Int)
                  {
                    switch (paramAnonymous3Int)
                    {
                    default: 
                      return;
                    }
                    MyActivity localMyActivity = MyApplication.getInstance().getCurrentMyActivity();
                    ((MainFrameActivity)localMyActivity.getParent()).finish();
                    Intent localIntent = new Intent(localMyActivity, MyOrderListActivity.class);
                    ((MainFrameActivity)localMyActivity.getParent()).startSubActivity(localIntent);
                  }
                };
                local1.setTitle(MyApplication.getInstance().getString(2131165609));
                local1.setMessage(str1);
                local1.setNeutralButton(MyApplication.getInstance().getString(2131165517));
                local1.init(MyApplication.getInstance().getCurrentMyActivity().getThisActivity());
                MyApplication.getInstance().getCurrentMyActivity().post(new Runnable()
                {
                  public void run()
                  {
                    local1.show();
                  }
                });
              }
              return;
            }
            CommonUtil.this.doPay(str2);
          }
          
          public void onError(HttpGroup.HttpError paramAnonymous2HttpError) {}
          
          public void onReady(HttpGroup.HttpSettingParams paramAnonymous2HttpSettingParams)
          {
            if (!TextUtils.isEmpty(str4)) {
              paramAnonymous2HttpSettingParams.putJsonParam("pin", str4);
            }
            if (!TextUtils.isEmpty(str5)) {
              paramAnonymous2HttpSettingParams.putJsonParam("orderId", str5);
            }
            if (!TextUtils.isEmpty(str6))
            {
              paramAnonymous2HttpSettingParams.putJsonParam("plat", str6);
              return;
            }
            paramAnonymous2HttpSettingParams.putJsonParam("plat", "mobile");
          }
        });
        localHttpSetting.setNotifyUser(true);
        localHttpGroupaAsynPool.add(localHttpSetting);
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams)
      {
        paramAnonymousHttpSettingParams.putJsonParam("tokenKey", paramString);
      }
    });
    localHttpGroupaAsynPool.add(localHttpSetting);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.CommonUtil
 * JD-Core Version:    0.7.0.1
 */