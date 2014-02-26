package com.jd.droidlib.inner.ann.inject;

import com.jd.droidlib.inner.ann.Ann;
import java.lang.annotation.Annotation;

public class InjectAnn<T extends Annotation>
  extends Ann<T>
{
  public InjectAnn(T paramT)
  {
    super(paramT);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.ann.inject.InjectAnn
 * JD-Core Version:    0.7.0.1
 */