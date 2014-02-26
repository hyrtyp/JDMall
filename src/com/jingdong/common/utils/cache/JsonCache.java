package com.jingdong.common.utils.cache;

import com.jingdong.common.utils.JSONObjectProxy;
import java.util.HashMap;

public class JsonCache
{
  protected static HashMap<String, JSONObjectProxy> jsonCache = new HashMap();
  
  public static boolean containsKey(Object paramObject)
  {
    try
    {
      boolean bool = jsonCache.containsKey(paramObject);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static JSONObjectProxy get(String paramString)
  {
    try
    {
      JSONObjectProxy localJSONObjectProxy = (JSONObjectProxy)jsonCache.get(paramString);
      return localJSONObjectProxy;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static void put(String paramString, JSONObjectProxy paramJSONObjectProxy)
  {
    try
    {
      jsonCache.put(paramString, paramJSONObjectProxy);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.cache.JsonCache
 * JD-Core Version:    0.7.0.1
 */