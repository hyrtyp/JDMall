package com.jingdong.common.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.jingdong.common.MyApplication;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.database.table.PushMessageTable;
import com.jingdong.common.entity.BaseMessage;
import com.jingdong.common.entity.MessageCategory;
import com.jingdong.common.entity.MessageListItem;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.login.LoginUserBase;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class PushMessageUtils
{
  private static long DEFAULT_GET_TOKEN_DELAY = -1L;
  private static final String KEY_KEY = "k";
  private static final String KEY_VALUE = "v";
  private static final String TAG = "PushMessageUtils";
  
  public static void bindUser(Context paramContext, final long paramLong)
  {
    if (!LoginUserBase.hasLogin())
    {
      AlarmUtils.alarmPushMsgTask(paramContext, paramLong);
      return;
    }
    if (getBindState().booleanValue())
    {
      AlarmUtils.alarmPushMsgTask(paramContext, paramLong);
      return;
    }
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("bingding");
    localHttpSetting.setHost(Configuration.getProperty("msgHost"));
    localHttpSetting.setNotifyUser(false);
    localHttpSetting.setUseLocalCookies(true);
    localHttpSetting.setThisFunctionMustBeExcute(true);
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        AlarmUtils.alarmPushMsgTask(PushMessageUtils.this, paramLong);
        PushMessageUtils.saveBindState(true);
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams)
      {
        paramAnonymousHttpSettingParams.putJsonParam("devicetoken", PushMessageUtils.getDeviceTokenFromLocal());
      }
    });
    HttpGroupUtils.getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  public static void getAllMessageList(IMyActivity paramIMyActivity, HttpGroup.OnCommonListener paramOnCommonListener)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("allListAndDetail");
    localHttpSetting.setPost(true);
    localHttpSetting.setHost(Configuration.getProperty("msgHost"));
    localHttpSetting.putJsonParam("pin", LoginUserBase.getLoginUserName());
    localHttpSetting.setListener(paramOnCommonListener);
    localHttpSetting.setNotifyUser(true);
    paramIMyActivity.getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  public static void getAllUnReadMessageIds(HttpGroup.OnCommonListener paramOnCommonListener)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("msgUnReadIdList");
    localHttpSetting.putJsonParam("pin", LoginUserBase.getLoginUserName());
    localHttpSetting.setHost(Configuration.getProperty("msgHost"));
    localHttpSetting.setNotifyUser(false);
    localHttpSetting.setUseLocalCookies(true);
    localHttpSetting.setListener(paramOnCommonListener);
    HttpGroupUtils.getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  public static void getAllUserCategory(HttpGroup.OnCommonListener paramOnCommonListener)
  {
    if (!LoginUserBase.hasLogin()) {
      return;
    }
    String str = getDeviceTokenFromLocal();
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("getSubcribeMsgTypes");
    localHttpSetting.setHost(Configuration.getProperty("msgHost"));
    localHttpSetting.setNotifyUser(false);
    localHttpSetting.putJsonParam("devicetoken", str);
    localHttpSetting.setListener(paramOnCommonListener);
    HttpGroupUtils.getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  public static Boolean getBindState()
  {
    return Boolean.valueOf(CommonUtil.getJdSharedPreferences().getBoolean("msg_auto_has_bind", false));
  }
  
  public static long getDefaultGetTokenDelay()
  {
    if (DEFAULT_GET_TOKEN_DELAY == -1L) {
      DEFAULT_GET_TOKEN_DELAY = Configuration.getLongProperty("defaultFirstGetTokenDelay").longValue();
    }
    return DEFAULT_GET_TOKEN_DELAY;
  }
  
  public static String getDeviceTokenFromLocal()
  {
    return CommonUtil.getJdSharedPreferences().getString("msg_auto_device_token", "");
  }
  
  public static void getMessageDetail(IMyActivity paramIMyActivity, String paramString, HttpGroup.OnCommonListener paramOnCommonListener)
  {
    String str = getDeviceTokenFromLocal();
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("messageDetail");
    localHttpSetting.putJsonParam("pin", LoginUserBase.getLoginUserName());
    localHttpSetting.putJsonParam("msgId", paramString);
    localHttpSetting.putJsonParam("devicetoken", str);
    localHttpSetting.setHost(Configuration.getProperty("msgHost"));
    localHttpSetting.setNotifyUser(true);
    localHttpSetting.setListener(paramOnCommonListener);
    paramIMyActivity.getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  public static void getMessageSummaryWithMsgId(String paramString, HttpGroup.OnCommonListener paramOnCommonListener)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("msgSummaryList");
    localHttpSetting.setHost(Configuration.getProperty("msgHost"));
    localHttpSetting.setNotifyUser(false);
    localHttpSetting.setUseLocalCookies(true);
    localHttpSetting.putJsonParam("pin", LoginUserBase.getLoginUserName());
    localHttpSetting.putJsonParam("msgIds", paramString);
    localHttpSetting.setListener(paramOnCommonListener);
    HttpGroupUtils.getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  public static ArrayList<BaseMessage> initNotfyWithMessageList(ArrayList<String> paramArrayList)
  {
    ArrayList localArrayList1 = new ArrayList();
    if ((paramArrayList == null) || (paramArrayList.size() < 1)) {
      return localArrayList1;
    }
    ArrayList localArrayList2 = PushMessageTable.getHasNotifyMessages();
    Iterator localIterator = paramArrayList.iterator();
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        if (localArrayList1.size() >= 1) {
          break;
        }
        return localArrayList1;
      }
      String str = (String)localIterator.next();
      BaseMessage localBaseMessage = new BaseMessage(str, Integer.valueOf(0));
      if ((!TextUtils.isEmpty(str)) && (!localArrayList2.contains(localBaseMessage))) {
        localArrayList1.add(localBaseMessage);
      }
    }
  }
  
  public static void regPushMessageToken(HttpGroup.OnCommonListener paramOnCommonListener, final HttpGroup paramHttpGroup, final HttpGroup.HttpSetting paramHttpSetting)
  {
    if (!TextUtils.isEmpty(getDeviceTokenFromLocal())) {
      return;
    }
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.putJsonParam("appName", "jdapp");
    localHttpSetting.setFunctionId("registerDevice");
    localHttpSetting.setHost(Configuration.getProperty("msgHost"));
    localHttpSetting.setNotifyUser(false);
    localHttpSetting.setEffect(0);
    localHttpSetting.setThisFunctionMustBeExcute(true);
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        String str = paramAnonymousHttpResponse.getJSONObject().getStringOrNull("devicetoken");
        if (TextUtils.isEmpty(str)) {}
        do
        {
          return;
          if (PushMessageUtils.this != null) {
            PushMessageUtils.this.onEnd(paramAnonymousHttpResponse);
          }
          PushMessageUtils.saveDeviceToken(str);
        } while ((paramHttpGroup == null) || (paramHttpSetting == null));
        paramHttpSetting.putJsonParam("devicetoken", str);
        paramHttpGroup.add(paramHttpSetting);
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        if (PushMessageUtils.this != null) {
          PushMessageUtils.this.onError(paramAnonymousHttpError);
        }
      }
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams)
      {
        if (PushMessageUtils.this != null) {
          PushMessageUtils.this.onReady(paramAnonymousHttpSettingParams);
        }
      }
    });
    HttpGroupUtils.getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  public static void registerDevice(String paramString)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.putJsonParam("appName", "jdapp");
    localHttpSetting.putJsonParam("devicetoken", paramString);
    localHttpSetting.setFunctionId("registerDevice");
    localHttpSetting.setHost(Configuration.getProperty("msgHost"));
    localHttpSetting.setNotifyUser(false);
    localHttpSetting.setEffect(0);
    localHttpSetting.setThisFunctionMustBeExcute(true);
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        String str = paramAnonymousHttpResponse.getJSONObject().getStringOrNull("devicetoken");
        if (TextUtils.isEmpty(str)) {}
        do
        {
          return;
          PushMessageUtils.saveDeviceToken(str);
        } while (!LoginUserBase.hasLogin());
        PushMessageUtils.bindUser(MyApplication.getInstance(), -1L);
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    });
    HttpGroupUtils.getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  public static void resetMessageCategorySubcribeState(MessageCategory paramMessageCategory, HttpGroup.OnCommonListener paramOnCommonListener)
  {
    String str = getDeviceTokenFromLocal();
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("subcribeMsgType");
    localHttpSetting.setHost(Configuration.getProperty("msgHost"));
    localHttpSetting.putJsonParam("pin", LoginUserBase.getLoginUserName());
    localHttpSetting.putJsonParam("appname", "jdapp");
    localHttpSetting.putJsonParam("devicetoken", str);
    localHttpSetting.putJsonParam("msgType", paramMessageCategory.getType());
    localHttpSetting.putJsonParam("isSubcribe", paramMessageCategory.getIsSubcribe());
    localHttpSetting.setNotifyUser(false);
    localHttpSetting.setListener(paramOnCommonListener);
    HttpGroupUtils.getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  public static void saveBindState(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = CommonUtil.getJdSharedPreferences().edit();
    localEditor.putBoolean("msg_auto_has_bind", paramBoolean);
    localEditor.commit();
  }
  
  public static void saveDeviceToken(String paramString)
  {
    SharedPreferences.Editor localEditor = CommonUtil.getJdSharedPreferences().edit();
    localEditor.putString("msg_auto_device_token", paramString);
    localEditor.commit();
  }
  
  public static void saveNotifyIdAndTime(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    SharedPreferences.Editor localEditor = CommonUtil.getJdSharedPreferences().edit();
    localEditor.putString("log_push_msg_notify_id_and_time", paramString + "|" + FormatUtils.formatDate(new Date()));
    localEditor.commit();
  }
  
  public static void saveUnReadMsgIds(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    SharedPreferences.Editor localEditor = CommonUtil.getJdSharedPreferences().edit();
    localEditor.putString("log_push_msg_unread_msg_ids", paramString + "|" + FormatUtils.formatDate(new Date()));
    localEditor.commit();
  }
  
  /* Error */
  public static void sendNotiftyMessageLog(com.jingdong.common.entity.MessageSummary paramMessageSummary, ArrayList<BaseMessage> paramArrayList, HttpGroup.OnCommonListener paramOnCommonListener)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +15 -> 16
    //   4: aload_1
    //   5: invokevirtual 197	java/util/ArrayList:size	()I
    //   8: iconst_1
    //   9: if_icmplt +7 -> 16
    //   12: aload_0
    //   13: ifnonnull +4 -> 17
    //   16: return
    //   17: new 332	org/json/JSONObject
    //   20: dup
    //   21: invokespecial 333	org/json/JSONObject:<init>	()V
    //   24: astore_3
    //   25: new 335	org/json/JSONArray
    //   28: dup
    //   29: invokespecial 336	org/json/JSONArray:<init>	()V
    //   32: astore 4
    //   34: aload_0
    //   35: invokevirtual 341	com/jingdong/common/entity/MessageSummary:getId	()Ljava/lang/String;
    //   38: astore 5
    //   40: iconst_0
    //   41: istore 6
    //   43: iload 6
    //   45: aload_1
    //   46: invokevirtual 197	java/util/ArrayList:size	()I
    //   49: if_icmplt +68 -> 117
    //   52: aload_3
    //   53: ldc_w 343
    //   56: aload 4
    //   58: invokevirtual 347	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   61: pop
    //   62: new 51	com/jingdong/common/utils/HttpGroup$HttpSetting
    //   65: dup
    //   66: invokespecial 52	com/jingdong/common/utils/HttpGroup$HttpSetting:<init>	()V
    //   69: astore 17
    //   71: aload 17
    //   73: ldc_w 349
    //   76: invokevirtual 58	com/jingdong/common/utils/HttpGroup$HttpSetting:setFunctionId	(Ljava/lang/String;)V
    //   79: aload 17
    //   81: aload_3
    //   82: invokevirtual 353	com/jingdong/common/utils/HttpGroup$HttpSetting:setJsonParams	(Lorg/json/JSONObject;)V
    //   85: aload 17
    //   87: ldc 60
    //   89: invokestatic 66	com/jingdong/common/config/Configuration:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   92: invokevirtual 69	com/jingdong/common/utils/HttpGroup$HttpSetting:setHost	(Ljava/lang/String;)V
    //   95: aload 17
    //   97: iconst_0
    //   98: invokevirtual 73	com/jingdong/common/utils/HttpGroup$HttpSetting:setNotifyUser	(Z)V
    //   101: aload 17
    //   103: aload_2
    //   104: invokevirtual 87	com/jingdong/common/utils/HttpGroup$HttpSetting:setListener	(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V
    //   107: invokestatic 93	com/jingdong/common/utils/HttpGroupUtils:getHttpGroupaAsynPool	()Lcom/jingdong/common/utils/HttpGroup;
    //   110: aload 17
    //   112: invokevirtual 99	com/jingdong/common/utils/HttpGroup:add	(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
    //   115: pop
    //   116: return
    //   117: aload_1
    //   118: iload 6
    //   120: invokevirtual 357	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   123: checkcast 220	com/jingdong/common/entity/BaseMessage
    //   126: astore 7
    //   128: aload 7
    //   130: ifnonnull +9 -> 139
    //   133: iinc 6 1
    //   136: goto -93 -> 43
    //   139: aload 7
    //   141: invokevirtual 360	com/jingdong/common/entity/BaseMessage:getMsgId	()Ljava/lang/String;
    //   144: astore 8
    //   146: aload 8
    //   148: invokestatic 184	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   151: ifne -18 -> 133
    //   154: new 332	org/json/JSONObject
    //   157: dup
    //   158: invokespecial 333	org/json/JSONObject:<init>	()V
    //   161: astore 9
    //   163: aload 9
    //   165: ldc 12
    //   167: aload 8
    //   169: invokevirtual 347	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   172: pop
    //   173: aload 8
    //   175: aload 5
    //   177: invokevirtual 363	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   180: ifeq +26 -> 206
    //   183: aload 9
    //   185: ldc 15
    //   187: aload_0
    //   188: invokevirtual 366	com/jingdong/common/entity/MessageSummary:getTitle	()Ljava/lang/String;
    //   191: invokevirtual 347	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   194: pop
    //   195: aload 4
    //   197: aload 9
    //   199: invokevirtual 369	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   202: pop
    //   203: goto -70 -> 133
    //   206: aload 9
    //   208: ldc 15
    //   210: ldc 166
    //   212: invokevirtual 347	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   215: pop
    //   216: goto -21 -> 195
    //   219: astore 15
    //   221: return
    //   222: astore 10
    //   224: goto -91 -> 133
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	227	0	paramMessageSummary	com.jingdong.common.entity.MessageSummary
    //   0	227	1	paramArrayList	ArrayList<BaseMessage>
    //   0	227	2	paramOnCommonListener	HttpGroup.OnCommonListener
    //   24	58	3	localJSONObject1	JSONObject
    //   32	164	4	localJSONArray	org.json.JSONArray
    //   38	138	5	str1	String
    //   41	93	6	i	int
    //   126	14	7	localBaseMessage	BaseMessage
    //   144	30	8	str2	String
    //   161	46	9	localJSONObject2	JSONObject
    //   222	1	10	localJSONException1	JSONException
    //   219	1	15	localJSONException2	JSONException
    //   69	42	17	localHttpSetting	HttpGroup.HttpSetting
    // Exception table:
    //   from	to	target	type
    //   52	62	219	org/json/JSONException
    //   163	195	222	org/json/JSONException
    //   195	203	222	org/json/JSONException
    //   206	216	222	org/json/JSONException
  }
  
  public static void setAllMessageReaded(HttpGroup.OnCommonListener paramOnCommonListener)
  {
    setMessageReaded(null, paramOnCommonListener);
  }
  
  public static void setAllMessageReaded(ArrayList<MessageListItem> paramArrayList)
  {
    ArrayList localArrayList = new ArrayList();
    JSONObject localJSONObject = new JSONObject();
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramArrayList.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        if (localStringBuilder.length() > 0) {
          localStringBuilder.deleteCharAt(-1 + localStringBuilder.length());
        }
      }
      try
      {
        localJSONObject.put("msgIds", localStringBuilder.toString());
        setAllMessageReaded(new HttpGroup.OnCommonListener()
        {
          public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
          {
            if (PushMessageUtils.this.size() > 0) {
              PushMessageTable.insertNotifyMessages(PushMessageUtils.this);
            }
          }
          
          public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
          
          public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
        });
        return;
        MessageListItem localMessageListItem = (MessageListItem)localIterator.next();
        if (localMessageListItem.getType().intValue() == 20) {
          localArrayList.add(new BaseMessage(localMessageListItem.getMsgId(), Integer.valueOf(1)));
        }
        localStringBuilder.append(localMessageListItem.getMsgId()).append(",");
      }
      catch (JSONException localJSONException)
      {
        for (;;)
        {
          localJSONException.printStackTrace();
        }
      }
    }
  }
  
  public static void setMessageReaded(String paramString, HttpGroup.OnCommonListener paramOnCommonListener)
  {
    String str = getDeviceTokenFromLocal();
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("allMsgReaded");
    localHttpSetting.setHost(Configuration.getProperty("msgHost"));
    localHttpSetting.putJsonParam("pin", LoginUserBase.getLoginUserName());
    localHttpSetting.putJsonParam("devicetoken", str);
    if (!TextUtils.isEmpty(paramString)) {
      localHttpSetting.putJsonParam("msgId", paramString);
    }
    localHttpSetting.setNotifyUser(false);
    localHttpSetting.setListener(paramOnCommonListener);
    HttpGroupUtils.getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  public static void unBindUser()
  {
    if (!getBindState().booleanValue()) {
      return;
    }
    saveBindState(false);
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("cancelDevice");
    localHttpSetting.setHost(Configuration.getProperty("msgHost"));
    localHttpSetting.setNotifyUser(false);
    HttpGroupUtils.getHttpGroupaAsynPool().add(localHttpSetting);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.PushMessageUtils
 * JD-Core Version:    0.7.0.1
 */