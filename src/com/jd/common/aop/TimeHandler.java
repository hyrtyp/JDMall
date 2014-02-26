package com.jd.common.aop;

import java.lang.reflect.Method;
import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class TimeHandler
  implements MethodInterceptor
{
  private static final Log log = LogFactory.getLog(TimeHandler.class);
  private int error = 200;
  private int info = 50;
  private int warn = 100;
  
  public Object invoke(MethodInvocation paramMethodInvocation)
    throws Throwable
  {
    long l1 = System.currentTimeMillis();
    long l2;
    String str1;
    try
    {
      Object localObject2 = paramMethodInvocation.proceed();
      long l3 = System.currentTimeMillis() - l1;
      String str2 = "Process method " + paramMethodInvocation.getMethod().getName() + " successful! Total time: " + l3 + " milliseconds!";
      if (l3 > this.error) {
        if (log.isErrorEnabled()) {
          log.error(str2);
        }
      }
      do
      {
        do
        {
          do
          {
            return localObject2;
            if (l3 <= this.warn) {
              break;
            }
          } while (!log.isWarnEnabled());
          log.warn(str2);
          return localObject2;
          if (l3 <= this.info) {
            break;
          }
        } while (!log.isInfoEnabled());
        log.info(str2);
        return localObject2;
      } while (!log.isDebugEnabled());
      log.debug(str2);
      return localObject2;
    }
    finally
    {
      l2 = System.currentTimeMillis() - l1;
      str1 = "Process method " + paramMethodInvocation.getMethod().getName() + " successful! Total time: " + l2 + " milliseconds!";
      if (l2 <= this.error) {
        break label274;
      }
    }
    if (log.isErrorEnabled()) {
      log.error(str1);
    }
    for (;;)
    {
      throw localObject1;
      label274:
      if (l2 > this.warn)
      {
        if (log.isWarnEnabled()) {
          log.warn(str1);
        }
      }
      else if (l2 > this.info)
      {
        if (log.isInfoEnabled()) {
          log.info(str1);
        }
      }
      else if (log.isDebugEnabled()) {
        log.debug(str1);
      }
    }
  }
  
  public void setError(int paramInt)
  {
    this.error = paramInt;
  }
  
  public void setInfo(int paramInt)
  {
    this.info = paramInt;
  }
  
  public void setWarn(int paramInt)
  {
    this.warn = paramInt;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.aop.TimeHandler
 * JD-Core Version:    0.7.0.1
 */