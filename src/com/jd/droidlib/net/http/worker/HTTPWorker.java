package com.jd.droidlib.net.http.worker;

import com.jd.droidlib.net.http.CookieJar;
import java.util.ArrayList;
import java.util.HashMap;
import org.apache.http.auth.AuthScope;

public abstract class HTTPWorker
{
  protected static final int CONNECT_OPERATION_TIMEOUT = 30000;
  protected static final int SOCKET_OPERATION_TIMEOUT = 30000;
  protected final HashMap<String, ArrayList<String>> headers = new HashMap();
  protected final String userAgent;
  
  public HTTPWorker(String paramString)
  {
    this.userAgent = paramString;
  }
  
  protected static final boolean isErrorResponseCode(int paramInt)
  {
    return paramInt >= 400;
  }
  
  public static void throwIfNetworkOnMainThreadException(Exception paramException)
  {
    if (paramException.getClass().getName().equals("android.os.NetworkOnMainThreadException")) {
      throw ((RuntimeException)paramException);
    }
  }
  
  public abstract void authenticateBasic(String paramString1, String paramString2, AuthScope paramAuthScope);
  
  public final void putHeader(String paramString1, String paramString2)
  {
    if (paramString2 != null)
    {
      if (!this.headers.containsKey(paramString1)) {
        this.headers.put(paramString1, new ArrayList());
      }
      ((ArrayList)this.headers.get(paramString1)).add(paramString2);
      return;
    }
    this.headers.remove(paramString1);
  }
  
  public abstract void setCookieJar(CookieJar paramCookieJar);
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.net.http.worker.HTTPWorker
 * JD-Core Version:    0.7.0.1
 */