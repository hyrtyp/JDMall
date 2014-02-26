package com.jingdong.app.mall.plug.framework.plug;

import android.content.Context;
import android.content.Intent;
import com.jingdong.app.mall.plug.framework.plug.open.IPlugInterface;

public class AddPlug
  extends PlugItem
{
  public AddPlug(String paramString)
  {
    this.plugKey = paramString;
    this.plugName = "点击添加";
  }
  
  public IPlugInterface getPlugIntance(Context paramContext)
  {
    return null;
  }
  
  @Deprecated
  public boolean install(Context paramContext)
  {
    return false;
  }
  
  public boolean install(Context paramContext, PlugStatusListener paramPlugStatusListener)
  {
    return false;
  }
  
  @Deprecated
  public boolean start(Context paramContext)
  {
    return false;
  }
  
  public boolean start(Context paramContext, PlugStatusListener paramPlugStatusListener, Intent paramIntent)
  {
    return false;
  }
  
  @Deprecated
  public boolean unInstall(Context paramContext)
  {
    return false;
  }
  
  public boolean unInstall(Context paramContext, PlugStatusListener paramPlugStatusListener)
  {
    return false;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.plug.framework.plug.AddPlug
 * JD-Core Version:    0.7.0.1
 */