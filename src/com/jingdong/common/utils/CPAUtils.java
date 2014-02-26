package com.jingdong.common.utils;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.cpa.JniInterface;
import com.jingdong.common.secure.RSAHelper;

public class CPAUtils
{
  private static final String SHARED_PREFERENCES_ALREADY_CPA = "cpaFlag";
  
  public static void loadLibrary()
  {
    System.loadLibrary("jd-jni");
  }
  
  static abstract interface GlobalInitializationInterface
  {
    public abstract void exit();
    
    public abstract void registerDevice(boolean paramBoolean);
  }
  
  public static class Processor
  {
    private CPAUtils.GlobalInitializationInterface globalInitializationInterface;
    private Handler handler;
    private HttpGroup httpGroup;
    
    public Processor(Handler paramHandler, HttpGroup paramHttpGroup, CPAUtils.GlobalInitializationInterface paramGlobalInitializationInterface)
    {
      this.handler = paramHandler;
      this.httpGroup = paramHttpGroup;
      this.globalInitializationInterface = paramGlobalInitializationInterface;
    }
    
    private void getCpaToken()
    {
      HttpGroup.OnCommonListener local2 = new HttpGroup.OnCommonListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
          if (localJSONObjectProxy == null)
          {
            CPAUtils.Processor.this.globalInitializationInterface.exit();
            return;
          }
          String str = localJSONObjectProxy.getStringOrNull("ticket");
          if (str == null)
          {
            CPAUtils.Processor.this.globalInitializationInterface.exit();
            return;
          }
          CPAUtils.Processor.this.startCPa(str, this.val$strByte);
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError)
        {
          CPAUtils.Processor.this.globalInitializationInterface.exit();
        }
        
        public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
      };
      HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setFunctionId("cpaTalk");
      localHttpSetting.setNeedGlobalInitialization(false);
      localHttpSetting.setListener(local2);
      this.httpGroup.add(localHttpSetting);
    }
    
    private void startCPa(String paramString, byte[] paramArrayOfByte)
    {
      try
      {
        RSAHelper.init();
        String str = RSAHelper.encryptBySeg(paramArrayOfByte);
        HttpGroup.OnCommonListener local3 = new HttpGroup.OnCommonListener()
        {
          public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
          {
            JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
            if (localJSONObjectProxy == null)
            {
              CPAUtils.Processor.this.globalInitializationInterface.exit();
              return;
            }
            String str = localJSONObjectProxy.getStringOrNull("code");
            if ((str != null) && (str.equals("0")))
            {
              CommonUtil.getJdSharedPreferences().edit().putBoolean("cpaFlag", true).commit();
              CPAUtils.Processor.this.globalInitializationInterface.registerDevice(true);
              return;
            }
            CPAUtils.Processor.this.globalInitializationInterface.exit();
          }
          
          public void onError(HttpGroup.HttpError paramAnonymousHttpError)
          {
            CPAUtils.Processor.this.globalInitializationInterface.exit();
          }
          
          public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
        };
        HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
        localHttpSetting.setFunctionId("cpa");
        localHttpSetting.putJsonParam("info", str);
        localHttpSetting.putJsonParam("ticket", paramString);
        localHttpSetting.putJsonParam("unionId", Configuration.getProperty("unionId"));
        localHttpSetting.putJsonParam("subunionId", Configuration.getProperty("subunionId"));
        localHttpSetting.putJsonParam("partner", Configuration.getProperty("partner"));
        localHttpSetting.setNeedGlobalInitialization(false);
        localHttpSetting.setListener(local3);
        this.httpGroup.add(localHttpSetting);
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        this.globalInitializationInterface.exit();
      }
    }
    
    public boolean beforeRegisterDevice()
    {
      boolean bool1 = CommonUtil.getJdSharedPreferences().getBoolean("cpaFlag", false);
      boolean bool2 = false;
      if (!bool1)
      {
        this.handler.post(new Runnable()
        {
          public void run()
          {
            try
            {
              CPAUtils.Processor.this.getCpaToken();
              return;
            }
            catch (Throwable localThrowable) {}
          }
        });
        bool2 = true;
      }
      return bool2;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.CPAUtils
 * JD-Core Version:    0.7.0.1
 */