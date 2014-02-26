package com.jingdong.app.mall.broadcastReceiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.jingdong.app.mall.MainFrameActivity;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.service.ForwardActionService;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.CustomOnAllListener;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.JSONObjectProxy;
import java.util.Date;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class InterfaceBroadcastReceiver
  extends BroadcastReceiver
{
  public static final String ACTION = "com.360buy.interfaceBroadcastReceiver";
  public static final int DEFAULT_NUM = 1;
  public static final String FROM_M_DESTINATION = "m_destination";
  private static final String HOST_VIRTUAL = "virtual";
  public static final String KEY_ACTION = "action";
  public static final String KEY_ACTIVITY_ID = "activityId";
  public static final String KEY_ACTIVITY_TYPE = "type";
  private static final String KEY_CATEGORY = "category";
  public static final String KEY_CONTENT = "content";
  private static final String KEY_DES = "des";
  public static final String KEY_LAND_PAGE_ID = "landPageId";
  public static final String KEY_M_ACTION = "action";
  public static final String KEY_PACKS_ID = "packsId";
  public static final String KEY_PACKS_NUM = "packsNum";
  private static final String KEY_PARAMS = "params";
  public static final String KEY_PROMOTION_ID = "promotionId";
  public static final String KEY_SKU_ID = "skuId";
  public static final String KEY_SKU_NUM = "skuNum";
  public static final String KEY_TITLE = "title";
  public static final String KEY_URL = "url";
  public static final int MODULE_ID_ACTIVITY = 103;
  public static final int MODULE_ID_BARCODE_PURCHASE = 7;
  public static final int MODULE_ID_CART = 102;
  public static final int MODULE_ID_GET_COUPON = 105;
  public static final int MODULE_ID_GROUP_SHOPPING = 11;
  public static final int MODULE_ID_HOME = 1;
  public static final int MODULE_ID_LOGIN = 9;
  public static final int MODULE_ID_LOTTERY = 12;
  public static final int MODULE_ID_M = 106;
  public static final int MODULE_ID_MESSAGE = 2;
  public static final int MODULE_ID_MESSAGE_ACTION = 51;
  public static final int MODULE_ID_MESSAGE_LIST = 6;
  public static final int MODULE_ID_MIAOSHA = 8;
  public static final int MODULE_ID_MYJD = 108;
  public static final int MODULE_ID_PRODUCT = 4;
  public static final int MODULE_ID_PRODUCT_DETAIL = 101;
  public static final int MODULE_ID_PROMOTION = 107;
  public static final int MODULE_ID_RECHARGE = 10;
  public static final int MODULE_ID_SEARCH = 3;
  public static final int MODULE_ID_TEXT_CONTAINER = 104;
  public static final int MODULE_ID_TOKEN = 5;
  public static final String MODULE_NAME_BARCODE = "barcode";
  public static final String MODULE_NAME_GROUP_SHOPPING = "groupshopping";
  public static final String MODULE_NAME_HOME = "home";
  public static final String MODULE_NAME_LOGIN = "login";
  public static final String MODULE_NAME_LOTTERY = "lottery";
  public static final String MODULE_NAME_MESSAGE = "message";
  public static final String MODULE_NAME_MIAOSHA = "miaosha";
  public static final String MODULE_NAME_PRODUCT = "product";
  public static final String MODULE_NAME_RECHARGE = "recharge";
  public static final String MODULE_NAME_SEARCH = "search";
  public static final String MODULE_NAME_TOKEN = "token";
  private static final String TAG = InterfaceBroadcastReceiver.class.getSimpleName();
  public static final String VALUE_ACTIVITY_CATEGORY_TYPE = "1";
  public static final String VALUE_ACTIVITY_HOME_TYPE = "2";
  private static final String VALUE_JUMP = "jump";
  private static final String VAULE_DES_ACTIVITY = "activity";
  private static final String VAULE_DES_CART = "cart";
  private static final String VAULE_DES_GET_COUPON = "getCoupon";
  private static final String VAULE_DES_M = "m";
  private static final String VAULE_DES_PRODUCT_DETAIL = "productDetail";
  private static final String VAULE_DES_PROMOTION = "promotion";
  private static final String VAULE_DES_TEXT_CONTAINER = "textContainer";
  public static String function;
  public static String keyword;
  public static String subunionId;
  public static Date timestamp;
  public static String type;
  public static String unionId;
  public static String usid;
  
  public static void cps()
  {
    cps(null);
  }
  
  public static void cps(Runnable paramRunnable)
  {
    MyActivity localMyActivity;
    HttpGroup.CustomOnAllListener local1;
    HttpGroup.HttpSetting localHttpSetting;
    String str1;
    String str2;
    label80:
    String str3;
    if ((unionId != null) || (subunionId != null))
    {
      localMyActivity = (MyActivity)MyApplication.getInstance().getMainFrameActivity().getCurrentActivity();
      if (localMyActivity != null)
      {
        local1 = new HttpGroup.CustomOnAllListener()
        {
          public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
          {
            JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
            if (localJSONObjectProxy != null) {
              InterfaceBroadcastReceiver.usid = localJSONObjectProxy.getStringOrNull("usid");
            }
            if (InterfaceBroadcastReceiver.this != null) {
              InterfaceBroadcastReceiver.this.run();
            }
          }
          
          public void onError(HttpGroup.HttpError paramAnonymousHttpError)
          {
            if (InterfaceBroadcastReceiver.this != null) {
              InterfaceBroadcastReceiver.this.run();
            }
          }
          
          public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
          
          public void onStart() {}
        };
        localHttpSetting = new HttpGroup.HttpSetting();
        localHttpSetting.setFunctionId("cps");
        if (type != null) {
          break label148;
        }
        str1 = "";
        localHttpSetting.putJsonParam("type", str1);
        if (keyword != null) {
          break label156;
        }
        str2 = "";
        localHttpSetting.putJsonParam("keyword", str2);
        localHttpSetting.putJsonParam("unionId", unionId);
        if (subunionId != null) {
          break label164;
        }
        str3 = "";
        label107:
        localHttpSetting.putJsonParam("subunionId", str3);
        if (function != null) {
          break label172;
        }
      }
    }
    label148:
    label156:
    label164:
    label172:
    for (String str4 = "";; str4 = function)
    {
      localHttpSetting.putJsonParam("HandleOpenURL_FunctionID", str4);
      localHttpSetting.setListener(local1);
      localMyActivity.getHttpGroupaAsynPool().add(localHttpSetting);
      return;
      str1 = type;
      break;
      str2 = keyword;
      break label80;
      str3 = subunionId;
      break label107;
    }
  }
  
  public static Intent createIntent(int paramInt, Bundle paramBundle)
  {
    Intent localIntent = new Intent("com.360buy.interfaceBroadcastReceiver");
    localIntent.setFlags(32);
    Bundle localBundle = new Bundle();
    localBundle.putInt("moduleId", paramInt);
    if (paramBundle != null) {
      Command.outBundleToBundle(paramBundle, localBundle);
    }
    localIntent.putExtras(localBundle);
    return localIntent;
  }
  
  private static Command handlerVirtualData(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    JSONObjectProxy localJSONObjectProxy;
    String str2;
    do
    {
      for (;;)
      {
        return null;
        try
        {
          localJSONObject = new JSONObject(paramString);
          if (localJSONObject != null)
          {
            localJSONObjectProxy = new JSONObjectProxy(localJSONObject);
            String str1 = localJSONObjectProxy.getStringOrNull("category");
            if ((!TextUtils.isEmpty(str1)) && ("jump".equals(str1)))
            {
              str2 = localJSONObjectProxy.getStringOrNull("des");
              if (!TextUtils.isEmpty(str2)) {
                if ("activity".equals(str2)) {
                  return prepareActivityCommand(localJSONObjectProxy);
                }
              }
            }
          }
        }
        catch (Exception localException)
        {
          for (;;)
          {
            JSONObject localJSONObject = null;
          }
          if ("cart".equals(str2)) {
            return prepareCartCommand(localJSONObjectProxy);
          }
          if ("getCoupon".equals(str2)) {
            return prepareGetCouponCommand(localJSONObjectProxy);
          }
          if ("m".equals(str2)) {
            return prepareMCommand(localJSONObjectProxy);
          }
          if ("productDetail".equals(str2)) {
            return prepareProductDetailCommand(localJSONObjectProxy);
          }
          if ("textContainer".equals(str2)) {
            return prepareTextContainerCommand(localJSONObjectProxy);
          }
        }
      }
    } while (!"promotion".equals(str2));
    return preparePromotionCommand(localJSONObjectProxy);
  }
  
  private static Command prepareActivityCommand(JSONObjectProxy paramJSONObjectProxy)
  {
    return prepareCommandFromJson(paramJSONObjectProxy, 103);
  }
  
  private static Command prepareCartCommand(JSONObjectProxy paramJSONObjectProxy)
  {
    return prepareCommandFromJson(paramJSONObjectProxy, 102);
  }
  
  private static Command prepareCommandFromJson(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    if ((paramJSONObjectProxy == null) || (paramInt == 0)) {}
    Iterator localIterator;
    do
    {
      return null;
      localIterator = paramJSONObjectProxy.keys();
    } while (localIterator == null);
    Bundle localBundle = new Bundle();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return new Command(paramInt, localBundle, null);
      }
      Object localObject1 = localIterator.next();
      String str;
      if ((localObject1 != null) && ((localObject1 instanceof String))) {
        str = (String)localObject1;
      }
      try
      {
        Object localObject3 = paramJSONObjectProxy.get(str);
        localObject2 = localObject3;
      }
      catch (JSONException localJSONException)
      {
        for (;;)
        {
          Object localObject2 = null;
        }
      }
      if (localObject2 != null) {
        if ((localObject2 instanceof String)) {
          localBundle.putString(str, (String)localObject2);
        } else if ((localObject2 instanceof Integer)) {
          localBundle.putInt(str, ((Integer)localObject2).intValue());
        } else if ((localObject2 instanceof Long)) {
          localBundle.putLong(str, ((Long)localObject2).longValue());
        }
      }
    }
  }
  
  private static Command prepareGetCouponCommand(JSONObjectProxy paramJSONObjectProxy)
  {
    return prepareCommandFromJson(paramJSONObjectProxy, 105);
  }
  
  private static Command prepareMCommand(JSONObjectProxy paramJSONObjectProxy)
  {
    return prepareCommandFromJson(paramJSONObjectProxy, 106);
  }
  
  private static Command prepareProductDetailCommand(JSONObjectProxy paramJSONObjectProxy)
  {
    return prepareCommandFromJson(paramJSONObjectProxy, 101);
  }
  
  private static Command preparePromotionCommand(JSONObjectProxy paramJSONObjectProxy)
  {
    return prepareCommandFromJson(paramJSONObjectProxy, 107);
  }
  
  private static Command prepareTextContainerCommand(JSONObjectProxy paramJSONObjectProxy)
  {
    return prepareCommandFromJson(paramJSONObjectProxy, 104);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null) {}
    Command localCommand;
    do
    {
      return;
      boolean bool = paramIntent.getBooleanExtra("isHasAction", false);
      Bundle localBundle = paramIntent.getExtras();
      String str = "";
      if (localBundle != null) {
        str = localBundle.getString("a");
      }
      if ((bool) && (!TextUtils.isEmpty(str)))
      {
        Intent localIntent2 = new Intent(paramContext, ForwardActionService.class);
        localIntent2.putExtra("a", str);
        paramContext.startService(localIntent2);
        return;
      }
      localCommand = Command.createCommand(paramIntent);
    } while ((localCommand == null) || (localCommand.getModuleId() == 0));
    Intent localIntent1 = new Intent(paramContext, MainFrameActivity.class);
    MainFrameActivity localMainFrameActivity = MyApplication.getInstance().getMainFrameActivity();
    if (localMainFrameActivity == null) {
      localIntent1.putExtras(localCommand.getBundle());
    }
    for (;;)
    {
      localIntent1.addFlags(268435456);
      paramContext.startActivity(localIntent1);
      return;
      localMainFrameActivity.toTargetActivity(localCommand);
    }
  }
  
  public static class Command
  {
    private int moduleId = 0;
    private Bundle outBundle = new Bundle();
    
    private Command(int paramInt, Bundle paramBundle)
    {
      this.moduleId = paramInt;
      this.outBundle = paramBundle;
    }
    
    private Command(Uri paramUri)
    {
      String str1 = null;
      String str2 = null;
      String str3 = null;
      String str4 = null;
      paramUri.getHost();
      String str5 = paramUri.getQueryParameter("params");
      String str6;
      if (!TextUtils.isEmpty(str5))
      {
        try
        {
          JSONObjectProxy localJSONObjectProxy = new JSONObjectProxy(new JSONObject(str5));
          str1 = localJSONObjectProxy.getStringOrNull("type");
          str2 = localJSONObjectProxy.getStringOrNull("keyword");
          str3 = localJSONObjectProxy.getStringOrNull("unionId");
          str4 = localJSONObjectProxy.getStringOrNull("subunionId");
          String str7 = localJSONObjectProxy.getStringOrNull("tokenKey");
          str6 = str7;
        }
        catch (JSONException localJSONException)
        {
          for (;;)
          {
            localJSONException.printStackTrace();
            str6 = null;
          }
        }
        if (str3 != null) {
          this.outBundle.putString("unionId", str3);
        }
        if (str4 != null) {
          this.outBundle.putString("subunionId", str4);
        }
        if (TextUtils.isEmpty(str6)) {
          break label269;
        }
        this.moduleId = 5;
        this.outBundle.putString("tokenKey", str6);
      }
      for (;;)
      {
        if (this.moduleId != 0)
        {
          InterfaceBroadcastReceiver.type = str1;
          InterfaceBroadcastReceiver.keyword = str2;
          InterfaceBroadcastReceiver.unionId = str3;
          InterfaceBroadcastReceiver.subunionId = str4;
          InterfaceBroadcastReceiver.function = paramUri.getHost();
          InterfaceBroadcastReceiver.timestamp = new Date();
        }
        return;
        str1 = paramUri.getQueryParameter("type");
        str2 = paramUri.getQueryParameter("keyword");
        str3 = paramUri.getQueryParameter("unionId");
        str4 = paramUri.getQueryParameter("subunionId");
        str6 = paramUri.getQueryParameter("tokenKey");
        break;
        label269:
        if ("1".equals(str1))
        {
          this.moduleId = 1;
        }
        else if ("2".equals(str1))
        {
          try
          {
            long l = Long.parseLong(str2);
            this.moduleId = 4;
            this.outBundle.putLong("id", l);
          }
          catch (NumberFormatException localNumberFormatException)
          {
            return;
          }
        }
        else if ("3".equals(str1))
        {
          this.moduleId = 3;
          this.outBundle.putString("keyword", str2);
        }
        else if ("7".equals(str1))
        {
          this.moduleId = 7;
        }
        else if ("8".equals(str1))
        {
          this.moduleId = 8;
        }
        else if ("9".equals(str1))
        {
          this.moduleId = 9;
        }
        else
        {
          this.moduleId = 1;
        }
      }
    }
    
    public static Command createCommand(Intent paramIntent)
    {
      Uri localUri = paramIntent.getData();
      Command localCommand;
      if (localUri != null) {
        if ("virtual".equals(localUri.getHost())) {
          localCommand = InterfaceBroadcastReceiver.handlerVirtualData(localUri.getQueryParameter("params"));
        }
      }
      do
      {
        return localCommand;
        return new Command(localUri);
        Bundle localBundle1 = paramIntent.getExtras();
        if (localBundle1 == null) {
          break;
        }
        int i = localBundle1.getInt("moduleId", 0);
        Bundle localBundle2 = new Bundle();
        Iterator localIterator = localBundle1.keySet().iterator();
        for (;;)
        {
          if (!localIterator.hasNext())
          {
            if (i == 0) {
              break;
            }
            return new Command(i, localBundle2);
          }
          String str = (String)localIterator.next();
          if (str.startsWith("param_"))
          {
            Object localObject = localBundle1.get(str);
            if ((localObject instanceof String)) {
              localBundle2.putString(str.split("_")[1], (String)localObject);
            } else if ((localObject instanceof Integer)) {
              localBundle2.putInt(str.split("_")[1], ((Integer)localObject).intValue());
            } else if ((localObject instanceof Long)) {
              localBundle2.putLong(str.split("_")[1], ((Long)localObject).longValue());
            }
          }
        }
        localCommand = (Command)localBundle1.getSerializable("command");
      } while (localCommand != null);
      return null;
    }
    
    public static void outBundleToBundle(Bundle paramBundle1, Bundle paramBundle2)
    {
      Iterator localIterator = paramBundle1.keySet().iterator();
      for (;;)
      {
        if (!localIterator.hasNext()) {
          return;
        }
        String str = (String)localIterator.next();
        Object localObject = paramBundle1.get(str);
        if ((localObject instanceof String)) {
          paramBundle2.putString("param_" + str, (String)localObject);
        } else if ((localObject instanceof Integer)) {
          paramBundle2.putInt("param_" + str, ((Integer)localObject).intValue());
        } else if ((localObject instanceof Long)) {
          paramBundle2.putLong("param_" + str, ((Long)localObject).longValue());
        }
      }
    }
    
    public Bundle getBundle()
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("moduleId", this.moduleId);
      outBundleToBundle(this.outBundle, localBundle);
      return localBundle;
    }
    
    public int getModuleId()
    {
      return this.moduleId;
    }
    
    public Bundle getOutBundle()
    {
      return this.outBundle;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.broadcastReceiver.InterfaceBroadcastReceiver
 * JD-Core Version:    0.7.0.1
 */