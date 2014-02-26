package com.jingdong.app.mall.plug.framework.plug;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.widget.Toast;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.plug.framework.dynamicloader.PlugClassLoader;
import com.jingdong.app.mall.plug.framework.dynamicloader.PlugsMainActivity;
import com.jingdong.app.mall.plug.framework.plug.local.LocalPluginParser;
import com.jingdong.app.mall.plug.framework.plug.local.LocalPlugsTools;
import com.jingdong.app.mall.plug.framework.plug.open.IPFragmentplug;
import com.jingdong.app.mall.plug.framework.plug.open.IPServiceplug;
import com.jingdong.app.mall.plug.framework.plug.open.IPlugInterface;
import com.jingdong.app.mall.plug.utils.FileUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.frame.ScrollableTabActivity;
import java.io.File;
import org.json.JSONObject;

public class DynamicAPKPlug
  extends PlugItem
{
  private static final String TAG = "DynamicAPKPlug";
  private ClassLoader classLoader;
  IPlugInterface iplug = null;
  
  public DynamicAPKPlug() {}
  
  public DynamicAPKPlug(JSONObject paramJSONObject)
  {
    super(paramJSONObject);
  }
  
  public static boolean checkApk(String paramString, int paramInt, Context paramContext)
  {
    try
    {
      String str = LocalPluginParser.parseFirstProperties(paramContext, paramString).lunchPath;
      File localFile = new File(paramString);
      Object localObject;
      IPlugInterface localIPlugInterface;
      boolean bool;
      label92:
      return false;
    }
    catch (Exception localException1)
    {
      try
      {
        localObject = PlugClassLoader.getClassLoader(localFile);
        if (localObject == null) {
          localObject = paramContext.getClassLoader();
        }
        localIPlugInterface = (IPlugInterface)((ClassLoader)localObject).loadClass(str).newInstance();
        if (((paramInt == 0) || (paramInt == 1)) && ((localIPlugInterface instanceof IPFragmentplug))) {
          return true;
        }
        if (paramInt != -1) {
          break label102;
        }
        bool = localIPlugInterface instanceof IPServiceplug;
        if (!bool) {
          break label102;
        }
        return true;
      }
      catch (Exception localException2)
      {
        break label92;
      }
      localException1 = localException1;
      localException1.printStackTrace();
      return false;
    }
  }
  
  private static boolean isWrongPkg(Context paramContext, PlugItem paramPlugItem, String paramString)
  {
    try
    {
      PlugItem localPlugItem2 = LocalPluginParser.parseFirstProperties(paramContext, paramString);
      localPlugItem1 = localPlugItem2;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        boolean bool2;
        boolean bool1;
        PlugItem localPlugItem1 = null;
      }
    }
    if ((paramPlugItem != null) && (localPlugItem1 != null))
    {
      bool2 = TextUtils.equals(paramPlugItem.plugId, localPlugItem1.plugId);
      bool1 = false;
      if (bool2) {}
    }
    else
    {
      bool1 = true;
    }
    return bool1;
  }
  
  public IPlugInterface getPlugIntance(Context paramContext)
  {
    try
    {
      if ((this.iplug != null) && (this.iplug.getVersion().equals(this.version)))
      {
        IPlugInterface localIPlugInterface = this.iplug;
        return localIPlugInterface;
      }
    }
    catch (Exception localException1)
    {
      for (;;)
      {
        File localFile1;
        label50:
        localException1.printStackTrace();
      }
    }
    try
    {
      localFile1 = new File(this.intallPath);
      localFile2 = localFile1;
    }
    catch (Exception localException2)
    {
      localFile2 = null;
      break label50;
    }
    this.classLoader = PlugClassLoader.getClassLoader(localFile2);
    if (this.classLoader == null) {
      this.classLoader = paramContext.getClassLoader();
    }
    this.iplug = ((IPlugInterface)this.classLoader.loadClass(this.lunchPath).newInstance());
    return this.iplug;
  }
  
  public boolean install(Context paramContext)
  {
    if (isWrongPkg(paramContext, this, this.downFilePath)) {
      return false;
    }
    boolean bool1 = TextUtils.isEmpty(this.downFilePath);
    boolean bool2 = false;
    if (!bool1)
    {
      getInstalledPath(paramContext);
      try
      {
        boolean bool3 = LocalPlugsTools.enoughInternalSpace(new File(this.downFilePath));
        bool2 = false;
        if (!bool3)
        {
          Toast.makeText(MyApplication.getInstance(), "内存不足，请释放部分内存以保证程序正常运行!", 0).show();
          return false;
        }
        FileUtil.copyFile(this.downFilePath, this.intallPath);
        boolean bool4 = checkApk(this.intallPath, this.screen, paramContext);
        bool2 = false;
        if (!bool4)
        {
          FileUtil.delAllFile(this.intallPath);
          return false;
        }
        PlugItem localPlugItem = LocalPluginParser.parseFirstProperties(paramContext, this.intallPath);
        cloneFromLocalProperties(localPlugItem);
        bool2 = false;
        if (localPlugItem == null)
        {
          boolean bool5 = TextUtils.isEmpty(this.intallPath);
          bool2 = false;
          if (bool5)
          {
            FileUtil.delFile(this.intallPath);
            return false;
          }
        }
        this.lunchPath = localPlugItem.lunchPath;
        boolean bool6 = TextUtils.isEmpty(this.lunchPath);
        bool2 = false;
        if (!bool6)
        {
          bool2 = true;
          this.status = PlugItem.PlugStatus.INSTALLED;
        }
      }
      catch (Exception localException) {}
    }
    return bool2;
  }
  
  public boolean install(Context paramContext, PlugStatusListener paramPlugStatusListener)
  {
    paramPlugStatusListener.onChange(install(paramContext));
    return true;
  }
  
  public boolean start(Context paramContext)
  {
    start(paramContext, null, null);
    return true;
  }
  
  public boolean start(Context paramContext, PlugStatusListener paramPlugStatusListener, Intent paramIntent)
  {
    boolean bool = startWithoutRepair(paramContext, paramPlugStatusListener, paramIntent);
    if (!bool)
    {
      PlugItem localPlugItem = LocalPlugsTools.installPlugFromAsset(paramContext, this.plugId);
      if ((localPlugItem != null) && ((localPlugItem instanceof DynamicAPKPlug))) {
        bool = ((DynamicAPKPlug)localPlugItem).startWithoutRepair(paramContext, paramPlugStatusListener, paramIntent);
      }
    }
    return bool;
  }
  
  public boolean startWithoutRepair(Context paramContext, PlugStatusListener paramPlugStatusListener, Intent paramIntent)
  {
    if (!(paramContext instanceof Activity)) {
      throw new IllegalArgumentException("context must be Activity instance!");
    }
    boolean bool1 = new File(this.intallPath).exists();
    boolean bool2 = false;
    Intent localIntent;
    if (bool1)
    {
      if (this.screen != 0) {
        break label181;
      }
      localIntent = paramIntent;
      if (localIntent != null) {
        break label143;
      }
      localIntent = new Intent(paramContext, PlugsMainActivity.class);
      localIntent.putExtra("plugId", this.plugId);
      localIntent.putExtra("file", new File(this.intallPath));
      localIntent.putExtra("fragmentName", this.lunchPath);
      if (!localIntent.getBooleanExtra("isInFrame", false)) {
        break label173;
      }
      if (!(paramContext instanceof MyActivity)) {
        break label154;
      }
      ((MyActivity)paramContext).startActivityInFrame(paramIntent);
      label137:
      bool2 = true;
    }
    label143:
    label154:
    label173:
    label181:
    IPServiceplug localIPServiceplug;
    do
    {
      int i;
      do
      {
        return bool2;
        paramIntent.setClass(paramContext, PlugsMainActivity.class);
        break;
        if (!(paramContext instanceof ScrollableTabActivity)) {
          break label137;
        }
        ((ScrollableTabActivity)paramContext).startSubActivity(paramIntent);
        break label137;
        paramContext.startActivity(localIntent);
        return true;
        i = this.screen;
        bool2 = false;
      } while (i != -1);
      localIPServiceplug = (IPServiceplug)getPlugIntance(paramContext);
      if (localIPServiceplug == null)
      {
        PlugItem localPlugItem = LocalPlugsTools.installPlugFromAsset(paramContext, this.plugId);
        if (localPlugItem != null) {
          localIPServiceplug = (IPServiceplug)localPlugItem.getPlugIntance(paramContext);
        }
      }
      bool2 = false;
    } while (localIPServiceplug == null);
    localIPServiceplug.onStart(paramContext, paramIntent);
    return true;
  }
  
  public boolean unInstall(Context paramContext)
  {
    try
    {
      if (!TextUtils.isEmpty(this.downFilePath))
      {
        File localFile2 = new File(this.downFilePath);
        if (localFile2.exists()) {
          localFile2.delete();
        }
      }
      try
      {
        label37:
        if (!TextUtils.isEmpty(this.intallPath))
        {
          File localFile1 = new File(this.intallPath);
          if (localFile1.exists()) {
            localFile1.delete();
          }
        }
        label74:
        return true;
      }
      catch (Exception localException2)
      {
        break label74;
      }
    }
    catch (Exception localException1)
    {
      break label37;
    }
  }
  
  public boolean unInstall(Context paramContext, PlugStatusListener paramPlugStatusListener)
  {
    try
    {
      if (!TextUtils.isEmpty(this.downFilePath))
      {
        File localFile2 = new File(this.downFilePath);
        if (localFile2.exists()) {
          localFile2.delete();
        }
      }
      try
      {
        label37:
        if (!TextUtils.isEmpty(this.intallPath))
        {
          File localFile1 = new File(this.intallPath);
          if (localFile1.exists()) {
            localFile1.delete();
          }
        }
        label74:
        paramPlugStatusListener.onChange(true);
        return true;
      }
      catch (Exception localException2)
      {
        break label74;
      }
    }
    catch (Exception localException1)
    {
      break label37;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.plug.framework.plug.DynamicAPKPlug
 * JD-Core Version:    0.7.0.1
 */