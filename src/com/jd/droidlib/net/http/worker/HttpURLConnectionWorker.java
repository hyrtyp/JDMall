package com.jd.droidlib.net.http.worker;

import android.content.Context;
import com.jd.droidlib.net.http.CookieJar;
import com.jd.droidlib.net.http.HTTPException;
import com.jd.droidlib.net.http.HTTPResponse;
import com.jd.droidlib.util.IOUtils;
import com.jd.droidlib.util.L;
import java.io.Closeable;
import java.io.File;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.Authenticator;
import java.net.CookieHandler;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.apache.http.auth.AuthScope;

public class HttpURLConnectionWorker
  extends HTTPWorker
{
  private AuthScope authScope;
  private String cookie;
  private PasswordAuthentication passAuth;
  private Proxy proxy;
  
  public HttpURLConnectionWorker(String paramString)
  {
    super(paramString);
  }
  
  private static int connectAndGetResponseCodeOrThrow(HttpURLConnection paramHttpURLConnection)
    throws HTTPException
  {
    int i;
    try
    {
      paramHttpURLConnection.connect();
      i = paramHttpURLConnection.getResponseCode();
      if (!isErrorResponseCode(i)) {
        return i;
      }
      if (paramHttpURLConnection.getErrorStream() == null) {
        break label47;
      }
      bool = true;
    }
    catch (HTTPException localHTTPException)
    {
      for (;;)
      {
        throw localHTTPException;
        boolean bool = false;
      }
    }
    catch (Exception localException)
    {
      label47:
      throwIfNetworkOnMainThreadException(localException);
      throw new HTTPException(localException);
    }
    throw new HTTPException(i, HTTPInputStream.getInstance(paramHttpURLConnection, bool).readAndClose());
    return i;
  }
  
  public static HTTPResponse getReponse(HttpURLConnection paramHttpURLConnection, boolean paramBoolean)
    throws HTTPException
  {
    HTTPResponse localHTTPResponse = new HTTPResponse();
    localHTTPResponse.code = connectAndGetResponseCodeOrThrow(paramHttpURLConnection);
    localHTTPResponse.headers = paramHttpURLConnection.getHeaderFields();
    HTTPInputStream localHTTPInputStream = HTTPInputStream.getInstance(paramHttpURLConnection, false);
    if (paramBoolean)
    {
      localHTTPResponse.body = localHTTPInputStream.readAndClose();
      return localHTTPResponse;
    }
    localHTTPResponse.inputStream = localHTTPInputStream;
    return localHTTPResponse;
  }
  
  public static void postOrPut(HttpURLConnection paramHttpURLConnection, String paramString1, String paramString2)
    throws HTTPException
  {
    paramHttpURLConnection.setRequestProperty("Accept-Charset", "utf-8");
    paramHttpURLConnection.setRequestProperty("Content-Type", paramString1);
    OutputStream localOutputStream = null;
    try
    {
      localOutputStream = paramHttpURLConnection.getOutputStream();
      localOutputStream.write(paramString2.getBytes("utf-8"));
      return;
    }
    catch (Exception localException)
    {
      throwIfNetworkOnMainThreadException(localException);
      throw new HTTPException(localException);
    }
    finally
    {
      IOUtils.silentlyClose(new Closeable[] { localOutputStream });
    }
  }
  
  public static void setHttpResponseCacheEnabled(Context paramContext, boolean paramBoolean)
  {
    File localFile = new File(paramContext.getCacheDir(), "http");
    try
    {
      Class localClass = Class.forName("android.net.http.HttpResponseCache");
      if (paramBoolean)
      {
        Class[] arrayOfClass = new Class[2];
        arrayOfClass[0] = File.class;
        arrayOfClass[1] = Long.TYPE;
        Method localMethod = localClass.getMethod("install", arrayOfClass);
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = localFile;
        arrayOfObject[1] = Long.valueOf(10485760L);
        localMethod.invoke(null, arrayOfObject);
        return;
      }
      Object localObject = localClass.getMethod("getInstalled", new Class[0]).invoke(null, new Object[0]);
      if (localObject != null)
      {
        localClass.getMethod("delete", new Class[0]).invoke(localObject, new Object[0]);
        return;
      }
    }
    catch (Exception localException)
    {
      L.i(localException);
    }
  }
  
  private void setupBasicAuth()
  {
    Object localObject;
    if (this.passAuth != null)
    {
      Authenticator.setDefault(new FixedAuthenticator(this.passAuth));
      if (!AuthScope.ANY.equals(this.authScope))
      {
        String str = this.authScope.getHost();
        localObject = null;
        if (str == null) {}
      }
    }
    for (;;)
    {
      try
      {
        InetAddress localInetAddress = InetAddress.getByName(this.authScope.getHost());
        localObject = localInetAddress;
        if (this.authScope.getPort() == -1)
        {
          i = 0;
          Authenticator.requestPasswordAuthentication(localObject, i, null, this.authScope.getRealm(), this.authScope.getScheme());
          return;
        }
      }
      catch (UnknownHostException localUnknownHostException)
      {
        L.e("Failed to setup basic auth.");
        L.d(localUnknownHostException);
        Authenticator.setDefault(null);
        return;
      }
      int i = this.authScope.getPort();
    }
  }
  
  public void authenticateBasic(String paramString1, String paramString2, AuthScope paramAuthScope)
  {
    this.passAuth = new PasswordAuthentication(paramString1, paramString2.toCharArray());
    this.authScope = paramAuthScope;
  }
  
  public HttpURLConnection getConnection(String paramString1, String paramString2)
    throws HTTPException
  {
    try
    {
      URL localURL = new URL(paramString1);
      HttpURLConnection localHttpURLConnection;
      Iterator localIterator1;
      if (this.proxy != null)
      {
        localHttpURLConnection = (HttpURLConnection)localURL.openConnection(this.proxy);
        localIterator1 = this.headers.keySet().iterator();
      }
      for (;;)
      {
        if (!localIterator1.hasNext())
        {
          localHttpURLConnection.setReadTimeout(30000);
          localHttpURLConnection.setConnectTimeout(30000);
          localHttpURLConnection.setRequestProperty("http.agent", this.userAgent);
          localHttpURLConnection.setRequestProperty("Accept-Encoding", "gzip,deflate");
          if ((this.cookie != null) && (this.cookie.length() > 0)) {
            localHttpURLConnection.setRequestProperty("Cookie", this.cookie);
          }
          setupBasicAuth();
          localHttpURLConnection.setRequestMethod(paramString2);
          if ((!"PUT".equals(paramString2)) && (!"POST".equals(paramString2))) {
            break label248;
          }
          localHttpURLConnection.setDoOutput(true);
          return localHttpURLConnection;
          localHttpURLConnection = (HttpURLConnection)localURL.openConnection();
          break;
        }
        String str = (String)localIterator1.next();
        Iterator localIterator2 = ((ArrayList)this.headers.get(str)).iterator();
        while (localIterator2.hasNext()) {
          localHttpURLConnection.addRequestProperty(str, (String)localIterator2.next());
        }
      }
      return localHttpURLConnection;
    }
    catch (Exception localException)
    {
      throwIfNetworkOnMainThreadException(localException);
      throw new HTTPException(localException);
    }
  }
  
  public void setCookieJar(CookieJar paramCookieJar)
  {
    CookieHandler.setDefault(paramCookieJar);
  }
  
  public void setCookies(String paramString)
  {
    this.cookie = paramString;
  }
  
  public void setProxy(Proxy paramProxy)
  {
    this.proxy = paramProxy;
  }
  
  private static class FixedAuthenticator
    extends Authenticator
  {
    private PasswordAuthentication passAuth;
    
    public FixedAuthenticator(PasswordAuthentication paramPasswordAuthentication)
    {
      this.passAuth = paramPasswordAuthentication;
    }
    
    protected PasswordAuthentication getPasswordAuthentication()
    {
      try
      {
        PasswordAuthentication localPasswordAuthentication = this.passAuth;
        return localPasswordAuthentication;
      }
      finally
      {
        this.passAuth = null;
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.net.http.worker.HttpURLConnectionWorker
 * JD-Core Version:    0.7.0.1
 */