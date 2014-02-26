package com.jd.common.util;

import java.io.PrintStream;
import org.apache.commons.httpclient.DefaultHttpMethodRetryHandler;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpConnectionManager;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.params.HttpConnectionManagerParams;
import org.apache.commons.httpclient.params.HttpMethodParams;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

public class HttpClientUtil
{
  private static final Logger log = LogManager.getLogger(HttpClientUtil.class);
  
  public static void main(String[] paramArrayOfString)
  {
    System.out.println(testHttpClientIsConnected("http://10.10.20.169:8080/plist/top"));
  }
  
  public static boolean testHttpClientIsConnected(String paramString)
  {
    boolean bool = true;
    HttpClient localHttpClient = new HttpClient();
    GetMethod localGetMethod = new GetMethod(paramString);
    localGetMethod.getParams().setParameter("http.method.retry-handler", new DefaultHttpMethodRetryHandler());
    localHttpClient.getHttpConnectionManager().getParams().setConnectionTimeout(5000);
    localHttpClient.getHttpConnectionManager().getParams().setSoTimeout(5000);
    try
    {
      if (localHttpClient.executeMethod(localGetMethod) != 200)
      {
        log.error("method failure: " + localGetMethod.getStatusLine());
        bool = false;
      }
      return bool;
    }
    catch (Exception localException)
    {
      log.error("Exception  is happening" + localException);
    }
    return false;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.util.HttpClientUtil
 * JD-Core Version:    0.7.0.1
 */