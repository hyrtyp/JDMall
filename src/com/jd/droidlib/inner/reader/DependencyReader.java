package com.jd.droidlib.inner.reader;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import com.jd.droidlib.AbstractDependencyProvider;
import com.jd.droidlib.inner.ann.Ann;
import com.jd.droidlib.inner.ann.MethodSpec;
import com.jd.droidlib.util.L;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.HashMap;

public class DependencyReader
{
  private static AbstractDependencyProvider dependencyProvider;
  private static volatile boolean inited = false;
  private static HashMap<Class<?>, MethodSpec<VoidAnn>> methodRegistry = new HashMap();
  
  private static AbstractDependencyProvider getDependencyProvider(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      String str2 = localPackageManager.getApplicationInfo(paramContext.getPackageName(), 128).metaData.getString("droidlib_dependency_provider");
      str1 = str2;
    }
    catch (Exception localException1)
    {
      for (;;)
      {
        L.d(localException1);
        str1 = null;
      }
      if (!str1.startsWith(".")) {
        break label90;
      }
      String str1 = paramContext.getPackageName() + str1;
      try
      {
        label90:
        Constructor localConstructor = Class.forName(str1).getConstructor(new Class[] { Context.class });
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = paramContext.getApplicationContext();
        AbstractDependencyProvider localAbstractDependencyProvider = (AbstractDependencyProvider)localConstructor.newInstance(arrayOfObject);
        return localAbstractDependencyProvider;
      }
      catch (Exception localException2)
      {
        L.e("Not a valid DroidLib dependency provider: %s.", new Object[] { str1 });
        L.d(localException2);
      }
    }
    if (str1 == null)
    {
      L.e("No <meta-data android:name=\"%s\" android:value=\"...\"/> in AndroidManifest.xml.", new Object[] { "droidlib_dependency_provider" });
      return null;
    }
    return null;
  }
  
  public static void init(Context paramContext)
  {
    if (!inited) {
      for (;;)
      {
        Method[] arrayOfMethod;
        int i;
        int j;
        try
        {
          if (!inited)
          {
            dependencyProvider = getDependencyProvider(paramContext);
            if (dependencyProvider != null)
            {
              arrayOfMethod = dependencyProvider.getClass().getMethods();
              i = arrayOfMethod.length;
              j = 0;
              break label101;
            }
            inited = true;
          }
          return;
        }
        finally {}
        Method localMethod = arrayOfMethod[j];
        methodRegistry.put(localMethod.getReturnType(), new MethodSpec(localMethod, new VoidAnn()));
        j++;
        label101:
        if (j < i) {}
      }
    }
  }
  
  public static <T> T readVal(Context paramContext, Class<T> paramClass)
    throws RuntimeException
  {
    init(paramContext);
    if (dependencyProvider != null)
    {
      MethodSpec localMethodSpec = (MethodSpec)methodRegistry.get(paramClass);
      try
      {
        if (localMethodSpec.paramTypes.length == 0) {
          return localMethodSpec.method.invoke(dependencyProvider, new Object[0]);
        }
        Object localObject = localMethodSpec.method.invoke(dependencyProvider, new Object[] { paramContext });
        return localObject;
      }
      catch (Exception localException)
      {
        throw new RuntimeException("No valid DependencyProvider method for " + paramClass.getName() + ".", localException);
      }
    }
    return null;
  }
  
  public static void tearDown()
  {
    if (dependencyProvider != null) {
      dependencyProvider.getDB().close();
    }
    dependencyProvider = null;
  }
  
  private static class VoidAnn
    extends Ann<Annotation>
  {
    public VoidAnn()
    {
      super();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.reader.DependencyReader
 * JD-Core Version:    0.7.0.1
 */