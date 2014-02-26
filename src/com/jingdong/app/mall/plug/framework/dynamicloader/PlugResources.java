package com.jingdong.app.mall.plug.framework.dynamicloader;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.utils.MyActivity;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.util.HashMap;

public class PlugResources
{
  private static final String TAG = "PlugResources";
  private static final HashMap<String, PlugResources> resources = new HashMap();
  AssetManager asset;
  String packageName;
  Resources res;
  
  PlugResources(String paramString, Resources paramResources, AssetManager paramAssetManager)
  {
    this.packageName = paramString;
    this.res = paramResources;
    this.asset = paramAssetManager;
  }
  
  private static PlugResources getResource(PlugClassLoader paramPlugClassLoader)
  {
    return getResource(paramPlugClassLoader.getFile());
  }
  
  public static PlugResources getResource(File paramFile)
  {
    PlugResources localPlugResources1;
    if (paramFile == null) {
      localPlugResources1 = null;
    }
    do
    {
      return localPlugResources1;
      localPlugResources1 = (PlugResources)resources.get(paramFile.getAbsolutePath());
    } while (localPlugResources1 != null);
    if (!paramFile.isFile()) {
      return null;
    }
    AssetManager localAssetManager;
    XmlResourceParser localXmlResourceParser;
    int i;
    try
    {
      localAssetManager = (AssetManager)AssetManager.class.newInstance();
      Method localMethod = localAssetManager.getClass().getMethod("addAssetPath", new Class[] { String.class });
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = paramFile.getAbsolutePath();
      localMethod.invoke(localAssetManager, arrayOfObject);
      localXmlResourceParser = localAssetManager.openXmlResourceParser("AndroidManifest.xml");
      i = localXmlResourceParser.getEventType();
    }
    catch (Exception localException)
    {
      if (!(localException instanceof RuntimeException)) {
        break label314;
      }
    }
    localXmlResourceParser.close();
    String str;
    if (str == null)
    {
      throw new RuntimeException("package not found in AndroidManifest.xml [" + paramFile + "]");
      throw ((RuntimeException)localException);
      label161:
      switch (i)
      {
      }
      do
      {
        i = localXmlResourceParser.nextToken();
        break;
      } while (!"manifest".equals(localXmlResourceParser.getName()));
    }
    for (int j = 0;; j++)
    {
      int k = localXmlResourceParser.getAttributeCount();
      str = null;
      if (j >= k) {
        break;
      }
      if ("package".equals(localXmlResourceParser.getAttributeName(j)))
      {
        str = localXmlResourceParser.getAttributeValue(j);
        break;
        Resources localResources = MyApplication.getInstance().getResources();
        PlugResources localPlugResources2 = new PlugResources(str, new Resources(localAssetManager, localResources.getDisplayMetrics(), localResources.getConfiguration()), localAssetManager);
        resources.put(paramFile.getAbsolutePath(), localPlugResources2);
        return localPlugResources2;
        label314:
        throw new RuntimeException(localException);
        if (i != 1) {
          break label161;
        }
        str = null;
        break;
      }
    }
  }
  
  public static PlugResources getResource(Class<?> paramClass)
  {
    if (!(paramClass.getClassLoader() instanceof PlugClassLoader)) {
      throw new RuntimeException(paramClass + " is not loaded from dynamic loader");
    }
    return getResource((PlugClassLoader)paramClass.getClassLoader());
  }
  
  public AssetManager getAssets()
  {
    return this.asset;
  }
  
  public int getColor(int paramInt)
  {
    return this.res.getColor(paramInt);
  }
  
  public ColorStateList getColorStateList(int paramInt)
  {
    return this.res.getColorStateList(paramInt);
  }
  
  public float getDimension(int paramInt)
  {
    return this.res.getDimension(paramInt);
  }
  
  public int getDimensionPixelOffset(int paramInt)
  {
    return this.res.getDimensionPixelOffset(paramInt);
  }
  
  public int getDimensionPixelSize(int paramInt)
  {
    return this.res.getDimensionPixelSize(paramInt);
  }
  
  public Drawable getDrawable(int paramInt)
  {
    return this.res.getDrawable(paramInt);
  }
  
  public byte[] getRawResource(int paramInt)
  {
    InputStream localInputStream = openRawResource(paramInt);
    for (;;)
    {
      try
      {
        int i = localInputStream.available();
        if (i > 0)
        {
          ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(i);
          byte[] arrayOfByte = new byte[4096];
          int j = localInputStream.read(arrayOfByte);
          if (j == -1)
          {
            localInputStream.close();
            return localByteArrayOutputStream.toByteArray();
          }
          localByteArrayOutputStream.write(arrayOfByte, 0, j);
          continue;
        }
        i = 4096;
      }
      catch (Exception localException)
      {
        return new byte[0];
      }
    }
  }
  
  public Resources getResources()
  {
    return this.res;
  }
  
  public String getString(int paramInt)
  {
    return this.res.getString(paramInt);
  }
  
  public String getString(int paramInt, Object... paramVarArgs)
  {
    return this.res.getString(paramInt, paramVarArgs);
  }
  
  public String[] getStringArray(int paramInt)
  {
    return this.res.getStringArray(paramInt);
  }
  
  public CharSequence getText(int paramInt)
  {
    return this.res.getText(paramInt);
  }
  
  public View inflate(Context paramContext, int paramInt, ViewGroup paramViewGroup, boolean paramBoolean)
  {
    if (!(paramContext instanceof MyActivity)) {
      throw new RuntimeException("unable to inflate without MyActivity context");
    }
    MyActivity localMyActivity = (MyActivity)paramContext;
    PlugResources localPlugResources = localMyActivity.getOverrideResources();
    localMyActivity.setOverrideResources(this);
    try
    {
      View localView = LayoutInflater.from(paramContext).inflate(paramInt, paramViewGroup, paramBoolean);
      return localView;
    }
    finally
    {
      localMyActivity.setOverrideResources(localPlugResources);
    }
  }
  
  public InputStream openRawResource(int paramInt)
  {
    return this.res.openRawResource(paramInt);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.plug.framework.dynamicloader.PlugResources
 * JD-Core Version:    0.7.0.1
 */