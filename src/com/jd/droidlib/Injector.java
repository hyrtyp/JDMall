package com.jd.droidlib;

import android.app.Activity;
import android.app.Dialog;
import android.app.Service;
import android.content.Context;
import android.view.View;
import com.jd.droidlib.inner.ClassSpecRegistry;
import com.jd.droidlib.inner.ReflectionUtils;
import com.jd.droidlib.inner.ann.FieldSpec;
import com.jd.droidlib.inner.reader.DependencyReader;
import com.jd.droidlib.inner.reader.ValueReader;
import com.jd.droidlib.util.L;
import java.lang.reflect.Field;

public class Injector
{
  private static volatile Context appCtx;
  
  public static Context getApplicationContext()
  {
    return appCtx;
  }
  
  public static <T> T getDependency(Context paramContext, Class<T> paramClass)
    throws RuntimeException
  {
    setContext(paramContext);
    return DependencyReader.readVal(paramContext, paramClass);
  }
  
  public static void inject(Activity paramActivity)
  {
    setContext(paramActivity);
    inject(paramActivity, paramActivity.findViewById(16908290).getRootView(), paramActivity);
  }
  
  public static void inject(Dialog paramDialog, Object paramObject)
  {
    inject(paramDialog.findViewById(16908290).getRootView(), paramObject);
  }
  
  public static void inject(Service paramService)
  {
    setContext(paramService);
    inject(paramService, null, paramService);
  }
  
  private static void inject(Context paramContext, View paramView, Object paramObject)
  {
    long l = System.currentTimeMillis();
    localClass = paramObject.getClass();
    FieldSpec[] arrayOfFieldSpec = ClassSpecRegistry.getInjectSpecs(localClass);
    int i = arrayOfFieldSpec.length;
    int j = 0;
    for (;;)
    {
      if (j >= i)
      {
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = localClass.getSimpleName();
        arrayOfObject2[1] = Long.valueOf(System.currentTimeMillis() - l);
        L.i("Injected into %s in %d ms.", arrayOfObject2);
        return;
      }
      FieldSpec localFieldSpec = arrayOfFieldSpec[j];
      try
      {
        Object localObject = ValueReader.getVal(paramContext, paramView, paramObject, localFieldSpec);
        if (localObject != null) {
          ReflectionUtils.setFieldVal(paramObject, localFieldSpec.field, localObject);
        }
        j++;
      }
      catch (Throwable localThrowable)
      {
        for (;;)
        {
          Object[] arrayOfObject1 = new Object[3];
          arrayOfObject1[0] = localClass.getSimpleName();
          arrayOfObject1[1] = localFieldSpec.field.getName();
          arrayOfObject1[2] = localThrowable.getMessage();
          L.w("Failed to inject %s#%s: %s.", arrayOfObject1);
          L.d(localThrowable);
        }
      }
    }
  }
  
  public static void inject(Context paramContext, Object paramObject)
  {
    setContext(paramContext);
    inject(paramContext, null, paramObject);
  }
  
  public static void inject(View paramView, Object paramObject)
  {
    Context localContext = paramView.getContext();
    setContext(localContext);
    inject(localContext, paramView, paramObject);
  }
  
  private static void setContext(Context paramContext)
  {
    if (appCtx == null) {
      appCtx = paramContext.getApplicationContext();
    }
  }
  
  public static void setUp(Context paramContext)
  {
    setContext(paramContext);
    DependencyReader.init(paramContext);
  }
  
  public static void tearDown()
  {
    DependencyReader.tearDown();
    appCtx = null;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.Injector
 * JD-Core Version:    0.7.0.1
 */