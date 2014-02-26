package com.jingdong.app.mall.plug.framework.plug.local;

import android.content.Context;
import android.content.res.AssetManager;
import android.util.DisplayMetrics;
import com.jingdong.app.mall.plug.framework.plug.DynamicAPKPlug;
import com.jingdong.app.mall.plug.framework.plug.PlugItem;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Properties;

public class LocalPluginParser
{
  private static final String TAG = "LocalPluginParser";
  
  public static PlugItem parseFirstProperties(Context paramContext, String paramString)
  {
    ArrayList localArrayList = parseInternal(paramContext, paramString);
    if (localArrayList.size() > 0) {
      return (PlugItem)localArrayList.get(0);
    }
    return null;
  }
  
  private static ArrayList<PlugItem> parseInternal(Context paramContext, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      File localFile1 = new File(paramString);
      if (!localFile1.exists()) {
        throw new RuntimeException(localFile1.getAbsolutePath() + " not found");
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    for (;;)
    {
      return localArrayList;
      new Class[] { String.class };
      new Object[] { paramString };
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      localDisplayMetrics.setToDefaults();
      Class[] arrayOfClass = new Class[4];
      arrayOfClass[0] = File.class;
      arrayOfClass[1] = String.class;
      arrayOfClass[2] = DisplayMetrics.class;
      arrayOfClass[3] = Integer.TYPE;
      Object[] arrayOfObject = new Object[4];
      File localFile2 = new File(paramString);
      arrayOfObject[0] = localFile2;
      arrayOfObject[1] = paramString;
      arrayOfObject[2] = localDisplayMetrics;
      arrayOfObject[3] = Integer.valueOf(0);
      Class localClass = Class.forName(AssetManager.class.getName());
      Object localObject = localClass.newInstance();
      localClass.getDeclaredMethod("addAssetPath", new Class[] { String.class }).invoke(localObject, new Object[] { paramString });
      AssetManager localAssetManager = (AssetManager)localObject;
      for (String str : localAssetManager.list("plugin")) {
        if (str.endsWith("plugin.properties"))
        {
          InputStream localInputStream = localAssetManager.open("plugin/" + str);
          DynamicAPKPlug localDynamicAPKPlug = parserPlug(localInputStream);
          localInputStream.close();
          localArrayList.add(localDynamicAPKPlug);
        }
      }
    }
  }
  
  private static DynamicAPKPlug parserPlug(InputStream paramInputStream)
  {
    Properties localProperties = new Properties();
    try
    {
      localProperties.load(paramInputStream);
      DynamicAPKPlug localDynamicAPKPlug = new DynamicAPKPlug();
      localDynamicAPKPlug.parse(localProperties);
      return localDynamicAPKPlug;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
  
  public ArrayList<PlugItem> parserPlugin(String paramString, Context paramContext)
  {
    try
    {
      ArrayList localArrayList = parseInternal(paramContext, paramString);
      return localArrayList;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.plug.framework.plug.local.LocalPluginParser
 * JD-Core Version:    0.7.0.1
 */