package com.jingdong.app.mall.plug.framework.download;

import com.jingdong.app.mall.plug.framework.plug.PlugItem;
import com.jingdong.app.mall.plug.framework.plug.PlugItem.PlugStatus;

public abstract interface OnDownloadListener
{
  public abstract void onFinish(PlugItem paramPlugItem, String paramString1, boolean paramBoolean, String paramString2, PlugItem.PlugStatus paramPlugStatus);
  
  public abstract void onPause(PlugItem paramPlugItem, long paramLong1, long paramLong2, PlugItem.PlugStatus paramPlugStatus);
  
  public abstract void onProgress(PlugItem paramPlugItem, long paramLong1, long paramLong2, PlugItem.PlugStatus paramPlugStatus);
  
  public abstract void onRemove(PlugItem paramPlugItem);
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.plug.framework.download.OnDownloadListener
 * JD-Core Version:    0.7.0.1
 */