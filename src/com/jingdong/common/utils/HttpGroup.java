package com.jingdong.common.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import com.jingdong.common.MyApplication;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.database.table.CacheFileTable;
import com.jingdong.common.database.table.UnExcuteFunctionTable;
import com.jingdong.common.entity.CacheFile;
import com.jingdong.common.entity.UnExcuteFunction;
import com.jingdong.common.frame.IDestroyListener;
import com.jingdong.common.frame.IMainActivity;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.plug.MergeSwitcher;
import com.jingdong.common.res.StringUtil;
import com.jingdong.common.secure.Base64;
import com.jingdong.common.secure.DesUtil;
import com.jingdong.common.secure.SecureAPI;
import com.jingdong.common.secure.SecureNetwork;
import com.jingdong.common.ui.DialogController;
import com.jingdong.common.utils.thread.PooledThread;
import com.jingdong.common.utils.thread.ThreadPool;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class HttpGroup
  implements IDestroyListener
{
  private static final HashMap<IMyActivity, ArrayList<HttpRequest>> alertDialogStateMap = new HashMap();
  private static int attempts;
  private static int attemptsTime;
  private static String charset;
  private static int connectTimeout;
  private static int connectTimeoutForWIFI;
  private static String cookies;
  private static int httpIdCounter = 0;
  private static String mMd5Key;
  private static JSONObjectProxy mModules;
  private static int readTimeout;
  private static int readTimeoutForWIFI;
  private int completesCount = 0;
  protected int httpCount = 0;
  protected HttpGroupSetting httpGroupSetting;
  private int maxProgress = 0;
  private int maxStep = 0;
  private OnGroupCompleteListener onGroupCompleteListener;
  private OnGroupProgressListener onGroupProgressListener;
  private OnGroupStartListener onGroupStartListener;
  private OnGroupStepListener onGroupStepListener;
  protected int priority;
  private int progress = 0;
  private boolean reportUserInfoFlag = true;
  private int step = 0;
  protected int type;
  private boolean useCaches = false;
  
  static
  {
    charset = "UTF-8";
  }
  
  public HttpGroup(HttpGroupSetting paramHttpGroupSetting)
  {
    initParams();
    this.httpGroupSetting = paramHttpGroupSetting;
    this.priority = paramHttpGroupSetting.getPriority();
    this.type = paramHttpGroupSetting.getType();
  }
  
  public static void cleanCookies()
  {
    cookies = null;
  }
  
  public static String getCookie()
  {
    return cookies;
  }
  
  /* Error */
  private void initParams()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 117	com/jingdong/common/utils/HttpGroup:connectTimeout	I
    //   5: istore_2
    //   6: iload_2
    //   7: ifeq +6 -> 13
    //   10: aload_0
    //   11: monitorexit
    //   12: return
    //   13: ldc 136
    //   15: invokestatic 142	com/jingdong/common/config/Configuration:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   18: invokestatic 148	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   21: putstatic 117	com/jingdong/common/utils/HttpGroup:connectTimeout	I
    //   24: ldc 149
    //   26: invokestatic 142	com/jingdong/common/config/Configuration:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   29: invokestatic 148	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   32: putstatic 101	com/jingdong/common/utils/HttpGroup:connectTimeoutForWIFI	I
    //   35: ldc 150
    //   37: invokestatic 142	com/jingdong/common/config/Configuration:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   40: invokestatic 148	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   43: putstatic 123	com/jingdong/common/utils/HttpGroup:readTimeout	I
    //   46: ldc 151
    //   48: invokestatic 142	com/jingdong/common/config/Configuration:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   51: invokestatic 148	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   54: putstatic 120	com/jingdong/common/utils/HttpGroup:readTimeoutForWIFI	I
    //   57: ldc 152
    //   59: invokestatic 142	com/jingdong/common/config/Configuration:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   62: invokestatic 148	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   65: putstatic 98	com/jingdong/common/utils/HttpGroup:attempts	I
    //   68: ldc 153
    //   70: invokestatic 142	com/jingdong/common/config/Configuration:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   73: invokestatic 148	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   76: putstatic 133	com/jingdong/common/utils/HttpGroup:attemptsTime	I
    //   79: goto -69 -> 10
    //   82: astore_1
    //   83: aload_0
    //   84: monitorexit
    //   85: aload_1
    //   86: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	87	0	this	HttpGroup
    //   82	4	1	localObject	Object
    //   5	2	2	i	int
    // Exception table:
    //   from	to	target	type
    //   2	6	82	finally
    //   13	79	82	finally
  }
  
  public static String mergerUrlAndParams(String paramString, Map<String, String> paramMap)
  {
    if (paramMap == null) {}
    Set localSet;
    do
    {
      return paramString;
      localSet = paramMap.keySet();
    } while ((localSet == null) || (localSet.isEmpty()));
    StringBuilder localStringBuilder = new StringBuilder(paramString);
    int i = paramString.indexOf("?");
    Iterator localIterator;
    if (i == -1)
    {
      localStringBuilder.append("?");
      localIterator = localSet.iterator();
    }
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        return localStringBuilder.toString();
        String str1 = paramString.substring(i + 1);
        if ((TextUtils.isEmpty(str1)) || (str1.endsWith("&"))) {
          break;
        }
        localStringBuilder.append("&");
        break;
      }
      String str2 = (String)localIterator.next();
      String str3 = (String)paramMap.get(str2);
      localStringBuilder.append(str2).append("=").append(str3);
      if (localIterator.hasNext()) {
        localStringBuilder.append("&");
      }
    }
  }
  
  private void onProgress(int paramInt1, int paramInt2)
  {
    if (this.onGroupProgressListener != null) {
      this.onGroupProgressListener.onProgress(paramInt1, paramInt2);
    }
  }
  
  private void onStep(int paramInt1, int paramInt2)
  {
    if (this.onGroupStepListener != null) {
      this.onGroupStepListener.onStep(paramInt1, paramInt2);
    }
  }
  
  public static void queryMd5Key(CompleteListener paramCompleteListener)
  {
    HttpGroupSetting localHttpGroupSetting = new HttpGroupSetting();
    localHttpGroupSetting.setPriority(1000);
    localHttpGroupSetting.setType(1000);
    queryMd5Key(new HttpGroupaAsynPool(localHttpGroupSetting), paramCompleteListener);
  }
  
  public static void queryMd5Key(HttpGroup paramHttpGroup, CompleteListener paramCompleteListener)
  {
    OnAllListener local1 = new OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        try
        {
          String str = paramAnonymousHttpResponse.getJSONObject().getStringOrNull("key");
          if (str == null) {
            return;
          }
          arrayOfByte = Base64.decode(str);
          i = 0;
          j = arrayOfByte.length;
        }
        catch (Exception localException)
        {
          byte[] arrayOfByte;
          int i;
          int j;
          while (HttpGroup.this != null)
          {
            HttpGroup.this.onComplete(null);
            return;
            arrayOfByte[i] = ((byte)(0xFFFFFFFF ^ arrayOfByte[i]));
            i++;
          }
        }
        if (i >= j)
        {
          HttpGroup.setMd5Key(new String(arrayOfByte));
          if (HttpGroup.this == null) {
            return;
          }
          HttpGroup.this.onComplete(null);
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        if (HttpGroup.this != null) {
          HttpGroup.this.onComplete(null);
        }
      }
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    };
    HttpSetting localHttpSetting = new HttpSetting();
    localHttpSetting.setFunctionId("key");
    localHttpSetting.setJsonParams(new JSONObject());
    localHttpSetting.setListener(local1);
    localHttpSetting.setPost(true);
    paramHttpGroup.add(localHttpSetting);
  }
  
  public static void setCookies(String paramString)
  {
    cookies = paramString;
  }
  
  public static void setMd5Key(String paramString)
  {
    mMd5Key = paramString;
  }
  
  public static void setModules(JSONObjectProxy paramJSONObjectProxy)
  {
    mModules = paramJSONObjectProxy;
  }
  
  private void tryEffect(HttpSetting paramHttpSetting)
  {
    IMyActivity localIMyActivity = this.httpGroupSetting.getMyActivity();
    if ((1 == paramHttpSetting.getEffect()) && (paramHttpSetting.getEffectState() == 0) && (localIMyActivity != null)) {
      paramHttpSetting.setListener(new DefaultEffectHttpListener(paramHttpSetting, localIMyActivity));
    }
  }
  
  public HttpRequest add(final HttpSetting paramHttpSetting)
  {
    httpIdCounter = 1 + httpIdCounter;
    paramHttpSetting.setId(httpIdCounter);
    tryEffect(paramHttpSetting);
    final HttpRequest localHttpRequest = new HttpRequest(paramHttpSetting);
    final OnReadyListener localOnReadyListener = paramHttpSetting.getOnReadyListener();
    if (localOnReadyListener != null)
    {
      new Thread()
      {
        public void run()
        {
          setName("HttpGroup_add_" + HttpGroup.httpIdCounter);
          localOnReadyListener.onReady(paramHttpSetting);
          if (paramHttpSetting.isReady())
          {
            HttpGroup.this.add2(localHttpRequest);
            return;
          }
          HttpGroup.HttpError localHttpError = new HttpGroup.HttpError(new Exception("no ready"));
          paramHttpSetting.onError(localHttpError);
        }
      }.start();
      return localHttpRequest;
    }
    add2(localHttpRequest);
    return localHttpRequest;
  }
  
  public HttpRequest add(String paramString, Map<String, String> paramMap, OnAllListener paramOnAllListener)
  {
    HttpSetting localHttpSetting = new HttpSetting();
    localHttpSetting.setUrl(paramString);
    localHttpSetting.setMapParams(paramMap);
    localHttpSetting.setListener(paramOnAllListener);
    return add(localHttpSetting);
  }
  
  public HttpRequest add(String paramString, JSONObject paramJSONObject, OnAllListener paramOnAllListener)
  {
    HttpSetting localHttpSetting = new HttpSetting();
    localHttpSetting.setFunctionId(paramString);
    localHttpSetting.setJsonParams(paramJSONObject);
    localHttpSetting.setListener(paramOnAllListener);
    return add(localHttpSetting);
  }
  
  public void add2(HttpRequest paramHttpRequest)
  {
    HttpSetting localHttpSetting = paramHttpRequest.getHttpSetting();
    String str = Configuration.getProperty("host");
    if (localHttpSetting.getHost() == null) {
      localHttpSetting.setHost(str);
    }
    if (localHttpSetting.getType() == 0) {
      localHttpSetting.setType(this.type);
    }
    if (localHttpSetting.getPriority() == 0) {
      localHttpSetting.setPriority(this.priority);
    }
    if (localHttpSetting.getPriority() == 0) {
      switch (localHttpSetting.getType())
      {
      }
    }
    for (;;)
    {
      execute(paramHttpRequest);
      return;
      localHttpSetting.setPriority(1000);
      continue;
      localHttpSetting.setPriority(5000);
      continue;
      localHttpSetting.setPriority(500);
    }
  }
  
  protected void addCompletesCount()
  {
    this.completesCount = (1 + this.completesCount);
    if (this.completesCount == this.httpCount) {
      onComplete();
    }
  }
  
  protected void addMaxProgress(int paramInt)
  {
    this.maxProgress = (paramInt + this.maxProgress);
    onProgress(this.maxProgress, this.progress);
  }
  
  protected void addMaxStep(int paramInt)
  {
    this.maxStep = (paramInt + this.maxStep);
    onStep(this.maxStep, this.step);
  }
  
  protected void addProgress(int paramInt)
  {
    this.progress = (paramInt + this.progress);
    onProgress(this.maxProgress, this.progress);
  }
  
  protected void addStep(int paramInt)
  {
    this.step = (paramInt + this.step);
    onStep(this.maxStep, this.step);
  }
  
  protected abstract void execute(HttpRequest paramHttpRequest);
  
  protected void onComplete()
  {
    if (this.onGroupCompleteListener != null) {
      this.onGroupCompleteListener.onComplete();
    }
  }
  
  public void onDestroy() {}
  
  protected void onStart()
  {
    if (this.onGroupStartListener != null) {
      this.onGroupStartListener.onStart();
    }
  }
  
  public void setOnGroupCompleteListener(OnGroupCompleteListener paramOnGroupCompleteListener)
  {
    this.onGroupCompleteListener = paramOnGroupCompleteListener;
  }
  
  public void setOnGroupProgressListener(OnGroupProgressListener paramOnGroupProgressListener)
  {
    this.onGroupProgressListener = paramOnGroupProgressListener;
  }
  
  public void setOnGroupStartListener(OnGroupStartListener paramOnGroupStartListener)
  {
    this.onGroupStartListener = paramOnGroupStartListener;
  }
  
  public void setOnGroupStepListener(OnGroupStepListener paramOnGroupStepListener)
  {
    this.onGroupStepListener = paramOnGroupStepListener;
  }
  
  public static abstract interface CompleteListener
  {
    public abstract void onComplete(Bundle paramBundle);
  }
  
  public static abstract interface CustomOnAllListener
    extends HttpGroup.OnAllListener
  {}
  
  static abstract interface Handler
  {
    public abstract void run();
  }
  
  public static class HttpError
  {
    public static final int DATE_CODE = 4;
    public static final int EXCEPTION = 0;
    public static final String EXCEPTION_MESSAGE_ATTESTATION_RSA = "attestation RSA";
    public static final String EXCEPTION_MESSAGE_ATTESTATION_WIFI = "attestation WIFI";
    public static final String EXCEPTION_MESSAGE_NO_CACHE = "no cache";
    public static final String EXCEPTION_MESSAGE_NO_READY = "no ready";
    public static final int JSON_CODE = 3;
    public static final int RESPONSE_CODE = 2;
    public static final int TIME_OUT = 1;
    private int errorCode;
    private Throwable exception;
    private HttpGroup.HttpResponse httpResponse;
    private int jsonCode;
    private String message;
    private boolean noRetry;
    private int responseCode;
    private int times;
    
    public HttpError() {}
    
    public HttpError(Throwable paramThrowable)
    {
      this.errorCode = 0;
      this.exception = paramThrowable;
    }
    
    public int getErrorCode()
    {
      return this.errorCode;
    }
    
    public String getErrorCodeStr()
    {
      switch (this.errorCode)
      {
      default: 
        return "UNKNOWN";
      case 0: 
        return "EXCEPTION";
      case 1: 
        return "TIME_OUT";
      case 2: 
        return "RESPONSE_CODE";
      }
      return "JSON_CODE";
    }
    
    public Throwable getException()
    {
      return this.exception;
    }
    
    public HttpGroup.HttpResponse getHttpResponse()
    {
      return this.httpResponse;
    }
    
    public int getJsonCode()
    {
      return this.jsonCode;
    }
    
    public String getMessage()
    {
      return this.message;
    }
    
    public int getResponseCode()
    {
      return this.responseCode;
    }
    
    public int getTimes()
    {
      return this.times;
    }
    
    public boolean isNoRetry()
    {
      return this.noRetry;
    }
    
    public void setErrorCode(int paramInt)
    {
      this.errorCode = paramInt;
    }
    
    public void setException(Throwable paramThrowable)
    {
      this.exception = paramThrowable;
    }
    
    public void setHttpResponse(HttpGroup.HttpResponse paramHttpResponse)
    {
      this.httpResponse = paramHttpResponse;
    }
    
    public void setJsonCode(int paramInt)
    {
      this.jsonCode = paramInt;
    }
    
    public void setMessage(String paramString)
    {
      this.message = paramString;
    }
    
    public void setNoRetry(boolean paramBoolean)
    {
      this.noRetry = paramBoolean;
    }
    
    public void setResponseCode(int paramInt)
    {
      this.responseCode = paramInt;
    }
    
    public void setTimes(int paramInt)
    {
      this.times = paramInt;
    }
    
    public String toString()
    {
      if (getException() != null) {}
      return "HttpError [errorCode=" + getErrorCodeStr() + ", exception=" + this.exception + ", jsonCode=" + this.jsonCode + ", message=" + this.message + ", responseCode=" + this.responseCode + ", time=" + this.times + "]";
    }
  }
  
  public static class HttpGroupSetting
  {
    public static final int PRIORITY_FILE = 500;
    public static final int PRIORITY_IMAGE = 5000;
    public static final int PRIORITY_JSON = 1000;
    public static final int TYPE_FILE = 500;
    public static final int TYPE_IMAGE = 5000;
    public static final int TYPE_JSON = 1000;
    private IMyActivity myActivity;
    private int priority;
    private int type;
    
    public IMyActivity getMyActivity()
    {
      return this.myActivity;
    }
    
    public int getPriority()
    {
      return this.priority;
    }
    
    public int getType()
    {
      return this.type;
    }
    
    public void setMyActivity(IMyActivity paramIMyActivity)
    {
      this.myActivity = paramIMyActivity;
    }
    
    public void setPriority(int paramInt)
    {
      this.priority = paramInt;
    }
    
    public void setType(int paramInt)
    {
      this.type = paramInt;
      if (this.priority == 0) {}
      switch (paramInt)
      {
      default: 
        return;
      case 1000: 
        setPriority(1000);
        return;
      }
      setPriority(5000);
    }
  }
  
  public static class HttpGroupSync
    extends HttpGroup
  {
    public HttpGroupSync(HttpGroup.HttpGroupSetting paramHttpGroupSetting)
    {
      super();
    }
    
    public void execute(HttpGroup.HttpRequest paramHttpRequest) {}
  }
  
  public static class HttpGroupaAsynPool
    extends HttpGroup
  {
    public HttpGroupaAsynPool(HttpGroup.HttpGroupSetting paramHttpGroupSetting)
    {
      super();
    }
    
    public void execute(final HttpGroup.HttpRequest paramHttpRequest)
    {
      Runnable local1 = new Runnable()
      {
        public void run()
        {
          HttpGroup.HttpGroupaAsynPool localHttpGroupaAsynPool = HttpGroup.HttpGroupaAsynPool.this;
          localHttpGroupaAsynPool.httpCount = (1 + localHttpGroupaAsynPool.httpCount);
          if (HttpGroup.HttpGroupaAsynPool.this.httpCount < 1) {
            HttpGroup.HttpGroupaAsynPool.this.onStart();
          }
          paramHttpRequest.noNeedConnectionHandler();
          Runnable local1;
          if (paramHttpRequest.isNeedConnection)
          {
            local1 = new Runnable()
            {
              public void run()
              {
                this.val$httpRequest.needConnectionHandler();
              }
            };
            if (paramHttpRequest.getHttpSetting().isTopPriority()) {
              new Thread(local1).start();
            }
          }
          else
          {
            return;
          }
          if (paramHttpRequest.getHttpSetting().getPriority() == 1000)
          {
            PooledThread.getSecondThreadPool().offerTask(local1, paramHttpRequest.getHttpSetting().getPriority());
            return;
          }
          PooledThread.getThirdThreadPool().offerTask(local1, paramHttpRequest.getHttpSetting().getPriority());
        }
      };
      if (paramHttpRequest.getHttpSetting().isTopPriority())
      {
        Thread localThread = new Thread(local1);
        localThread.setName("HttpGroup_isTopPriority");
        localThread.start();
        return;
      }
      PooledThread.getFirstThreadPool().offerTask(local1, paramHttpRequest.getHttpSetting().getPriority());
    }
  }
  
  public class HttpRequest
    implements HttpGroup.StopController
  {
    private static final String CONNECTION_RESET_BY_PEER = "Connection reset by peer";
    protected static final int MODULE_STATE_DISABLE = 0;
    protected static final int MODULE_STATE_ENCRYPT = 3;
    private HttpGroup.Handler cacheHandler = new HttpGroup.Handler()
    {
      /* Error */
      public void run()
      {
        // Byte code:
        //   0: aload_0
        //   1: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$4:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   4: getfield 26	com/jingdong/common/utils/HttpGroup$HttpRequest:httpSetting	Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
        //   7: invokevirtual 32	com/jingdong/common/utils/HttpGroup$HttpSetting:getCacheMode	()I
        //   10: iconst_2
        //   11: if_icmpeq +332 -> 343
        //   14: aload_0
        //   15: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$4:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   18: getfield 26	com/jingdong/common/utils/HttpGroup$HttpRequest:httpSetting	Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
        //   21: invokevirtual 36	com/jingdong/common/utils/HttpGroup$HttpSetting:isLocalFileCache	()Z
        //   24: ifeq +319 -> 343
        //   27: aload_0
        //   28: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$4:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   31: invokestatic 40	com/jingdong/common/utils/HttpGroup$HttpRequest:access$4	(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)Ljava/io/File;
        //   34: astore_1
        //   35: aload_1
        //   36: ifnull +307 -> 343
        //   39: aload_0
        //   40: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$4:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   43: getfield 26	com/jingdong/common/utils/HttpGroup$HttpRequest:httpSetting	Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
        //   46: invokevirtual 44	com/jingdong/common/utils/HttpGroup$HttpSetting:getLocalFileCacheTime	()J
        //   49: lconst_0
        //   50: lcmp
        //   51: ifeq +18 -> 69
        //   54: aload_1
        //   55: invokestatic 50	com/jingdong/common/database/table/CacheFileTable:isExpired	(Ljava/io/File;)Z
        //   58: ifeq +11 -> 69
        //   61: aload_0
        //   62: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$4:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   65: invokestatic 53	com/jingdong/common/utils/HttpGroup$HttpRequest:access$5	(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
        //   68: return
        //   69: aload_0
        //   70: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$4:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   73: new 55	com/jingdong/common/utils/HttpGroup$HttpResponse
        //   76: dup
        //   77: aload_0
        //   78: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$4:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   81: invokestatic 59	com/jingdong/common/utils/HttpGroup$HttpRequest:access$14	(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)Lcom/jingdong/common/utils/HttpGroup;
        //   84: invokespecial 62	com/jingdong/common/utils/HttpGroup$HttpResponse:<init>	(Lcom/jingdong/common/utils/HttpGroup;)V
        //   87: putfield 66	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
        //   90: aload_0
        //   91: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$4:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   94: getfield 26	com/jingdong/common/utils/HttpGroup$HttpRequest:httpSetting	Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
        //   97: invokevirtual 69	com/jingdong/common/utils/HttpGroup$HttpSetting:getType	()I
        //   100: lookupswitch	default:+28->128, 1000:+29->129, 5000:+164->264
        //   129: aconst_null
        //   130: astore 5
        //   132: new 71	java/io/FileInputStream
        //   135: dup
        //   136: aload_1
        //   137: invokespecial 74	java/io/FileInputStream:<init>	(Ljava/io/File;)V
        //   140: astore 6
        //   142: aload_0
        //   143: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$4:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   146: getfield 66	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
        //   149: aload 6
        //   151: invokestatic 79	com/jingdong/common/utils/HttpGroup:access$5	()Ljava/lang/String;
        //   154: invokestatic 85	com/jingdong/common/utils/IOUtil:readAsString	(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
        //   157: invokevirtual 89	com/jingdong/common/utils/HttpGroup$HttpResponse:setString	(Ljava/lang/String;)V
        //   160: aload_0
        //   161: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$4:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   164: getfield 66	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
        //   167: new 91	com/jingdong/common/utils/JSONObjectProxy
        //   170: dup
        //   171: new 93	org/json/JSONObject
        //   174: dup
        //   175: aload_0
        //   176: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$4:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   179: getfield 66	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
        //   182: invokevirtual 96	com/jingdong/common/utils/HttpGroup$HttpResponse:getString	()Ljava/lang/String;
        //   185: invokespecial 98	org/json/JSONObject:<init>	(Ljava/lang/String;)V
        //   188: invokespecial 101	com/jingdong/common/utils/JSONObjectProxy:<init>	(Lorg/json/JSONObject;)V
        //   191: invokevirtual 105	com/jingdong/common/utils/HttpGroup$HttpResponse:setJsonObject	(Lcom/jingdong/common/utils/JSONObjectProxy;)V
        //   194: aload 6
        //   196: ifnull -128 -> 68
        //   199: aload 6
        //   201: invokevirtual 108	java/io/FileInputStream:close	()V
        //   204: return
        //   205: astore 12
        //   207: return
        //   208: astore 7
        //   210: aload 7
        //   212: invokevirtual 111	java/lang/Exception:printStackTrace	()V
        //   215: aload_1
        //   216: invokevirtual 116	java/io/File:delete	()Z
        //   219: pop
        //   220: aload_0
        //   221: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$4:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   224: aconst_null
        //   225: putfield 66	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
        //   228: aload_0
        //   229: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$4:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   232: invokestatic 53	com/jingdong/common/utils/HttpGroup$HttpRequest:access$5	(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
        //   235: aload 5
        //   237: ifnull -169 -> 68
        //   240: aload 5
        //   242: invokevirtual 108	java/io/FileInputStream:close	()V
        //   245: return
        //   246: astore 11
        //   248: return
        //   249: astore 8
        //   251: aload 5
        //   253: ifnull +8 -> 261
        //   256: aload 5
        //   258: invokevirtual 108	java/io/FileInputStream:close	()V
        //   261: aload 8
        //   263: athrow
        //   264: aload_0
        //   265: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$4:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   268: getfield 66	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
        //   271: aload_1
        //   272: invokevirtual 119	java/io/File:length	()J
        //   275: invokevirtual 123	com/jingdong/common/utils/HttpGroup$HttpResponse:setLength	(J)V
        //   278: aload_0
        //   279: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$4:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   282: getfield 66	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
        //   285: aload_1
        //   286: invokevirtual 126	com/jingdong/common/utils/HttpGroup$HttpResponse:setSaveFile	(Ljava/io/File;)V
        //   289: aload_0
        //   290: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$4:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   293: getfield 26	com/jingdong/common/utils/HttpGroup$HttpRequest:httpSetting	Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
        //   296: invokevirtual 129	com/jingdong/common/utils/HttpGroup$HttpSetting:isNeedShareImage	()Z
        //   299: ifeq -231 -> 68
        //   302: aload_1
        //   303: invokestatic 135	com/jingdong/common/utils/FileService:saveShareImage	(Ljava/io/File;)Ljava/lang/String;
        //   306: astore 4
        //   308: aload_0
        //   309: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$4:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   312: getfield 66	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
        //   315: aload 4
        //   317: invokevirtual 138	com/jingdong/common/utils/HttpGroup$HttpResponse:setShareImagePath	(Ljava/lang/String;)V
        //   320: return
        //   321: astore_2
        //   322: aload_1
        //   323: invokevirtual 116	java/io/File:delete	()Z
        //   326: pop
        //   327: aload_0
        //   328: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$4:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   331: aconst_null
        //   332: putfield 66	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
        //   335: aload_0
        //   336: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$4:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   339: invokestatic 53	com/jingdong/common/utils/HttpGroup$HttpRequest:access$5	(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
        //   342: return
        //   343: aload_0
        //   344: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$4:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   347: invokestatic 53	com/jingdong/common/utils/HttpGroup$HttpRequest:access$5	(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
        //   350: return
        //   351: astore 9
        //   353: goto -92 -> 261
        //   356: astore 8
        //   358: aload 6
        //   360: astore 5
        //   362: goto -111 -> 251
        //   365: astore 7
        //   367: aload 6
        //   369: astore 5
        //   371: goto -161 -> 210
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	374	0	this	4
        //   34	289	1	localFile	File
        //   321	1	2	localThrowable	Throwable
        //   306	10	4	str	String
        //   130	240	5	localObject1	Object
        //   140	228	6	localFileInputStream	java.io.FileInputStream
        //   208	3	7	localException1	Exception
        //   365	1	7	localException2	Exception
        //   249	13	8	localObject2	Object
        //   356	1	8	localObject3	Object
        //   351	1	9	localException3	Exception
        //   246	1	11	localException4	Exception
        //   205	1	12	localException5	Exception
        // Exception table:
        //   from	to	target	type
        //   199	204	205	java/lang/Exception
        //   132	142	208	java/lang/Exception
        //   240	245	246	java/lang/Exception
        //   132	142	249	finally
        //   210	235	249	finally
        //   264	320	321	java/lang/Throwable
        //   256	261	351	java/lang/Exception
        //   142	194	356	finally
        //   142	194	365	java/lang/Exception
      }
    };
    protected HttpURLConnection conn;
    private HttpGroup.Handler connectionHandler = new HttpGroup.Handler()
    {
      /* Error */
      public void run()
      {
        // Byte code:
        //   0: getstatic 28	com/jingdong/common/utils/NetUtils:isProxy	Z
        //   3: istore_1
        //   4: invokestatic 33	com/jingdong/common/MyApplication:networkSetting	()V
        //   7: iconst_0
        //   8: istore_2
        //   9: iload_2
        //   10: aload_0
        //   11: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   14: getfield 37	com/jingdong/common/utils/HttpGroup$HttpRequest:httpSetting	Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
        //   17: invokevirtual 43	com/jingdong/common/utils/HttpGroup$HttpSetting:getAttempts	()I
        //   20: if_icmplt +4 -> 24
        //   23: return
        //   24: aload_0
        //   25: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   28: invokestatic 46	com/jingdong/common/utils/HttpGroup$HttpRequest:access$7	(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
        //   31: aload_0
        //   32: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   35: invokestatic 49	com/jingdong/common/utils/HttpGroup$HttpRequest:access$8	(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
        //   38: aload_0
        //   39: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   42: getfield 37	com/jingdong/common/utils/HttpGroup$HttpRequest:httpSetting	Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
        //   45: invokevirtual 53	com/jingdong/common/utils/HttpGroup$HttpSetting:getFinalUrl	()Ljava/lang/String;
        //   48: astore 8
        //   50: aload 8
        //   52: ifnonnull +15 -> 67
        //   55: aload_0
        //   56: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   59: getfield 37	com/jingdong/common/utils/HttpGroup$HttpRequest:httpSetting	Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
        //   62: invokevirtual 56	com/jingdong/common/utils/HttpGroup$HttpSetting:getUrl	()Ljava/lang/String;
        //   65: astore 8
        //   67: new 58	java/net/URL
        //   70: dup
        //   71: aload 8
        //   73: invokespecial 61	java/net/URL:<init>	(Ljava/lang/String;)V
        //   76: astore 9
        //   78: aconst_null
        //   79: astore 10
        //   81: aconst_null
        //   82: astore 11
        //   84: iload_1
        //   85: ifeq +22 -> 107
        //   88: invokestatic 65	com/jingdong/common/utils/NetUtils:getNetType	()Lcom/jingdong/common/utils/NetUtils$NetType;
        //   91: astore 12
        //   93: aload 12
        //   95: invokevirtual 70	com/jingdong/common/utils/NetUtils$NetType:getProxyHost	()Ljava/lang/String;
        //   98: astore 10
        //   100: aload 12
        //   102: invokevirtual 74	com/jingdong/common/utils/NetUtils$NetType:getProxyPort	()Ljava/lang/Integer;
        //   105: astore 11
        //   107: iload_1
        //   108: ifeq +312 -> 420
        //   111: aload 10
        //   113: ifnull +307 -> 420
        //   116: aload 11
        //   118: ifnull +302 -> 420
        //   121: aload_0
        //   122: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   125: aload 9
        //   127: new 76	java/net/Proxy
        //   130: dup
        //   131: getstatic 82	java/net/Proxy$Type:HTTP	Ljava/net/Proxy$Type;
        //   134: new 84	java/net/InetSocketAddress
        //   137: dup
        //   138: aload 10
        //   140: aload 11
        //   142: invokevirtual 89	java/lang/Integer:intValue	()I
        //   145: invokespecial 92	java/net/InetSocketAddress:<init>	(Ljava/lang/String;I)V
        //   148: invokespecial 95	java/net/Proxy:<init>	(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
        //   151: invokevirtual 99	java/net/URL:openConnection	(Ljava/net/Proxy;)Ljava/net/URLConnection;
        //   154: checkcast 101	java/net/HttpURLConnection
        //   157: putfield 105	com/jingdong/common/utils/HttpGroup$HttpRequest:conn	Ljava/net/HttpURLConnection;
        //   160: aload_0
        //   161: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   164: getfield 105	com/jingdong/common/utils/HttpGroup$HttpRequest:conn	Ljava/net/HttpURLConnection;
        //   167: aload_0
        //   168: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   171: getfield 37	com/jingdong/common/utils/HttpGroup$HttpRequest:httpSetting	Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
        //   174: invokevirtual 108	com/jingdong/common/utils/HttpGroup$HttpSetting:getConnectTimeout	()I
        //   177: invokevirtual 112	java/net/HttpURLConnection:setConnectTimeout	(I)V
        //   180: aload_0
        //   181: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   184: getfield 105	com/jingdong/common/utils/HttpGroup$HttpRequest:conn	Ljava/net/HttpURLConnection;
        //   187: aload_0
        //   188: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   191: getfield 37	com/jingdong/common/utils/HttpGroup$HttpRequest:httpSetting	Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
        //   194: invokevirtual 115	com/jingdong/common/utils/HttpGroup$HttpSetting:getReadTimeout	()I
        //   197: invokevirtual 118	java/net/HttpURLConnection:setReadTimeout	(I)V
        //   200: aload_0
        //   201: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   204: getfield 105	com/jingdong/common/utils/HttpGroup$HttpRequest:conn	Ljava/net/HttpURLConnection;
        //   207: aload_0
        //   208: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   211: invokestatic 122	com/jingdong/common/utils/HttpGroup$HttpRequest:access$14	(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)Lcom/jingdong/common/utils/HttpGroup;
        //   214: invokestatic 128	com/jingdong/common/utils/HttpGroup:access$6	(Lcom/jingdong/common/utils/HttpGroup;)Z
        //   217: invokevirtual 132	java/net/HttpURLConnection:setUseCaches	(Z)V
        //   220: aload_0
        //   221: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   224: getfield 105	com/jingdong/common/utils/HttpGroup$HttpRequest:conn	Ljava/net/HttpURLConnection;
        //   227: ldc 134
        //   229: invokestatic 137	com/jingdong/common/utils/HttpGroup:access$5	()Ljava/lang/String;
        //   232: invokevirtual 141	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
        //   235: aload_0
        //   236: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   239: getfield 37	com/jingdong/common/utils/HttpGroup$HttpRequest:httpSetting	Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
        //   242: invokevirtual 144	com/jingdong/common/utils/HttpGroup$HttpSetting:getType	()I
        //   245: sipush 1000
        //   248: if_icmpne +254 -> 502
        //   251: aload_0
        //   252: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   255: getfield 105	com/jingdong/common/utils/HttpGroup$HttpRequest:conn	Ljava/net/HttpURLConnection;
        //   258: ldc 146
        //   260: ldc 148
        //   262: invokevirtual 141	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
        //   265: aload_0
        //   266: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   269: getfield 105	com/jingdong/common/utils/HttpGroup$HttpRequest:conn	Ljava/net/HttpURLConnection;
        //   272: ldc 150
        //   274: ldc 152
        //   276: invokevirtual 141	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
        //   279: aload_0
        //   280: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   283: getfield 37	com/jingdong/common/utils/HttpGroup$HttpRequest:httpSetting	Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
        //   286: invokevirtual 156	com/jingdong/common/utils/HttpGroup$HttpSetting:isUseCookies	()Z
        //   289: ifeq +39 -> 328
        //   292: invokestatic 158	com/jingdong/common/utils/HttpGroup:access$7	()Ljava/lang/String;
        //   295: invokestatic 164	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
        //   298: ifne +246 -> 544
        //   301: invokestatic 169	com/jingdong/common/login/LoginUserBase:hasLogin	()Z
        //   304: ifeq +9 -> 313
        //   307: invokestatic 158	com/jingdong/common/utils/HttpGroup:access$7	()Ljava/lang/String;
        //   310: invokestatic 174	com/jingdong/common/login/SafetyManager:saveCookies	(Ljava/lang/String;)V
        //   313: aload_0
        //   314: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   317: getfield 105	com/jingdong/common/utils/HttpGroup$HttpRequest:conn	Ljava/net/HttpURLConnection;
        //   320: ldc 176
        //   322: invokestatic 158	com/jingdong/common/utils/HttpGroup:access$7	()Ljava/lang/String;
        //   325: invokevirtual 141	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
        //   328: aload_0
        //   329: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   332: invokestatic 179	com/jingdong/common/utils/HttpGroup$HttpRequest:access$9	(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
        //   335: aload_0
        //   336: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   339: getfield 182	com/jingdong/common/utils/HttpGroup$HttpRequest:connectionRetry	Z
        //   342: ifeq +285 -> 627
        //   345: aload_0
        //   346: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   349: iconst_0
        //   350: putfield 182	com/jingdong/common/utils/HttpGroup$HttpRequest:connectionRetry	Z
        //   353: iconst_1
        //   354: istore 6
        //   356: iload_1
        //   357: ifeq +265 -> 622
        //   360: iconst_0
        //   361: istore_1
        //   362: iload 6
        //   364: ifeq -341 -> 23
        //   367: iload_2
        //   368: iconst_m1
        //   369: aload_0
        //   370: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   373: getfield 37	com/jingdong/common/utils/HttpGroup$HttpRequest:httpSetting	Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
        //   376: invokevirtual 43	com/jingdong/common/utils/HttpGroup$HttpSetting:getAttempts	()I
        //   379: iadd
        //   380: if_icmpge +10 -> 390
        //   383: invokestatic 184	com/jingdong/common/utils/HttpGroup:access$9	()I
        //   386: i2l
        //   387: invokestatic 190	java/lang/Thread:sleep	(J)V
        //   390: aload_0
        //   391: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   394: getfield 193	com/jingdong/common/utils/HttpGroup$HttpRequest:manualRetry	Z
        //   397: ifeq +250 -> 647
        //   400: aload_0
        //   401: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   404: iconst_0
        //   405: putfield 193	com/jingdong/common/utils/HttpGroup$HttpRequest:manualRetry	Z
        //   408: aload_0
        //   409: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   412: invokestatic 196	com/jingdong/common/utils/HttpGroup$HttpRequest:access$10	(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
        //   415: iconst_0
        //   416: istore_2
        //   417: goto -408 -> 9
        //   420: iconst_0
        //   421: istore_1
        //   422: aload_0
        //   423: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   426: aload 9
        //   428: invokevirtual 199	java/net/URL:openConnection	()Ljava/net/URLConnection;
        //   431: checkcast 101	java/net/HttpURLConnection
        //   434: putfield 105	com/jingdong/common/utils/HttpGroup$HttpRequest:conn	Ljava/net/HttpURLConnection;
        //   437: iconst_0
        //   438: istore_1
        //   439: goto -279 -> 160
        //   442: astore 4
        //   444: new 201	com/jingdong/common/utils/HttpGroup$HttpError
        //   447: dup
        //   448: aload 4
        //   450: invokespecial 204	com/jingdong/common/utils/HttpGroup$HttpError:<init>	(Ljava/lang/Throwable;)V
        //   453: astore 5
        //   455: aload_0
        //   456: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   459: aload 5
        //   461: invokevirtual 208	com/jingdong/common/utils/HttpGroup$HttpRequest:throwError	(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
        //   464: aload_0
        //   465: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   468: iconst_1
        //   469: putfield 182	com/jingdong/common/utils/HttpGroup$HttpRequest:connectionRetry	Z
        //   472: aload_0
        //   473: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   476: getfield 182	com/jingdong/common/utils/HttpGroup$HttpRequest:connectionRetry	Z
        //   479: ifeq +123 -> 602
        //   482: aload_0
        //   483: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   486: iconst_0
        //   487: putfield 182	com/jingdong/common/utils/HttpGroup$HttpRequest:connectionRetry	Z
        //   490: iconst_1
        //   491: istore 6
        //   493: iload_1
        //   494: ifeq +103 -> 597
        //   497: iconst_0
        //   498: istore_1
        //   499: goto -137 -> 362
        //   502: aload_0
        //   503: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   506: getfield 105	com/jingdong/common/utils/HttpGroup$HttpRequest:conn	Ljava/net/HttpURLConnection;
        //   509: ldc 146
        //   511: ldc 210
        //   513: invokevirtual 141	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
        //   516: goto -251 -> 265
        //   519: astore_3
        //   520: aload_0
        //   521: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   524: getfield 182	com/jingdong/common/utils/HttpGroup$HttpRequest:connectionRetry	Z
        //   527: ifeq +88 -> 615
        //   530: aload_0
        //   531: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   534: iconst_0
        //   535: putfield 182	com/jingdong/common/utils/HttpGroup$HttpRequest:connectionRetry	Z
        //   538: iload_1
        //   539: ifeq +73 -> 612
        //   542: aload_3
        //   543: athrow
        //   544: aload_0
        //   545: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   548: getfield 37	com/jingdong/common/utils/HttpGroup$HttpRequest:httpSetting	Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
        //   551: invokevirtual 213	com/jingdong/common/utils/HttpGroup$HttpSetting:isUseLocalCookies	()Z
        //   554: ifeq -226 -> 328
        //   557: ldc 215
        //   559: ldc 217
        //   561: invokestatic 222	com/jingdong/common/utils/Log:d	(Ljava/lang/String;Ljava/lang/String;)V
        //   564: invokestatic 225	com/jingdong/common/login/SafetyManager:getCookies	()Ljava/lang/String;
        //   567: invokestatic 227	com/jingdong/common/utils/HttpGroup:access$8	(Ljava/lang/String;)V
        //   570: invokestatic 158	com/jingdong/common/utils/HttpGroup:access$7	()Ljava/lang/String;
        //   573: invokestatic 164	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
        //   576: ifne -248 -> 328
        //   579: aload_0
        //   580: getfield 14	com/jingdong/common/utils/HttpGroup$HttpRequest$6:this$1	Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
        //   583: getfield 105	com/jingdong/common/utils/HttpGroup$HttpRequest:conn	Ljava/net/HttpURLConnection;
        //   586: ldc 176
        //   588: invokestatic 158	com/jingdong/common/utils/HttpGroup:access$7	()Ljava/lang/String;
        //   591: invokevirtual 141	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
        //   594: goto -266 -> 328
        //   597: iconst_1
        //   598: istore_1
        //   599: goto -100 -> 499
        //   602: iload_1
        //   603: putstatic 28	com/jingdong/common/utils/NetUtils:isProxy	Z
        //   606: iconst_0
        //   607: istore 6
        //   609: goto -247 -> 362
        //   612: goto -70 -> 542
        //   615: iload_1
        //   616: putstatic 28	com/jingdong/common/utils/NetUtils:isProxy	Z
        //   619: goto -77 -> 542
        //   622: iconst_1
        //   623: istore_1
        //   624: goto -262 -> 362
        //   627: iload_1
        //   628: putstatic 28	com/jingdong/common/utils/NetUtils:isProxy	Z
        //   631: iconst_0
        //   632: istore 6
        //   634: goto -272 -> 362
        //   637: astore 7
        //   639: aload 7
        //   641: invokevirtual 230	java/lang/InterruptedException:printStackTrace	()V
        //   644: goto -254 -> 390
        //   647: iinc 2 1
        //   650: goto -641 -> 9
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	653	0	this	6
        //   3	625	1	bool	boolean
        //   8	640	2	i	int
        //   519	24	3	localObject	Object
        //   442	7	4	localThrowable	Throwable
        //   453	7	5	localHttpError	HttpGroup.HttpError
        //   354	279	6	j	int
        //   637	3	7	localInterruptedException	InterruptedException
        //   48	24	8	str1	String
        //   76	351	9	localURL	java.net.URL
        //   79	60	10	str2	String
        //   82	59	11	localInteger	Integer
        //   91	10	12	localNetType	NetUtils.NetType
        // Exception table:
        //   from	to	target	type
        //   24	50	442	java/lang/Throwable
        //   55	67	442	java/lang/Throwable
        //   67	78	442	java/lang/Throwable
        //   88	107	442	java/lang/Throwable
        //   121	160	442	java/lang/Throwable
        //   160	265	442	java/lang/Throwable
        //   265	313	442	java/lang/Throwable
        //   313	328	442	java/lang/Throwable
        //   328	335	442	java/lang/Throwable
        //   422	437	442	java/lang/Throwable
        //   502	516	442	java/lang/Throwable
        //   544	594	442	java/lang/Throwable
        //   24	50	519	finally
        //   55	67	519	finally
        //   67	78	519	finally
        //   88	107	519	finally
        //   121	160	519	finally
        //   160	265	519	finally
        //   265	313	519	finally
        //   313	328	519	finally
        //   328	335	519	finally
        //   422	437	519	finally
        //   444	472	519	finally
        //   502	516	519	finally
        //   544	594	519	finally
        //   383	390	637	java/lang/InterruptedException
      }
    };
    protected boolean connectionRetry;
    private HttpGroup.Handler connectionThreadPoolsHandler = new HttpGroup.Handler()
    {
      public void run()
      {
        HttpGroup.HttpRequest.this.isNeedConnection = false;
        HttpGroup.HttpRequest.this.nextHandler();
        HttpGroup.HttpRequest.this.saveCache();
        HttpGroup.HttpRequest.this.callBack();
      }
    };
    private HttpGroup.Handler contentHandler = new HttpGroup.Handler()
    {
      public void run()
      {
        for (;;)
        {
          try
          {
            if (HttpGroup.HttpRequest.this.httpSetting.getType() == 1000)
            {
              HttpGroup.HttpRequest.this.jsonContent();
              HttpGroup.HttpRequest.this.httpResponse.clean();
              return;
            }
            if (HttpGroup.HttpRequest.this.httpSetting.getType() == 5000)
            {
              HttpGroup.HttpRequest.this.imageContent();
              continue;
            }
            HttpGroup.HttpError localHttpError;
            if (HttpGroup.HttpRequest.this.httpSetting.getType() != 500) {
              continue;
            }
          }
          catch (Exception localException)
          {
            localHttpError = new HttpGroup.HttpError(localException);
            HttpGroup.HttpRequest.this.throwError(localHttpError);
            HttpGroup.HttpRequest.this.connectionRetry = true;
            return;
          }
          HttpGroup.HttpRequest.this.fileContent();
        }
      }
    };
    private HttpGroup.CompleteListener continueListener = new HttpGroup.CompleteListener()
    {
      public void onComplete(Bundle paramAnonymousBundle)
      {
        synchronized (HttpGroup.HttpRequest.this)
        {
          HttpGroup.HttpRequest.this.notify();
          return;
        }
      }
    };
    private int currentHandlerIndex = 0;
    protected ArrayList<HttpGroup.HttpError> errorList;
    private HttpGroup.Handler firstHandler = new HttpGroup.Handler()
    {
      public void run()
      {
        if (HttpGroup.HttpRequest.this.httpSetting.getUrl() == null) {
          HttpGroup.HttpRequest.this.httpSetting.setUrl("http://" + HttpGroup.HttpRequest.this.httpSetting.getHost() + "/client.action");
        }
        if (HttpGroup.HttpRequest.this.httpSetting.getAttempts() == 0) {
          HttpGroup.HttpRequest.this.httpSetting.setAttempts(HttpGroup.attempts);
        }
        if (HttpGroup.HttpRequest.this.httpSetting.getConnectTimeout() == 0)
        {
          if (NetUtils.isWifi()) {
            HttpGroup.HttpRequest.this.httpSetting.setConnectTimeout(HttpGroup.connectTimeoutForWIFI);
          }
        }
        else if (HttpGroup.HttpRequest.this.httpSetting.getReadTimeout() == 0)
        {
          if (!NetUtils.isWifi()) {
            break label345;
          }
          HttpGroup.HttpRequest.this.httpSetting.setReadTimeout(HttpGroup.readTimeoutForWIFI);
        }
        for (;;)
        {
          if ((HttpGroup.HttpRequest.this.httpSetting.getType() == 5000) || (HttpGroup.HttpRequest.this.httpSetting.getType() == 500)) {
            HttpGroup.HttpRequest.this.httpSetting.setPost(false);
          }
          if (HttpGroup.HttpRequest.this.httpSetting.getType() == 5000)
          {
            HttpGroup.HttpRequest.this.httpSetting.setLocalFileCache(true);
            HttpGroup.HttpRequest.this.httpSetting.setLocalFileCacheTime(259200000L);
          }
          if (HttpGroup.HttpRequest.this.httpSetting.getType() == 5000) {
            HttpGroup.HttpRequest.this.httpSetting.setNeedGlobalInitialization(false);
          }
          HttpGroup.HttpRequest.this.httpSetting.isNeedGlobalInitialization();
          if (HttpGroup.HttpRequest.this.httpSetting.isForeverCache())
          {
            HttpGroup.HttpRequest.this.httpSetting.setLocalFileCacheTime(0L);
            HttpGroup.HttpRequest.this.httpSetting.setLocalFileCache(true);
          }
          HttpGroup.this.addMaxStep(1);
          HttpGroup.HttpRequest.this.urlParam();
          if (!HttpGroup.HttpRequest.this.checkModule(0)) {
            break label361;
          }
          return;
          HttpGroup.HttpRequest.this.httpSetting.setConnectTimeout(HttpGroup.connectTimeout);
          break;
          label345:
          HttpGroup.HttpRequest.this.httpSetting.setReadTimeout(HttpGroup.readTimeout);
        }
        label361:
        if (((TextUtils.isEmpty(HttpGroup.HttpRequest.this.httpSetting.getUrl())) && (TextUtils.isEmpty(HttpGroup.HttpRequest.this.httpSetting.getFunctionId()))) || (HttpGroup.HttpRequest.this.httpSetting.getUrl().endsWith(".gif")) || (HttpGroup.HttpRequest.this.httpSetting.getUrl().endsWith(".bmp")))
        {
          HttpGroup.HttpError localHttpError = new HttpGroup.HttpError();
          localHttpError.setErrorCode(2);
          localHttpError.setResponseCode(404);
          HttpGroup.HttpRequest.this.throwError(localHttpError);
          HttpGroup.HttpRequest.this.httpSetting.onError(HttpGroup.HttpRequest.this.getLastError());
          return;
        }
        HttpGroup.HttpRequest.this.nextHandler();
        HttpGroup.HttpRequest.this.callBack();
      }
    };
    private ArrayList<HttpGroup.Handler> handlers = new ArrayList();
    protected HttpGroup.HttpResponse httpResponse;
    protected HttpGroup.HttpSetting httpSetting;
    protected InputStream inputStream;
    private IOUtil.ProgressListener ioProgressListener = new IOUtil.ProgressListener()
    {
      public void notify(int paramAnonymousInt1, int paramAnonymousInt2)
      {
        HttpGroup.this.addProgress(paramAnonymousInt1);
        HttpGroup.HttpRequest.this.httpSetting.onProgress(Long.valueOf(HttpGroup.HttpRequest.this.httpResponse.getLength()).intValue(), paramAnonymousInt2);
      }
    };
    public boolean isNeedConnection = false;
    protected boolean manualRetry;
    private HttpGroup.Handler paramHandler = new HttpGroup.Handler()
    {
      public void run()
      {
        if (HttpGroup.HttpRequest.this.httpSetting.getFunctionId() != null)
        {
          String str1 = HttpGroup.HttpRequest.this.httpSetting.getFunctionId();
          HttpGroup.HttpRequest.this.httpSetting.putMapParams("functionId", str1);
          String str2 = HttpGroup.HttpRequest.this.httpSetting.getJsonParams().toString();
          HttpGroup.HttpRequest.this.httpSetting.putMapParams("body", str2);
        }
        HttpGroup.HttpRequest.this.nextHandler();
      }
    };
    private boolean stopFlag;
    private HttpGroup.Handler testHandler = new HttpGroup.Handler()
    {
      public void run()
      {
        if (Configuration.getBooleanProperty("testMode", Boolean.valueOf(false)).booleanValue())
        {
          if ("getSlidingScreens".equals(HttpGroup.HttpRequest.this.httpSetting.getFunctionId()))
          {
            HttpGroup.HttpRequest.this.httpResponse = new HttpGroup.HttpResponse(HttpGroup.this);
            HttpGroup.HttpRequest.this.httpResponse.setString("{\"rightPages\":[{\"title\":\"服装城\",\"fuctionModels\":[{\"functionName\":\"专场热卖商品\",\"functionID\":\"getHotSaleListByType\",\"params\":\"type=101\"},{\"functionName\":\"活动列表\",\"functionID\":\"getCmsActivityListByType\",\"params\":\"type=101\"}]},{\"title\":\"数码馆\",\"fuctionModels\":[{\"functionName\":\"专场热卖商品\",\"functionID\":\"getHotSaleListByType\",\"params\":\"type=102\"},{\"functionName\":\"活动列表\",\"functionID\":\"getCmsActivityListByType\",\"params\":\"type=102\"}]},{\"title\":\"美护坊\",\"fuctionModels\":[{\"functionName\":\"专场热卖商品\",\"functionID\":\"getHotSaleListByType\",\"params\":\"type=103\"},{\"functionName\":\"活动列表\",\"functionID\":\"getCmsActivityListByType\",\"params\":\"type=103\"}]},{\"title\":\"促销大卖场\",\"fuctionModels\":[{\"functionName\":\"促销大卖场\",\"functionID\":\"getCmsPromotionsAll\",\"params\":\"\"}]}],\"tip\":\"向右滑动更精彩\",\"code\":\"0\",\"leftPages\":\"\"}");
            try
            {
              HttpGroup.HttpRequest.this.httpResponse.setJsonObject(new JSONObjectProxy(new JSONObject(HttpGroup.HttpRequest.this.httpResponse.getString())));
              return;
            }
            catch (JSONException localJSONException7)
            {
              localJSONException7.printStackTrace();
              return;
            }
          }
          if ("getHotSaleListByType".equals(HttpGroup.HttpRequest.this.httpSetting.getFunctionId()))
          {
            HttpGroup.HttpRequest.this.httpResponse = new HttpGroup.HttpResponse(HttpGroup.this);
            HttpGroup.HttpRequest.this.httpResponse.setString("{\"hotSaleList\":[{\"jdPrice\":\"375.00\",\"wname\":\"西厢记\",\"totalEvaluation\":0,\"adword\":\"\",\"martPrice\":\"22.0000\",\"startRemainTime\":0,\"book\":\"false\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"10008472\",\"imageurl\":\"http://img10.360buyimg.com/n1/10366/bdfdf6a4-83b2-4a39-a988-b65167c33195.jpg\"},{\"jdPrice\":\"375.00\",\"wname\":\"西厢记\",\"totalEvaluation\":0,\"adword\":\"\",\"martPrice\":\"22.0000\",\"startRemainTime\":0,\"book\":\"false\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"10008472\",\"imageurl\":\"http://img10.360buyimg.com/n1/10366/bdfdf6a4-83b2-4a39-a988-b65167c33195.jpg\"},{\"jdPrice\":\"375.00\",\"wname\":\"西厢记\",\"totalEvaluation\":0,\"adword\":\"\",\"martPrice\":\"22.0000\",\"startRemainTime\":0,\"book\":\"false\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"10008472\",\"imageurl\":\"http://img10.360buyimg.com/n1/10366/bdfdf6a4-83b2-4a39-a988-b65167c33195.jpg\"},{\"jdPrice\":\"375.00\",\"wname\":\"西厢记\",\"totalEvaluation\":0,\"adword\":\"\",\"martPrice\":\"22.0000\",\"startRemainTime\":0,\"book\":\"false\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"10008472\",\"imageurl\":\"http://img10.360buyimg.com/n1/10366/bdfdf6a4-83b2-4a39-a988-b65167c33195.jpg\"},{\"jdPrice\":\"375.00\",\"wname\":\"西厢记\",\"totalEvaluation\":0,\"adword\":\"\",\"martPrice\":\"22.0000\",\"startRemainTime\":0,\"book\":\"false\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"10008472\",\"imageurl\":\"http://img10.360buyimg.com/n1/10366/bdfdf6a4-83b2-4a39-a988-b65167c33195.jpg\"},{\"wname\":\"非常妈妈\",\"totalEvaluation\":0,\"adword\":\"\",\"martPrice\":\"16.0000\",\"startRemainTime\":0,\"book\":\"false\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"10368686\",\"imageurl\":\"http://img10.360buyimg.com/n1/19452/156afa86-9825-40e7-8c55-af3b53e14372.jpg\"}],\"title\":\"服装城\",\"code\":\"0\"}");
            try
            {
              HttpGroup.HttpRequest.this.httpResponse.setJsonObject(new JSONObjectProxy(new JSONObject(HttpGroup.HttpRequest.this.httpResponse.getString())));
              return;
            }
            catch (JSONException localJSONException6)
            {
              localJSONException6.printStackTrace();
              return;
            }
          }
          if ("getCmsActivityListByType".equals(HttpGroup.HttpRequest.this.httpSetting.getFunctionId()))
          {
            HttpGroup.HttpRequest.this.httpResponse = new HttpGroup.HttpResponse(HttpGroup.this);
            HttpGroup.HttpRequest.this.httpResponse.setString("{\"activityList\":[{\"content\":\"\",\"title\":\"手机数码活动1-勿删\",\"end_date\":\"2012-12-31\",\"catelogyId\":652,\"activity_id\":472,\"start_date\":\"2012-12-05\",\"imageUrl\":\"http://img10.360buyimg.com/n1/g8/M03/0C/1A/rBEHaFCLVWEIAAAAAAF5O72teMsAACgawOjBSAAAXlT725.jpg\"},{\"content\":\"\",\"title\":\"手机数码活动1-勿删\",\"end_date\":\"2012-12-31\",\"catelogyId\":652,\"activity_id\":472,\"start_date\":\"2012-12-05\",\"imageUrl\":\"http://img10.360buyimg.com/n1/g8/M03/0C/1A/rBEHaFCLVWEIAAAAAAF5O72teMsAACgawOjBSAAAXlT725.jpg\"},{\"content\":\"\",\"title\":\"手机数码活动1-勿删\",\"end_date\":\"2012-12-31\",\"catelogyId\":652,\"activity_id\":472,\"start_date\":\"2012-12-05\",\"imageUrl\":\"http://img10.360buyimg.com/n1/g8/M03/0C/1A/rBEHaFCLVWEIAAAAAAF5O72teMsAACgawOjBSAAAXlT725.jpg\"},{\"content\":\"\",\"title\":\"手机数码活动1-勿删\",\"end_date\":\"2012-12-31\",\"catelogyId\":652,\"activity_id\":472,\"start_date\":\"2012-12-05\",\"imageUrl\":\"http://img10.360buyimg.com/n1/g8/M03/0C/1A/rBEHaFCLVWEIAAAAAAF5O72teMsAACgawOjBSAAAXlT725.jpg\"},{\"content\":\"\",\"title\":\"手机数码活动1-勿删\",\"end_date\":\"2012-12-31\",\"catelogyId\":652,\"activity_id\":472,\"start_date\":\"2012-12-05\",\"imageUrl\":\"http://img10.360buyimg.com/n1/g8/M03/0C/1A/rBEHaFCLVWEIAAAAAAF5O72teMsAACgawOjBSAAAXlT725.jpg\"}],\"title\":\"数码馆\",\"code\":\"0\"}");
            try
            {
              HttpGroup.HttpRequest.this.httpResponse.setJsonObject(new JSONObjectProxy(new JSONObject(HttpGroup.HttpRequest.this.httpResponse.getString())));
              return;
            }
            catch (JSONException localJSONException5)
            {
              localJSONException5.printStackTrace();
              return;
            }
          }
          if ("strollChannel".equals(HttpGroup.HttpRequest.this.httpSetting.getFunctionId()))
          {
            HttpGroup.HttpRequest.this.httpResponse = new HttpGroup.HttpResponse(HttpGroup.this);
            HttpGroup.HttpRequest.this.httpResponse.setString("{\"guang_index_list\":[{\"foldFlag\":1,\"icon\":\"\",\"title\":\"Win8专区\",\"type\":0,\"functionId\":\"sectionlist_festivalSection\",\"url\":\"\"},{\"foldFlag\":1,\"icon\":\"\",\"title\":\"特惠精选\",\"type\":0,\"functionId\":\"sectionlist_specialPrice\",\"url\":\"\"}],\"code\":\"0\"}");
            try
            {
              HttpGroup.HttpRequest.this.httpResponse.setJsonObject(new JSONObjectProxy(new JSONObject(HttpGroup.HttpRequest.this.httpResponse.getString())));
              return;
            }
            catch (JSONException localJSONException4)
            {
              localJSONException4.printStackTrace();
              return;
            }
          }
          if ("sectionlist_specialPrice".equals(HttpGroup.HttpRequest.this.httpSetting.getFunctionId()))
          {
            HttpGroup.HttpRequest.this.httpResponse = new HttpGroup.HttpResponse(HttpGroup.this);
            HttpGroup.HttpRequest.this.httpResponse.setString("{\"wareInfoList\":[{\"wname\":\"雅诗兰黛鲜活营养红石榴精华水200ml\",\"totalEvaluation\":0,\"adword\":\"明星产品全场直降\",\"martPrice\":\"750.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"375.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"1000731821\",\"imageurl\":\"http://img10.360buyimg.com/n4/9420/7e3296c1-b0ae-4de5-ae9e-3da5086fa8f1.jpg\"},{\"wname\":\"CAMEL/骆驼 2012新款男鞋男士商务鞋休闲男鞋休闲真皮皮鞋 棕色 43\",\"totalEvaluation\":0,\"adword\":\"领券下单满450减50 领券时间12月7日起 用券时间：12月12日 仅限一天！\",\"martPrice\":\"897.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"299.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"1004863407\",\"imageurl\":\"http://img10.360buyimg.com/n4/g7/M03/05/1D/rBEHZlBRPdcIAAAAAAGwEo3dotcAABKJgOfiIMAAbAq828.jpg\"},{\"wname\":\"索尼（Sony）MDR-EX42LP 施华洛世奇锆石耳机 雏菊白\",\"totalEvaluation\":0,\"adword\":\"【直降120元】女孩最佳礼物 听音乐也时尚\",\"martPrice\":\"249.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"99.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"599354\",\"imageurl\":\"http://img10.360buyimg.com/n4/2425/3703d862-fbe2-425b-919b-c36b6ec1ff90.jpg\"},{\"wname\":\"EAIBOSSCAN 2012秋冬新款男士时尚休闲针织衫 男士线衫 7732 3# M\",\"totalEvaluation\":0,\"adword\":\"疯狂秒杀价，不抢你在等什么？\",\"martPrice\":\"399.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"58.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"1012503502\",\"imageurl\":\"http://img10.360buyimg.com/n4/g7/M03/0E/09/rBEHZVCi_ogIAAAAAAPXv8RezLMAACyyAHvOFYAA9fX718.jpg\"},{\"wname\":\"飞跃多功能家用缝纫机FY811\",\"totalEvaluation\":0,\"adword\":\"年末大促！参加日百满299元返399元东券活动！时间12.10 9:00-12.21 18:00\",\"martPrice\":\"688.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"479.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"590241\",\"imageurl\":\"http://img10.360buyimg.com/n4/2585/2c4f25ca-e38f-44ac-b358-ffdfe8d7ca3c.jpg\"},{\"wname\":\"欧润哲 不锈钢心形牙刷架配波浪情侣口杯套装（蓝色+玫红色）\",\"totalEvaluation\":0,\"adword\":\"年末大促！参加日百满299元返399元东券活动！时间12.10 9:00-12.21 18:00  \",\"martPrice\":\"99.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"79.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"713619\",\"imageurl\":\"http://img10.360buyimg.com/n4/g8/M03/07/00/rBEHaFBWuPsIAAAAAAIfOgYhOqUAABXmQLCJTYAAh9S366.jpg\"},{\"wname\":\"Gateway NE71B02c 17.3英寸笔记本电脑（E-450 2G 500G D刻 USB3.0 高清摄像头 6芯电池 Linux）黑\",\"totalEvaluation\":0,\"adword\":\"直降600元，17.3英寸超大屏显示 完美体验！\",\"martPrice\":\"3299.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"2499.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"657917\",\"imageurl\":\"http://img10.360buyimg.com/n4/g5/M01/02/02/rBEDik_NwScIAAAAAAFfyYGSc9AAAAZygM0ZFoAAV_h166.jpg\"},{\"wname\":\"空间生活安吉拉可转可遥办公电脑椅ITY60128RW\",\"totalEvaluation\":0,\"adword\":\"年末大促！参加日百满299元返399元东券活动！时间12.10 9:00-12.21 18:00\",\"martPrice\":\"620.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"299.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"672774\",\"imageurl\":\"http://img10.360buyimg.com/n4/g5/M02/12/14/rBEIDE_yxkUIAAAAAADtD-apgp4AADpAQPB8RUAAO0n619.jpg\"},{\"wname\":\"TPOS 18M11W 11000mAh便携式移动电源  白色（适用于苹果iPad、iPhone、三星S3、HTC、小米等手机） \",\"totalEvaluation\":0,\"adword\":\"\",\"martPrice\":\"659.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"299.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"348042\",\"imageurl\":\"http://img10.360buyimg.com/n4/4268/d18cfdd0-8293-445c-9230-d07282c7b260.jpg\"}],\"code\":\"0\"}");
            try
            {
              HttpGroup.HttpRequest.this.httpResponse.setJsonObject(new JSONObjectProxy(new JSONObject(HttpGroup.HttpRequest.this.httpResponse.getString())));
              return;
            }
            catch (JSONException localJSONException3)
            {
              localJSONException3.printStackTrace();
              return;
            }
          }
          if ("sectionlist_festivalSection".equals(HttpGroup.HttpRequest.this.httpSetting.getFunctionId()))
          {
            HttpGroup.HttpRequest.this.httpResponse = new HttpGroup.HttpResponse(HttpGroup.this);
            HttpGroup.HttpRequest.this.httpResponse.setString("{\"wareInfoList\":[{\"wname\":\"三星（SAMSUNG）XE500T1C-A01CN 11.6英寸平板电脑(Z2760 2G 64G ssd 集成显卡 WIN8 蓝牙 触控屏）蓝色\",\"totalEvaluation\":0,\"adword\":\"WIN8平板 带给你全新体验！\",\"martPrice\":\"5699.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"4699.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"742507\",\"imageurl\":\"http://img10.360buyimg.com/n4/g9/M03/08/1C/rBEHaVB733QIAAAAAAHmcBIIfFsAABvRQMYxBUAAeaI119.jpg\"},{\"wname\":\"华硕（ASUS）VivoBook S400E3317CA 14.0英寸触控超极本（i5-3317U 4G 500G+24G固态硬盘 Win8 爵士黑）\",\"totalEvaluation\":0,\"adword\":\"\",\"martPrice\":\"6999.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"5299.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"743579\",\"imageurl\":\"http://img10.360buyimg.com/n4/g7/M03/0C/17/rBEHZlCJ6vUIAAAAAAGsWUnswLIAACfVwOhMZkAAaxx266.jpg\"},{\"wname\":\"ThinkPad S230U-3QC 12.5英寸超极本 (i5-3317U 4G 500G+24G SSD HD4000 蓝牙 摄像头 Win8）摩卡黑\",\"totalEvaluation\":0,\"adword\":\"\",\"martPrice\":\"7199.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"6999.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"754012\",\"imageurl\":\"http://img10.360buyimg.com/n4/g6/M04/01/0D/rBEGDFCQwSMIAAAAAAHIbCk_-YkAAARpgFTSLsAAciE780.jpg\"},{\"wname\":\"三星（SAMSUNG）DP300A2A-B01CN 21.5英寸一体机电脑(G645T 4G 500GB 核芯显卡 WIN8 摄像头 黑色）\",\"totalEvaluation\":0,\"adword\":\"预装WIN8系统的一体机 带您体验新感觉！\",\"martPrice\":\"5099.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"4099.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"742593\",\"imageurl\":\"http://img10.360buyimg.com/n4/g7/M03/0C/17/rBEHZlCJ6lAIAAAAAAG9YW4RCf8AACfVwDkiTEAAb15745.jpg\"},{\"wname\":\"宏碁(Acer) A7600U 27英寸一体电脑 （i7-3630QM 8G 1TB+32G 2G独显 蓝光刻录 无线键鼠 WIFI 蓝牙 Win8）\",\"totalEvaluation\":0,\"adword\":\"27寸全高清10点触控屏，蓝光COMB0,USB3.0支持关机充电，蓝牙，超薄外观，预计12月中旬到货\",\"martPrice\":\"21599.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"17999.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"764305\",\"imageurl\":\"http://img10.360buyimg.com/n4/g9/M02/0E/0E/rBEHalCkqDsIAAAAAAEq76ZzhpYAAC0egI7R5IAASsH471.jpg\"},{\"wname\":\"三星（SAMSUNG）NP535U3C-A05CN 13.3英寸超薄本 (A6-4455M 4G 500G 核芯显卡 WIN8 蓝牙4.0）粉色\",\"totalEvaluation\":0,\"adword\":\"附三星原装包！\",\"martPrice\":\"5699.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"4699.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"742606\",\"imageurl\":\"http://img10.360buyimg.com/n4/g6/M02/00/1E/rBEGC1CJ6scIAAAAAAHuOdN2WwUAAAL-ADKYCkAAe5R475.jpg\"},{\"wname\":\"三星（SAMSUNG）NP900X3C-A02CN 13.3英寸超极本 (i5-3317M 4G 128G SSD 核芯显卡 WIN8 蓝牙4.0）蓝黑色\",\"totalEvaluation\":0,\"adword\":\"赠送价值499元希捷移动硬盘！\",\"martPrice\":\"11099.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"9999.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"742589\",\"imageurl\":\"http://img10.360buyimg.com/n4/g6/M01/00/1E/rBEGF1CJ6kQIAAAAAAHAVuuZneAAAAL9wMcuNAAAcBu312.jpg\"},{\"wname\":\"惠普（hp）Pavilion14-B042TU（C8C74PA）14.0英寸超极本（i3-3217U 2G 320G+32G SSD Win8 黑色）\",\"totalEvaluation\":0,\"adword\":\"\",\"martPrice\":\"5499.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"3899.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"744731\",\"imageurl\":\"http://img10.360buyimg.com/n4/g9/M03/0C/17/rBEHaVCJ6wsIAAAAAAGkb8l7l7EAACfVwOK9z4AAaSH300.jpg\"},{\"wname\":\"戴尔(Dell) XPS12R-1708 12.5寸超极本 （i7-3517U 8G 256G固态硬盘 蓝牙 WIN8 触控翻转屏1920*1080 ）\",\"totalEvaluation\":0,\"adword\":\"\",\"martPrice\":\"13999.0000\",\"startRemainTime\":0,\"book\":\"false\",\"jdPrice\":\"12999.00\",\"endRemainTime\":0,\"canFreeRead\":\"false\",\"wareId\":\"766403\",\"imageurl\":\"http://img10.360buyimg.com/n4/g8/M00/0F/0B/rBEHaFCvVpgIAAAAAAEVVIZHAEMAADAJwLuffsAARVs632.jpg\"}],\"code\":\"0\"}");
            try
            {
              HttpGroup.HttpRequest.this.httpResponse.setJsonObject(new JSONObjectProxy(new JSONObject(HttpGroup.HttpRequest.this.httpResponse.getString())));
              return;
            }
            catch (JSONException localJSONException2)
            {
              localJSONException2.printStackTrace();
              return;
            }
          }
          if ("getCmsPromotionsAll".equals(HttpGroup.HttpRequest.this.httpSetting.getFunctionId()))
          {
            HttpGroup.HttpRequest.this.httpResponse = new HttpGroup.HttpResponse(HttpGroup.this);
            HttpGroup.HttpRequest.this.httpResponse.setString("{\"cmsPromotionsAll\":[{\"promition_info\":\"规则\",\"catelogyId\":652,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g9/M03/0D/16/rBEHaVCY2-sIAAAAAAN7z1lgq_cAACrXgNYClwAA3vn853.jpg\",\"promotion_name\":\"手机数码促销专场\",\"promotion_id\":11},{\"promition_info\":\"服装鞋帽\",\"catelogyId\":1315,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g6/M03/01/1D/rBEGC1CY3DoIAAAAAAN7zxzsoosAAAX_wHLFwoAA3vn248.jpg\",\"promotion_name\":\"服装鞋帽促销专场\",\"promotion_id\":14},{\"promition_info\":\"注册以上会员均可参加此活动\",\"catelogyId\":1713,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g7/M03/0D/16/rBEHZVCY274IAAAAAAN7z1oeZXMAACrXgIU-uwAA3vn385.jpg\",\"promotion_name\":\"图书促销专场\",\"promotion_id\":8},{\"promition_info\":\"电脑、办公\",\"catelogyId\":670,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g8/M03/0D/16/rBEHZ1CY3B8IAAAAAAN7zzWtp2EAACrXgMBqZIAA3vn128.jpg\",\"promotion_name\":\"电脑办公促销专场\",\"promotion_id\":12},{\"promition_info\":\"个护化妆\",\"catelogyId\":1316,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g6/M03/01/1D/rBEGC1CY3EsIAAAAAAN7z9GVGQAAAAX_wKoHV4AA3vn536.jpg\",\"promotion_name\":\"个护化妆促销专场\",\"promotion_id\":15},{\"promition_info\":\"规则\",\"catelogyId\":737,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g7/M03/0D/16/rBEHZlCY2-sIAAAAAAN7z66FoZQAACrXwGO_tsAA3vn629.jpg\",\"promotion_name\":\"家用电器促销专场\",\"promotion_id\":10},{\"promition_info\":\"无\",\"catelogyId\":1319,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g6/M05/02/05/rBEGC1Cbk0AIAAAAAAN7z4UVBZcAAAbTwG7q2gAA3vn241.jpg\",\"promotion_name\":\"母婴促销专场\",\"promotion_id\":31},{\"promition_info\":\"家居家装\",\"catelogyId\":1620,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g8/M03/0D/16/rBEHZ1CY3C8IAAAAAAN7z5Yz-y8AACrXwAEssgAA3vn269.jpg\",\"promotion_name\":\"家居家装促销专场\",\"promotion_id\":13},{\"promition_info\":\"运动健康\",\"catelogyId\":1318,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g9/M03/0D/16/rBEHaVCY3EwIAAAAAAN7z0YyvTsAACrXwCsqeMAA3vn624.jpg\",\"promotion_name\":\"运动健康促销专场\",\"promotion_id\":17},{\"promition_info\":\"礼品箱包\",\"catelogyId\":1672,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g9/M03/0D/16/rBEHalCY3FkIAAAAAAN7z7Fqbb4AACrXgOmsisAA3vn576.jpg\",\"promotion_name\":\"礼品箱包促销专场\",\"promotion_id\":16},{\"promition_info\":\"汽车用品\",\"catelogyId\":6728,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g8/M03/0D/16/rBEHaFCY3HQIAAAAAAN7zxsi4osAACrXwA2iAgAA3vn066.jpg\",\"promotion_name\":\"汽车用品促销专场\",\"promotion_id\":18},{\"promition_info\":\"厨具\",\"catelogyId\":6196,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g8/M03/0D/16/rBEHaFCY3Q0IAAAAAAN7z9aasoQAACrXwOWtGIAA3vn318.jpg\",\"promotion_name\":\"厨具促销专场\",\"promotion_id\":24},{\"promition_info\":\"钟表\",\"catelogyId\":5025,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g9/M03/0D/16/rBEHalCY3O8IAAAAAAN7zwhI72kAACrXwJkNuEAA3vn875.jpg\",\"promotion_name\":\"钟表促销专场\",\"promotion_id\":22},{\"promition_info\":\"珠宝首饰\",\"catelogyId\":6144,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g8/M03/0D/16/rBEHZ1CY3QMIAAAAAAN7z032WDsAACrXwJERfcAA3vn458.jpg\",\"promotion_name\":\"珠宝首饰促销专场\",\"promotion_id\":23},{\"promition_info\":\"宠物生活\",\"catelogyId\":6994,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g6/M04/01/1D/rBEGC1CY3UIIAAAAAAN7z-Y_B0AAAAYAALPB2MAA3vn201.jpg\",\"promotion_name\":\"宠物生活促销专场\",\"promotion_id\":26},{\"promition_info\":\"票务\",\"catelogyId\":4938,\"imageUrl\":\"http://img30.360buyimg.com/mobilecms/s310x102_g6/M04/01/1D/rBEGF1CY3MEIAAAAAAN7z9yyEmoAAAYAAC6-H0AA3vn379.jpg\",\"promotion_name\":\"票务促销专场\",\"promotion_id\":21}],\"code\":\"0\"}");
            try
            {
              HttpGroup.HttpRequest.this.httpResponse.setJsonObject(new JSONObjectProxy(new JSONObject(HttpGroup.HttpRequest.this.httpResponse.getString())));
              return;
            }
            catch (JSONException localJSONException1)
            {
              localJSONException1.printStackTrace();
              return;
            }
          }
          HttpGroup.HttpRequest.this.nextHandler();
          return;
        }
        HttpGroup.HttpRequest.this.nextHandler();
      }
    };
    
    public HttpRequest(HttpGroup.HttpSetting paramHttpSetting)
    {
      this.httpSetting = paramHttpSetting;
    }
    
    private void alertAttestationWIFIDialog()
    {
      HttpDialogController local12 = new HttpDialogController(this)
      {
        private int state;
        
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          switch (paramAnonymousInt)
          {
          default: 
            return;
          case -1: 
            switch (this.state)
            {
            default: 
              return;
            case 0: 
              this.state = 1;
              this.myActivity.post(new Runnable()
              {
                public void run()
                {
                  HttpGroup.HttpRequest.12.this.setMessage("现在是否重试？");
                  HttpGroup.HttpRequest.12.this.setPositiveButton("重试");
                  if (!HttpGroup.HttpRequest.12.this.alertDialog.isShowing()) {
                    HttpGroup.HttpRequest.12.this.alertDialog.show();
                  }
                  Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("http://app.jd.com/"));
                  localIntent.setFlags(268435456);
                  HttpGroup.HttpRequest.12.this.myActivity.startActivityNoException(localIntent);
                }
              });
              return;
            }
            actionRetry();
            return;
          }
          actionCancel();
        }
      };
      local12.setTitle("WIFI认证");
      local12.setMessage("您所连接的网络可能需要验证，现在打开浏览器进行验证？");
      local12.setPositiveButton("确定");
      local12.setNegativeButton("取消");
      notifyUser(local12);
    }
    
    private void alertErrorDialog(HttpGroup.HttpError paramHttpError)
    {
      if (!this.httpSetting.isNotifyUser()) {
        return;
      }
      HttpDialogController local11 = new HttpDialogController(this)
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          switch (paramAnonymousInt)
          {
          }
          final IMyActivity localIMyActivity1;
          do
          {
            do
            {
              IMyActivity localIMyActivity2;
              do
              {
                return;
                if (jdField_this.httpSetting.getAlertErrorDialogType() != 3) {
                  break;
                }
                actionCancel();
                localIMyActivity2 = jdField_this.this$0.httpGroupSetting.getMyActivity();
              } while (localIMyActivity2 == null);
              if (Build.VERSION.SDK_INT > 10) {}
              for (Intent localIntent = new Intent("android.settings.SETTINGS");; localIntent = new Intent("android.settings.WIRELESS_SETTINGS"))
              {
                localIMyActivity2.startActivityNoException(localIntent);
                return;
              }
              actionRetry();
              return;
              actionCancel();
            } while (jdField_this.httpSetting.getAlertErrorDialogType() != 2);
            localIMyActivity1 = jdField_this.this$0.httpGroupSetting.getMyActivity();
          } while (localIMyActivity1 == null);
          localIMyActivity1.post(new Runnable()
          {
            public void run()
            {
              localIMyActivity1.getThisActivity().finish();
            }
          }, 50);
        }
      };
      local11.setCanceledOnTouchOutside(false);
      String str;
      if (paramHttpError.getErrorCode() == 4)
      {
        local11.setMessage(StringUtil.alert_message_poor_data_error);
        if (this.httpSetting.getAlertErrorDialogType() != 0) {
          break label100;
        }
        local11.setPositiveButton(StringUtil.retry);
        if (!this.httpSetting.isNotifyUserWithExit()) {
          break label93;
        }
        str = StringUtil.exit;
        label72:
        local11.setNegativeButton(str);
      }
      for (;;)
      {
        notifyUser(local11);
        return;
        local11.setMessage(StringUtil.alert_message_poor_network2);
        break;
        label93:
        str = StringUtil.cancel;
        break label72;
        label100:
        if (this.httpSetting.getAlertErrorDialogType() == 1)
        {
          local11.setNegativeButton(StringUtil.ok);
        }
        else if (this.httpSetting.getAlertErrorDialogType() == 2)
        {
          local11.setPositiveButton(StringUtil.retry);
          local11.setNegativeButton(StringUtil.back_page);
        }
        else if (this.httpSetting.getAlertErrorDialogType() == 3)
        {
          local11.setSynchronizHTTP(false);
          local11.setPositiveButton(StringUtil.go_setup);
          local11.setNegativeButton(StringUtil.cancel);
        }
      }
    }
    
    private void alertSignatureFailedDialog()
    {
      HttpDialogController local13 = new HttpDialogController(this)
      {
        MyApplication application = MyApplication.getInstance();
        final IMainActivity mainFrameActivity = this.application.getMainFrameActivity();
        
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          switch (paramAnonymousInt)
          {
          default: 
            return;
          }
          actionOfficialWebsite(this.mainFrameActivity);
        }
        
        public boolean onKey(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
        {
          return true;
        }
      };
      local13.setTitle(StringUtil.prompt);
      local13.setMessage(StringUtil.alert_message_signature_error);
      local13.setPositiveButton("确定");
      notifyUser(local13);
    }
    
    private void beforeConnection()
    {
      if (checkModule(3)) {
        if (HttpGroup.mMd5Key == null) {
          HttpGroup.queryMd5Key(this.continueListener);
        }
      }
      try
      {
        wait();
        this.httpSetting.setFinalUrl(this.httpSetting.getUrl() + "&hash=" + Md5Encrypt.md5(new StringBuilder(String.valueOf(this.httpSetting.getJsonParams().toString())).append(HttpGroup.mMd5Key).toString()));
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          localInterruptedException.printStackTrace();
        }
      }
      finally {}
    }
    
    private void callBack()
    {
      if (this.isNeedConnection) {
        return;
      }
      HttpGroup.this.addCompletesCount();
      if (isLastError())
      {
        this.httpSetting.onError(getLastError());
        return;
      }
      HttpGroup.this.addStep(1);
      this.httpSetting.onEnd(this.httpResponse);
    }
    
    private void clearErrorList()
    {
      getErrorList().clear();
    }
    
    private void doNetAndCache()
    {
      if (1 == this.httpSetting.getCacheMode())
      {
        localHttpError = new HttpGroup.HttpError(new Exception("no cache"));
        localHttpError.setNoRetry(true);
        throwError(localHttpError);
      }
      while ((3 == this.httpSetting.getCacheMode()) && (readAssetsCache()))
      {
        HttpGroup.HttpError localHttpError;
        return;
      }
      this.isNeedConnection = true;
      this.httpSetting.onStart();
    }
    
    private void fileContent()
    {
      try
      {
        FileGuider localFileGuider = this.httpSetting.getSavePath();
        localFileGuider.setAvailableSize(this.httpResponse.getLength());
        FileOutputStream localFileOutputStream = FileService.openFileOutput(localFileGuider);
        IOUtil.readAsFile(this.httpResponse.getInputStream(), localFileOutputStream, this.ioProgressListener, this);
        Object localObject;
        if (MergeSwitcher.isPlugOn())
        {
          String str1 = MyApplication.getInstance().getFilesDir().getAbsolutePath();
          String str2 = localFileGuider.getChildDirName();
          if (!TextUtils.isEmpty(str2)) {
            str1 = str1 + "/" + str2;
          }
          localObject = new File(str1);
          if (!((File)localObject).exists()) {
            ((File)localObject).mkdirs();
          }
        }
        for (;;)
        {
          File localFile2 = new File((File)localObject, localFileGuider.getFileName());
          if (isStop()) {
            localFile2.delete();
          }
          this.httpResponse.setSaveFile(localFile2);
          return;
          File localFile1 = MyApplication.getInstance().getFilesDir();
          localObject = localFile1;
        }
        return;
      }
      catch (Exception localException)
      {
        throwError(new HttpGroup.HttpError(localException));
        this.connectionRetry = true;
      }
    }
    
    private File findCachesFileByMd5()
    {
      String str = this.httpSetting.getMd5();
      int i = this.httpSetting.getType();
      FileService.Directory localDirectory = null;
      File localFile;
      switch (i)
      {
      default: 
        if (localDirectory == null) {
          localFile = null;
        }
        break;
      }
      do
      {
        return localFile;
        if (this.httpSetting.isForeverCache()) {}
        for (localDirectory = FileService.getDirectory(5);; localDirectory = FileService.getDirectory(2))
        {
          str = str + ".json";
          break;
        }
        localDirectory = FileService.getDirectory(1);
        str = str + ".image";
        break;
        localDirectory.getDir();
        if (localDirectory.getPath() == null) {
          break label186;
        }
        localFile = new File(localDirectory.getPath() + File.separatorChar + str);
      } while (localFile.exists());
      label186:
      return null;
    }
    
    private void get()
      throws Exception
    {
      this.httpResponse = new HttpGroup.HttpResponse(HttpGroup.this, this.conn);
      this.conn.setRequestMethod("GET");
    }
    
    private ArrayList<HttpGroup.HttpError> getErrorList()
    {
      if (this.errorList == null) {
        this.errorList = new ArrayList();
      }
      return this.errorList;
    }
    
    private HttpGroup.HttpError getLastError()
    {
      ArrayList localArrayList = getErrorList();
      int i = localArrayList.size();
      if (i > 0) {
        return (HttpGroup.HttpError)localArrayList.get(i - 1);
      }
      return null;
    }
    
    private JSONObjectProxy getResponseJson(String paramString)
    {
      Object localObject = null;
      try
      {
        JSONObjectProxy localJSONObjectProxy = new JSONObjectProxy(new JSONObject(paramString));
        String str1;
        String str2;
        String str3;
        return localObject;
      }
      catch (JSONException localJSONException1)
      {
        try
        {
          str1 = localJSONObjectProxy.getStringOrNull("code");
          if ((str1 == null) || (str1.length() <= 0)) {
            break label207;
          }
          if ("6".equals(str1))
          {
            str2 = localJSONObjectProxy.getStringOrNull("des");
            if (str2 == null) {
              break label211;
            }
            str3 = SecureNetwork.getTrueKey(true);
            if (str3 == null) {
              break label207;
            }
            localObject = new JSONObjectProxy(new JSONObject(DesUtil.decrypt(str2, str3, "utf-8")));
            break label209;
          }
          if (("8".equals(str1)) || ("11".equals(str1)) || ("7".equals(str1)))
          {
            SecureNetwork.doPreparation(true, true);
            rsaConnectionRetry();
            return null;
          }
          if (!"12".equals(str1)) {
            break label207;
          }
          this.httpSetting.setNeedEncrypt(true);
          rsaConnectionRetry();
          return null;
        }
        catch (Exception localException2)
        {
          for (;;)
          {
            localObject = localJSONObjectProxy;
          }
        }
        catch (JSONException localJSONException2)
        {
          for (;;)
          {
            localObject = localJSONObjectProxy;
          }
          localObject = localJSONObjectProxy;
        }
        localJSONException1 = localJSONException1;
        localJSONException1.printStackTrace();
      }
      catch (Exception localException1)
      {
        localException1.printStackTrace();
      }
      label207:
      label209:
      label211:
      return null;
    }
    
    private void handleGetOrPost()
      throws Exception
    {
      if (this.httpSetting.isPost()) {
        post();
      }
      for (;;)
      {
        connectionHandler2();
        return;
        get();
      }
    }
    
    private void handlerJsonData()
    {
      try
      {
        localJSONObjectProxy = getResponseJson(IOUtil.readAsString(this.httpResponse.getInputStream(), HttpGroup.charset, this.ioProgressListener));
        if (localJSONObjectProxy == null) {
          return;
        }
        String str1 = localJSONObjectProxy.getStringOrNull("encryptContent");
        if ((str1 != null) && (str1.length() > 0))
        {
          IMyActivity localIMyActivity = HttpGroup.this.httpGroupSetting.getMyActivity();
          byte[] arrayOfByte1 = ContentConvertUtil.toByteArray(str1);
          if (localIMyActivity == null) {
            localIMyActivity = MyApplication.getInstance().getCurrentMyActivity();
          }
          arrayOfByte2 = null;
          if (localIMyActivity != null) {
            arrayOfByte2 = BitmapkitUtils.encodeJni(arrayOfByte1, true, localIMyActivity.getThisActivity());
          }
          if (arrayOfByte2 == null)
          {
            alertSignatureFailedDialog();
            return;
          }
        }
      }
      catch (Exception localException)
      {
        JSONObjectProxy localJSONObjectProxy;
        byte[] arrayOfByte2;
        throwError(new HttpGroup.HttpError(localException));
        this.connectionRetry = true;
        return;
        String str2 = new String(arrayOfByte2, "UTF-8");
        this.httpResponse.setString(str2);
        return;
        this.httpResponse.setString(localJSONObjectProxy.toString());
        return;
      }
      catch (UnsatisfiedLinkError localUnsatisfiedLinkError) {}
    }
    
    private void imageContent()
      throws Exception
    {
      try
      {
        this.httpResponse.setInputData(IOUtil.readAsBytes(this.httpResponse.getInputStream(), this.ioProgressListener));
        return;
      }
      catch (Throwable localThrowable)
      {
        throwError(new HttpGroup.HttpError(localThrowable));
        this.connectionRetry = true;
      }
    }
    
    /* Error */
    private void jsonContent()
      throws Exception
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 663	com/jingdong/common/utils/HttpGroup$HttpRequest:handlerJsonData	()V
      //   4: new 529	com/jingdong/common/utils/JSONObjectProxy
      //   7: dup
      //   8: new 320	org/json/JSONObject
      //   11: dup
      //   12: aload_0
      //   13: getfield 351	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
      //   16: invokevirtual 666	com/jingdong/common/utils/HttpGroup$HttpResponse:getString	()Ljava/lang/String;
      //   19: invokespecial 530	org/json/JSONObject:<init>	(Ljava/lang/String;)V
      //   22: invokespecial 533	com/jingdong/common/utils/JSONObjectProxy:<init>	(Lorg/json/JSONObject;)V
      //   25: astore_1
      //   26: aload_0
      //   27: getfield 351	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
      //   30: aload_1
      //   31: invokevirtual 670	com/jingdong/common/utils/HttpGroup$HttpResponse:setJsonObject	(Lcom/jingdong/common/utils/JSONObjectProxy;)V
      //   34: aload_0
      //   35: getfield 351	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
      //   38: invokevirtual 674	com/jingdong/common/utils/HttpGroup$HttpResponse:getJSONObject	()Lcom/jingdong/common/utils/JSONObjectProxy;
      //   41: ldc_w 535
      //   44: invokevirtual 676	com/jingdong/common/utils/JSONObjectProxy:getString	(Ljava/lang/String;)Ljava/lang/String;
      //   47: invokestatic 681	java/lang/Integer:valueOf	(Ljava/lang/String;)Ljava/lang/Integer;
      //   50: astore 5
      //   52: aload 5
      //   54: ifnull +44 -> 98
      //   57: aload 5
      //   59: invokevirtual 684	java/lang/Integer:intValue	()I
      //   62: ifeq +36 -> 98
      //   65: aload 5
      //   67: bipush 9
      //   69: invokestatic 687	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   72: invokevirtual 688	java/lang/Integer:equals	(Ljava/lang/Object;)Z
      //   75: ifeq +100 -> 175
      //   78: aload_0
      //   79: getfield 111	com/jingdong/common/utils/HttpGroup$HttpRequest:continueListener	Lcom/jingdong/common/utils/HttpGroup$CompleteListener;
      //   82: invokestatic 291	com/jingdong/common/utils/HttpGroup:queryMd5Key	(Lcom/jingdong/common/utils/HttpGroup$CompleteListener;)V
      //   85: aload_0
      //   86: monitorenter
      //   87: aload_0
      //   88: invokevirtual 294	java/lang/Object:wait	()V
      //   91: aload_0
      //   92: monitorexit
      //   93: aload_0
      //   94: iconst_1
      //   95: putfield 470	com/jingdong/common/utils/HttpGroup$HttpRequest:connectionRetry	Z
      //   98: return
      //   99: astore_2
      //   100: aload_0
      //   101: new 227	com/jingdong/common/utils/HttpGroup$HttpError
      //   104: dup
      //   105: aload_2
      //   106: invokespecial 371	com/jingdong/common/utils/HttpGroup$HttpError:<init>	(Ljava/lang/Throwable;)V
      //   109: invokevirtual 377	com/jingdong/common/utils/HttpGroup$HttpRequest:throwError	(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
      //   112: aload_0
      //   113: iconst_1
      //   114: putfield 470	com/jingdong/common/utils/HttpGroup$HttpRequest:connectionRetry	Z
      //   117: return
      //   118: astore 4
      //   120: aload_0
      //   121: new 227	com/jingdong/common/utils/HttpGroup$HttpError
      //   124: dup
      //   125: aload 4
      //   127: invokespecial 371	com/jingdong/common/utils/HttpGroup$HttpError:<init>	(Ljava/lang/Throwable;)V
      //   130: invokevirtual 377	com/jingdong/common/utils/HttpGroup$HttpRequest:throwError	(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
      //   133: aload_0
      //   134: iconst_1
      //   135: putfield 470	com/jingdong/common/utils/HttpGroup$HttpRequest:connectionRetry	Z
      //   138: return
      //   139: astore_3
      //   140: aload_0
      //   141: new 227	com/jingdong/common/utils/HttpGroup$HttpError
      //   144: dup
      //   145: aload_3
      //   146: invokespecial 371	com/jingdong/common/utils/HttpGroup$HttpError:<init>	(Ljava/lang/Throwable;)V
      //   149: invokevirtual 377	com/jingdong/common/utils/HttpGroup$HttpRequest:throwError	(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
      //   152: aload_0
      //   153: iconst_1
      //   154: putfield 470	com/jingdong/common/utils/HttpGroup$HttpRequest:connectionRetry	Z
      //   157: return
      //   158: astore 11
      //   160: aload 11
      //   162: invokevirtual 336	java/lang/InterruptedException:printStackTrace	()V
      //   165: goto -74 -> 91
      //   168: astore 10
      //   170: aload_0
      //   171: monitorexit
      //   172: aload 10
      //   174: athrow
      //   175: aload 5
      //   177: bipush 10
      //   179: invokestatic 687	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   182: invokevirtual 688	java/lang/Integer:equals	(Ljava/lang/Object;)Z
      //   185: ifeq +14 -> 199
      //   188: aload_0
      //   189: iconst_3
      //   190: invokevirtual 691	com/jingdong/common/utils/HttpGroup$HttpRequest:setModule	(I)V
      //   193: aload_0
      //   194: iconst_1
      //   195: putfield 470	com/jingdong/common/utils/HttpGroup$HttpRequest:connectionRetry	Z
      //   198: return
      //   199: aload 5
      //   201: invokevirtual 684	java/lang/Integer:intValue	()I
      //   204: iconst_m1
      //   205: if_icmpeq +21 -> 226
      //   208: aload 5
      //   210: invokevirtual 684	java/lang/Integer:intValue	()I
      //   213: iconst_1
      //   214: if_icmpeq +12 -> 226
      //   217: aload 5
      //   219: invokevirtual 684	java/lang/Integer:intValue	()I
      //   222: iconst_2
      //   223: if_icmpne +49 -> 272
      //   226: new 227	com/jingdong/common/utils/HttpGroup$HttpError
      //   229: dup
      //   230: invokespecial 692	com/jingdong/common/utils/HttpGroup$HttpError:<init>	()V
      //   233: astore 6
      //   235: aload 6
      //   237: iconst_4
      //   238: invokevirtual 695	com/jingdong/common/utils/HttpGroup$HttpError:setErrorCode	(I)V
      //   241: aload 6
      //   243: aload 5
      //   245: invokevirtual 684	java/lang/Integer:intValue	()I
      //   248: invokevirtual 698	com/jingdong/common/utils/HttpGroup$HttpError:setJsonCode	(I)V
      //   251: aload 6
      //   253: aload_0
      //   254: getfield 351	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
      //   257: invokevirtual 701	com/jingdong/common/utils/HttpGroup$HttpError:setHttpResponse	(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
      //   260: aload_0
      //   261: aload 6
      //   263: invokevirtual 377	com/jingdong/common/utils/HttpGroup$HttpRequest:throwError	(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
      //   266: aload_0
      //   267: iconst_1
      //   268: putfield 470	com/jingdong/common/utils/HttpGroup$HttpRequest:connectionRetry	Z
      //   271: return
      //   272: aload 5
      //   274: invokevirtual 684	java/lang/Integer:intValue	()I
      //   277: bipush 254
      //   279: if_icmpne +49 -> 328
      //   282: new 227	com/jingdong/common/utils/HttpGroup$HttpError
      //   285: dup
      //   286: invokespecial 692	com/jingdong/common/utils/HttpGroup$HttpError:<init>	()V
      //   289: astore 7
      //   291: aload 7
      //   293: iconst_3
      //   294: invokevirtual 695	com/jingdong/common/utils/HttpGroup$HttpError:setErrorCode	(I)V
      //   297: aload 7
      //   299: aload 5
      //   301: invokevirtual 684	java/lang/Integer:intValue	()I
      //   304: invokevirtual 698	com/jingdong/common/utils/HttpGroup$HttpError:setJsonCode	(I)V
      //   307: aload 7
      //   309: aload_0
      //   310: getfield 351	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
      //   313: invokevirtual 701	com/jingdong/common/utils/HttpGroup$HttpError:setHttpResponse	(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
      //   316: aload_0
      //   317: aload 7
      //   319: invokevirtual 377	com/jingdong/common/utils/HttpGroup$HttpRequest:throwError	(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
      //   322: aload_0
      //   323: iconst_1
      //   324: putfield 470	com/jingdong/common/utils/HttpGroup$HttpRequest:connectionRetry	Z
      //   327: return
      //   328: aload 5
      //   330: invokevirtual 684	java/lang/Integer:intValue	()I
      //   333: bipush 30
      //   335: if_icmpne +50 -> 385
      //   338: new 227	com/jingdong/common/utils/HttpGroup$HttpError
      //   341: dup
      //   342: invokespecial 692	com/jingdong/common/utils/HttpGroup$HttpError:<init>	()V
      //   345: astore 8
      //   347: aload 8
      //   349: iconst_3
      //   350: invokevirtual 695	com/jingdong/common/utils/HttpGroup$HttpError:setErrorCode	(I)V
      //   353: aload 8
      //   355: aload 5
      //   357: invokevirtual 684	java/lang/Integer:intValue	()I
      //   360: invokevirtual 698	com/jingdong/common/utils/HttpGroup$HttpError:setJsonCode	(I)V
      //   363: aload 8
      //   365: aload_0
      //   366: getfield 351	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
      //   369: invokevirtual 701	com/jingdong/common/utils/HttpGroup$HttpError:setHttpResponse	(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
      //   372: aload 8
      //   374: iconst_1
      //   375: invokevirtual 374	com/jingdong/common/utils/HttpGroup$HttpError:setNoRetry	(Z)V
      //   378: aload_0
      //   379: aload 8
      //   381: invokevirtual 377	com/jingdong/common/utils/HttpGroup$HttpRequest:throwError	(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
      //   384: return
      //   385: aload 5
      //   387: invokevirtual 684	java/lang/Integer:intValue	()I
      //   390: iconst_3
      //   391: if_icmpne -293 -> 98
      //   394: invokestatic 706	com/jingdong/common/login/LoginUserBase:logoutOnlineInfo	()V
      //   397: new 227	com/jingdong/common/utils/HttpGroup$HttpError
      //   400: dup
      //   401: invokespecial 692	com/jingdong/common/utils/HttpGroup$HttpError:<init>	()V
      //   404: astore 9
      //   406: aload 9
      //   408: iconst_3
      //   409: invokevirtual 695	com/jingdong/common/utils/HttpGroup$HttpError:setErrorCode	(I)V
      //   412: aload 9
      //   414: aload 5
      //   416: invokevirtual 684	java/lang/Integer:intValue	()I
      //   419: invokevirtual 698	com/jingdong/common/utils/HttpGroup$HttpError:setJsonCode	(I)V
      //   422: aload 9
      //   424: aload_0
      //   425: getfield 351	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
      //   428: invokevirtual 701	com/jingdong/common/utils/HttpGroup$HttpError:setHttpResponse	(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
      //   431: aload 9
      //   433: iconst_1
      //   434: invokevirtual 374	com/jingdong/common/utils/HttpGroup$HttpError:setNoRetry	(Z)V
      //   437: aload_0
      //   438: aload 9
      //   440: invokevirtual 377	com/jingdong/common/utils/HttpGroup$HttpRequest:throwError	(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
      //   443: return
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	444	0	this	HttpRequest
      //   25	6	1	localJSONObjectProxy	JSONObjectProxy
      //   99	7	2	localJSONException1	JSONException
      //   139	7	3	localJSONException2	JSONException
      //   118	8	4	localNumberFormatException	java.lang.NumberFormatException
      //   50	365	5	localInteger	Integer
      //   233	29	6	localHttpError1	HttpGroup.HttpError
      //   289	29	7	localHttpError2	HttpGroup.HttpError
      //   345	35	8	localHttpError3	HttpGroup.HttpError
      //   404	35	9	localHttpError4	HttpGroup.HttpError
      //   168	5	10	localObject	Object
      //   158	3	11	localInterruptedException	InterruptedException
      // Exception table:
      //   from	to	target	type
      //   4	34	99	org/json/JSONException
      //   34	52	118	java/lang/NumberFormatException
      //   34	52	139	org/json/JSONException
      //   87	91	158	java/lang/InterruptedException
      //   87	91	168	finally
      //   91	93	168	finally
      //   160	165	168	finally
      //   170	172	168	finally
    }
    
    private void nextHandler()
    {
      int i = this.currentHandlerIndex;
      this.currentHandlerIndex = (1 + this.currentHandlerIndex);
      if (i < this.handlers.size())
      {
        ((HttpGroup.Handler)this.handlers.get(i)).run();
        this.currentHandlerIndex = i;
      }
    }
    
    /* Error */
    private void notifyUser(final HttpDialogController paramHttpDialogController)
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 52	com/jingdong/common/utils/HttpGroup$HttpRequest:this$0	Lcom/jingdong/common/utils/HttpGroup;
      //   4: getfield 611	com/jingdong/common/utils/HttpGroup:httpGroupSetting	Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;
      //   7: invokevirtual 617	com/jingdong/common/utils/HttpGroup$HttpGroupSetting:getMyActivity	()Lcom/jingdong/common/frame/IMyActivity;
      //   10: astore_2
      //   11: aload_2
      //   12: ifnonnull +4 -> 16
      //   15: return
      //   16: invokestatic 714	com/jingdong/common/utils/HttpGroup:access$10	()Ljava/util/HashMap;
      //   19: astore_3
      //   20: aload_3
      //   21: monitorenter
      //   22: invokestatic 714	com/jingdong/common/utils/HttpGroup:access$10	()Ljava/util/HashMap;
      //   25: aload_2
      //   26: invokevirtual 719	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
      //   29: checkcast 59	java/util/ArrayList
      //   32: astore 5
      //   34: iconst_0
      //   35: istore 6
      //   37: aload 5
      //   39: ifnonnull +29 -> 68
      //   42: new 59	java/util/ArrayList
      //   45: dup
      //   46: invokespecial 60	java/util/ArrayList:<init>	()V
      //   49: astore 7
      //   51: invokestatic 714	com/jingdong/common/utils/HttpGroup:access$10	()Ljava/util/HashMap;
      //   54: aload_2
      //   55: aload 7
      //   57: invokevirtual 723	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
      //   60: pop
      //   61: iconst_1
      //   62: istore 6
      //   64: aload 7
      //   66: astore 5
      //   68: aload 5
      //   70: aload_0
      //   71: invokevirtual 726	java/util/ArrayList:add	(Ljava/lang/Object;)Z
      //   74: pop
      //   75: aload_3
      //   76: monitorexit
      //   77: iload 6
      //   79: ifeq +25 -> 104
      //   82: aload_1
      //   83: aload 5
      //   85: aload_2
      //   86: invokevirtual 730	com/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController:init	(Ljava/util/ArrayList;Lcom/jingdong/common/frame/IMyActivity;)V
      //   89: aload_2
      //   90: new 732	com/jingdong/common/utils/HttpGroup$HttpRequest$10
      //   93: dup
      //   94: aload_0
      //   95: aload_1
      //   96: invokespecial 735	com/jingdong/common/utils/HttpGroup$HttpRequest$10:<init>	(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;)V
      //   99: invokeinterface 738 2 0
      //   104: aload_1
      //   105: invokestatic 741	com/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController:access$0	(Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;)Z
      //   108: ifeq -93 -> 15
      //   111: aload_0
      //   112: monitorenter
      //   113: aload_0
      //   114: invokevirtual 294	java/lang/Object:wait	()V
      //   117: aload_0
      //   118: monitorexit
      //   119: return
      //   120: astore 11
      //   122: aload_0
      //   123: monitorexit
      //   124: aload 11
      //   126: athrow
      //   127: astore 4
      //   129: aload_3
      //   130: monitorexit
      //   131: aload 4
      //   133: athrow
      //   134: astore 10
      //   136: aload 10
      //   138: invokevirtual 336	java/lang/InterruptedException:printStackTrace	()V
      //   141: goto -24 -> 117
      //   144: astore 4
      //   146: goto -17 -> 129
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	149	0	this	HttpRequest
      //   0	149	1	paramHttpDialogController	HttpDialogController
      //   10	80	2	localIMyActivity	IMyActivity
      //   19	111	3	localHashMap	HashMap
      //   127	5	4	localObject1	Object
      //   144	1	4	localObject2	Object
      //   32	52	5	localObject3	Object
      //   35	43	6	i	int
      //   49	16	7	localArrayList	ArrayList
      //   134	3	10	localInterruptedException	InterruptedException
      //   120	5	11	localObject4	Object
      // Exception table:
      //   from	to	target	type
      //   113	117	120	finally
      //   117	119	120	finally
      //   122	124	120	finally
      //   136	141	120	finally
      //   22	34	127	finally
      //   42	51	127	finally
      //   68	77	127	finally
      //   129	131	127	finally
      //   113	117	134	java/lang/InterruptedException
      //   51	61	144	finally
    }
    
    private void post()
      throws Exception
    {
      this.httpResponse = new HttpGroup.HttpResponse(HttpGroup.this, this.conn);
      this.conn.setRequestMethod("POST");
      this.conn.setDoOutput(true);
      byte[] arrayOfByte;
      if (this.httpSetting.getMapParams() == null)
      {
        arrayOfByte = "body=".getBytes();
        this.conn.setRequestProperty("Content-Length", String.valueOf(arrayOfByte.length));
        this.conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        DataOutputStream localDataOutputStream = new DataOutputStream(this.conn.getOutputStream());
        localDataOutputStream.write(arrayOfByte);
        localDataOutputStream.flush();
        return;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      Map localMap = this.httpSetting.getMapParams();
      Iterator localIterator = localMap.keySet().iterator();
      for (;;)
      {
        if (!localIterator.hasNext())
        {
          arrayOfByte = localStringBuilder.toString().getBytes();
          break;
        }
        String str1 = (String)localIterator.next();
        if (!"functionId".equals(str1))
        {
          String str2 = (String)localMap.get(str1);
          localStringBuilder.append(str1).append("=").append(str2);
          if (localIterator.hasNext()) {
            localStringBuilder.append("&");
          }
        }
      }
    }
    
    private boolean readAssetsCache()
    {
      this.httpResponse = new HttpGroup.HttpResponse(HttpGroup.this);
      switch (this.httpSetting.getType())
      {
      }
      for (;;)
      {
        return false;
        InputStream localInputStream2 = AssetsCacheUtils.open(this.httpSetting.getMd5(), ".json");
        if (localInputStream2 != null)
        {
          try
          {
            this.httpResponse.setString(IOUtil.readAsString(localInputStream2, HttpGroup.charset));
            this.httpResponse.setJsonObject(new JSONObjectProxy(new JSONObject(this.httpResponse.getString())));
            return true;
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
            this.httpResponse = null;
          }
          continue;
          InputStream localInputStream1 = AssetsCacheUtils.open(this.httpSetting.getMd5(), ".image");
          if (localInputStream1 != null) {
            try
            {
              byte[] arrayOfByte = IOUtil.readAsBytes(localInputStream1, null);
              this.httpResponse.setLength(arrayOfByte.length);
              this.httpResponse.setInputData(arrayOfByte);
              return true;
            }
            catch (Throwable localThrowable)
            {
              localThrowable.printStackTrace();
              this.httpResponse = null;
            }
          }
        }
      }
    }
    
    private void rsaConnectionRetry()
    {
      HttpGroup.HttpError localHttpError = new HttpGroup.HttpError(new Exception("attestation RSA"));
      localHttpError.setNoRetry(true);
      throwError(localHttpError);
      this.connectionRetry = true;
    }
    
    private void rsaEncrypt()
    {
      String str1 = this.httpSetting.getFunctionId();
      String str2 = this.httpSetting.getJsonParams().toString();
      if (str1 == null) {
        return;
      }
      boolean bool = SecureAPI.checkApi(str1);
      String str3 = "false";
      if (this.httpSetting.getNeedAgainEncrypt())
      {
        this.httpSetting.setNeedEncrypt(false);
        if (!bool) {
          break label109;
        }
      }
      label109:
      for (bool = false;; bool = true)
      {
        if (bool) {}
        try
        {
          String str4 = SecureNetwork.getTrueKey(true);
          if (str4 != null)
          {
            str2 = DesUtil.encrypt(str2, str4);
            str3 = "true";
          }
        }
        catch (Exception localException)
        {
          for (;;)
          {
            localException.printStackTrace();
          }
        }
        this.httpSetting.putMapParams("body", str2);
        this.httpSetting.putMapParams("encrypted", str3);
        return;
      }
    }
    
    private void saveCache()
    {
      if (isLastError()) {}
      FileService.Directory localDirectory1;
      String str1;
      do
      {
        do
        {
          do
          {
            return;
          } while (!this.httpSetting.isLocalFileCache());
          switch (this.httpSetting.getType())
          {
          default: 
            return;
          case 1000: 
            if (this.httpSetting.isForeverCache()) {}
            for (FileService.Directory localDirectory2 = FileService.getDirectory(5); localDirectory2 != null; localDirectory2 = FileService.getDirectory(2))
            {
              String str3 = this.httpSetting.getMd5() + ".json";
              if ((this.httpResponse == null) || (!FileService.saveToSDCardWithType(localDirectory2, str3, this.httpResponse.getString(), 2)) || (this.httpSetting.getLocalFileCacheTime() == 0L)) {
                break;
              }
              CacheFile localCacheFile2 = new CacheFile(str3, this.httpSetting.getLocalFileCacheTime());
              localCacheFile2.setDirectory(localDirectory2);
              CacheFileTable.insertOrUpdate(localCacheFile2);
              return;
            }
          }
          localDirectory1 = FileService.getDirectory(1);
        } while (localDirectory1 == null);
        str1 = this.httpSetting.getMd5() + ".image";
      } while ((this.httpResponse == null) || (!FileService.saveToSDCardWithType(localDirectory1, str1, this.httpResponse.getInputData(), 1)));
      if (this.httpSetting.getLocalFileCacheTime() != 0L)
      {
        CacheFile localCacheFile1 = new CacheFile(str1, this.httpSetting.getLocalFileCacheTime());
        localCacheFile1.setDirectory(localDirectory1);
        CacheFileTable.insertOrUpdate(localCacheFile1);
      }
      File localFile = new File(localDirectory1.getDir(), str1);
      if (this.httpSetting.isNeedShareImage())
      {
        String str2 = FileService.saveShareImage(localFile);
        this.httpResponse.setShareImagePath(str2);
      }
      this.httpResponse.setSaveFile(localFile);
    }
    
    private void urlParam()
    {
      if (this.httpSetting.isPost())
      {
        if (this.httpSetting.getMapParams() != null)
        {
          if (HttpGroup.this.reportUserInfoFlag) {
            this.httpSetting.setUrl(this.httpSetting.getUrl() + "?" + "functionId=" + (String)this.httpSetting.getMapParams().get("functionId") + StatisticsReportUtil.getReportString(this.httpSetting.isNeedGlobalInitialization()));
          }
        }
        else {
          return;
        }
        this.httpSetting.setUrl(this.httpSetting.getUrl() + "?" + "functionId=" + (String)this.httpSetting.getMapParams().get("functionId"));
        return;
      }
      String str = HttpGroup.mergerUrlAndParams(this.httpSetting.getUrl(), this.httpSetting.getMapParams());
      if ((HttpGroup.this.reportUserInfoFlag) && (this.httpSetting.getType() == 1000))
      {
        this.httpSetting.setUrl(str + StatisticsReportUtil.getReportString(this.httpSetting.isNeedGlobalInitialization()));
        return;
      }
      this.httpSetting.setUrl(str);
    }
    
    public void checkErrorInteraction()
    {
      HttpGroup.HttpError localHttpError = getLastError();
      if ((localHttpError != null) && (localHttpError.getErrorCode() == 0) && ("attestation WIFI".equals(localHttpError.getException().getMessage()))) {
        alertAttestationWIFIDialog();
      }
      while (!isLastError()) {
        return;
      }
      alertErrorDialog(localHttpError);
    }
    
    protected boolean checkModule(int paramInt)
    {
      if ((this.httpSetting.getFunctionId() != null) && (HttpGroup.mModules != null))
      {
        Integer localInteger = HttpGroup.mModules.getIntOrNull(this.httpSetting.getFunctionId());
        if ((localInteger != null) && (paramInt == localInteger.intValue())) {
          return true;
        }
      }
      return false;
    }
    
    /* Error */
    protected void connectionHandler2()
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 505	com/jingdong/common/utils/HttpGroup$HttpRequest:conn	Ljava/net/HttpURLConnection;
      //   4: invokevirtual 943	java/net/HttpURLConnection:connect	()V
      //   7: aload_0
      //   8: getfield 351	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
      //   11: aload_0
      //   12: getfield 505	com/jingdong/common/utils/HttpGroup$HttpRequest:conn	Ljava/net/HttpURLConnection;
      //   15: invokevirtual 946	java/net/HttpURLConnection:getHeaderFields	()Ljava/util/Map;
      //   18: invokevirtual 950	com/jingdong/common/utils/HttpGroup$HttpResponse:setHeaderFields	(Ljava/util/Map;)V
      //   21: aload_0
      //   22: getfield 351	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
      //   25: aload_0
      //   26: getfield 505	com/jingdong/common/utils/HttpGroup$HttpRequest:conn	Ljava/net/HttpURLConnection;
      //   29: invokevirtual 953	java/net/HttpURLConnection:getResponseCode	()I
      //   32: invokevirtual 956	com/jingdong/common/utils/HttpGroup$HttpResponse:setCode	(I)V
      //   35: aload_0
      //   36: getfield 351	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
      //   39: aload_0
      //   40: getfield 505	com/jingdong/common/utils/HttpGroup$HttpRequest:conn	Ljava/net/HttpURLConnection;
      //   43: invokevirtual 959	java/net/HttpURLConnection:getContentLength	()I
      //   46: i2l
      //   47: invokevirtual 828	com/jingdong/common/utils/HttpGroup$HttpResponse:setLength	(J)V
      //   50: aload_0
      //   51: getfield 52	com/jingdong/common/utils/HttpGroup$HttpRequest:this$0	Lcom/jingdong/common/utils/HttpGroup;
      //   54: aload_0
      //   55: getfield 351	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
      //   58: invokevirtual 393	com/jingdong/common/utils/HttpGroup$HttpResponse:getLength	()J
      //   61: invokestatic 964	java/lang/Long:valueOf	(J)Ljava/lang/Long;
      //   64: invokevirtual 965	java/lang/Long:intValue	()I
      //   67: invokevirtual 968	com/jingdong/common/utils/HttpGroup:addMaxProgress	(I)V
      //   70: aload_0
      //   71: getfield 351	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
      //   74: aload_0
      //   75: getfield 505	com/jingdong/common/utils/HttpGroup$HttpRequest:conn	Ljava/net/HttpURLConnection;
      //   78: invokevirtual 971	java/net/HttpURLConnection:getContentType	()Ljava/lang/String;
      //   81: invokevirtual 974	com/jingdong/common/utils/HttpGroup$HttpResponse:setType	(Ljava/lang/String;)V
      //   84: aload_0
      //   85: getfield 351	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
      //   88: invokevirtual 977	com/jingdong/common/utils/HttpGroup$HttpResponse:getCode	()I
      //   91: sipush 200
      //   94: if_icmpeq +38 -> 132
      //   97: new 227	com/jingdong/common/utils/HttpGroup$HttpError
      //   100: dup
      //   101: invokespecial 692	com/jingdong/common/utils/HttpGroup$HttpError:<init>	()V
      //   104: astore_3
      //   105: aload_3
      //   106: iconst_2
      //   107: invokevirtual 695	com/jingdong/common/utils/HttpGroup$HttpError:setErrorCode	(I)V
      //   110: aload_3
      //   111: aload_0
      //   112: getfield 351	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
      //   115: invokevirtual 977	com/jingdong/common/utils/HttpGroup$HttpResponse:getCode	()I
      //   118: invokevirtual 980	com/jingdong/common/utils/HttpGroup$HttpError:setResponseCode	(I)V
      //   121: aload_0
      //   122: aload_3
      //   123: invokevirtual 377	com/jingdong/common/utils/HttpGroup$HttpRequest:throwError	(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
      //   126: aload_0
      //   127: iconst_1
      //   128: putfield 470	com/jingdong/common/utils/HttpGroup$HttpRequest:connectionRetry	Z
      //   131: return
      //   132: aload_0
      //   133: getfield 113	com/jingdong/common/utils/HttpGroup$HttpRequest:httpSetting	Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
      //   136: invokevirtual 983	com/jingdong/common/utils/HttpGroup$HttpSetting:isUseCookies	()Z
      //   139: ifeq +37 -> 176
      //   142: aload_0
      //   143: getfield 505	com/jingdong/common/utils/HttpGroup$HttpRequest:conn	Ljava/net/HttpURLConnection;
      //   146: ldc_w 985
      //   149: invokevirtual 988	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
      //   152: astore 9
      //   154: aload 9
      //   156: ifnull +20 -> 176
      //   159: aload 9
      //   161: iconst_0
      //   162: aload 9
      //   164: ldc_w 990
      //   167: invokevirtual 994	java/lang/String:indexOf	(Ljava/lang/String;)I
      //   170: invokevirtual 998	java/lang/String:substring	(II)Ljava/lang/String;
      //   173: invokestatic 1000	com/jingdong/common/utils/HttpGroup:access$8	(Ljava/lang/String;)V
      //   176: ldc_w 1002
      //   179: aload_0
      //   180: getfield 505	com/jingdong/common/utils/HttpGroup$HttpRequest:conn	Ljava/net/HttpURLConnection;
      //   183: ldc_w 1004
      //   186: invokevirtual 988	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
      //   189: invokevirtual 547	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   192: ifeq +83 -> 275
      //   195: new 1006	java/util/zip/GZIPInputStream
      //   198: dup
      //   199: aload_0
      //   200: getfield 505	com/jingdong/common/utils/HttpGroup$HttpRequest:conn	Ljava/net/HttpURLConnection;
      //   203: invokevirtual 1007	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
      //   206: invokespecial 1010	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
      //   209: astore 4
      //   211: aload_0
      //   212: getfield 351	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
      //   215: aload 4
      //   217: invokevirtual 1013	com/jingdong/common/utils/HttpGroup$HttpResponse:setInputStream	(Ljava/io/InputStream;)V
      //   220: aload_0
      //   221: invokespecial 117	com/jingdong/common/utils/HttpGroup$HttpRequest:nextHandler	()V
      //   224: aload_0
      //   225: getfield 351	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
      //   228: invokevirtual 409	com/jingdong/common/utils/HttpGroup$HttpResponse:getInputStream	()Ljava/io/InputStream;
      //   231: ifnull +21 -> 252
      //   234: aload_0
      //   235: getfield 351	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
      //   238: invokevirtual 409	com/jingdong/common/utils/HttpGroup$HttpResponse:getInputStream	()Ljava/io/InputStream;
      //   241: invokevirtual 1018	java/io/InputStream:close	()V
      //   244: aload_0
      //   245: getfield 351	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
      //   248: aconst_null
      //   249: invokevirtual 1013	com/jingdong/common/utils/HttpGroup$HttpResponse:setInputStream	(Ljava/io/InputStream;)V
      //   252: aload_0
      //   253: getfield 505	com/jingdong/common/utils/HttpGroup$HttpRequest:conn	Ljava/net/HttpURLConnection;
      //   256: ifnull +172 -> 428
      //   259: aload_0
      //   260: getfield 505	com/jingdong/common/utils/HttpGroup$HttpRequest:conn	Ljava/net/HttpURLConnection;
      //   263: invokevirtual 1021	java/net/HttpURLConnection:disconnect	()V
      //   266: aload_0
      //   267: aconst_null
      //   268: putfield 505	com/jingdong/common/utils/HttpGroup$HttpRequest:conn	Ljava/net/HttpURLConnection;
      //   271: return
      //   272: astore 7
      //   274: return
      //   275: aload_0
      //   276: getfield 505	com/jingdong/common/utils/HttpGroup$HttpRequest:conn	Ljava/net/HttpURLConnection;
      //   279: invokevirtual 1007	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
      //   282: astore 8
      //   284: aload 8
      //   286: astore 4
      //   288: goto -77 -> 211
      //   291: astore 5
      //   293: aload_0
      //   294: getfield 351	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
      //   297: invokevirtual 409	com/jingdong/common/utils/HttpGroup$HttpResponse:getInputStream	()Ljava/io/InputStream;
      //   300: ifnull +21 -> 321
      //   303: aload_0
      //   304: getfield 351	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
      //   307: invokevirtual 409	com/jingdong/common/utils/HttpGroup$HttpResponse:getInputStream	()Ljava/io/InputStream;
      //   310: invokevirtual 1018	java/io/InputStream:close	()V
      //   313: aload_0
      //   314: getfield 351	com/jingdong/common/utils/HttpGroup$HttpRequest:httpResponse	Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
      //   317: aconst_null
      //   318: invokevirtual 1013	com/jingdong/common/utils/HttpGroup$HttpResponse:setInputStream	(Ljava/io/InputStream;)V
      //   321: aload_0
      //   322: getfield 505	com/jingdong/common/utils/HttpGroup$HttpRequest:conn	Ljava/net/HttpURLConnection;
      //   325: ifnull +15 -> 340
      //   328: aload_0
      //   329: getfield 505	com/jingdong/common/utils/HttpGroup$HttpRequest:conn	Ljava/net/HttpURLConnection;
      //   332: invokevirtual 1021	java/net/HttpURLConnection:disconnect	()V
      //   335: aload_0
      //   336: aconst_null
      //   337: putfield 505	com/jingdong/common/utils/HttpGroup$HttpRequest:conn	Ljava/net/HttpURLConnection;
      //   340: aload 5
      //   342: athrow
      //   343: astore_1
      //   344: aload_1
      //   345: invokevirtual 583	java/lang/Exception:printStackTrace	()V
      //   348: aload_1
      //   349: instanceof 1023
      //   352: ifeq +27 -> 379
      //   355: new 227	com/jingdong/common/utils/HttpGroup$HttpError
      //   358: dup
      //   359: invokespecial 692	com/jingdong/common/utils/HttpGroup$HttpError:<init>	()V
      //   362: astore_2
      //   363: aload_2
      //   364: iconst_1
      //   365: invokevirtual 695	com/jingdong/common/utils/HttpGroup$HttpError:setErrorCode	(I)V
      //   368: aload_0
      //   369: aload_2
      //   370: invokevirtual 377	com/jingdong/common/utils/HttpGroup$HttpRequest:throwError	(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
      //   373: aload_0
      //   374: iconst_1
      //   375: putfield 470	com/jingdong/common/utils/HttpGroup$HttpRequest:connectionRetry	Z
      //   378: return
      //   379: aload_1
      //   380: invokevirtual 1024	java/lang/Exception:getMessage	()Ljava/lang/String;
      //   383: ifnull +25 -> 408
      //   386: aload_1
      //   387: invokevirtual 1024	java/lang/Exception:getMessage	()Ljava/lang/String;
      //   390: ldc 10
      //   392: invokevirtual 1027	java/lang/String:startsWith	(Ljava/lang/String;)Z
      //   395: ifeq +13 -> 408
      //   398: aload_0
      //   399: getfield 113	com/jingdong/common/utils/HttpGroup$HttpRequest:httpSetting	Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
      //   402: invokevirtual 1030	com/jingdong/common/utils/HttpGroup$HttpSetting:appendOneAttempts	()V
      //   405: goto -32 -> 373
      //   408: aload_0
      //   409: new 227	com/jingdong/common/utils/HttpGroup$HttpError
      //   412: dup
      //   413: aload_1
      //   414: invokespecial 371	com/jingdong/common/utils/HttpGroup$HttpError:<init>	(Ljava/lang/Throwable;)V
      //   417: invokevirtual 377	com/jingdong/common/utils/HttpGroup$HttpRequest:throwError	(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
      //   420: goto -47 -> 373
      //   423: astore 6
      //   425: goto -85 -> 340
      //   428: return
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	429	0	this	HttpRequest
      //   343	71	1	localException1	Exception
      //   362	8	2	localHttpError1	HttpGroup.HttpError
      //   104	19	3	localHttpError2	HttpGroup.HttpError
      //   209	78	4	localObject1	Object
      //   291	50	5	localObject2	Object
      //   423	1	6	localException2	Exception
      //   272	1	7	localException3	Exception
      //   282	3	8	localInputStream	InputStream
      //   152	11	9	str	String
      // Exception table:
      //   from	to	target	type
      //   224	252	272	java/lang/Exception
      //   252	271	272	java/lang/Exception
      //   220	224	291	finally
      //   0	131	343	java/lang/Exception
      //   132	154	343	java/lang/Exception
      //   159	176	343	java/lang/Exception
      //   176	211	343	java/lang/Exception
      //   211	220	343	java/lang/Exception
      //   275	284	343	java/lang/Exception
      //   340	343	343	java/lang/Exception
      //   293	321	423	java/lang/Exception
      //   321	340	423	java/lang/Exception
    }
    
    public HttpGroup.HttpSetting getHttpSetting()
    {
      return this.httpSetting;
    }
    
    public boolean isLastError()
    {
      if ((this.errorList != null) && (this.errorList.size() >= this.httpSetting.getAttempts())) {}
      for (boolean bool = true;; bool = false)
      {
        if (!bool)
        {
          HttpGroup.HttpError localHttpError = getLastError();
          if ((localHttpError != null) && (localHttpError.isNoRetry())) {
            bool = true;
          }
        }
        return bool;
      }
    }
    
    public boolean isStop()
    {
      return this.stopFlag;
    }
    
    public void needConnectionHandler()
    {
      if (this.isNeedConnection)
      {
        this.handlers.clear();
        this.handlers.add(this.connectionThreadPoolsHandler);
        this.handlers.add(this.connectionHandler);
        this.handlers.add(this.contentHandler);
        nextHandler();
      }
    }
    
    public void noNeedConnectionHandler()
    {
      this.handlers.add(this.paramHandler);
      this.handlers.add(this.firstHandler);
      this.handlers.add(this.testHandler);
      this.handlers.add(this.cacheHandler);
      nextHandler();
    }
    
    protected void setModule(int paramInt)
    {
      if ((this.httpSetting.getFunctionId() != null) && (HttpGroup.mModules != null)) {}
      try
      {
        HttpGroup.mModules.put(this.httpSetting.getFunctionId(), paramInt);
        return;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
      }
    }
    
    public void stop()
    {
      this.stopFlag = true;
    }
    
    public void throwError(HttpGroup.HttpError paramHttpError)
    {
      ArrayList localArrayList = getErrorList();
      localArrayList.add(paramHttpError);
      paramHttpError.setTimes(localArrayList.size());
      checkErrorInteraction();
    }
    
    public void typeHandler()
    {
      nextHandler();
    }
    
    class HttpDialogController
      extends DialogController
    {
      protected ArrayList<HttpGroup.HttpRequest> httpRequestList;
      private boolean isSynchronizHTTP = true;
      protected IMyActivity myActivity;
      
      HttpDialogController() {}
      
      protected void actionCancel()
      {
        actionCommon(false);
      }
      
      /* Error */
      protected void actionCommon(boolean paramBoolean)
      {
        // Byte code:
        //   0: aload_0
        //   1: getfield 33	com/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController:alertDialog	Landroid/app/AlertDialog;
        //   4: ifnull +10 -> 14
        //   7: aload_0
        //   8: getfield 33	com/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController:alertDialog	Landroid/app/AlertDialog;
        //   11: invokevirtual 38	android/app/AlertDialog:dismiss	()V
        //   14: invokestatic 44	com/jingdong/common/utils/HttpGroup:access$10	()Ljava/util/HashMap;
        //   17: astore_2
        //   18: aload_2
        //   19: monitorenter
        //   20: iconst_0
        //   21: istore_3
        //   22: iload_3
        //   23: aload_0
        //   24: getfield 46	com/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController:httpRequestList	Ljava/util/ArrayList;
        //   27: invokevirtual 52	java/util/ArrayList:size	()I
        //   30: if_icmplt +17 -> 47
        //   33: invokestatic 44	com/jingdong/common/utils/HttpGroup:access$10	()Ljava/util/HashMap;
        //   36: aload_0
        //   37: getfield 54	com/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController:myActivity	Lcom/jingdong/common/frame/IMyActivity;
        //   40: invokevirtual 60	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
        //   43: pop
        //   44: aload_2
        //   45: monitorexit
        //   46: return
        //   47: aload_0
        //   48: getfield 46	com/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController:httpRequestList	Ljava/util/ArrayList;
        //   51: iload_3
        //   52: invokevirtual 64	java/util/ArrayList:get	(I)Ljava/lang/Object;
        //   55: checkcast 66	com/jingdong/common/utils/HttpGroup$HttpRequest
        //   58: astore 5
        //   60: iload_1
        //   61: ifeq +9 -> 70
        //   64: aload 5
        //   66: iconst_1
        //   67: putfield 69	com/jingdong/common/utils/HttpGroup$HttpRequest:manualRetry	Z
        //   70: aload 5
        //   72: monitorenter
        //   73: aload 5
        //   75: invokevirtual 74	java/lang/Object:notify	()V
        //   78: aload 5
        //   80: monitorexit
        //   81: iinc 3 1
        //   84: goto -62 -> 22
        //   87: astore 6
        //   89: aload 5
        //   91: monitorexit
        //   92: aload 6
        //   94: athrow
        //   95: astore 4
        //   97: aload_2
        //   98: monitorexit
        //   99: aload 4
        //   101: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	102	0	this	HttpDialogController
        //   0	102	1	paramBoolean	boolean
        //   17	81	2	localHashMap	HashMap
        //   21	61	3	i	int
        //   95	5	4	localObject1	Object
        //   58	32	5	localHttpRequest	HttpGroup.HttpRequest
        //   87	6	6	localObject2	Object
        // Exception table:
        //   from	to	target	type
        //   73	81	87	finally
        //   89	92	87	finally
        //   22	46	95	finally
        //   47	60	95	finally
        //   64	70	95	finally
        //   70	73	95	finally
        //   92	95	95	finally
        //   97	99	95	finally
      }
      
      protected void actionOfficialWebsite(IMainActivity paramIMainActivity)
      {
        Uri.parse("http://m.jd.com/download/downApp.html");
        MyApplication.exitAll();
      }
      
      protected void actionRetry()
      {
        actionCommon(true);
      }
      
      public void init(ArrayList<HttpGroup.HttpRequest> paramArrayList, IMyActivity paramIMyActivity)
      {
        this.myActivity = paramIMyActivity;
        this.httpRequestList = paramArrayList;
        init(paramIMyActivity.getThisActivity());
      }
      
      public boolean isSynchronizHTTP()
      {
        return this.isSynchronizHTTP;
      }
      
      public void setSynchronizHTTP(boolean paramBoolean)
      {
        this.isSynchronizHTTP = paramBoolean;
      }
    }
  }
  
  public class HttpResponse
  {
    private int code;
    private Map<String, List<String>> headerFields;
    private HttpURLConnection httpURLConnection;
    private byte[] inputData;
    private InputStream inputStream;
    private JSONObjectProxy jsonObject;
    private long length;
    private File saveFile;
    private String shareImagePath;
    private SoftReference<byte[]> softReferenceInputData;
    private String string;
    private String type;
    
    public HttpResponse() {}
    
    public HttpResponse(HttpURLConnection paramHttpURLConnection)
    {
      this.httpURLConnection = paramHttpURLConnection;
    }
    
    private void gc()
    {
      this.softReferenceInputData = new SoftReference(this.inputData);
      this.inputData = null;
    }
    
    public void clean()
    {
      this.httpURLConnection = null;
    }
    
    public int getCode()
    {
      return this.code;
    }
    
    public String getHeaderField(String paramString)
    {
      if (this.headerFields == null) {}
      List localList;
      do
      {
        return null;
        localList = (List)this.headerFields.get(paramString);
      } while ((localList == null) || (localList.size() < 1));
      return (String)localList.get(0);
    }
    
    public Map<String, List<String>> getHeaderFields()
    {
      return this.headerFields;
    }
    
    public byte[] getInputData()
    {
      byte[] arrayOfByte = this.inputData;
      gc();
      return arrayOfByte;
    }
    
    public InputStream getInputStream()
    {
      return this.inputStream;
    }
    
    public JSONObjectProxy getJSONObject()
    {
      return this.jsonObject;
    }
    
    public long getLength()
    {
      return this.length;
    }
    
    public File getSaveFile()
    {
      return this.saveFile;
    }
    
    public String getShareImagePath()
    {
      return this.shareImagePath;
    }
    
    public String getString()
    {
      return this.string;
    }
    
    public String getType()
    {
      return this.type;
    }
    
    public void setCode(int paramInt)
    {
      this.code = paramInt;
    }
    
    public void setHeaderFields(Map<String, List<String>> paramMap)
    {
      this.headerFields = paramMap;
    }
    
    public void setInputData(byte[] paramArrayOfByte)
    {
      this.inputData = paramArrayOfByte;
    }
    
    public void setInputStream(InputStream paramInputStream)
    {
      this.inputStream = paramInputStream;
    }
    
    public void setJsonObject(JSONObjectProxy paramJSONObjectProxy)
    {
      this.jsonObject = paramJSONObjectProxy;
    }
    
    public void setLength(long paramLong)
    {
      this.length = paramLong;
    }
    
    public void setSaveFile(File paramFile)
    {
      this.saveFile = paramFile;
    }
    
    public void setShareImagePath(String paramString)
    {
      this.shareImagePath = paramString;
    }
    
    public void setString(String paramString)
    {
      this.string = paramString;
    }
    
    public void setType(String paramString)
    {
      this.type = paramString;
    }
  }
  
  public static class HttpSetting
    implements HttpGroup.HttpSettingParams
  {
    public static final int CACHE_MODE_ASSETS = 3;
    public static final int CACHE_MODE_AUTO = 0;
    public static final int CACHE_MODE_ONLY_CACHE = 1;
    public static final int CACHE_MODE_ONLY_NET = 2;
    public static final int EFFECT_DEFAULT = 1;
    public static final int EFFECT_NO = 0;
    public static final int EFFECT_STATE_NO = 0;
    public static final int EFFECT_STATE_YES = 1;
    public static final int ERROR_DIALOG_TYPE_BACK_RETRY = 2;
    public static final int ERROR_DIALOG_TYPE_DEFAULT = 0;
    public static final int ERROR_DIALOG_TYPE_ONLY_CANCEL = 1;
    public static final int ERROR_DIALOG_TYPE_SETUP_CANCEL = 3;
    private int alertErrorDialogType = 0;
    private int attempts;
    private int cacheMode = 0;
    private int connectTimeout;
    private int effect = 1;
    private int effectState = 0;
    private String finalUrl;
    private String functionId;
    private String host;
    private int id;
    private boolean isForeverCache;
    private boolean isReady = true;
    private boolean isThisFunctionMustBeExcute = false;
    private boolean isTopPriority = false;
    private boolean isUseCookies = true;
    private JSONObject jsonParams;
    private boolean localFileCache = false;
    private long localFileCacheTime = -1L;
    private boolean localMemoryCache = false;
    private boolean mNeedAgainEncrypt = false;
    private Map<String, String> mapParams;
    private String md5;
    private boolean needGlobalInitialization = true;
    private boolean needShareImage;
    private boolean notifyUser = false;
    private boolean notifyUserWithExit = false;
    private HttpGroup.OnEndListener onEndListener;
    private HttpGroup.OnErrorListener onErrorListener;
    private HttpGroup.OnProgressListener onProgressListener;
    private HttpGroup.OnReadyListener onReadyListener;
    private HttpGroup.OnStartListener onStartListener;
    private boolean post = "post".equals(Configuration.getProperty("requestMethod", "post"));
    private int priority;
    private int readTimeout;
    private FileGuider savePath;
    private int type;
    private String url;
    private boolean useLocalCookies = false;
    
    public void appendOneAttempts()
    {
      this.attempts = (1 + this.attempts);
    }
    
    public int getAlertErrorDialogType()
    {
      return this.alertErrorDialogType;
    }
    
    public int getAttempts()
    {
      return this.attempts;
    }
    
    public int getCacheMode()
    {
      return this.cacheMode;
    }
    
    public int getConnectTimeout()
    {
      return this.connectTimeout;
    }
    
    public int getEffect()
    {
      return this.effect;
    }
    
    public int getEffectState()
    {
      return this.effectState;
    }
    
    public String getFinalUrl()
    {
      return this.finalUrl;
    }
    
    public String getFunctionId()
    {
      return this.functionId;
    }
    
    public String getHost()
    {
      return this.host;
    }
    
    public int getId()
    {
      return this.id;
    }
    
    public JSONObject getJsonParams()
    {
      if (this.jsonParams == null) {
        this.jsonParams = new JSONObject();
      }
      return this.jsonParams;
    }
    
    public long getLocalFileCacheTime()
    {
      return this.localFileCacheTime;
    }
    
    public Map<String, String> getMapParams()
    {
      return this.mapParams;
    }
    
    public String getMd5()
    {
      String str1;
      int i;
      int j;
      String str2;
      if (this.md5 == null)
      {
        str1 = getUrl();
        if (str1 == null) {}
        do
        {
          return null;
          i = 0;
          j = 0;
          if (j < 3) {
            break;
          }
        } while (i == -1);
        str2 = getUrl().substring(i);
        int k = str2.indexOf("&networkType=");
        if (k != -1) {
          str2 = str2.substring(0, k);
        }
        if (!isPost()) {
          break label124;
        }
      }
      label124:
      for (this.md5 = Md5Encrypt.md5(str2 + getJsonParams());; this.md5 = Md5Encrypt.md5(str2))
      {
        return this.md5;
        i = str1.indexOf("/", i + 1);
        j++;
        break;
      }
    }
    
    public boolean getNeedAgainEncrypt()
    {
      return this.mNeedAgainEncrypt;
    }
    
    public HttpGroup.OnEndListener getOnEndListener()
    {
      return this.onEndListener;
    }
    
    public HttpGroup.OnErrorListener getOnErrorListener()
    {
      return this.onErrorListener;
    }
    
    public HttpGroup.OnProgressListener getOnProgressListener()
    {
      return this.onProgressListener;
    }
    
    public HttpGroup.OnReadyListener getOnReadyListener()
    {
      return this.onReadyListener;
    }
    
    public HttpGroup.OnStartListener getOnStartListener()
    {
      return this.onStartListener;
    }
    
    public int getPriority()
    {
      return this.priority;
    }
    
    public int getReadTimeout()
    {
      return this.readTimeout;
    }
    
    public FileGuider getSavePath()
    {
      return this.savePath;
    }
    
    public int getType()
    {
      return this.type;
    }
    
    public String getUrl()
    {
      return this.url;
    }
    
    public boolean isForeverCache()
    {
      return this.isForeverCache;
    }
    
    public boolean isLocalFileCache()
    {
      return this.localFileCache;
    }
    
    public boolean isLocalMemoryCache()
    {
      return this.localMemoryCache;
    }
    
    public boolean isNeedGlobalInitialization()
    {
      return this.needGlobalInitialization;
    }
    
    public boolean isNeedShareImage()
    {
      return this.needShareImage;
    }
    
    public boolean isNotifyUser()
    {
      return this.notifyUser;
    }
    
    public boolean isNotifyUserWithExit()
    {
      return this.notifyUserWithExit;
    }
    
    public boolean isPost()
    {
      return this.post;
    }
    
    public boolean isReady()
    {
      return this.isReady;
    }
    
    public boolean isThisFunctionMustBeExcute()
    {
      return this.isThisFunctionMustBeExcute;
    }
    
    public boolean isTopPriority()
    {
      return this.isTopPriority;
    }
    
    public boolean isUseCookies()
    {
      return this.isUseCookies;
    }
    
    public boolean isUseLocalCookies()
    {
      return this.useLocalCookies;
    }
    
    public void onEnd(HttpGroup.HttpResponse paramHttpResponse)
    {
      if (this.onEndListener != null) {
        this.onEndListener.onEnd(paramHttpResponse);
      }
    }
    
    public void onError(HttpGroup.HttpError paramHttpError)
    {
      if (this.onErrorListener != null)
      {
        this.onErrorListener.onError(paramHttpError);
        if (this.isThisFunctionMustBeExcute)
        {
          UnExcuteFunction localUnExcuteFunction = new UnExcuteFunction();
          localUnExcuteFunction.setIfNeedNotifyUser(0);
          localUnExcuteFunction.setIfNeedLodingModel(0);
          localUnExcuteFunction.setCallBack("");
          localUnExcuteFunction.setFunctionId(getFunctionId());
          localUnExcuteFunction.setJsonParams(getJsonParams().toString());
          localUnExcuteFunction.setHost(getHost());
          localUnExcuteFunction.setMd5(this.md5);
          UnExcuteFunctionTable.saveUnExcuteFunction(localUnExcuteFunction);
        }
      }
    }
    
    public void onProgress(int paramInt1, int paramInt2)
    {
      if (this.onProgressListener != null) {
        this.onProgressListener.onProgress(paramInt1, paramInt2);
      }
    }
    
    public void onStart()
    {
      if (this.onStartListener != null) {
        this.onStartListener.onStart();
      }
    }
    
    public void putJsonParam(String paramString, Object paramObject)
    {
      if (this.jsonParams == null) {
        this.jsonParams = new JSONObject();
      }
      try
      {
        this.jsonParams.put(paramString, paramObject);
        return;
      }
      catch (JSONException localJSONException) {}
    }
    
    public void putMapParams(String paramString1, String paramString2)
    {
      if (this.mapParams == null) {
        this.mapParams = new URLParamMap(HttpGroup.charset);
      }
      this.mapParams.put(paramString1, paramString2);
    }
    
    public void setAlertErrorDialogType(int paramInt)
    {
      this.alertErrorDialogType = paramInt;
    }
    
    public void setAttempts(int paramInt)
    {
      this.attempts = paramInt;
    }
    
    public void setCacheMode(int paramInt)
    {
      this.cacheMode = paramInt;
    }
    
    public void setConnectTimeout(int paramInt)
    {
      this.connectTimeout = paramInt;
    }
    
    public void setEffect(int paramInt)
    {
      this.effect = paramInt;
    }
    
    public void setEffectState(int paramInt)
    {
      this.effectState = paramInt;
    }
    
    public void setFinalUrl(String paramString)
    {
      this.finalUrl = paramString;
    }
    
    public void setForeverCache(boolean paramBoolean)
    {
      this.isForeverCache = paramBoolean;
    }
    
    public void setFunctionId(String paramString)
    {
      this.functionId = paramString;
    }
    
    public void setHost(String paramString)
    {
      this.host = paramString;
    }
    
    public void setId(int paramInt)
    {
      this.id = paramInt;
    }
    
    @Deprecated
    public void setJsonParams(JSONObject paramJSONObject)
    {
      if (paramJSONObject == null) {
        return;
      }
      try
      {
        this.jsonParams = new JSONObject(paramJSONObject.toString());
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    
    public void setListener(HttpGroup.HttpTaskListener paramHttpTaskListener)
    {
      if ((paramHttpTaskListener instanceof HttpGroup.CustomOnAllListener)) {
        setEffect(0);
      }
      if ((paramHttpTaskListener instanceof DefaultEffectHttpListener)) {
        setEffectState(1);
      }
      if ((paramHttpTaskListener instanceof HttpGroup.OnErrorListener)) {
        this.onErrorListener = ((HttpGroup.OnErrorListener)paramHttpTaskListener);
      }
      if ((paramHttpTaskListener instanceof HttpGroup.OnStartListener)) {
        this.onStartListener = ((HttpGroup.OnStartListener)paramHttpTaskListener);
      }
      if ((paramHttpTaskListener instanceof HttpGroup.OnProgressListener)) {
        this.onProgressListener = ((HttpGroup.OnProgressListener)paramHttpTaskListener);
      }
      if ((paramHttpTaskListener instanceof HttpGroup.OnEndListener)) {
        this.onEndListener = ((HttpGroup.OnEndListener)paramHttpTaskListener);
      }
      if ((paramHttpTaskListener instanceof HttpGroup.OnReadyListener)) {
        this.onReadyListener = ((HttpGroup.OnReadyListener)paramHttpTaskListener);
      }
    }
    
    public void setLocalFileCache(boolean paramBoolean)
    {
      this.localFileCache = paramBoolean;
    }
    
    public void setLocalFileCacheTime(long paramLong)
    {
      this.localFileCacheTime = paramLong;
    }
    
    public void setLocalMemoryCache(boolean paramBoolean)
    {
      this.localMemoryCache = paramBoolean;
    }
    
    @Deprecated
    public void setMapParams(Map<String, String> paramMap)
    {
      if (paramMap == null) {}
      for (;;)
      {
        return;
        Iterator localIterator = paramMap.keySet().iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          putMapParams(str, (String)paramMap.get(str));
        }
      }
    }
    
    public void setMd5(String paramString)
    {
      this.md5 = paramString;
    }
    
    public void setNeedEncrypt(boolean paramBoolean)
    {
      this.mNeedAgainEncrypt = paramBoolean;
    }
    
    public void setNeedGlobalInitialization(boolean paramBoolean)
    {
      this.needGlobalInitialization = paramBoolean;
    }
    
    public void setNeedShareImage(boolean paramBoolean)
    {
      this.needShareImage = paramBoolean;
    }
    
    public void setNotifyUser(boolean paramBoolean)
    {
      this.notifyUser = paramBoolean;
    }
    
    public void setNotifyUserWithExit(boolean paramBoolean)
    {
      this.notifyUserWithExit = paramBoolean;
    }
    
    public void setPost(boolean paramBoolean)
    {
      this.post = paramBoolean;
    }
    
    public void setPriority(int paramInt)
    {
      this.priority = paramInt;
    }
    
    public void setReadTimeout(int paramInt)
    {
      this.readTimeout = paramInt;
    }
    
    public void setReady(boolean paramBoolean)
    {
      this.isReady = paramBoolean;
    }
    
    public void setSavePath(FileGuider paramFileGuider)
    {
      this.savePath = paramFileGuider;
    }
    
    public void setThisFunctionMustBeExcute(boolean paramBoolean)
    {
      this.isThisFunctionMustBeExcute = paramBoolean;
    }
    
    public void setTopPriority(boolean paramBoolean)
    {
      this.isTopPriority = paramBoolean;
    }
    
    public void setType(int paramInt)
    {
      this.type = paramInt;
    }
    
    public void setUrl(String paramString)
    {
      this.url = paramString;
    }
    
    public void setUseCookies(boolean paramBoolean)
    {
      this.isUseCookies = paramBoolean;
    }
    
    public void setUseLocalCookies(boolean paramBoolean)
    {
      this.useLocalCookies = paramBoolean;
    }
  }
  
  public static abstract interface HttpSettingParams
  {
    public abstract void putJsonParam(String paramString, Object paramObject);
    
    public abstract void putMapParams(String paramString1, String paramString2);
    
    public abstract void setReady(boolean paramBoolean);
  }
  
  public static abstract interface HttpTaskListener {}
  
  public static abstract interface OnAllListener
    extends HttpGroup.OnStartListener, HttpGroup.OnEndListener, HttpGroup.OnErrorListener, HttpGroup.OnProgressListener
  {}
  
  public static abstract interface OnCommonListener
    extends HttpGroup.OnEndListener, HttpGroup.OnErrorListener, HttpGroup.OnReadyListener
  {}
  
  public static abstract interface OnEndListener
    extends HttpGroup.HttpTaskListener
  {
    public abstract void onEnd(HttpGroup.HttpResponse paramHttpResponse);
  }
  
  public static abstract interface OnErrorListener
    extends HttpGroup.HttpTaskListener
  {
    public abstract void onError(HttpGroup.HttpError paramHttpError);
  }
  
  public static abstract interface OnGroupCompleteListener
  {
    public abstract void onComplete();
  }
  
  public static abstract interface OnGroupProgressListener
  {
    public abstract void onProgress(int paramInt1, int paramInt2);
  }
  
  public static abstract interface OnGroupStartListener
  {
    public abstract void onStart();
  }
  
  public static abstract interface OnGroupStepListener
  {
    public abstract void onStep(int paramInt1, int paramInt2);
  }
  
  public static abstract interface OnProgressListener
    extends HttpGroup.HttpTaskListener
  {
    public abstract void onProgress(int paramInt1, int paramInt2);
  }
  
  public static abstract interface OnReadyListener
    extends HttpGroup.HttpTaskListener
  {
    public abstract void onReady(HttpGroup.HttpSettingParams paramHttpSettingParams);
  }
  
  public static abstract interface OnStartListener
    extends HttpGroup.HttpTaskListener
  {
    public abstract void onStart();
  }
  
  public static abstract interface StopController
  {
    public abstract boolean isStop();
    
    public abstract void stop();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.HttpGroup
 * JD-Core Version:    0.7.0.1
 */