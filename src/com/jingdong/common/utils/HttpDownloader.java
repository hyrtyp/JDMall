package com.jingdong.common.utils;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

public class HttpDownloader
{
  private static String cookies;
  private static boolean cookiesFlag;
  private final int CONNECTION_TIME_OUT = 15000;
  private URL url = null;
  
  public static String getCookies()
  {
    return cookies;
  }
  
  public static boolean isCookiesFlag()
  {
    return cookiesFlag;
  }
  
  public static void setCookies(String paramString)
  {
    cookies = paramString;
  }
  
  public static void setCookiesFlag(boolean paramBoolean)
  {
    cookiesFlag = paramBoolean;
  }
  
  public int downFile(String paramString1, String paramString2, String paramString3, DownloadListener paramDownloadListener)
  {
    Object localObject1 = null;
    for (;;)
    {
      try
      {
        localFileUtils = new FileUtils();
        InputStream localInputStream = getInputStreamFromURL(paramString1);
        localObject1 = localInputStream;
        if (localObject1 != null) {
          continue;
        }
        if (localObject1 == null) {}
      }
      catch (Exception localException)
      {
        FileUtils localFileUtils;
        File localFile;
        localException.printStackTrace();
        if (localObject1 == null) {
          continue;
        }
        try
        {
          localObject1.close();
          return -1;
        }
        catch (IOException localIOException2)
        {
          localIOException2.printStackTrace();
          return -1;
        }
      }
      finally
      {
        if (localObject1 == null) {
          continue;
        }
        try
        {
          localObject1.close();
          throw localObject2;
        }
        catch (IOException localIOException1)
        {
          localIOException1.printStackTrace();
          continue;
        }
        if (localObject1 == null) {
          break label149;
        }
      }
      try
      {
        localObject1.close();
        return -1;
      }
      catch (IOException localIOException5)
      {
        localIOException5.printStackTrace();
        return -1;
      }
      localFile = localFileUtils.writeFromInput(paramString2, paramString3, localObject1);
      if (localFile == null)
      {
        if (localObject1 == null) {
          continue;
        }
        try
        {
          localObject1.close();
          return -1;
        }
        catch (IOException localIOException4)
        {
          localIOException4.printStackTrace();
          return -1;
        }
      }
    }
    try
    {
      localObject1.close();
      label149:
      paramDownloadListener.onDownloadEnd(null);
      return 0;
    }
    catch (IOException localIOException3)
    {
      for (;;)
      {
        localIOException3.printStackTrace();
      }
    }
  }
  
