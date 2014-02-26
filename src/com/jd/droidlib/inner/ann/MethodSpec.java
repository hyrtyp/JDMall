package com.jd.droidlib.inner.ann;

import java.lang.reflect.Method;

public class MethodSpec<AnnType extends Ann<?>>
{
  public final AnnType ann;
  public final Method method;
  public final Class<?>[] paramTypes;
  
  public MethodSpec(Method paramMethod, AnnType paramAnnType)
  {
    this.method = paramMethod;
    this.paramTypes = paramMethod.getParameterTypes();
    this.ann = paramAnnType;
    paramMethod.setAccessible(true);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.ann.MethodSpec
 * JD-Core Version:    0.7.0.1
 */