package com.jd.droidlib.net.http;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import com.jd.droidlib.net.http.worker.HTTPWorker;
import com.jd.droidlib.net.http.worker.HttpClientWorker;
import com.jd.droidlib.net.http.worker.HttpURLConnectionWorker;
import com.jd.droidlib.util.L;
import java.net.HttpURLConnection;
import java.util.Date;
import org.apache.http.auth.AuthScope;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;

public class RESTClient
{
  private static volatile CookieJar cookieJar;
  private String cookie;
  private final Context ctx;
  private final boolean forceApacheHttpClient;
  private final HttpClientWorker httpClientWorker;
  private final HttpURLConnectionWorker httpURLConnectionWorker;
  
  public RESTClient(Context paramContext)
  {
    this(paramContext, getUserAgent(null), false);
  }
  
  public RESTClient(Context paramContext, String paramString, boolean paramBoolean)
  {
    this.ctx = paramContext.getApplicationContext();
    this.forceApacheHttpClient = paramBoolean;
    if (useHttpURLConnection()) {}
    for (HttpClientWorker localHttpClientWorker = null;; localHttpClientWorker = new HttpClientWorker(paramString))
    {
      this.httpClientWorker = localHttpClientWorker;
      boolean bool = useHttpURLConnection();
      HttpURLConnectionWorker localHttpURLConnectionWorker = null;
      if (bool) {
        localHttpURLConnectionWorker = new HttpURLConnectionWorker(paramString);
      }
      this.httpURLConnectionWorker = localHttpURLConnectionWorker;
      if (cookieJar == null) {
        cookieJar = new CookieJar(paramContext);
      }
      return;
    }
  }
  
  public static String getUserAgent(String paramString)
  {
    if (paramString != null) {}
    for (;;)
    {
      return paramString + " (Android " + Build.VERSION.RELEASE + "; " + Build.MODEL + " Build/" + Build.ID + ")";
      paramString = " jd.com";
    }
  }
  
  private boolean useHttpURLConnection()
  {
    if (Build.VERSION.SDK_INT >= 10) {}
    for (int i = 1; (i != 0) && (!this.forceApacheHttpClient); i = 0) {
      return true;
    }
    return false;
  }
  
  public void authenticateBasic(String paramString1, String paramString2)
  {
    authenticateBasic(paramString1, paramString2, AuthScope.ANY);
  }
  
  public void authenticateBasic(String paramString1, String paramString2, AuthScope paramAuthScope)
  {
    getWorker().authenticateBasic(paramString1, paramString2, paramAuthScope);
  }
  
  public HTTPResponse delete(String paramString)
    throws HTTPException
  {
    L.i("DELETE on '%s'.", new Object[] { paramString });
    if (useHttpURLConnection()) {}
    HttpDelete localHttpDelete;
    for (HTTPResponse localHTTPResponse = HttpURLConnectionWorker.getReponse(this.httpURLConnectionWorker.getConnection(paramString, "DELETE"), true);; localHTTPResponse = this.httpClientWorker.getReponse(localHttpDelete, true))
    {
      L.d(localHTTPResponse);
      return localHTTPResponse;
      localHttpDelete = new HttpDelete(paramString);
    }
  }
  
  public HTTPResponse get(String paramString)
    throws HTTPException
  {
    return get(paramString, -1L, null, true);
  }
  
