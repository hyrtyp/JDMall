package com.jd.droidlib.bus;

import android.os.Handler;
import android.os.Looper;
import com.jd.droidlib.inner.ClassSpecRegistry;
import com.jd.droidlib.inner.ann.MethodSpec;
import com.jd.droidlib.inner.ann.bus.ReceiveEventsAnn;
import com.jd.droidlib.util.L;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class EventBus
{
  private static final String ALL = "_all_";
  private static final ConcurrentHashMap<String, ConcurrentHashMap<EventReceiver<Object>, Boolean>> eventNameToReceivers = new ConcurrentHashMap();
  private static Handler handler;
  private static final ConcurrentHashMap<String, Object[]> stickyEvents = new ConcurrentHashMap();
  
  private static void notifyReceiver(EventReceiver<Object> paramEventReceiver, String paramString, Object[] paramArrayOfObject)
  {
    Object localObject = paramArrayOfObject;
    if (paramArrayOfObject.length == 0) {
      localObject = null;
    }
    for (;;)
    {
      try
      {
        paramEventReceiver.onEvent(paramString, localObject);
        return;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        Object[] arrayOfObject = new Object[3];
        arrayOfObject[0] = paramString;
        arrayOfObject[1] = paramEventReceiver.getClass().getName();
        arrayOfObject[2] = localIllegalArgumentException.getMessage();
        L.w(String.format("Failed to deliver event %s to %s: %s.", arrayOfObject));
        return;
      }
      catch (Exception localException)
      {
        L.w(localException);
        L.w("Receiver unregistered.");
        unregisterReceiver(paramEventReceiver);
      }
      if (paramArrayOfObject.length == 1) {
        localObject = paramArrayOfObject[0];
      }
    }
  }
  
  public static void postEvent(String paramString, Object... paramVarArgs)
  {
    runOnUiThread(new PostEventRunnable(paramString, paramVarArgs));
  }
  
  public static void postEventSticky(String paramString, Object... paramVarArgs)
  {
    stickyEvents.put(paramString, paramVarArgs);
    postEvent(paramString, paramVarArgs);
  }
  
  private static ConcurrentHashMap<EventReceiver<Object>, Boolean> receiversForEventName(String paramString)
  {
    ConcurrentHashMap localConcurrentHashMap = (ConcurrentHashMap)eventNameToReceivers.get(paramString);
    if (localConcurrentHashMap == null)
    {
      localConcurrentHashMap = new ConcurrentHashMap();
      eventNameToReceivers.put(paramString, localConcurrentHashMap);
    }
    return localConcurrentHashMap;
  }
  
  public static void registerAnnotatedReceiver(Object paramObject)
  {
    MethodSpec[] arrayOfMethodSpec = ClassSpecRegistry.getReceiveEventsSpecs(paramObject.getClass());
    int i = arrayOfMethodSpec.length;
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return;
      }
      MethodSpec localMethodSpec = arrayOfMethodSpec[j];
      registerReceiver(new ReflectiveReceiver(paramObject, localMethodSpec), ((ReceiveEventsAnn)localMethodSpec.ann).names);
    }
  }
  
  public static void registerReceiver(EventReceiver<?> paramEventReceiver, String... paramVarArgs)
  {
    int i = 0;
    int j;
    Iterator localIterator;
    if (paramVarArgs.length == 0)
    {
      j = 1;
      if (j != 0) {
        localIterator = stickyEvents.keySet().iterator();
      }
    }
    else
    {
      for (;;)
      {
        if (!localIterator.hasNext())
        {
          receiversForEventName("_all_").put(paramEventReceiver, Boolean.FALSE);
          return;
          j = 0;
          break;
        }
        String str2 = (String)localIterator.next();
        notifyReceiver(paramEventReceiver, str2, (Object[])stickyEvents.get(str2));
      }
    }
    int k = paramVarArgs.length;
    for (int m = 0;; m++)
    {
      if (m >= k)
      {
        int n = paramVarArgs.length;
        while (i < n)
        {
          receiversForEventName(paramVarArgs[i]).put(paramEventReceiver, Boolean.FALSE);
          i++;
        }
        break;
      }
      String str1 = paramVarArgs[m];
      Object[] arrayOfObject = (Object[])stickyEvents.get(str1);
      if (arrayOfObject != null) {
        notifyReceiver(paramEventReceiver, str1, arrayOfObject);
      }
    }
  }
  
  private static void runOnUiThread(Runnable paramRunnable)
  {
    if (handler == null) {
      handler = new Handler(Looper.getMainLooper());
    }
    boolean bool = handler.post(paramRunnable);
    for (;;)
    {
      if (bool) {
        return;
      }
      handler = null;
      runOnUiThread(paramRunnable);
    }
  }
  
  public static void unregisterAnnotatedReceiver(Object paramObject)
  {
    Iterator localIterator1 = eventNameToReceivers.values().iterator();
    for (;;)
    {
      if (!localIterator1.hasNext()) {
        return;
      }
      ConcurrentHashMap localConcurrentHashMap = (ConcurrentHashMap)localIterator1.next();
      Iterator localIterator2 = localConcurrentHashMap.keySet().iterator();
      while (localIterator2.hasNext())
      {
        EventReceiver localEventReceiver = (EventReceiver)localIterator2.next();
        if (((localEventReceiver instanceof ReflectiveReceiver)) && (paramObject == ((ReflectiveReceiver)localEventReceiver).objectRef.get())) {
          localConcurrentHashMap.remove(localEventReceiver);
        }
      }
    }
  }
  
  public static void unregisterReceiver(EventReceiver<?> paramEventReceiver)
  {
    receiversForEventName("_all_").remove(paramEventReceiver);
    Iterator localIterator = eventNameToReceivers.keySet().iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      String str = (String)localIterator.next();
      ConcurrentHashMap localConcurrentHashMap = (ConcurrentHashMap)eventNameToReceivers.get(str);
      localConcurrentHashMap.remove(paramEventReceiver);
      if (localConcurrentHashMap.isEmpty()) {
        eventNameToReceivers.remove(str);
      }
    }
  }
  
  public void clearStickyEvents(String... paramVarArgs)
  {
    int i;
    if (paramVarArgs.length == 0)
    {
      i = 1;
      if (i == 0) {
        break label23;
      }
      stickyEvents.clear();
    }
    label23:
    HashSet localHashSet;
    String str;
    do
    {
      return;
      Iterator localIterator;
      while (!localIterator.hasNext())
      {
        i = 0;
        break;
        localHashSet = new HashSet(Arrays.asList(paramVarArgs));
        localIterator = stickyEvents.keySet().iterator();
      }
      str = (String)localIterator.next();
    } while (!localHashSet.contains(str));
    stickyEvents.remove(str);
  }
  
  private static class PostEventRunnable
    implements Runnable
  {
    private final Object[] data;
    private final String name;
    
    public PostEventRunnable(String paramString, Object[] paramArrayOfObject)
    {
      this.name = paramString;
      this.data = paramArrayOfObject;
    }
    
    public void run()
    {
      HashSet localHashSet = new HashSet();
      localHashSet.addAll(EventBus.receiversForEventName("_all_").keySet());
      localHashSet.addAll(EventBus.receiversForEventName(this.name).keySet());
      Iterator localIterator = localHashSet.iterator();
      for (;;)
      {
        if (!localIterator.hasNext()) {
          return;
        }
        EventBus.notifyReceiver((EventReceiver)localIterator.next(), this.name, this.data);
      }
    }
  }
  
  private static class ReflectiveReceiver
    implements EventReceiver<Object>
  {
    final WeakReference<Object> objectRef;
    final MethodSpec<ReceiveEventsAnn> spec;
    
    ReflectiveReceiver(Object paramObject, MethodSpec<ReceiveEventsAnn> paramMethodSpec)
    {
      this.objectRef = new WeakReference(paramObject);
      this.spec = paramMethodSpec;
    }
    
    public void onEvent(String paramString, Object paramObject)
    {
      try
      {
        localObject = this.objectRef.get();
        switch (this.spec.paramTypes.length)
        {
        default: 
          this.spec.method.invoke(localObject, new Object[] { paramString, paramObject });
          return;
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        Object localObject;
        throw localIllegalArgumentException;
        this.spec.method.invoke(localObject, new Object[] { paramString });
        return;
      }
      catch (Exception localException)
      {
        throw new IllegalStateException(localException);
      }
      this.spec.method.invoke(localObject, new Object[0]);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.bus.EventBus
 * JD-Core Version:    0.7.0.1
 */