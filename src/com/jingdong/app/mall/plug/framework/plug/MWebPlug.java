package com.jingdong.app.mall.plug.framework.plug;

import android.content.Context;
import android.content.Intent;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.app.mall.plug.framework.plug.open.IPlugInterface;
import org.json.JSONObject;

public class MWebPlug
  extends PlugItem
{
  public MWebPlug() {}
  
  public MWebPlug(JSONObject paramJSONObject)
  {
    super(paramJSONObject);
    this.plugName = "商城M版";
    this.downloadUrl = "http://m.jd.com/";
    this.iconSource = 2130837941;
  }
  
  public IPlugInterface getPlugIntance(Context paramContext)
  {
    return null;
  }
  
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
    Intent localIntent = new Intent(paramContext, WebActivity.class);
    localIntent.putExtra("url", this.downloadUrl);
    paramContext.startActivity(localIntent);
    return true;
  }
  
  public boolean start(Context paramContext, PlugStatusListener paramPlugStatusListener, Intent paramIntent)
  {
    Intent localIntent = paramIntent;
    if (localIntent == null) {
      localIntent = new Intent(paramContext, WebActivity.class);
    }
    for (;;)
    {
      localIntent.putExtra("url", this.downloadUrl);
      paramContext.startActivity(localIntent);
      return true;
      localIntent.setClass(paramContext, WebActivity.class);
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
 * Qualified Name:     com.jingdong.app.mall.plug.framework.plug.MWebPlug
 * JD-Core Version:    0.7.0.1
 */