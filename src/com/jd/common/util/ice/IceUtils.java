package com.jd.common.util.ice;

import Ice.Communicator;
import Ice.ObjectPrx;
import Ice.Util;
import com.jd.common.util.StringUtils;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

public class IceUtils
{
  private static Map<String, Properties> iceGridPropertiesMap = new HashMap();
  public static Map<String, String> iceGridProxyAdressMap;
  public static Map<String, String> iceProxyAdressMap;
  private static Logger log = LogManager.getLogger(IceUtils.class);
  private Map<String, IceClientConstantBase> iceClientConfig;
  
  static
  {
    iceProxyAdressMap = new ConcurrentHashMap();
    iceGridProxyAdressMap = new ConcurrentHashMap();
  }
  
  public static String getAddressOfIceGrid(String paramString1, String paramString2)
  {
    try
    {
      Properties localProperties = (Properties)iceGridPropertiesMap.get(paramString2);
      if (localProperties == null)
      {
        localProperties = new Properties();
        InputStream localInputStream = IceUtils.class.getResourceAsStream("/" + paramString2);
        localProperties.load(localInputStream);
        localInputStream.close();
        log.debug("==============properties.load==========");
        iceGridPropertiesMap.put(paramString2, localProperties);
      }
      String str = localProperties.getProperty(paramString1) + ":" + localProperties.getProperty("Ice.Default.Locator");
      return str;
    }
    catch (IOException localIOException)
    {
      log.error("getAddressOfIceGrid error!", localIOException);
    }
    return null;
  }
  
  private static Field getField(String paramString, Class paramClass)
    throws NoSuchFieldException
  {
    try
    {
      Field localField2 = paramClass.getDeclaredField(paramString);
      localField1 = localField2;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      boolean bool;
      do
      {
        bool = paramClass.equals(Object.class);
        Field localField1 = null;
      } while (bool);
      return getField(paramString, paramClass.getSuperclass());
    }
    catch (SecurityException localSecurityException) {}
    return localField1;
    return null;
  }
  
  public static Object getIceGridProxyObject(String paramString1, String paramString2, String paramString3, String paramString4)
    throws Exception
  {
    return getIceGridProxyObject(paramString1, paramString2, paramString3, "Token", paramString4);
  }
  
  public static Object getIceGridProxyObject(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
    throws Exception
  {
    IceGridClient localIceGridClient = new IceGridClient();
    localIceGridClient.main("", new String[] { "" }, paramString3);
    ObjectPrx localObjectPrx1 = localIceGridClient.getIceProxy(paramString2);
    Class localClass = Class.forName(paramString1 + "Helper");
    ObjectPrx localObjectPrx2 = (ObjectPrx)localClass.getMethod("uncheckedCast", new Class[] { ObjectPrx.class }).invoke(localClass.newInstance(), new Object[] { localObjectPrx1 });
    if (localObjectPrx2 != null)
    {
      ObjectPrx localObjectPrx3 = localObjectPrx2.ice_timeout(5000);
      HashMap localHashMap = new HashMap();
      StringBuilder localStringBuilder;
      Iterator localIterator;
      if (paramString5 != null)
      {
        if (StringUtils.isBlank(paramString4))
        {
          localHashMap.put("Token", paramString5);
          localObjectPrx3 = localObjectPrx3.ice_context(localHashMap);
        }
      }
      else
      {
        Map localMap = (Map)getObject(localObjectPrx3, "_reference._locatorInfo._table._objectTable");
        if (localMap != null)
        {
          localStringBuilder = new StringBuilder();
          localIterator = localMap.values().iterator();
        }
      }
      for (;;)
      {
        if (!localIterator.hasNext())
        {
          log.warn(" localinfo = " + localStringBuilder.toString());
          return localObjectPrx3;
          localHashMap.put(paramString4, paramString5);
          break;
        }
        Object localObject = localIterator.next();
        localStringBuilder.append(" ");
        localStringBuilder.append(getObject(localObject, "reference"));
      }
    }
    throw new RuntimeException("get iceGridObjectPrx error!");
  }
  
  public static ObjectPrx getIceProxyObject(String paramString1, String paramString2, String paramString3)
    throws Exception
  {
    return getIceProxyObject(paramString1, paramString2, "Token", paramString3);
  }
  
  public static ObjectPrx getIceProxyObject(String paramString1, String paramString2, String paramString3, String paramString4)
    throws Exception
  {
    ObjectPrx localObjectPrx1 = Util.initialize().stringToProxy(paramString2);
    Class localClass = Class.forName(paramString1 + "Helper");
    ObjectPrx localObjectPrx2 = ((ObjectPrx)localClass.getMethod("uncheckedCast", new Class[] { ObjectPrx.class }).invoke(localClass.newInstance(), new Object[] { localObjectPrx1 })).ice_timeout(5000);
    HashMap localHashMap = new HashMap();
    if (paramString4 != null)
    {
      if (!StringUtils.isBlank(paramString3)) {
        break label126;
      }
      localHashMap.put("Token", paramString4);
    }
    for (;;)
    {
      localObjectPrx2 = localObjectPrx2.ice_context(localHashMap);
      return localObjectPrx2;
      label126:
      localHashMap.put(paramString3, paramString4);
    }
  }
  
  private static Object getObject(Object paramObject, String paramString)
  {
    String[] arrayOfString = paramString.split("\\.");
    int i;
    int j;
    do
    {
      try
      {
        i = arrayOfString.length;
        j = 0;
      }
      catch (Exception localException)
      {
        String str;
        Field localField;
        Object localObject;
        log.error("getObejct error!", localException);
        return null;
      }
      str = arrayOfString[j];
      localField = getField(str, paramObject.getClass());
      if (str != null)
      {
        localField.setAccessible(true);
        localObject = localField.get(paramObject);
        paramObject = localObject;
        j++;
      }
      else
      {
        return null;
      }
    } while (j < i);
    return paramObject;
  }
  
  public IceClientConstantBase getIceClient(String paramString)
  {
    return (IceClientConstantBase)this.iceClientConfig.get(paramString);
  }
  
  public void setIceClientConfig(Map<String, IceClientConstantBase> paramMap)
  {
    this.iceClientConfig = paramMap;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.util.ice.IceUtils
 * JD-Core Version:    0.7.0.1
 */