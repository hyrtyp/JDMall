package com.jingdong.lib.zxing.client.android;

import java.io.IOException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.BasicHttpProcessor;
import org.apache.http.protocol.HttpContext;

public final class AndroidHttpClient
  implements HttpClient
{
  private static final ThreadLocal<Boolean> sThreadBlocked = new ThreadLocal();
  private static final HttpRequestInterceptor sThreadCheckInterceptor = new HttpRequestInterceptor()
  {
    public void process(HttpRequest paramAnonymousHttpRequest, HttpContext paramAnonymousHttpContext)
    {
      if (Boolean.TRUE.equals(AndroidHttpClient.sThreadBlocked.get())) {
        throw new RuntimeException("This thread forbids HTTP requests");
      }
    }
  };
  private final HttpClient delegate;
  
  private AndroidHttpClient(ClientConnectionManager paramClientConnectionManager, HttpParams paramHttpParams)
  {
    this.delegate = new DefaultHttpClient(paramClientConnectionManager, paramHttpParams)
    {
      protected HttpContext createHttpContext()
      {
        BasicHttpContext localBasicHttpContext = new BasicHttpContext();
        localBasicHttpContext.setAttribute("http.authscheme-registry", getAuthSchemes());
        localBasicHttpContext.setAttribute("http.cookiespec-registry", getCookieSpecs());
        localBasicHttpContext.setAttribute("http.auth.credentials-provider", getCredentialsProvider());
        return localBasicHttpContext;
      }
      
      protected BasicHttpProcessor createHttpProcessor()
      {
        BasicHttpProcessor localBasicHttpProcessor = super.createHttpProcessor();
        localBasicHttpProcessor.addRequestInterceptor(AndroidHttpClient.sThreadCheckInterceptor);
        return localBasicHttpProcessor;
      }
    };
  }
  
  public static AndroidHttpClient newInstance(String paramString)
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setStaleCheckingEnabled(localBasicHttpParams, false);
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 20000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 20000);
    HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 8192);
    HttpClientParams.setRedirecting(localBasicHttpParams, false);
    HttpProtocolParams.setUserAgent(localBasicHttpParams, paramString);
    SchemeRegistry localSchemeRegistry = new SchemeRegistry();
    localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
    localSchemeRegistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
    return new AndroidHttpClient(new ThreadSafeClientConnManager(localBasicHttpParams, localSchemeRegistry), localBasicHttpParams);
  }
  
  public void close()
  {
    getConnectionManager().shutdown();
  }
  
  public <T> T execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler)
    throws IOException
  {
    return this.delegate.execute(paramHttpHost, paramHttpRequest, paramResponseHandler);
  }
  
  public <T> T execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext)
    throws IOException
  {
    return this.delegate.execute(paramHttpHost, paramHttpRequest, paramResponseHandler, paramHttpContext);
  }
  
  public <T> T execute(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler)
    throws IOException
  {
    return this.delegate.execute(paramHttpUriRequest, paramResponseHandler);
  }
  
  public <T> T execute(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext)
    throws IOException
  {
    return this.delegate.execute(paramHttpUriRequest, paramResponseHandler, paramHttpContext);
  }
  
  public HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest)
    throws IOException
  {
    return this.delegate.execute(paramHttpHost, paramHttpRequest);
  }
  
  public HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
    throws IOException
  {
    return this.delegate.execute(paramHttpHost, paramHttpRequest, paramHttpContext);
  }
  
  public HttpResponse execute(HttpUriRequest paramHttpUriRequest)
    throws IOException
  {
    return this.delegate.execute(paramHttpUriRequest);
  }
  
  public HttpResponse execute(HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext)
    throws IOException
  {
    return this.delegate.execute(paramHttpUriRequest, paramHttpContext);
  }
  
  public ClientConnectionManager getConnectionManager()
  {
    return this.delegate.getConnectionManager();
  }
  
  public HttpParams getParams()
  {
    return this.delegate.getParams();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.AndroidHttpClient
 * JD-Core Version:    0.7.0.1
 */