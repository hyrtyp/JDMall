package com.jingdong.app.mall.plug.framework.plug;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.jingdong.app.mall.plug.framework.download.DownloadDao;
import com.jingdong.app.mall.plug.framework.plug.open.IPlugInterface;
import java.io.File;
import org.json.JSONObject;

public class StandAPKPlug
  extends PlugItem
{
  private PlugStatusListener plugStatusListener;
  
  public StandAPKPlug(JSONObject paramJSONObject)
  {
    super(paramJSONObject);
    this.plugName = "京东阅读";
  }
  
  public IPlugInterface getPlugIntance(Context paramContext)
  {
    return null;
  }
  
  public boolean install(Context paramContext)
  {
    return false;
  }
  
  public boolean install(Context paramContext, PlugStatusListener paramPlugStatusListener)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setFlags(268435456);
    localIntent.setDataAndType(Uri.fromFile(new File(this.downFilePath)), "application/vnd.android.package-archive");
    paramContext.startActivity(localIntent);
    this.status = PlugItem.PlugStatus.INSTALLED;
    this.plugStatusListener = paramPlugStatusListener;
    return true;
  }
  
  public void installedSuccesscallback()
  {
    if (this.plugStatusListener != null) {
      this.plugStatusListener.onChange(true);
    }
  }
  
  public boolean start(Context paramContext)
  {
    new Intent("android.intent.action.MAIN", null).addCategory("android.intent.category.LAUNCHER");
    Intent localIntent = paramContext.getPackageManager().getLaunchIntentForPackage(this.plugKey.trim());
    if (localIntent != null)
    {
      paramContext.startActivity(localIntent);
      return true;
    }
    return false;
  }
  
  public boolean start(Context paramContext, PlugStatusListener paramPlugStatusListener, Intent paramIntent)
  {
    new Intent("android.intent.action.MAIN", null).addCategory("android.intent.category.LAUNCHER");
    Intent localIntent = paramContext.getPackageManager().getLaunchIntentForPackage(this.plugKey.trim());
    if (localIntent != null)
    {
      paramContext.startActivity(localIntent);
      paramPlugStatusListener.onChange(true);
      return true;
    }
    paramPlugStatusListener.onChange(false);
    return false;
  }
  
  public boolean unInstall(Context paramContext)
  {
    return false;
  }
  
  public boolean unInstall(Context paramContext, PlugStatusListener paramPlugStatusListener)
  {
    if (DownloadDao.getDao(paramContext).select(this.plugId).status == PlugItem.PlugStatus.INSTALLED)
    {
      Intent localIntent = new Intent("android.intent.action.DELETE", Uri.parse("package:" + this.plugKey));
      localIntent.setFlags(268435456);
      paramContext.startActivity(localIntent);
      return false;
    }
    paramPlugStatusListener.onChange(false);
    return false;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.plug.framework.plug.StandAPKPlug
 * JD-Core Version:    0.7.0.1
 */