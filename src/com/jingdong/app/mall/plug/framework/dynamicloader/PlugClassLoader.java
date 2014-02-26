package com.jingdong.app.mall.plug.framework.dynamicloader;

import android.widget.Toast;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.plug.framework.plug.local.LocalPlugsTools;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.util.HashMap;

public class PlugClassLoader
  extends DexClassLoader
{
  private static final String TAG = "PlugClassLoader";
  private static HashMap<String, PlugClassLoader> loaders = new HashMap();
  private File file;
  
  public PlugClassLoader(File paramFile, String paramString1, String paramString2, String paramString3, ClassLoader paramClassLoader)
  {
    super(paramString1, paramString2, paramString3, paramClassLoader);
    this.file = paramFile;
  }
  
  public static PlugClassLoader getClassLoader(File paramFile)
  {
    if (!LocalPlugsTools.enoughInternalSpace(paramFile)) {
      Toast.makeText(MyApplication.getInstance(), "内存不足，请释放部分内存以保证程序正常运行!", 0).show();
    }
    do
    {
      do
      {
        return null;
      } while (paramFile == null);
      PlugClassLoader localPlugClassLoader1 = (PlugClassLoader)loaders.get(paramFile.getAbsolutePath());
      if (localPlugClassLoader1 != null) {
        return localPlugClassLoader1;
      }
    } while (!paramFile.isFile());
    File localFile = new File(paramFile.getParent(), "dexout");
    localFile.mkdir();
    PlugClassLoader localPlugClassLoader2 = new PlugClassLoader(paramFile, paramFile.getAbsolutePath(), localFile.getAbsolutePath(), null, MyApplication.getInstance().getClassLoader());
    loaders.put(paramFile.getAbsolutePath(), localPlugClassLoader2);
    return localPlugClassLoader2;
  }
  
  public File getFile()
  {
    return this.file;
  }
  
  protected Class<?> loadClass(String paramString, boolean paramBoolean)
    throws ClassNotFoundException
  {
    Object localObject = findLoadedClass(paramString);
    if (localObject != null) {
      return localObject;
    }
    try
    {
      Class localClass = getParent().loadClass(paramString);
      localObject = localClass;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      label25:
      break label25;
    }
    if (localObject != null) {
      return localObject;
    }
    return findClass(paramString);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.plug.framework.dynamicloader.PlugClassLoader
 * JD-Core Version:    0.7.0.1
 */