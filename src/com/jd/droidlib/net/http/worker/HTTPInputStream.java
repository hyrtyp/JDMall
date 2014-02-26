package com.jd.droidlib.net.http.worker;

import com.jd.droidlib.net.http.HTTPException;
import com.jd.droidlib.util.IOUtils;
import com.jd.droidlib.util.L;
import com.jd.droidlib.util.Strings;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.zip.GZIPInputStream;
import java.util.zip.InflaterInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;

public class HTTPInputStream
  extends BufferedInputStream
{
  private final HttpURLConnection conn;
  private final HttpEntity entity;
  
  private HTTPInputStream(InputStream paramInputStream, HttpURLConnection paramHttpURLConnection, HttpEntity paramHttpEntity)
    throws HTTPException
  {
    super(paramInputStream, 8192);
    this.conn = paramHttpURLConnection;
    this.entity = paramHttpEntity;
  }
  
  public static HTTPInputStream getInstance(HttpURLConnection paramHttpURLConnection, boolean paramBoolean)
    throws HTTPException
  {
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        localObject = paramHttpURLConnection.getErrorStream();
        return new HTTPInputStream(getUnpackedInputStream(paramHttpURLConnection.getContentEncoding(), (InputStream)localObject), paramHttpURLConnection, null);
      }
      catch (Exception localException)
      {
        Object localObject;
        InputStream localInputStream;
        throw new HTTPException(localException);
      }
      localInputStream = paramHttpURLConnection.getInputStream();
      localObject = localInputStream;
    }
  }
  
  public static HTTPInputStream getInstance(HttpResponse paramHttpResponse)
    throws HTTPException
  {
    HttpEntity localHttpEntity = paramHttpResponse.getEntity();
    try
    {
      InputStream localInputStream = localHttpEntity.getContent();
      Header localHeader = localHttpEntity.getContentEncoding();
      String str = null;
      if (localHeader != null) {
        str = localHeader.getValue();
      }
      HTTPInputStream localHTTPInputStream = new HTTPInputStream(getUnpackedInputStream(str, localInputStream), null, localHttpEntity);
      return localHTTPInputStream;
    }
    catch (Exception localException)
    {
      throw new HTTPException(localException);
    }
  }
  
  private static InputStream getUnpackedInputStream(String paramString, InputStream paramInputStream)
    throws IOException
  {
    L.d("Content-Encoding: %s.", new Object[] { paramString });
    String str;
    if (Strings.isNotEmpty(paramString))
    {
      str = paramString.toLowerCase();
      if (!str.contains("gzip")) {
        break label45;
      }
      paramInputStream = new GZIPInputStream(paramInputStream);
    }
    label45:
    while (!str.contains("deflate")) {
      return paramInputStream;
    }
    return new InflaterInputStream(paramInputStream);
  }
  
  public void close()
    throws IOException
  {
    super.close();
    if (this.conn != null) {
      this.conn.disconnect();
    }
    while (this.entity == null) {
      return;
    }
    this.entity.consumeContent();
  }
  
  public String readAndClose()
    throws HTTPException
  {
    try
    {
      String str = IOUtils.readToString(this);
      return str;
    }
    catch (Exception localException)
    {
      throw new HTTPException(localException);
    }
    finally
    {
      IOUtils.silentlyClose(new Closeable[] { this });
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.net.http.worker.HTTPInputStream
 * JD-Core Version:    0.7.0.1
 */