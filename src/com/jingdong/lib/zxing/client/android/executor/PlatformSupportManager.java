package com.jingdong.lib.zxing.client.android.executor;

import android.os.Build.VERSION;
import android.util.Log;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

public abstract class PlatformSupportManager<T>
{
  private static final String TAG = PlatformSupportManager.class.getSimpleName();
  private final T defaultImplementation;
  private final SortedMap<Integer, String> implementations;
  private final Class<T> managedInterface;
  
  protected PlatformSupportManager(Class<T> paramClass, T paramT)
  {
    if (!paramClass.isInterface()) {
      throw new IllegalArgumentException();
    }
    if (!paramClass.isInstance(paramT)) {
      throw new IllegalArgumentException();
    }
    this.managedInterface = paramClass;
    this.defaultImplementation = paramT;
    this.implementations = new TreeMap(Collections.reverseOrder());
  }
  
  public T build()
  {
    Iterator localIterator = this.implementations.keySet().iterator();
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        Log.i(TAG, "Using default implementation " + this.defaultImplementation.getClass() + " of " + this.managedInterface);
        return this.defaultImplementation;
      }
      Integer localInteger = (Integer)localIterator.next();
      if (Build.VERSION.SDK_INT >= localInteger.intValue())
      {
        String str = (String)this.implementations.get(localInteger);
        try
        {
          Class localClass = Class.forName(str).asSubclass(this.managedInterface);
          Log.i(TAG, "Using implementation " + localClass + " of " + this.managedInterface + " for SDK " + localInteger);
          Object localObject = localClass.getConstructor(new Class[0]).newInstance(new Object[0]);
          return localObject;
        }
        catch (ClassNotFoundException localClassNotFoundException)
        {
          Log.w(TAG, localClassNotFoundException);
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          Log.w(TAG, localIllegalAccessException);
        }
        catch (InstantiationException localInstantiationException)
        {
          Log.w(TAG, localInstantiationException);
        }
        catch (NoSuchMethodException localNoSuchMethodException)
        {
          Log.w(TAG, localNoSuchMethodException);
        }
        catch (InvocationTargetException localInvocationTargetException)
        {
          Log.w(TAG, localInvocationTargetException);
        }
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.executor.PlatformSupportManager
 * JD-Core Version:    0.7.0.1
 */