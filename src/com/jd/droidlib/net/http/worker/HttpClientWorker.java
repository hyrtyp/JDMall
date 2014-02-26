package com.jd.droidlib.net.http.worker;

import com.jd.droidlib.net.http.CookieJar;
import com.jd.droidlib.net.http.HTTPException;
import com.jd.droidlib.net.http.HTTPResponse;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

public class HttpClientWorker
  extends HTTPWorker
{
  private final DefaultHttpClient httpClient = new DefaultHttpClient();
  
  public HttpClientWorker(String paramString)
  {
    super(paramString);
    HttpParams localHttpParams = this.httpClient.getParams();
    HttpProtocolParams.setUserAgent(localHttpParams, paramString);
    HttpConnectionParams.setStaleCheckingEnabled(localHttpParams, false);
    HttpClientParams.setRedirecting(localHttpParams, false);
    HttpConnectionParams.setConnectionTimeout(localHttpParams, 30000);
    HttpConnectionParams.setSoTimeout(localHttpParams, 30000);
    HttpConnectionParams.setSocketBufferSize(localHttpParams, 8192);
    HttpClientParams.setCookiePolicy(localHttpParams, "compatibility");
  }
  
  public static StringEntity buildStringEntity(String paramString1, String paramString2)
    throws HTTPException
  {
    try
    {
      StringEntity localStringEntity = new StringEntity(paramString2, "utf-8");
      localStringEntity.setContentType(paramString1);
      return localStringEntity;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new HTTPException(localUnsupportedEncodingException);
    }
  }
  
  private static Map<String, List<String>> getHeaders(HttpResponse paramHttpResponse)
  {
    HashMap localHashMap = new HashMap();
    Header[] arrayOfHeader = paramHttpResponse.getAllHeaders();
    int i = arrayOfHeader.length;
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return localHashMap;
      }
      Header localHeader = arrayOfHeader[j];
      String str = localHeader.getName();
      if (!localHashMap.containsKey(str)) {
        localHashMap.put(str, new ArrayList());
      }
      ((List)localHashMap.get(str)).add(localHeader.getValue());
    }
  }
  
  private HttpResponse getHttpResponse(HttpUriRequest paramHttpUriRequest)
    throws HTTPException
  {
    Iterator localIterator1 = this.headers.keySet().iterator();
    for (;;)
    {
      if (!localIterator1.hasNext()) {
        paramHttpUriRequest.setHeader("Accept-Encoding", "gzip,deflate");
      }
      try
      {
        HttpResponse localHttpResponse = this.httpClient.execute(paramHttpUriRequest);
        return localHttpResponse;
      }
      catch (Exception localException)
      {
        String str;
        Iterator localIterator2;
        throwIfNetworkOnMainThreadException(localException);
        throw new HTTPException(localException);
      }
      str = (String)localIterator1.next();
      localIterator2 = ((ArrayList)this.headers.get(str)).iterator();
      while (localIterator2.hasNext()) {
        paramHttpUriRequest.addHeader(str, (String)localIterator2.next());
      }
    }
  }
  
  private static int getResponseCodeOrThrow(HttpResponse paramHttpResponse)
    throws HTTPException
  {
    int i = paramHttpResponse.getStatusLine().getStatusCode();
    if (isErrorResponseCode(i)) {
      throw new HTTPException(i, HTTPInputStream.getInstance(paramHttpResponse).readAndClose());
    }
    return i;
  }
  
  public void authenticateBasic(String paramString1, String paramString2, AuthScope paramAuthScope)
  {
    UsernamePasswordCredentials localUsernamePasswordCredentials = new UsernamePasswordCredentials(paramString1, paramString2);
    this.httpClient.getCredentialsProvider().setCredentials(paramAuthScope, localUsernamePasswordCredentials);
  }
  
  public DefaultHttpClient getHttpClient()
  {
    return this.httpClient;
  }
  
  public HTTPResponse getReponse(HttpUriRequest paramHttpUriRequest, boolean paramBoolean)
    throws HTTPException
  {
    HTTPResponse localHTTPResponse = new HTTPResponse();
    HttpResponse localHttpResponse = getHttpResponse(paramHttpUriRequest);
    localHTTPResponse.code = getResponseCodeOrThrow(localHttpResponse);
    localHTTPResponse.headers = getHeaders(localHttpResponse);
    HTTPInputStream localHTTPInputStream = HTTPInputStream.getInstance(localHttpResponse);
    if (paramBoolean)
    {
      localHTTPResponse.body = localHTTPInputStream.readAndClose();
      return localHTTPResponse;
    }
    localHTTPResponse.inputStream = localHTTPInputStream;
    return localHTTPResponse;
  }
  
  public void setCookieJar(CookieJar paramCookieJar)
  {
    this.httpClient.setCookieStore(paramCookieJar);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.net.http.worker.HttpClientWorker
 * JD-Core Version:    0.7.0.1
 */