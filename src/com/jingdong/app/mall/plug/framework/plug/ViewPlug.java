package com.jingdong.app.mall.plug.framework.plug;

import android.content.Context;
import android.content.Intent;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.app.mall.plug.framework.dynamicloader.PlugClassLoader;
import com.jingdong.app.mall.plug.framework.plug.open.IPFragmentplug;
import com.jingdong.app.mall.plug.framework.plug.open.IPlugInterface;
import java.io.File;
import org.json.JSONObject;

public class ViewPlug
  extends PlugItem
{
  private PlugClassLoader classLoader;
  IPFragmentplug fragmentplug = null;
  
  public ViewPlug(JSONObject paramJSONObject)
  {
    super(paramJSONObject);
    this.plugName = "商城M版";
    this.downloadUrl = "http://m.jd.com/";
    this.iconSource = 2130837941;
  }
  
  public ClassLoader getClassLoader(Context paramContext)
  {
    if (this.classLoader == null) {
      return paramContext.getClassLoader();
    }
    return this.classLoader;
  }
  
  public IPlugInterface getPlugIntance(Context paramContext)
  {
    try
    {
      File localFile1 = new File(this.downFilePath);
      localFile2 = localFile1;
    }
    catch (Exception localException2)
    {
      for (;;)
      {
        File localFile2 = null;
      }
    }
    this.classLoader = PlugClassLoader.getClassLoader(localFile2);
    try
    {
      IPFragmentplug localIPFragmentplug = (IPFragmentplug)getClassLoader(paramContext).loadClass("fragmentName").newInstance();
      return localIPFragmentplug;
    }
    catch (Exception localException1)
    {
      return null;
    }
  }
  
  public void getView() {}
  
  public boolean install(Context paramContext)
  {
    return true;
  }
  
  public boolean install(Context paramContext, PlugStatusListener paramPlugStatusListener)
  {
    paramPlugStatusListener.onChange(true);
    return false;
  }
  
  public boolean start(Context paramContext)
  {
    return true;
  }
  
  public boolean start(Context paramContext, PlugStatusListener paramPlugStatusListener, Intent paramIntent)
  {
    if (paramIntent == null) {
      paramIntent = new Intent(paramContext, WebActivity.class);
    }
    for (;;)
    {
      paramIntent.putExtra("url", this.downloadUrl);
      paramContext.startActivity(paramIntent);
      return true;
      paramIntent.setClass(paramContext, WebActivity.class);
    }
  }
  
  public boolean unInstall(Context paramContext)
  {
    return true;
  }
  
  public boolean unInstall(Context paramContext, PlugStatusListener paramPlugStatusListener)
  {
    paramPlugStatusListener.onChange(true);
    return false;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.plug.framework.plug.ViewPlug
 * JD-Core Version:    0.7.0.1
 */