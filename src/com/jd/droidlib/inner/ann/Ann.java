package com.jd.droidlib.inner.ann;

import com.jd.droidlib.inner.AnnotationElementsReader;
import com.jd.droidlib.util.L;
import java.lang.annotation.Annotation;
import java.util.HashMap;

public abstract class Ann<T extends Annotation>
{
  protected static final String CLICK = "click";
  protected static final String EAGER = "eager";
  protected static final String ID = "id";
  protected static final String KEY = "key";
  protected static final String NAME = "name";
  protected static final String NULLABLE = "nullable";
  protected static final String OPTIONAL = "optional";
  protected static final String UNIQUE = "unique";
  protected static final String VALUE = "value";
  private static boolean hackSuccess = true;
  private HashMap<String, Object> elements;
  
  public Ann(T paramT)
  {
    if (hackSuccess) {}
    try
    {
      this.elements = AnnotationElementsReader.getElements(paramT);
      return;
    }
    catch (Exception localException)
    {
      L.w(localException);
      hackSuccess = false;
    }
  }
  
  protected final void cleanup()
  {
    this.elements = null;
  }
  
  protected final Object getElement(String paramString)
  {
    return this.elements.get(paramString);
  }
  
  protected final boolean hackSuccess()
  {
    return hackSuccess;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.ann.Ann
 * JD-Core Version:    0.7.0.1
 */