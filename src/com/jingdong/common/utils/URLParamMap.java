package com.jingdong.common.utils;

import android.net.Uri;
import android.net.UrlQuerySanitizer;
import android.net.UrlQuerySanitizer.ParameterValuePair;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class URLParamMap
  implements Map<String, String>
{
  private static final String TAG = "URLParamMap";
  private final String charset;
  private Map<String, String> map = new HashMap();
  
  public URLParamMap()
  {
    this.charset = "UTF-8";
  }
  
  public URLParamMap(String paramString)
  {
    this.charset = paramString;
  }
  
  public void clear()
  {
    this.map.clear();
  }
  
  public boolean containsKey(Object paramObject)
  {
    return this.map.containsKey(paramObject);
  }
  
  public boolean containsValue(Object paramObject)
  {
    throw new RuntimeException("Can't use putAll method");
  }
  
  public Set<Map.Entry<String, String>> entrySet()
  {
    return this.map.entrySet();
  }
  
  public boolean equals(Object paramObject)
  {
    return this.map.equals(paramObject);
  }
  
  public String get(Object paramObject)
  {
    return (String)this.map.get(paramObject);
  }
  
  public int hashCode()
  {
    return this.map.hashCode();
  }
  
  public boolean isEmpty()
  {
    return this.map.isEmpty();
  }
  
  public Set<String> keySet()
  {
    return this.map.keySet();
  }
  
  public String put(String paramString1, String paramString2)
  {
    try
    {
      String str = URLEncoder.encode(paramString2, this.charset);
      return (String)this.map.put(paramString1, str);
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new RuntimeException(localUnsupportedEncodingException);
    }
  }
  
  public void put(Uri paramUri)
  {
    Iterator localIterator = new UrlQuerySanitizer(paramUri.toString()).getParameterList().iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      String str = ((UrlQuerySanitizer.ParameterValuePair)localIterator.next()).mParameter;
      put(str, paramUri.getQueryParameter(str));
    }
  }
  
  public void putAll(Map<? extends String, ? extends String> paramMap)
  {
    throw new RuntimeException("Can't use putAll method");
  }
  
  public String remove(Object paramObject)
  {
    return (String)this.map.remove(paramObject);
  }
  
  public int size()
  {
    return this.map.size();
  }
  
  public Collection<String> values()
  {
    return this.map.values();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.URLParamMap
 * JD-Core Version:    0.7.0.1
 */