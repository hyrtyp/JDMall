package com.jingdong.common.service;

import android.app.AlarmManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Parcel;
import android.os.Process;
import android.os.RemoteException;
import com.jingdong.common.MyApplication;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.entity.Product;
import com.jingdong.common.login.SafetyManager;
import com.jingdong.common.res.StringUtil;
import com.jingdong.common.utils.CommonUtil;
import com.jingdong.common.utils.DBHelperUtil;
import com.jingdong.common.utils.FileService;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpGroupSetting;
import com.jingdong.common.utils.HttpGroup.HttpGroupaAsynPool;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.HttpGroup.OnEndListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.ImageUtil.InputWay;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.cache.WidgetImageCache;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class MessagePullService
  extends Service
{
  public static final String ACTION_APP_CLEAR_CACHE_IMAGE = "Action_Clear_Cache_Image";
  public static final String ACTION_APP_EXIT_CLEAR_CACHE = "Action_Clear_Cache";
  public static final String ACTION_APP_EXIT_SUBMIT_TIME = "ACTION_APP_EXIT_SUBMIT_TIME";
  public static final String ACTION_DELETE_WIDGET = "Action_delete_widget";
  public static final String ACTION_GET_MESSAGE = "Action_Get_Message";
  public static final String ACTION_GET_WIDGET_INFO = "Action_Get_Widget_Info";
  public static final String ACTION_GET_WIDGET_Next = "Action_Get_Widget_Info_next";
  public static final String ACTION_GET_WIDGET_PRE = "Action_Get_Widget_Info_pre";
  public static final String ACTION_RESTART_SERVICE = "Action_restart_service";
  public static final String ACTION_STEP_SEEVICE = "Action_Stop_Message_Service";
  private static int MOOD_NOTIFICATIONS = 4096;
  public static final String SERVICE_STOP_FLAG = "service_stoped";
  public static boolean isNeedGetMessage = false;
  public static boolean isNeedGetWidget = false;
  public static boolean isStopWidgetText = false;
  private final long DEFUALT_RETRY_INTERVAL = 900000L;
  private final long MINUTATE_RETRY_INTERVAL = 60000L;
  private final int MSG_GET_IMANGE_TO_CACHE = 4354;
  private final int MSG_NETWORK_CONNECT = 4353;
  private final int MSG_NETWORK_NOT_AVAILABLE_TIMES = 3;
  private final int MSG_NETWORK_NOT_AVAILBLE = 4355;
  private final int MSG_UPDATE_WIDGET = 4096;
  private final int MSG_UPDATE_WIDGET_NOT_NEXT = 4352;
  final String TAG = "MessagePullService";
  AlarmManager alarmMgr;
  private AutoUpdateWidgetThread autoUpdateWidgetThread;
  SharedPreferences defaltPreference;
  private Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default: 
        return;
      case 4096: 
        MessagePullService localMessagePullService2 = MessagePullService.this;
        int i;
        if (MessagePullService.this.updateWidgetIndex < -1 + MessagePullService.this.productList.size())
        {
          MessagePullService localMessagePullService3 = MessagePullService.this;
          i = 1 + localMessagePullService3.updateWidgetIndex;
          localMessagePullService3.updateWidgetIndex = i;
        }
        for (;;)
        {
          localMessagePullService2.updateWidgetIndex = i;
          MessagePullService.this.updateWidget();
          if (MessagePullService.this.autoUpdateWidgetThread != null) {
            break;
          }
          MessagePullService.this.autoUpdateWidgetThread = new MessagePullService.AutoUpdateWidgetThread(MessagePullService.this, System.currentTimeMillis(), false);
          MessagePullService.this.autoUpdateWidgetThread.start();
          return;
          i = 0;
        }
      case 4352: 
        MessagePullService.this.updateWidget();
        return;
      case 4353: 
        Intent localIntent2 = new Intent("Action_Get_Widget_Info");
        localIntent2.setClass(MessagePullService.this, MessagePullService.class);
        MessagePullService.this.startService(localIntent2);
        return;
      case 4354: 
        final String str = (String)paramAnonymousMessage.obj;
        HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
        localHttpSetting.setPriority(5000);
        localHttpSetting.setType(5000);
        localHttpSetting.setUrl(str);
        localHttpSetting.setListener(new HttpGroup.OnEndListener()
        {
          public void onEnd(HttpGroup.HttpResponse paramAnonymous2HttpResponse)
          {
            WidgetImageCache.putBitmap(str, ImageUtil.createBitmap(ImageUtil.InputWay.createInputWay(paramAnonymous2HttpResponse), 0, 0));
          }
        });
        MessagePullService.this.httpGroup.add(localHttpSetting);
        return;
      }
      Intent localIntent1 = (Intent)paramAnonymousMessage.obj;
      MessagePullService localMessagePullService1 = MessagePullService.this;
      localMessagePullService1.network_retry_time = (1 + localMessagePullService1.network_retry_time);
      MessagePullService.this.startService(localIntent1);
    }
  };
  private HttpGroup.HttpGroupaAsynPool httpGroup;
  private final IBinder mBinder = new Binder()
  {
    protected boolean onTransact(int paramAnonymousInt1, Parcel paramAnonymousParcel1, Parcel paramAnonymousParcel2, int paramAnonymousInt2)
      throws RemoteException
    {
      return super.onTransact(paramAnonymousInt1, paramAnonymousParcel1, paramAnonymousParcel2, paramAnonymousInt2);
    }
  };
  private Runnable mCrazyMessage = new Runnable()
  {
    public void run()
    {
      JSONObject localJSONObject = new JSONObject();
      try
      {
        localJSONObject.put("page", "1");
        localJSONObject.put("pagesize", "50");
        android.util.Log.d("MessagePullService", "++++mCrazyMessage");
        HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
        localHttpSetting.setUrl(MessagePullService.this.getURL("crazy", localJSONObject));
        localHttpSetting.setListener(new HttpGroup.OnEndListener()
        {
          public void onEnd(HttpGroup.HttpResponse paramAnonymous2HttpResponse)
          {
            ArrayList localArrayList = Product.toList(paramAnonymous2HttpResponse.getJSONObject().getJSONArrayOrNull("carzyInfo"), 0);
            Iterator localIterator;
            if ((localArrayList != null) && (localArrayList.size() > 0))
            {
              localIterator = localArrayList.iterator();
              if (localIterator.hasNext()) {
                break label130;
              }
              if ((MessagePullService.this.productFlag != 0) && (MessagePullService.this.productFlag != 4)) {
                break label205;
              }
              MessagePullService.this.productList = new ArrayList();
              WidgetImageCache.clearAllBitmap();
              MessagePullService.this.productList.addAll(localArrayList);
              MessagePullService.this.productFlag = 1;
            }
            for (;;)
            {
              MessagePullService.this.handler.sendEmptyMessage(4096);
              return;
              label130:
              Product localProduct = (Product)localIterator.next();
              if ((WidgetImageCache.containsKeyBitmap(localProduct.getImageUrl())) && (WidgetImageCache.getBitmap(localProduct.getImageUrl()) != null)) {
                break;
              }
              Message localMessage = MessagePullService.this.handler.obtainMessage(4354, localProduct.getImageUrl());
              MessagePullService.this.handler.sendMessage(localMessage);
              break;
              label205:
              if (MessagePullService.this.productFlag == 2)
              {
                MessagePullService.this.productList.addAll(localArrayList);
                MessagePullService.this.productFlag = 3;
              }
              else if (MessagePullService.this.productList.size() < 1)
              {
                MessagePullService.this.productList.addAll(localArrayList);
              }
            }
          }
        });
        MessagePullService.this.httpGroup.add(localHttpSetting);
        return;
      }
      catch (JSONException localJSONException)
      {
        for (;;)
        {
          com.jingdong.common.utils.Log.v("messagePullService", localJSONException.getMessage());
        }
      }
    }
  };
  private NotificationManager mNM;
  private Runnable mRecommandMessage = new Runnable()
  {
    public void run()
    {
      JSONObject localJSONObject = new JSONObject();
      try
      {
        localJSONObject.put("pin", "1");
        HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
        localHttpSetting.setUrl(MessagePullService.this.getURL("recommend", localJSONObject));
        localHttpSetting.setListener(new HttpGroup.OnEndListener()
        {
          public void onEnd(HttpGroup.HttpResponse paramAnonymous2HttpResponse)
          {
            ArrayList localArrayList = Product.toList(paramAnonymous2HttpResponse.getJSONObject().getJSONArrayOrNull("wareInfoList"), 4);
            Iterator localIterator;
            if ((localArrayList != null) && (localArrayList.size() > 0))
            {
              localIterator = localArrayList.iterator();
              if (localIterator.hasNext()) {
                break label143;
              }
              if ((MessagePullService.this.productFlag != 0) && (MessagePullService.this.productFlag != 4)) {
                break label218;
              }
              MessagePullService.this.productList = new ArrayList();
              MessagePullService.this.productList.addAll(localArrayList);
              MessagePullService.this.productFlag = 2;
            }
            for (;;)
            {
              MessagePullService.this.handler.removeMessages(4096);
              MessagePullService.this.handler.sendEmptyMessage(4096);
              return;
              label143:
              Product localProduct = (Product)localIterator.next();
              if ((WidgetImageCache.containsKeyBitmap(localProduct.getImageUrl())) && (WidgetImageCache.getBitmap(localProduct.getImageUrl()) != null)) {
                break;
              }
              Message localMessage = MessagePullService.this.handler.obtainMessage(4354, localProduct.getImageUrl());
              MessagePullService.this.handler.sendMessage(localMessage);
              break;
              label218:
              if (MessagePullService.this.productFlag == 1)
              {
                MessagePullService.this.productList.addAll(localArrayList);
                MessagePullService.this.productFlag = 3;
              }
            }
          }
        });
        MessagePullService.this.httpGroup.add(localHttpSetting);
        return;
      }
      catch (JSONException localJSONException)
      {
        for (;;)
        {
          com.jingdong.common.utils.Log.v("messagePullService", localJSONException.getMessage());
        }
      }
    }
  };
  PendingIntent messagePi;
  private long msgAutoUpdateTimes = 900000L;
  private int network_retry_time = 0;
  private int productFlag = 0;
  private ArrayList<Product> productList;
  private int updateWidgetIndex = 0;
  private boolean userLoginFlag;
  PendingIntent widgetPi;
  
  private String getURL(String paramString, JSONObject paramJSONObject)
  {
    return new StringBuilder("http://").append(Configuration.getProperty("host")).append("/client.action").toString() + "?" + "functionId=" + paramString + "&" + "body=" + paramJSONObject.toString();
  }
  
  private void removeWidget()
  {
    if (this.autoUpdateWidgetThread != null)
    {
      this.autoUpdateWidgetThread.setStop(true);
      this.autoUpdateWidgetThread = null;
    }
    this.alarmMgr.cancel(this.widgetPi);
    if (this.productList != null) {
      this.productList.clear();
    }
    this.handler.removeMessages(4096);
    WidgetImageCache.clearAllBitmap();
    stepService();
  }
  
  private void schudelToFleshWidget()
  {
    long l1 = System.currentTimeMillis();
    int i = Calendar.getInstance().get(11);
    setWidgetIntent();
    if ((i < 9) || (i > 21))
    {
      Calendar localCalendar = Calendar.getInstance();
      if (i > 21) {
        localCalendar.add(5, 1);
      }
      localCalendar.set(11, 9);
      long l2 = localCalendar.getTimeInMillis();
      this.alarmMgr.set(0, l2, this.widgetPi);
      return;
    }
    long l3 = l1 + 7200000L;
    this.alarmMgr.set(0, l3, this.widgetPi);
  }
  
  private void schudelToGeMessage()
  {
    long l = System.currentTimeMillis() + this.msgAutoUpdateTimes;
    this.alarmMgr.set(0, l, this.messagePi);
  }
  
  private void schudelToGeMessageNextDay(int paramInt)
  {
    this.alarmMgr.cancel(this.messagePi);
    long l = System.currentTimeMillis() + 3600000L * paramInt;
    this.alarmMgr.set(0, l, this.messagePi);
  }
  
  public static boolean serviceIsRunInBg()
  {
    boolean bool = true;
    MyApplication.getInstance();
    SharedPreferences localSharedPreferences = CommonUtil.getJdSharedPreferences();
    if (localSharedPreferences.getBoolean("jd_widget_deleted", bool)) {
      bool = false;
    }
    localSharedPreferences.getBoolean("login", false);
    return bool;
  }
  
  private void setAlarmIntent()
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this, MessagePullService.class);
    localIntent.setAction("Action_Get_Message");
    this.messagePi = PendingIntent.getService(this, 0, localIntent, 0);
  }
  
  private String setMsgTypeTitle(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 1: 
      return StringUtil.comment_answer;
    case 2: 
      return StringUtil.cost_count;
    }
    return StringUtil.get_by_self;
  }
  
  private void setWidgetIntent()
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this, MessagePullService.class);
    localIntent.setAction("Action_Get_Widget_Info");
    this.widgetPi = PendingIntent.getService(this, 0, localIntent, 0);
  }
  
  private void stepService()
  {
    this.mNM.cancel(MOOD_NOTIFICATIONS);
    if ((this.messagePi != null) && (this.alarmMgr != null)) {
      this.alarmMgr.cancel(this.messagePi);
    }
    this.defaltPreference.edit().putBoolean("serviceStopFlag", true).commit();
    this.defaltPreference.edit().putString("lasteMessageReadeTime", null).commit();
    com.jingdong.common.utils.Log.d("MessagePullService", "msg+++4+++stop" + System.currentTimeMillis());
    com.jingdong.common.utils.Log.d("MessagePullService", "msg+++5+++stop" + System.currentTimeMillis());
    if ((this.widgetPi != null) && (this.alarmMgr != null)) {
      this.alarmMgr.cancel(this.widgetPi);
    }
    stopSelf();
    Process.killProcess(Process.myPid());
  }
  
  private boolean updateEmptyWidget()
  {
    if (!CommonUtil.getJdSharedPreferences().getBoolean("jd_widget_deleted", true))
    {
      Intent localIntent = new Intent("com.360buy.jdWidgetBroadcastReceiver");
      localIntent.putExtra("service_stoped", "service_stoped");
      sendBroadcast(localIntent);
      return true;
    }
    return false;
  }
  
  private void updateWidget()
  {
    if (this.productList.size() < 1) {}
    Intent localIntent;
    Product localProduct;
    do
    {
      return;
      localIntent = new Intent("com.360buy.jdWidgetBroadcastReceiver");
      localProduct = (Product)this.productList.get(this.updateWidgetIndex);
    } while (localProduct == null);
    localIntent.putExtra("productName", localProduct.getName());
    localIntent.putExtra("productId", localProduct.getId());
    localIntent.putExtra("productPrice", localProduct.getJdPrice());
    if (WidgetImageCache.getBitmap(localProduct.getImageUrl()) != null) {
      localIntent.putExtra("productImage", WidgetImageCache.getBitmap(localProduct.getImageUrl()));
    }
    for (;;)
    {
      sendBroadcast(localIntent);
      return;
      Message localMessage = this.handler.obtainMessage(4354, localProduct.getImageUrl());
      this.handler.sendMessage(localMessage);
    }
  }
  
  public static boolean widgetIsRunInBg()
  {
    boolean bool = true;
    MyApplication.getInstance();
    if (CommonUtil.getJdSharedPreferences().getBoolean("jd_widget_deleted", bool)) {
      bool = false;
    }
    return bool;
  }
  
  public void checkIsOldUser()
  {
    String str1 = SafetyManager.getCookies();
    String str2 = SafetyManager.getOldCookies();
    if ((str2 != null) && (!str2.equals(str1)))
    {
      this.mNM.cancel(MOOD_NOTIFICATIONS);
      SafetyManager.saveOldCookies(str1);
      this.defaltPreference.edit().putString("lasteMessageReadeTime", "").commit();
    }
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return this.mBinder;
  }
  
  public void onDestroy()
  {
    if (this.autoUpdateWidgetThread != null)
    {
      this.autoUpdateWidgetThread.setStop(true);
      this.autoUpdateWidgetThread = null;
      updateEmptyWidget();
    }
  }
  
  public void onStart(Intent paramIntent, int paramInt)
  {
    String str;
    if (paramIntent != null)
    {
      str = paramIntent.getAction();
      this.mNM = ((NotificationManager)getSystemService("notification"));
      this.alarmMgr = ((AlarmManager)getSystemService("alarm"));
      if (!str.contains("Message"))
      {
        if ((this.productList != null) && (this.productList.size() >= 1)) {
          break label437;
        }
        Intent localIntent = new Intent("com.360buy.jdWidgetBroadcastReceiver");
        localIntent.putExtra("loading", "loading");
        sendBroadcast(localIntent);
      }
    }
    for (;;)
    {
      if (this.httpGroup == null)
      {
        HttpGroup.HttpGroupSetting localHttpGroupSetting = new HttpGroup.HttpGroupSetting();
        localHttpGroupSetting.setPriority(1000);
        localHttpGroupSetting.setType(1000);
        this.httpGroup = new HttpGroup.HttpGroupaAsynPool(localHttpGroupSetting);
      }
      this.defaltPreference = CommonUtil.getJdSharedPreferences();
      this.userLoginFlag = this.defaltPreference.getBoolean("login", false);
      if ((paramIntent != null) && ("ACTION_APP_EXIT_SUBMIT_TIME".equals(paramIntent.getAction())))
      {
        long l = paramIntent.getLongExtra("user_time", 0L);
        boolean bool2 = paramIntent.getBooleanExtra("changed_time", false);
        if ((l > 0L) && (!bool2))
        {
          HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
          localHttpSetting.setFunctionId("appUseTime");
          localHttpSetting.putJsonParam("useTime", l);
          localHttpSetting.setListener(new HttpGroup.OnAllListener()
          {
            public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse) {}
            
            public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
            
            public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
            
            public void onStart() {}
          });
          this.httpGroup.add(localHttpSetting);
        }
      }
      if ((paramIntent != null) && ("Action_Clear_Cache".equals(paramIntent.getAction())))
      {
        FileService.clearCacheFiles();
        FileService.clearInternalCacheImages();
      }
      try
      {
        DBHelperUtil.getDatabase().close();
        label303:
        if ((paramIntent != null) && ("Action_Clear_Cache_Image".equals(paramIntent.getAction())))
        {
          FileService.clearAllCacheImages();
          stepService();
        }
        boolean bool1;
        if ((paramIntent != null) && ("Action_restart_service".equals(paramIntent.getAction())))
        {
          if (CommonUtil.getJdSharedPreferences().getBoolean("jd_widget_deleted", true))
          {
            bool1 = false;
            label360:
            isNeedGetWidget = bool1;
            com.jingdong.common.utils.Log.d("Temp", "onStart() Service-stop -->> " + this.defaltPreference.getBoolean("serviceStopFlag", false));
          }
        }
        else
        {
          if ((paramIntent == null) || (paramIntent.getAction() == null) || (!paramIntent.getAction().equals("Action_Stop_Message_Service"))) {
            break label492;
          }
          if ((isStopWidgetText) || (!updateEmptyWidget())) {
            break label488;
          }
        }
        label897:
        for (;;)
        {
          return;
          label437:
          if ((this.autoUpdateWidgetThread == null) || (this.handler == null) || ((!"Action_Get_Widget_Info_next".equals(str)) && (!"Action_Get_Widget_Info_pre".equals(str)))) {
            break;
          }
          this.autoUpdateWidgetThread.setTime(System.currentTimeMillis());
          break;
          bool1 = true;
          break label360;
          label488:
          stepService();
          label492:
          if ((paramIntent != null) && ("Action_Get_Widget_Info".equals(paramIntent.getAction())))
          {
            if (!CommonUtil.CheckNetWork()) {
              break label728;
            }
            Thread localThread1 = new Thread(null, this.mCrazyMessage, "getCrazyProdct");
            localThread1.setName("MessagePull");
            schudelToFleshWidget();
            localThread1.start();
            if (this.userLoginFlag)
            {
              Thread localThread2 = new Thread(null, this.mRecommandMessage, "recommand");
              localThread2.setName("MessagePull_userLoginFlag");
              localThread2.start();
            }
          }
          label627:
          int j;
          if ((isNeedGetWidget) || ((paramIntent != null) && ("Action_Get_Widget_Info_next".equals(paramIntent.getAction()))))
          {
            if (!CommonUtil.CheckNetWork()) {
              this.handler.sendEmptyMessageDelayed(4353, 5000L);
            }
          }
          else if ((paramIntent != null) && ("Action_Get_Widget_Info_pre".equals(paramIntent.getAction())))
          {
            if ((this.productList == null) || (this.productList.size() <= 0)) {
              break label882;
            }
            int i = -1 + this.updateWidgetIndex;
            this.updateWidgetIndex = i;
            if (i >= 0) {
              break label873;
            }
            j = -1 + this.productList.size();
            label690:
            this.updateWidgetIndex = j;
            this.handler.sendEmptyMessage(4352);
          }
          for (;;)
          {
            if ((paramIntent == null) || (!"Action_delete_widget".equals(paramIntent.getAction()))) {
              break label897;
            }
            removeWidget();
            return;
            label728:
            if (this.network_retry_time >= 3) {
              break;
            }
            Message localMessage = this.handler.obtainMessage();
            localMessage.obj = paramIntent;
            localMessage.what = 4355;
            this.handler.sendMessageDelayed(localMessage, 5000L);
            break;
            if ((this.productList != null) && (this.productList.size() > 0))
            {
              int k = 1 + this.updateWidgetIndex;
              this.updateWidgetIndex = k;
              if (k > -1 + this.productList.size()) {}
              for (int m = 0;; m = this.updateWidgetIndex)
              {
                this.updateWidgetIndex = m;
                isNeedGetWidget = false;
                this.handler.sendEmptyMessage(4352);
                break;
              }
            }
            this.handler.sendEmptyMessageDelayed(4353, 5000L);
            break label627;
            label873:
            j = this.updateWidgetIndex;
            break label690;
            label882:
            this.handler.sendEmptyMessageDelayed(4353, 5000L);
          }
        }
      }
      catch (Exception localException)
      {
        break label303;
      }
    }
  }
  
  private class AutoUpdateWidgetThread
    extends Thread
  {
    private boolean stop;
    private long time;
    
    public AutoUpdateWidgetThread(long paramLong, boolean paramBoolean)
    {
      this.time = paramLong;
      this.stop = paramBoolean;
    }
    
    public void run()
    {
      for (;;)
      {
        if ((this.stop) || (MessagePullService.this.handler == null)) {
          return;
        }
        if (System.currentTimeMillis() - this.time >= 5000L)
        {
          MessagePullService.this.handler.sendEmptyMessage(4096);
          this.time = System.currentTimeMillis();
        }
        try
        {
          Thread.sleep(5000L);
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
      }
    }
    
    public void setStop(boolean paramBoolean)
    {
      this.stop = paramBoolean;
    }
    
    public void setTime(long paramLong)
    {
      this.time = paramLong;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.service.MessagePullService
 * JD-Core Version:    0.7.0.1
 */