package com.jd.droidlib.inner.ann;

import java.lang.reflect.Field;

public class FieldSpec<AnnType extends Ann<?>>
{
  public final AnnType ann;
  public final Class<?> componentType;
  public final Field field;
  
  public FieldSpec(Field paramField, Class<?> paramClass, AnnType paramAnnType)
  {
    this.field = paramField;
    this.componentType = paramClass;
    this.ann = paramAnnType;
    paramField.setAccessible(true);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.ann.FieldSpec
 * JD-Core Version:    0.7.0.1
 */