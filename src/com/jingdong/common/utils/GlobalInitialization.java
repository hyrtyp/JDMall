package com.jingdong.common.utils;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import com.jingdong.common.MyApplication;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.frame.IMainActivity;
import com.jingdong.common.frame.IMyActivity;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONException;
import org.json.JSONObject;

public class GlobalInitialization
  implements CPAUtils.GlobalInitializationInterface
{
  private static final String BLOCK_TASK_TOKEN_REGISTER_DEVICE = "BLOCK_TASK_TOKEN_REGISTER_DEVICE";
  private static final String BLOCK_TASK_TOKEN_SERVER_CONFIG = "BLOCK_TASK_TOKEN_SERVER_CONFIG";
  private static boolean alreadyABTest = false;
  private static GlobalInitialization globalInitialization;
  private boolean alreadyConfig = false;
  private boolean alreadyDevice = false;
  private Set<String> blockTaskTokenSet = new HashSet();
  private ArrayList<ConfigLoadedListener> configListenerList = new ArrayList();
  private CPAUtils.Processor cpaProcessor;
  private GlobalInitializationListener giListener;
  private HttpGroup httpGroup;
  private HttpGroup.HttpGroupSetting httpGroupSetting;
  private IMyActivity myActivity;
  private SharedPreferences sharedPreferences;
  
  private GlobalInitialization()
  {
    if (this.httpGroup == null)
    {
      this.httpGroupSetting = new HttpGroup.HttpGroupSetting();
      this.httpGroupSetting.setType(1000);
      this.httpGroup = new HttpGroup.HttpGroupaAsynPool(this.httpGroupSetting);
    }
  }
  
  private void addBlockTaskToken(String paramString)
  {
    this.blockTaskTokenSet.add(paramString);
  }
  
  public static void checkVersion(IMyActivity paramIMyActivity)
  {
    getGlobalInitializationInstance().checksofteWareUpdated(false, paramIMyActivity);
  }
  
  private void checksofteWareUpdated(final boolean paramBoolean, final IMyActivity paramIMyActivity)
  {
    if ((!Configuration.getBooleanProperty("applicationUpgrade").booleanValue()) && (paramBoolean)) {
      return;
    }
    HttpGroup.OnAllListener local5 = new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        String str1 = localJSONObjectProxy.getStringOrNull("changes");
        String str2 = localJSONObjectProxy.getStringOrNull("version");
        String str3 = localJSONObjectProxy.getStringOrNull("url");
        String str4 = localJSONObjectProxy.getStringOrNull("upgrade");
        Integer localInteger = localJSONObjectProxy.getIntOrNull("size");
        if (localInteger == null) {
          localInteger = Integer.valueOf(-1);
        }
        Object localObject = paramIMyActivity;
        if (localObject == null)
        {
          IMainActivity localIMainActivity = MyApplication.getInstance().getMainFrameActivity();
          if (localIMainActivity != null)
          {
            IMyActivity localIMyActivity = localIMainActivity.getCurrentMyActivity();
            if ((localIMyActivity instanceof IMyActivity)) {
              localObject = localIMyActivity;
            }
          }
        }
        if (localObject != null) {
          ApplicationUpgradeHelper.tryUpgrade((IMyActivity)localObject, str2, str4, str3, localInteger.intValue(), str1, paramBoolean);
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    };
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("version");
    localHttpSetting.putJsonParam("osVersion", Build.VERSION.SDK);
    localHttpSetting.putJsonParam("platform", Integer.valueOf(100));
    localHttpSetting.setListener(local5);
    localHttpSetting.setNeedGlobalInitialization(false);
    localHttpSetting.setEffect(0);
    localHttpSetting.setNotifyUser(false);
    if (!paramBoolean)
    {
      localHttpSetting.setNotifyUser(true);
      localHttpSetting.setEffect(1);
      IMyActivity localIMyActivity = paramIMyActivity;
      if (localIMyActivity == null) {
        localIMyActivity = MyApplication.getInstance().getCurrentMyActivity();
      }
      localIMyActivity.getHttpGroupaAsynPool().add(localHttpSetting);
      return;
    }
    this.httpGroup.add(localHttpSetting);
  }
  
  public static GlobalInitialization getGlobalInitializationInstance()
  {
    if (globalInitialization == null) {
      globalInitialization = new GlobalInitialization();
    }
    globalInitialization.initMyActivity();
    return globalInitialization;
  }
  
  private void initEndCallBack()
  {
    if (this.giListener != null)
    {
      this.giListener.initEnd();
      this.giListener = null;
    }
  }
  
  public static void initNetwork(boolean paramBoolean)
  {
    getGlobalInitializationInstance().networkInitialization(paramBoolean);
  }
  
  /* Error */
  private void networkInitializationEnd()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic 179	com/jingdong/common/MyApplication:getInstance	()Lcom/jingdong/common/MyApplication;
    //   5: astore_2
    //   6: aload_0
    //   7: getfield 54	com/jingdong/common/utils/GlobalInitialization:alreadyDevice	Z
    //   10: ifeq +22 -> 32
    //   13: aload_0
    //   14: getfield 56	com/jingdong/common/utils/GlobalInitialization:alreadyConfig	Z
    //   17: ifeq +15 -> 32
    //   20: aload_2
    //   21: iconst_2
    //   22: putfield 217	com/jingdong/common/MyApplication:networkInitializationState	I
    //   25: aload_0
    //   26: invokevirtual 220	java/lang/Object:notifyAll	()V
    //   29: aload_0
    //   30: monitorexit
    //   31: return
    //   32: aload_2
    //   33: iconst_0
    //   34: putfield 217	com/jingdong/common/MyApplication:networkInitializationState	I
    //   37: goto -12 -> 25
    //   40: astore_1
    //   41: aload_0
    //   42: monitorexit
    //   43: aload_1
    //   44: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	45	0	this	GlobalInitialization
    //   40	4	1	localObject	Object
    //   5	28	2	localMyApplication	MyApplication
    // Exception table:
    //   from	to	target	type
    //   2	25	40	finally
    //   25	29	40	finally
    //   32	37	40	finally
  }
  
  private void networkInitializationStart(boolean paramBoolean)
  {
    this.sharedPreferences = CommonUtil.getJdSharedPreferences();
    this.alreadyDevice = this.sharedPreferences.getBoolean("registerDevice", false);
    this.alreadyConfig = this.sharedPreferences.getBoolean("serverConfig", false);
    if (!this.alreadyDevice)
    {
      addBlockTaskToken("BLOCK_TASK_TOKEN_REGISTER_DEVICE");
      registerDevice(true);
    }
    if (!this.alreadyConfig)
    {
      addBlockTaskToken("BLOCK_TASK_TOKEN_SERVER_CONFIG");
      serverConfig(true);
    }
    if ((this.alreadyDevice) && (this.alreadyConfig)) {
      initEndCallBack();
    }
    if (!alreadyABTest)
    {
      ABTestUtils.initABData(this.httpGroup);
      alreadyABTest = true;
    }
    if (paramBoolean) {
      return;
    }
    new Thread()
    {
      public void run()
      {
        setName("GlobalInitialization_networkInitializationStart");
        if (GlobalInitialization.this.alreadyDevice) {
          GlobalInitialization.this.registerDevice(false);
        }
        if (GlobalInitialization.this.alreadyConfig) {
          GlobalInitialization.this.serverConfig(false);
        }
      }
    }.start();
    new Timer().schedule(new TimerTask()
    {
      public void run()
      {
        GlobalInitialization.this.checksofteWareUpdated(true, null);
      }
    }, Configuration.getIntegerProperty("routineCheckDelayTime").intValue());
  }
  
  public static void regDevice()
  {
    getGlobalInitializationInstance().registerDevice(false);
  }
  
  private void removeBlockTaskToken(String paramString)
  {
    this.blockTaskTokenSet.remove(paramString);
    if (this.blockTaskTokenSet.size() < 1)
    {
      networkInitializationEnd();
      initEndCallBack();
    }
  }
  
  private void serverConfig(boolean paramBoolean)
  {
    HttpGroup.CustomOnAllListener local3 = new HttpGroup.CustomOnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject().getJSONObjectOrNull("serverConfig");
        SharedPreferences.Editor localEditor;
        Iterator localIterator;
        if (localJSONObjectProxy != null)
        {
          localEditor = GlobalInitialization.this.sharedPreferences.edit();
          localIterator = localJSONObjectProxy.keys();
        }
        for (;;)
        {
          if (!localIterator.hasNext()) {
            localEditor.putBoolean("serverConfig", true);
          }
          try
          {
            localEditor.commit();
            label60:
            for (int i = 0;; i++)
            {
              if (i >= GlobalInitialization.this.configListenerList.size())
              {
                GlobalInitialization.this.alreadyConfig = true;
                GlobalInitialization.this.removeBlockTaskToken("BLOCK_TASK_TOKEN_SERVER_CONFIG");
                return;
                String str1 = (String)localIterator.next();
                String str2 = localJSONObjectProxy.getStringOrNull(str1);
                if (str2 == null) {
                  break;
                }
                localEditor.putString(str1, str2);
                break;
              }
              ((GlobalInitialization.ConfigLoadedListener)GlobalInitialization.this.configListenerList.get(i)).onLoaded();
            }
          }
          catch (Exception localException)
          {
            break label60;
          }
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        GlobalInitialization.this.removeBlockTaskToken("BLOCK_TASK_TOKEN_SERVER_CONFIG");
      }
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    };
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("serverConfig");
    localHttpSetting.setListener(local3);
    localHttpSetting.setNeedGlobalInitialization(false);
    localHttpSetting.setTopPriority(true);
    this.httpGroup.add(localHttpSetting);
  }
  
  public void addConfigLoadedListener(ConfigLoadedListener paramConfigLoadedListener)
  {
    this.configListenerList.add(paramConfigLoadedListener);
  }
  
  public void exit() {}
  
  public void initMyActivity()
  {
    if (this.myActivity == null)
    {
      this.myActivity = MyApplication.getInstance().getCurrentMyActivity();
      if (this.myActivity != null) {
        this.httpGroupSetting.setMyActivity(this.myActivity);
      }
    }
  }
  
  public void networkInitialization(boolean paramBoolean)
  {
    try
    {
      networkInitialization(paramBoolean, false, null);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void networkInitialization(boolean paramBoolean1, boolean paramBoolean2, GlobalInitializationListener paramGlobalInitializationListener)
  {
    for (;;)
    {
      MyApplication localMyApplication;
      try
      {
        this.giListener = paramGlobalInitializationListener;
        this.cpaProcessor = new CPAUtils.Processor(MyApplication.getInstance().getHandler(), this.httpGroup, this);
        localMyApplication = MyApplication.getInstance();
        int i = localMyApplication.networkInitializationState;
        switch (i)
        {
        default: 
          return;
        }
      }
      finally {}
      networkInitializationStart(paramBoolean2);
      if ((this.alreadyDevice) && (this.alreadyConfig))
      {
        localMyApplication.networkInitializationState = 2;
      }
      else
      {
        localMyApplication.networkInitializationState = 1;
        if (paramBoolean1) {}
        try
        {
          wait();
          initEndCallBack();
        }
        catch (InterruptedException localInterruptedException)
        {
          for (;;)
          {
            localInterruptedException.printStackTrace();
          }
        }
        initEndCallBack();
      }
    }
  }
  
  public void registerDevice(boolean paramBoolean)
  {
    if ((paramBoolean) && (this.cpaProcessor.beforeRegisterDevice())) {
      return;
    }
    try
    {
      JSONObject localJSONObject1 = new JSONObject(StatisticsReportUtil.getDeviceInfoStr());
      localJSONObject2 = localJSONObject1;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        HttpGroup.CustomOnAllListener local4;
        HttpGroup.HttpSetting localHttpSetting;
        localJSONException.printStackTrace();
        JSONObject localJSONObject2 = null;
      }
    }
    local4 = new HttpGroup.CustomOnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        try
        {
          GlobalInitialization.this.sharedPreferences.edit().putBoolean("registerDevice", true).commit();
          label26:
          GlobalInitialization.this.alreadyDevice = true;
          GlobalInitialization.this.removeBlockTaskToken("BLOCK_TASK_TOKEN_REGISTER_DEVICE");
          return;
        }
        catch (Exception localException)
        {
          break label26;
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        GlobalInitialization.this.removeBlockTaskToken("BLOCK_TASK_TOKEN_REGISTER_DEVICE");
      }
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    };
    localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setJsonParams(localJSONObject2);
    localHttpSetting.setFunctionId("device");
    localHttpSetting.setListener(local4);
    localHttpSetting.setNeedGlobalInitialization(false);
    localHttpSetting.setTopPriority(true);
    this.httpGroup.add(localHttpSetting);
  }
  
  public static abstract interface ConfigLoadedListener
  {
    public abstract void onLoaded();
  }
  
  public static abstract interface GlobalInitializationListener
  {
    public abstract void initEnd();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.GlobalInitialization
 * JD-Core Version:    0.7.0.1
 */