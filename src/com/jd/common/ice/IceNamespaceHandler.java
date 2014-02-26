package com.jd.common.ice;

import org.springframework.beans.factory.xml.NamespaceHandlerSupport;

public class IceNamespaceHandler
  extends NamespaceHandlerSupport
{
  public void init()
  {
    registerBeanDefinitionParser("config", new IceProxyBeanDefinitionParser());
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.ice.IceNamespaceHandler
 * JD-Core Version:    0.7.0.1
 */