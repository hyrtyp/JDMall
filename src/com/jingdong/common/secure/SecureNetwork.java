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
import java.io.IOException;
import java.util.Random;
import org.json.JSONException;
import org.json.JSONObject;

public class SecureNetwork
{
  private static final int STATE_DOING = 0;
  private static final int STATE_FAILED = 3;
  private static final int STATE_NONE = 1;
  private static final int STATE_SUCCEED = 2;
  private static final String TAG = "HttpNetWork";
  private static SecureNetwork instance = new SecureNetwork();
  private HttpGroup httpGroup;
  public String mPublicKey;
  public String mRandomKey;
  public String mSessionKey;
  private int mState = 1;
  public String mTrueKey;
  HttpGroup.OnCommonListener publicKeyLoadListener = new HttpGroup.OnCommonListener()
  {
    public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
    {
      JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
      SecureNetwork.this.mPublicKey = localJSONObjectProxy.getStringOrNull("pubKey");
      SecureNetwork.this.loadSessionKey();
    }
    
    public void onError(HttpGroup.HttpError paramAnonymousHttpError)
    {
      SecureNetwork.this.complete(3);
    }
    
    public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
  };
  HttpGroup.OnCommonListener sessionKeyLoadListener = new HttpGroup.OnCommonListener()
  {
    public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
    {
      JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
      SecureNetwork.this.mSessionKey = localJSONObjectProxy.getStringOrNull("sessionKey");
      if (SecureNetwork.this.mSessionKey == null)
      {
        SecureNetwork.this.complete(3);
        return;
      }
      SecureNetwork.this.mTrueKey = DesUtil.decrypt(SecureNetwork.this.mSessionKey, SecureNetwork.this.mRandomKey, "utf-8");
      if (SecureNetwork.this.mTrueKey == null)
      {
        SecureNetwork.this.complete(3);
        return;
      }
      SecureNetwork.this.complete(2);
    }
    
    public void onError(HttpGroup.HttpError paramAnonymousHttpError)
    {
      SecureNetwork.this.complete(3);
    }
    
    public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams)
    {
      try
      {
        paramAnonymousHttpSettingParams.putJsonParam("loginInfo", SecureNetwork.this.encryptionKeyData());
        return;
      }
      catch (JSONException localJSONException)
      {
        paramAnonymousHttpSettingParams.setReady(false);
      }
    }
  };
  
  private SecureNetwork()
  {
    if (this.httpGroup == null)
    {
      HttpGroup.HttpGroupSetting localHttpGroupSetting = new HttpGroup.HttpGroupSetting();
      localHttpGroupSetting.setType(1000);
      this.httpGroup = new HttpGroup.HttpGroupaAsynPool(localHttpGroupSetting);
    }
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
  
  /* Error */
  private void doKey(boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iload_1
    //   3: ifne +18 -> 21
    //   6: aload_0
    //   7: getfield 39	com/jingdong/common/secure/SecureNetwork:mState	I
    //   10: istore 5
    //   12: iload 5
    //   14: iconst_2
    //   15: if_icmpne +6 -> 21
    //   18: aload_0
    //   19: monitorexit
    //   20: return
    //   21: aload_0
    //   22: getfield 39	com/jingdong/common/secure/SecureNetwork:mState	I
    //   25: ifeq +12 -> 37
    //   28: aload_0
    //   29: iconst_0
    //   30: putfield 39	com/jingdong/common/secure/SecureNetwork:mState	I
    //   33: aload_0
    //   34: invokespecial 84	com/jingdong/common/secure/SecureNetwork:loadPublicKey	()V
    //   37: iload_2
    //   38: ifeq -20 -> 18
    //   41: aload_0
    //   42: invokevirtual 87	java/lang/Object:wait	()V
    //   45: goto -27 -> 18
    //   48: astore 4
    //   50: aload 4
    //   52: invokevirtual 90	java/lang/InterruptedException:printStackTrace	()V
    //   55: goto -37 -> 18
    //   58: astore_3
    //   59: aload_0
    //   60: monitorexit
    //   61: aload_3
    //   62: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	63	0	this	SecureNetwork
    //   0	63	1	paramBoolean1	boolean
    //   0	63	2	paramBoolean2	boolean
    //   58	4	3	localObject	Object
    //   48	3	4	localInterruptedException	java.lang.InterruptedException
    //   10	6	5	i	int
    // Exception table:
    //   from	to	target	type
    //   41	45	48	java/lang/InterruptedException
    //   6	12	58	finally
    //   21	37	58	finally
    //   41	45	58	finally
    //   50	55	58	finally
  }
  
  public static void doPreparation(boolean paramBoolean1, boolean paramBoolean2)
  {
    instance.doKey(paramBoolean1, paramBoolean2);
  }
  
  /* Error */
  private String doTrueKey(boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 39	com/jingdong/common/secure/SecureNetwork:mState	I
    //   6: iconst_2
    //   7: if_icmpne +19 -> 26
    //   10: aload_0
    //   11: getfield 97	com/jingdong/common/secure/SecureNetwork:mTrueKey	Ljava/lang/String;
    //   14: ifnull +12 -> 26
    //   17: aload_0
    //   18: getfield 97	com/jingdong/common/secure/SecureNetwork:mTrueKey	Ljava/lang/String;
    //   21: astore_3
    //   22: aload_0
    //   23: monitorexit
    //   24: aload_3
    //   25: areturn
    //   26: iload_1
    //   27: ifne +8 -> 35
    //   30: aconst_null
    //   31: astore_3
    //   32: goto -10 -> 22
    //   35: iconst_0
    //   36: iconst_1
    //   37: invokestatic 99	com/jingdong/common/secure/SecureNetwork:doPreparation	(ZZ)V
    //   40: aload_0
    //   41: getfield 97	com/jingdong/common/secure/SecureNetwork:mTrueKey	Ljava/lang/String;
    //   44: astore_3
    //   45: goto -23 -> 22
    //   48: astore_2
    //   49: aload_0
    //   50: monitorexit
    //   51: aload_2
    //   52: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	53	0	this	SecureNetwork
    //   0	53	1	paramBoolean	boolean
    //   48	4	2	localObject	Object
    //   21	24	3	str	String
    // Exception table:
    //   from	to	target	type
    //   2	22	48	finally
    //   35	45	48	finally
  }
  
  private String getRandomNumber()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    Random localRandom = new Random();
    for (int i = 0;; i++)
    {
      if (i >= 8) {
        return localStringBuffer.toString();
      }
      localStringBuffer.append(Math.abs(localRandom.nextInt()) % 10);
    }
  }
  
  public static String getTrueKey(boolean paramBoolean)
  {
    return instance.doTrueKey(paramBoolean);
  }
  
  private void loadPublicKey()
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setNeedGlobalInitialization(false);
    localHttpSetting.setTopPriority(true);
    localHttpSetting.setListener(this.publicKeyLoadListener);
    localHttpSetting.setFunctionId("loginTalk");
    this.httpGroup.add(localHttpSetting);
  }
  
  private void loadSessionKey()
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setNeedGlobalInitialization(false);
    localHttpSetting.setTopPriority(true);
    localHttpSetting.setFunctionId("security");
    localHttpSetting.setListener(this.sessionKeyLoadListener);
    this.httpGroup.add(localHttpSetting);
  }
  
  public String encryptionKeyData()
    throws JSONException
  {
    this.mRandomKey = getRandomNumber();
    RSAHelper.init(this.mPublicKey);
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("envelopeKey", this.mRandomKey);
    String str1 = localJSONObject.toString();
    try
    {
      String str2 = RSAHelper.encryptBySeg(str1.getBytes());
      return str2;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return "";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.secure.SecureNetwork
 * JD-Core Version:    0.7.0.1
 */