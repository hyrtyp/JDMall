package com.jingdong.app.mall.plug.framework.plug;

import android.content.Context;
import android.content.Intent;
import com.jingdong.app.mall.plug.framework.plug.open.IPlugInterface;

public abstract interface IPlugItem
{
  public abstract String getDownloadPath(Context paramContext);
  
  public abstract String getInstalledPath(Context paramContext);
  
  public abstract IPlugInterface getPlugIntance(Context paramContext);
  
  public abstract boolean install(Context paramContext);
  
  public abstract boolean install(Context paramContext, PlugStatusListener paramPlugStatusListener);
  
  public abstract boolean start(Context paramContext);
  
  public abstract boolean start(Context paramContext, PlugStatusListener paramPlugStatusListener, Intent paramIntent);
  
  public abstract boolean unInstall(Context paramContext);
  
  public abstract boolean unInstall(Context paramContext, PlugStatusListener paramPlugStatusListener);
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.plug.framework.plug.IPlugItem
 * JD-Core Version:    0.7.0.1
 */