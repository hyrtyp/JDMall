package com.jd.common.util;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

public class ApplicationContextUtil
  implements ApplicationContextAware
{
  private static ApplicationContext context;
  
  public static ApplicationContext getContext()
  {
    return context;
  }
  
  public void setApplicationContext(ApplicationContext paramApplicationContext)
    throws BeansException
  {
    context = paramApplicationContext;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.util.ApplicationContextUtil
 * JD-Core Version:    0.7.0.1
 */