package com.jd.droidlib.net.http;

import com.jd.droidlib.net.http.worker.HTTPInputStream;
import com.jd.droidlib.util.L;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class HTTPResponse
{
  public String body;
  public int code;
  public Map<String, List<String>> headers;
  public HTTPInputStream inputStream;
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof HTTPResponse)) {
        break;
      }
    } while (hashCode() == paramObject.hashCode());
    return false;
    return false;
  }
  
  public long getHeaderDate(String paramString)
  {
    long l1 = 0L;
    String str = getHeaderString(paramString);
    if (str != null) {}
    try
    {
      long l2 = Date.parse(str);
      l1 = l2;
      return l1;
    }
    catch (Exception localException)
    {
      L.d(localException);
    }
    return l1;
  }
  
  public int getHeaderInt(String paramString)
  {
    String str = getHeaderString(paramString);
    int i = 0;
    if (str != null) {}
    try
    {
      int j = Integer.valueOf(str).intValue();
      i = j;
      return i;
    }
    catch (Exception localException)
    {
      L.d(localException);
    }
    return 0;
  }
  
  public String getHeaderString(String paramString)
  {
    Map localMap = this.headers;
    String str = null;
    if (localMap != null)
    {
      List localList = (List)this.headers.get(paramString);
      str = null;
      if (localList != null)
      {
        int i = localList.size();
        str = null;
        if (i == 1) {
          str = (String)localList.get(0);
        }
      }
    }
    return str;
  }
  
  public int hashCode()
  {
    return (this.code + this.body).hashCode();
  }
  
  public String toString()
  {
    return "Response code: " + this.code + ", body: " + this.body;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.net.http.HTTPResponse
 * JD-Core Version:    0.7.0.1
 */