  public HTTPResponse get(String paramString1, long paramLong, String paramString2, boolean paramBoolean)
    throws HTTPException
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = paramString1;
    arrayOfObject[1] = Long.valueOf(paramLong);
    arrayOfObject[2] = paramString2;
    arrayOfObject[3] = Boolean.valueOf(paramBoolean);
    L.i("GET on '%s', If-Modified-Since: '%d', ETag: '%s', body: '%b'.", arrayOfObject);
    HttpURLConnection localHttpURLConnection;
    if (useHttpURLConnection())
    {
      this.httpURLConnectionWorker.setCookies(this.cookie);
      localHttpURLConnection = this.httpURLConnectionWorker.getConnection(paramString1, "GET");
      if (paramLong > 0L) {
        localHttpURLConnection.setIfModifiedSince(paramLong);
      }
      if (paramString2 != null) {
        localHttpURLConnection.addRequestProperty("If-None-Match", paramString2);
      }
    }
    HttpGet localHttpGet;
    for (HTTPResponse localHTTPResponse = HttpURLConnectionWorker.getReponse(localHttpURLConnection, paramBoolean);; localHTTPResponse = this.httpClientWorker.getReponse(localHttpGet, paramBoolean))
    {
      L.d(localHTTPResponse);
      return localHTTPResponse;
      localHttpGet = new HttpGet(paramString1);
      if (paramLong > 0L) {
        localHttpGet.addHeader("If-Modified-Since", new Date(paramLong).toGMTString());
      }
      if (paramString2 != null) {
        localHttpGet.addHeader("If-None-Match", paramString2);
      }
    }
  }
  
  public Context getContext()
  {
    return this.ctx;
  }
  
  public HTTPResponse getInputStream(String paramString)
    throws HTTPException
  {
    return get(paramString, -1L, null, false);
  }
  
  protected final HTTPWorker getWorker()
  {
    if (this.httpClientWorker != null) {
      return this.httpClientWorker;
    }
    return this.httpURLConnectionWorker;
  }
  
  public HTTPResponse post(String paramString1, String paramString2, String paramString3)
    throws HTTPException
  {
    L.i("POST on '%s', data: '%s'.", new Object[] { paramString1, paramString3 });
    HttpURLConnection localHttpURLConnection;
    if (useHttpURLConnection())
    {
      this.httpURLConnectionWorker.setCookies(this.cookie);
      localHttpURLConnection = this.httpURLConnectionWorker.getConnection(paramString1, "POST");
      HttpURLConnectionWorker.postOrPut(localHttpURLConnection, paramString2, paramString3);
    }
    HttpPost localHttpPost;
    for (HTTPResponse localHTTPResponse = HttpURLConnectionWorker.getReponse(localHttpURLConnection, true);; localHTTPResponse = this.httpClientWorker.getReponse(localHttpPost, true))
    {
      L.d(localHTTPResponse);
      return localHTTPResponse;
      localHttpPost = new HttpPost(paramString1);
      localHttpPost.setEntity(HttpClientWorker.buildStringEntity(paramString2, paramString3));
    }
  }
  
  public HTTPResponse put(String paramString1, String paramString2, String paramString3)
    throws HTTPException
  {
    L.i("PUT on '%s', data: '%s'.", new Object[] { paramString1, paramString3 });
    HttpURLConnection localHttpURLConnection;
    if (useHttpURLConnection())
    {
      localHttpURLConnection = this.httpURLConnectionWorker.getConnection(paramString1, "PUT");
      HttpURLConnectionWorker.postOrPut(localHttpURLConnection, paramString2, paramString3);
    }
    HttpPut localHttpPut;
    for (HTTPResponse localHTTPResponse = HttpURLConnectionWorker.getReponse(localHttpURLConnection, true);; localHTTPResponse = this.httpClientWorker.getReponse(localHttpPut, true))
    {
      L.d(localHTTPResponse);
      return localHTTPResponse;
      localHttpPut = new HttpPut(paramString1);
      localHttpPut.setEntity(HttpClientWorker.buildStringEntity(paramString2, paramString3));
    }
  }
  
  public void putHeader(String paramString1, String paramString2)
  {
    getWorker().putHeader(paramString1, paramString2);
  }
  
  public void setCookie(String paramString)
  {
    this.cookie = paramString;
  }
  
  public void setCookieCacheEnabled(boolean paramBoolean1, boolean paramBoolean2)
  {
    cookieJar.setPersistent(paramBoolean2);
    HTTPWorker localHTTPWorker = getWorker();
    if (paramBoolean1) {}
    for (CookieJar localCookieJar = cookieJar;; localCookieJar = null)
    {
      localHTTPWorker.setCookieJar(localCookieJar);
      return;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.net.http.RESTClient
 * JD-Core Version:    0.7.0.1
 */