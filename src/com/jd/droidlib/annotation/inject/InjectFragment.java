package com.jd.droidlib.annotation.inject;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.FIELD})
public @interface InjectFragment
{
  int id() default 0;
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.annotation.inject.InjectFragment
 * JD-Core Version:    0.7.0.1
 */