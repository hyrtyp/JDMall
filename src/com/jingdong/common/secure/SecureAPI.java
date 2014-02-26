package com.jingdong.common.secure;

import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpGroupSetting;
import com.jingdong.common.utils.HttpGroup.HttpGroupaAsynPool;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.JSONObjectProxy;

public class SecureAPI
{
  private static final int STATE_DOING = 0;
  private static final int STATE_FAILED = 3;
  private static final int STATE_NONE = 1;
  private static final int STATE_SUCCEED = 2;
  private static final String TAG = "SecureAPI";
  private static SecureAPI instance = new SecureAPI();
  private HttpGroup httpGroup;
  public JSONObjectProxy jsonApiInfos;
  private int mState = 1;
  HttpGroup.OnCommonListener modluesLoadListener = new HttpGroup.OnCommonListener()
  {
    public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
    {
      JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
      String str = localJSONObjectProxy.getStringOrNull("code");
      if ((str != null) && ("0".equals(str)))
      {
        SecureAPI.this.jsonApiInfos = localJSONObjectProxy.getJSONObjectOrNull("modules");
        if (SecureAPI.this.jsonApiInfos != null) {
          SecureAPI.this.complete(2);
        }
      }
      SecureAPI.this.complete(3);
    }
    
    public void onError(HttpGroup.HttpError paramAnonymousHttpError)
    {
      SecureAPI.this.complete(3);
    }
    
    public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
  };
  
  private SecureAPI()
  {
    if (this.httpGroup == null)
    {
      HttpGroup.HttpGroupSetting localHttpGroupSetting = new HttpGroup.HttpGroupSetting();
      localHttpGroupSetting.setType(1000);
      this.httpGroup = new HttpGroup.HttpGroupaAsynPool(localHttpGroupSetting);
    }
  }
  
  public static boolean checkApi(String paramString)
  {
    return instance.doCheckApi(paramString);
  }
  
  private void complete(int paramInt)
  {
    try
    {
      this.mState = paramInt;
      notifyAll();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private boolean doCheckApi(String paramString)
  {
    if (("loginTalk".equals(paramString)) || ("msgUnReadIdList".equals(paramString)) || ("msgSummaryList".equals(paramString)) || ("activationMessage".equals(paramString)) || ("security".equals(paramString)) || ("registerDevice".equals(paramString)) || ("device".equals(paramString)) || ("serverConfig".equals(paramString)) || ("moduleEncrypt".equals(paramString))) {}
    String str;
    do
    {
      JSONObjectProxy localJSONObjectProxy2;
      do
      {
        JSONObjectProxy localJSONObjectProxy1;
        do
        {
          return false;
          localJSONObjectProxy1 = getApiInfos();
        } while (localJSONObjectProxy1 == null);
        localJSONObjectProxy2 = localJSONObjectProxy1.getJSONObjectOrNull(paramString);
      } while (localJSONObjectProxy2 == null);
      str = localJSONObjectProxy2.getStringOrNull("encrypt");
    } while ((str == null) || (!"true".equals(str)));
    return true;
  }
  
  /* Error */
  private JSONObjectProxy getApiInfos()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 116	com/jingdong/common/secure/SecureAPI:jsonApiInfos	Lcom/jingdong/common/utils/JSONObjectProxy;
    //   6: ifnull +12 -> 18
    //   9: aload_0
    //   10: getfield 116	com/jingdong/common/secure/SecureAPI:jsonApiInfos	Lcom/jingdong/common/utils/JSONObjectProxy;
    //   13: astore_2
    //   14: aload_0
    //   15: monitorexit
    //   16: aload_2
    //   17: areturn
    //   18: aload_0
    //   19: getfield 36	com/jingdong/common/secure/SecureAPI:mState	I
    //   22: ifeq +12 -> 34
    //   25: aload_0
    //   26: iconst_0
    //   27: putfield 36	com/jingdong/common/secure/SecureAPI:mState	I
    //   30: aload_0
    //   31: invokespecial 119	com/jingdong/common/secure/SecureAPI:loadModules	()V
    //   34: iconst_1
    //   35: ifeq +7 -> 42
    //   38: aload_0
    //   39: invokevirtual 122	java/lang/Object:wait	()V
    //   42: aload_0
    //   43: getfield 116	com/jingdong/common/secure/SecureAPI:jsonApiInfos	Lcom/jingdong/common/utils/JSONObjectProxy;
    //   46: astore_2
    //   47: goto -33 -> 14
    //   50: astore_3
    //   51: aload_3
    //   52: invokevirtual 125	java/lang/InterruptedException:printStackTrace	()V
    //   55: goto -13 -> 42
    //   58: astore_1
    //   59: aload_0
    //   60: monitorexit
    //   61: aload_1
    //   62: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	63	0	this	SecureAPI
    //   58	4	1	localObject	Object
    //   13	34	2	localJSONObjectProxy	JSONObjectProxy
    //   50	2	3	localInterruptedException	java.lang.InterruptedException
    // Exception table:
    //   from	to	target	type
    //   38	42	50	java/lang/InterruptedException
    //   2	14	58	finally
    //   18	34	58	finally
    //   38	42	58	finally
    //   42	47	58	finally
    //   51	55	58	finally
  }
  
  private void loadModules()
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setNeedGlobalInitialization(false);
    localHttpSetting.setTopPriority(true);
    localHttpSetting.setFunctionId("moduleEncrypt");
    localHttpSetting.putJsonParam("version", "1");
    localHttpSetting.setListener(this.modluesLoadListener);
    this.httpGroup.add(localHttpSetting);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.secure.SecureAPI
 * JD-Core Version:    0.7.0.1
 */