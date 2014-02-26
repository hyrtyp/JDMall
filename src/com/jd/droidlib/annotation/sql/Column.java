package com.jd.droidlib.annotation.sql;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.FIELD})
public @interface Column
{
  boolean eager() default false;
  
  String name() default "";
  
  boolean nullable() default false;
  
  boolean unique() default false;
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.annotation.sql.Column
 * JD-Core Version:    0.7.0.1
 */