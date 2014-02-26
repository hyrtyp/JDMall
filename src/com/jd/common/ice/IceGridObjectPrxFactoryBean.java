package com.jd.common.ice;

import Ice.ObjectPrx;
import com.jd.common.util.ice.IceUtils;
import java.util.Map;
import org.springframework.beans.factory.BeanClassLoaderAware;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.FactoryBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.util.ClassUtils;

public class IceGridObjectPrxFactoryBean
  implements BeanClassLoaderAware, FactoryBean, InitializingBean, DisposableBean
{
  private ClassLoader beanClassLoader = ClassUtils.getDefaultClassLoader();
  private String configFile;
  private String id;
  private String propertyName;
  private String prxClass;
  private String token;
  private String tokenName;
  
  public void afterPropertiesSet()
    throws Exception
  {}
  
  public void destroy()
    throws Exception
  {}
  
  public Object getObject()
    throws Exception
  {
    Map localMap = IceUtils.iceGridProxyAdressMap;
    if (localMap.get(this.id) == null) {
      localMap.put(this.id, IceUtils.getAddressOfIceGrid(this.propertyName, this.configFile));
    }
    return IceUtils.getIceGridProxyObject(this.prxClass, this.propertyName, this.configFile, this.tokenName, this.token);
  }
  
  public Class getObjectType()
  {
    return ObjectPrx.class;
  }
  
  public boolean isSingleton()
  {
    return true;
  }
  
  public void setBeanClassLoader(ClassLoader paramClassLoader)
  {
    this.beanClassLoader = this.beanClassLoader;
  }
  
  public void setConfigFile(String paramString)
  {
    this.configFile = paramString;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setPropertyName(String paramString)
  {
    this.propertyName = paramString;
  }
  
  public void setPrxClass(String paramString)
  {
    this.prxClass = paramString;
  }
  
  public void setToken(String paramString)
  {
    this.token = paramString;
  }
  
  public void setTokenName(String paramString)
  {
    this.tokenName = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.ice.IceGridObjectPrxFactoryBean
 * JD-Core Version:    0.7.0.1
 */