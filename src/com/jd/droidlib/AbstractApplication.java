package com.jd.droidlib;

import android.app.Application;
import com.jd.droidlib.inner.ConverterRegistry;
import com.jd.droidlib.inner.ReflectionUtils;
import com.jd.droidlib.inner.converter.Converter;

public abstract class AbstractApplication
  extends Application
{
  public void onCreate()
  {
    super.onCreate();
    Injector.setUp(this);
    Injector.inject(this, this);
    ReflectionUtils.classForName("android.os.AsyncTask");
  }
  
  public void onTerminate() {}
  
  public final void registerConverters(Converter<?>... paramVarArgs)
  {
    int i = paramVarArgs.length;
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return;
      }
      ConverterRegistry.registerConverter(paramVarArgs[j]);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.AbstractApplication
 * JD-Core Version:    0.7.0.1
 */