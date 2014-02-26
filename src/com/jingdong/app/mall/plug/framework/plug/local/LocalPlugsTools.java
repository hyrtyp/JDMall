package com.jingdong.app.mall.plug.framework.plug.local;

import android.content.Context;
import android.content.res.AssetManager;
import android.text.TextUtils;
import android.widget.Toast;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.plug.PlugManager;
import com.jingdong.app.mall.plug.framework.download.DownloadDao;
import com.jingdong.app.mall.plug.framework.plug.PlugItem;
import com.jingdong.app.mall.plug.utils.FilePathSelector;
import com.jingdong.app.mall.plug.utils.FileUtil;
import com.jingdong.app.mall.plug.utils.StreamToolBox;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class LocalPlugsTools
{
  private static final String TAG = "LocalPlugsTools";
  
  public static boolean enoughInternalSpace(File paramFile)
  {
    long l1 = 0L;
    try
    {
      long l3 = FileUtil.getFileSizes(paramFile);
      l1 = l3;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        long l2;
        boolean bool1;
        boolean bool2;
        localException.printStackTrace();
      }
    }
    l2 = FileUtil.getAvailableInternalMemorySize();
    bool1 = 2L * l1 < l2 - 200000L;
    bool2 = false;
    if (!bool1) {
      bool2 = true;
    }
    return bool2;
  }
  
  public static boolean enoughInternalSpace(InputStream paramInputStream)
  {
    long l1 = 0L;
    try
    {
      int i = paramInputStream.available();
      l1 = i;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        long l2;
        boolean bool1;
        boolean bool2;
        localException.printStackTrace();
      }
    }
    l2 = FileUtil.getAvailableInternalMemorySize();
    bool1 = 2L * l1 < l2 - 200000L;
    bool2 = false;
    if (!bool1) {
      bool2 = true;
    }
    return bool2;
  }
  
  public static PlugItem installPlugFromAsset(Context paramContext, String paramString)
  {
    Object localObject = "";
    for (;;)
    {
      try
      {
        String str = StreamToolBox.loadStringFromFile(FilePathSelector.getPath(FilePathSelector.SPACE_ONLY_INTERNAL, "plugs", "localplug.properties"));
        localObject = str;
      }
      catch (Exception localException1)
      {
        PlugItem localPlugItem;
        continue;
      }
      try
      {
        if (TextUtils.isEmpty((CharSequence)localObject))
        {
          intiAssetplugInforToLocal(paramContext);
          localObject = StreamToolBox.loadStringFromFile(FilePathSelector.getPath(FilePathSelector.SPACE_ONLY_INTERNAL, "plugs", "localplug.properties"));
        }
        localPlugItem = readApkToDBFromAsset(paramContext, new JSONObject((String)localObject).getString(paramString));
        return localPlugItem;
      }
      catch (Exception localException2)
      {
        return null;
      }
    }
  }
  
  private static void intiAssetplugInforToLocal(Context paramContext)
  {
    AssetManager localAssetManager = paramContext.getAssets();
    try
    {
      String[] arrayOfString = localAssetManager.list("plugs");
      Hashtable localHashtable = new Hashtable();
      int i = arrayOfString.length;
      for (int j = 0;; j++)
      {
        if (j >= i)
        {
          saveLocalPluginfo(localHashtable);
          return;
        }
        String str = arrayOfString[j];
        PlugItem localPlugItem = readApkFromAsset(paramContext, str);
        if (localPlugItem != null) {
          localHashtable.put(localPlugItem.plugId, str);
        }
      }
      return;
    }
    catch (IOException localIOException) {}
  }
  
  public static boolean isGreater_1M()
  {
    boolean bool = true;
    if (FileUtil.getAvailableInternalMemorySize() < 1048576L) {
      bool = false;
    }
    return bool;
  }
  
  private static PlugItem readApkFromAsset(Context paramContext, String paramString)
  {
    AssetManager localAssetManager = paramContext.getAssets();
    for (;;)
    {
      try
      {
        if (!paramString.endsWith(".apk")) {
          continue;
        }
        InputStream localInputStream = localAssetManager.open("plugs/" + paramString);
        if (!enoughInternalSpace(localInputStream))
        {
          Toast.makeText(MyApplication.getInstance(), "内存不足，请释放部分内存以保证程序正常运行!", 0).show();
          return null;
        }
        String str = FilePathSelector.getPath(FilePathSelector.SPACE_ONLY_INTERNAL, "plugs/install/temp", paramString);
        StreamToolBox.saveStreamToFile(localInputStream, str);
        PlugItem localPlugItem2 = LocalPluginParser.parseFirstProperties(paramContext, str);
        localPlugItem1 = localPlugItem2;
      }
      catch (IOException localIOException)
      {
        PlugItem localPlugItem1 = null;
        continue;
      }
      return localPlugItem1;
      localPlugItem1 = null;
    }
  }
  
  private static PlugItem readApkToDBFromAsset(Context paramContext, String paramString)
  {
    AssetManager localAssetManager = paramContext.getAssets();
    localPlugItem = null;
    try
    {
      boolean bool1 = paramString.endsWith(".apk");
      localPlugItem = null;
      if (bool1)
      {
        InputStream localInputStream = localAssetManager.open("plugs/" + paramString);
        boolean bool2 = enoughInternalSpace(localInputStream);
        localPlugItem = null;
        if (!bool2)
        {
          Toast.makeText(MyApplication.getInstance(), "内存不足，请释放部分内存以保证程序正常运行!", 0).show();
          return null;
        }
        String str = FilePathSelector.getPath(FilePathSelector.SPACE_ONLY_INTERNAL, "plugs/install/temp", paramString);
        StreamToolBox.saveStreamToFile(localInputStream, str);
        localPlugItem = LocalPluginParser.parseFirstProperties(paramContext, str);
        if (localPlugItem == null) {
          return localPlugItem;
        }
        localPlugItem.downFilePath = str;
        boolean bool3 = localPlugItem.install(paramContext);
        FileUtil.delFile(str);
        if (!bool3) {
          return localPlugItem;
        }
        if (DownloadDao.getDao(MyApplication.getInstance().getBaseContext()).exist(localPlugItem.plugId)) {
          DownloadDao.getDao(MyApplication.getInstance().getBaseContext()).update(localPlugItem);
        }
        for (;;)
        {
          PlugManager.getInstance().addAndUpdate(localPlugItem);
          break;
          DownloadDao.getDao(MyApplication.getInstance().getBaseContext()).insert(localPlugItem);
        }
      }
      return localPlugItem;
    }
    catch (IOException localIOException)
    {
      return localPlugItem;
      localPlugItem = null;
    }
  }
  
  public static void readApkToDBFromAsset(Context paramContext)
  {
    AssetManager localAssetManager = paramContext.getAssets();
    try
    {
      String[] arrayOfString = localAssetManager.list("plugs");
      Hashtable localHashtable = new Hashtable();
      int i = arrayOfString.length;
      for (int j = 0;; j++)
      {
        if (j >= i)
        {
          saveLocalPluginfo(localHashtable);
          return;
        }
        String str = arrayOfString[j];
        PlugItem localPlugItem = readApkToDBFromAsset(paramContext, str);
        if (localPlugItem != null) {
          localHashtable.put(localPlugItem.plugId, str);
        }
      }
      return;
    }
    catch (IOException localIOException) {}
  }
  
  private static void saveLocalPluginfo(Hashtable<String, String> paramHashtable)
  {
    JSONObject localJSONObject = new JSONObject();
    Iterator localIterator = paramHashtable.keySet().iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {}
      try
      {
        StreamToolBox.saveStringToFile(localJSONObject.toString(), FilePathSelector.getPath(FilePathSelector.SPACE_ONLY_INTERNAL, "plugs", "localplug.properties"));
        return;
      }
      catch (IOException localIOException) {}
      String str = (String)localIterator.next();
      Object localObject = paramHashtable.get(str);
      try
      {
        localJSONObject.put(str, localObject);
      }
      catch (JSONException localJSONException) {}
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.plug.framework.plug.local.LocalPlugsTools
 * JD-Core Version:    0.7.0.1
 */