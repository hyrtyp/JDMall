package com.ja.analytics.logevent;

import com.ja.analytics.utils.LogUtil;
import java.util.HashMap;
import java.util.Map;

public class DurationEventCollection
{
  private static final String TAG = DurationEventCollection.class.getName();
  private HashMap<String, Long> beginEventMap = new HashMap();
  private HashMap<String, Map> beginEventParamMap = new HashMap();
  
  public Long getEventBeginTime(String paramString)
  {
    LogUtil.logD(TAG, "getEventBeginTime() --->" + paramString);
    if (this.beginEventMap.containsKey(paramString))
    {
      LogUtil.logD(TAG, paramString + "  已经存在直接取出来");
      return (Long)this.beginEventMap.remove(paramString);
    }
    LogUtil.logE(TAG, paramString + "  不存在！！");
    return Long.valueOf(-1L);
  }
  
  public Map getEventParamMap(String paramString)
  {
    LogUtil.logD(TAG, "getEventParamMap() --->" + paramString);
    if (this.beginEventMap.containsKey(paramString)) {
      return (Map)this.beginEventParamMap.get(paramString);
    }
    return (Map)this.beginEventParamMap.remove(paramString);
  }
  
  public void saveEventBeginTime(String paramString)
  {
    LogUtil.logD(TAG, "saveEventBeginTime() --->" + paramString);
    if (this.beginEventMap.size() > 5000)
    {
      LogUtil.logW(TAG, "缓存已满");
      return;
    }
    if (this.beginEventMap.containsKey(paramString))
    {
      LogUtil.logD(TAG, paramString + "   已经存在，直接再次设置时间标签");
      this.beginEventMap.put(paramString, Long.valueOf(System.currentTimeMillis()));
      return;
    }
    LogUtil.logD(TAG, paramString + "   不存在，存入EventMap中");
    this.beginEventMap.put(paramString, Long.valueOf(System.currentTimeMillis()));
  }
  
  public void saveEventParamMap(String paramString, Map paramMap)
  {
    LogUtil.logD(TAG, "saveEventParamMap() --->" + paramString);
    LogUtil.logD(TAG, "saveEventParamMap() --->" + paramMap);
    if (!this.beginEventParamMap.containsKey(paramString)) {
      this.beginEventParamMap.put(paramString, paramMap);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.analytics.logevent.DurationEventCollection
 * JD-Core Version:    0.7.0.1
 */