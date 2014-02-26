package com.jingdong.common.utils;

import android.os.Handler;
import android.text.TextUtils;

public class UseCacheHttpGroupUtil
  implements HttpGroup.OnCommonListener
{
  private final String TAG = "UseCacheHttpGroupUtil";
  private String functionID;
  private HttpGroup group;
  private Handler handler = new Handler();
  private int interval = 0;
  private boolean isCacheBack = true;
  private boolean isNetBack = false;
  private boolean isOnlyCache = false;
  private boolean isOnlyNetData = false;
  private HttpGroup.OnCommonListener onAllListener;
  private String param;
  
  private boolean reLoadData()
  {
    if ((!this.isOnlyNetData) && (!this.isOnlyCache))
    {
      this.isOnlyNetData = true;
      this.isCacheBack = false;
      addUseCache(this.group, this.functionID, this.param, this.onAllListener);
      return true;
    }
    return false;
  }
  
  public void addUseCache(HttpGroup paramHttpGroup, String paramString1, String paramString2, HttpGroup.OnCommonListener paramOnCommonListener)
  {
    this.group = paramHttpGroup;
    this.functionID = paramString1;
    this.onAllListener = paramOnCommonListener;
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId(paramString1);
    if (!TextUtils.isEmpty(paramString2)) {
      localHttpSetting.setJsonParams(JsonParser.parseParamsJsonFromString(paramString2));
    }
    this.param = paramString2;
    if (this.isOnlyNetData) {
      this.isCacheBack = false;
    }
    localHttpSetting.setListener(this);
    localHttpSetting.setEffect(0);
    localHttpSetting.setForeverCache(true);
    localHttpSetting.setLocalFileCache(true);
    if ((this.isOnlyNetData) && (!this.isOnlyCache)) {
      localHttpSetting.setCacheMode(2);
    }
    for (;;)
    {
      localHttpSetting.setNeedGlobalInitialization(false);
      paramHttpGroup.add(localHttpSetting);
      return;
      localHttpSetting.setCacheMode(1);
    }
  }
  
  public int getInterval()
  {
    return this.interval;
  }
  
  public boolean isCacheBack()
  {
    return this.isCacheBack;
  }
  
  protected void onCacheError() {}
  
  public void onEnd(final HttpGroup.HttpResponse paramHttpResponse)
  {
    if (this.isCacheBack) {
      this.handler.postDelayed(new Runnable()
      {
        public void run()
        {
          if (UseCacheHttpGroupUtil.this.isNetBack) {}
          while (UseCacheHttpGroupUtil.this.onAllListener == null) {
            return;
          }
          UseCacheHttpGroupUtil.this.onAllListener.onEnd(paramHttpResponse);
        }
      }, this.interval);
    }
    for (;;)
    {
      if (reLoadData()) {}
      return;
      this.isNetBack = true;
      if (this.onAllListener != null) {
        this.onAllListener.onEnd(paramHttpResponse);
      }
    }
  }
  
  public void onError(HttpGroup.HttpError paramHttpError)
  {
    if (reLoadData()) {}
    while (this.onAllListener == null) {
      return;
    }
    this.onAllListener.onError(paramHttpError);
  }
  
  public void onReady(HttpGroup.HttpSettingParams paramHttpSettingParams)
  {
    if (this.onAllListener != null) {
      this.onAllListener.onReady(paramHttpSettingParams);
    }
  }
  
  public void setInterval(int paramInt)
  {
    this.interval = paramInt;
  }
  
  public void setOnlyUseCache(boolean paramBoolean)
  {
    this.isOnlyCache = paramBoolean;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.UseCacheHttpGroupUtil
 * JD-Core Version:    0.7.0.1
 */