  /* Error */
  public int download(String paramString, DownloadListener paramDownloadListener)
  {
    // Byte code:
    //   0: new 68	java/lang/StringBuffer
    //   3: dup
    //   4: invokespecial 69	java/lang/StringBuffer:<init>	()V
    //   7: astore_3
    //   8: aconst_null
    //   9: astore 4
    //   11: aload_0
    //   12: new 71	java/net/URL
    //   15: dup
    //   16: aload_1
    //   17: invokespecial 73	java/net/URL:<init>	(Ljava/lang/String;)V
    //   20: putfield 18	com/jingdong/common/utils/HttpDownloader:url	Ljava/net/URL;
    //   23: aload_0
    //   24: getfield 18	com/jingdong/common/utils/HttpDownloader:url	Ljava/net/URL;
    //   27: invokevirtual 77	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   30: checkcast 79	java/net/HttpURLConnection
    //   33: astore 13
    //   35: getstatic 28	com/jingdong/common/utils/HttpDownloader:cookiesFlag	Z
    //   38: ifeq +13 -> 51
    //   41: aload 13
    //   43: ldc 81
    //   45: getstatic 24	com/jingdong/common/utils/HttpDownloader:cookies	Ljava/lang/String;
    //   48: invokevirtual 85	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   51: new 87	java/io/BufferedReader
    //   54: dup
    //   55: new 89	java/io/InputStreamReader
    //   58: dup
    //   59: aload 13
    //   61: invokevirtual 93	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   64: invokespecial 96	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   67: invokespecial 99	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   70: astore 14
    //   72: aload 14
    //   74: invokevirtual 102	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   77: astore 16
    //   79: aload 16
    //   81: ifnonnull +60 -> 141
    //   84: aload 14
    //   86: invokevirtual 103	java/io/BufferedReader:close	()V
    //   89: aload_3
    //   90: invokevirtual 106	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   93: invokestatic 112	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   96: ifne +187 -> 283
    //   99: new 114	org/json/JSONObject
    //   102: dup
    //   103: aload_3
    //   104: invokevirtual 106	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   107: invokespecial 115	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   110: astore 19
    //   112: ldc 117
    //   114: aload 19
    //   116: ldc 119
    //   118: invokevirtual 123	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   121: invokevirtual 129	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   124: ifeq +182 -> 306
    //   127: aload_2
    //   128: aload 19
    //   130: invokeinterface 64 2 0
    //   135: iconst_0
    //   136: istore 7
    //   138: iload 7
    //   140: ireturn
    //   141: aload_3
    //   142: aload 16
    //   144: invokevirtual 133	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   147: pop
    //   148: goto -76 -> 72
    //   151: astore 15
    //   153: aload 14
    //   155: astore 6
    //   157: iconst_m1
    //   158: istore 7
    //   160: aload 6
    //   162: invokevirtual 103	java/io/BufferedReader:close	()V
    //   165: aload_3
    //   166: invokevirtual 106	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   169: invokestatic 112	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   172: ifne +41 -> 213
    //   175: new 114	org/json/JSONObject
    //   178: dup
    //   179: aload_3
    //   180: invokevirtual 106	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   183: invokespecial 115	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   186: astore 9
    //   188: ldc 117
    //   190: aload 9
    //   192: ldc 119
    //   194: invokevirtual 123	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   197: invokevirtual 129	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   200: ifeq -62 -> 138
    //   203: aload_2
    //   204: aload 9
    //   206: invokeinterface 64 2 0
    //   211: iconst_0
    //   212: ireturn
    //   213: iconst_m1
    //   214: ireturn
    //   215: astore 8
    //   217: iconst_m1
    //   218: ireturn
    //   219: astore 10
    //   221: aload 4
    //   223: invokevirtual 103	java/io/BufferedReader:close	()V
    //   226: aload_3
    //   227: invokevirtual 106	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   230: invokestatic 112	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   233: ifne +42 -> 275
    //   236: new 114	org/json/JSONObject
    //   239: dup
    //   240: aload_3
    //   241: invokevirtual 106	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   244: invokespecial 115	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   247: astore 12
    //   249: ldc 117
    //   251: aload 12
    //   253: ldc 119
    //   255: invokevirtual 123	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   258: invokevirtual 129	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   261: ifeq +11 -> 272
    //   264: aload_2
    //   265: aload 12
    //   267: invokeinterface 64 2 0
    //   272: aload 10
    //   274: athrow
    //   275: goto -3 -> 272
    //   278: astore 11
    //   280: goto -8 -> 272
    //   283: iconst_m1
    //   284: ireturn
    //   285: astore 18
    //   287: iconst_m1
    //   288: ireturn
    //   289: astore 10
    //   291: aload 14
    //   293: astore 4
    //   295: goto -74 -> 221
    //   298: astore 5
    //   300: aconst_null
    //   301: astore 6
    //   303: goto -146 -> 157
    //   306: iconst_m1
    //   307: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	308	0	this	HttpDownloader
    //   0	308	1	paramString	String
    //   0	308	2	paramDownloadListener	DownloadListener
    //   7	234	3	localStringBuffer	java.lang.StringBuffer
    //   9	285	4	localObject1	Object
    //   298	1	5	localException1	Exception
    //   155	147	6	localBufferedReader1	java.io.BufferedReader
    //   136	23	7	i	int
    //   215	1	8	localException2	Exception
    //   186	19	9	localJSONObject1	org.json.JSONObject
    //   219	54	10	localObject2	Object
    //   289	1	10	localObject3	Object
    //   278	1	11	localException3	Exception
    //   247	19	12	localJSONObject2	org.json.JSONObject
    //   33	27	13	localHttpURLConnection	HttpURLConnection
    //   70	222	14	localBufferedReader2	java.io.BufferedReader
    //   151	1	15	localException4	Exception
    //   77	66	16	str	String
    //   285	1	18	localException5	Exception
    //   110	19	19	localJSONObject3	org.json.JSONObject
    // Exception table:
    //   from	to	target	type
    //   72	79	151	java/lang/Exception
    //   141	148	151	java/lang/Exception
    //   160	211	215	java/lang/Exception
    //   11	51	219	finally
    //   51	72	219	finally
    //   221	272	278	java/lang/Exception
    //   84	135	285	java/lang/Exception
    //   72	79	289	finally
    //   141	148	289	finally
    //   11	51	298	java/lang/Exception
    //   51	72	298	java/lang/Exception
  }
  
  public InputStream getInputStreamFromURL(String paramString)
  {
    try
    {
      this.url = new URL(paramString);
      HttpURLConnection localHttpURLConnection = (HttpURLConnection)this.url.openConnection();
      localHttpURLConnection.setConnectTimeout(15000);
      localHttpURLConnection.setReadTimeout(15000);
      InputStream localInputStream = localHttpURLConnection.getInputStream();
      return localInputStream;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      localMalformedURLException.printStackTrace();
      return null;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
  
  public static abstract interface DownloadListener
  {
    public abstract void onDownloadEnd(Object paramObject);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.HttpDownloader
 * JD-Core Version:    0.7.0.1
 */