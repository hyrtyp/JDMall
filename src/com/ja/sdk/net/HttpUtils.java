package com.ja.sdk.net;

import android.content.Context;
import com.ja.sdk.constant.Constants;
import com.ja.sdk.utils.LogUtil;
import org.json.JSONArray;

public class HttpUtils
{
  private static final int OK = 200;
  private static final String POST = "POST";
  private static final String TAG = "HttpUtils";
  private static final int TIME_OUT = 30000;
  private static final String UTF8 = "UTF-8";
  private static Boolean isNetWorkExceptionOk = Boolean.valueOf(true);
  private static Boolean isNetWorkPageVisitOk = Boolean.valueOf(true);
  
  /* Error */
  private static void doHttpException(Context paramContext, String paramString1, String paramString2, JSONArray paramJSONArray, HttpCallBackListener paramHttpCallBackListener)
    throws Exception
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aconst_null
    //   4: astore 5
    //   6: aconst_null
    //   7: astore 6
    //   9: aload 4
    //   11: ifnull +12 -> 23
    //   14: aload 4
    //   16: aload_2
    //   17: aload_3
    //   18: invokeinterface 48 3 0
    //   23: iconst_0
    //   24: invokestatic 29	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   27: invokestatic 54	com/ja/sdk/framework/ExceptionDataHandle:setSendFlag	(Ljava/lang/Boolean;)V
    //   30: aload_0
    //   31: new 56	java/net/URL
    //   34: dup
    //   35: aload_2
    //   36: invokevirtual 62	java/lang/String:toString	()Ljava/lang/String;
    //   39: invokespecial 65	java/net/URL:<init>	(Ljava/lang/String;)V
    //   42: invokestatic 71	com/ja/sdk/utils/NetUtils:openConncetion	(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    //   45: astore 5
    //   47: aload 5
    //   49: iconst_1
    //   50: invokevirtual 77	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   53: aload 5
    //   55: iconst_1
    //   56: invokevirtual 80	java/net/HttpURLConnection:setDoInput	(Z)V
    //   59: aload 5
    //   61: aload_1
    //   62: invokevirtual 83	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   65: aload 5
    //   67: ldc 85
    //   69: ldc 87
    //   71: invokevirtual 91	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   74: aload 5
    //   76: sipush 30000
    //   79: invokevirtual 95	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   82: aload 5
    //   84: sipush 30000
    //   87: invokevirtual 98	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   90: aload 5
    //   92: invokevirtual 102	java/net/HttpURLConnection:getRequestProperties	()Ljava/util/Map;
    //   95: invokeinterface 108 1 0
    //   100: invokeinterface 114 1 0
    //   105: astore 12
    //   107: aload 12
    //   109: invokeinterface 120 1 0
    //   114: ifne +252 -> 366
    //   117: ldc 13
    //   119: new 122	java/lang/StringBuilder
    //   122: dup
    //   123: aload_1
    //   124: invokestatic 125	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   127: invokespecial 126	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   130: ldc 128
    //   132: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   138: invokestatic 139	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   141: pop
    //   142: aload 5
    //   144: invokevirtual 142	java/net/HttpURLConnection:connect	()V
    //   147: ldc 13
    //   149: new 122	java/lang/StringBuilder
    //   152: dup
    //   153: aload_1
    //   154: invokestatic 125	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   157: invokespecial 126	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   160: ldc 144
    //   162: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   168: invokestatic 139	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   171: pop
    //   172: aconst_null
    //   173: astore 6
    //   175: aload_3
    //   176: ifnull +54 -> 230
    //   179: aload_3
    //   180: invokevirtual 150	org/json/JSONArray:length	()I
    //   183: istore 19
    //   185: aconst_null
    //   186: astore 6
    //   188: iload 19
    //   190: ifle +40 -> 230
    //   193: new 152	java/io/DataOutputStream
    //   196: dup
    //   197: aload 5
    //   199: invokevirtual 156	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   202: invokespecial 159	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   205: astore 20
    //   207: aload 20
    //   209: aload_3
    //   210: invokevirtual 160	org/json/JSONArray:toString	()Ljava/lang/String;
    //   213: ldc 18
    //   215: invokevirtual 164	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   218: invokevirtual 170	java/io/OutputStream:write	([B)V
    //   221: aload 20
    //   223: invokevirtual 173	java/io/OutputStream:close	()V
    //   226: aload 20
    //   228: astore 6
    //   230: aload 5
    //   232: invokevirtual 176	java/net/HttpURLConnection:getResponseCode	()I
    //   235: istore 26
    //   237: iload 26
    //   239: sipush 200
    //   242: if_icmpne +248 -> 490
    //   245: iconst_1
    //   246: invokestatic 29	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   249: invokestatic 54	com/ja/sdk/framework/ExceptionDataHandle:setSendFlag	(Ljava/lang/Boolean;)V
    //   252: iconst_1
    //   253: invokestatic 29	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   256: invokestatic 179	com/ja/sdk/net/HttpUtils:setExceptionSendNetWorkStatus	(Ljava/lang/Boolean;)V
    //   259: aload 4
    //   261: ifnull +11 -> 272
    //   264: aload 4
    //   266: aload_3
    //   267: invokeinterface 183 2 0
    //   272: ldc 13
    //   274: new 122	java/lang/StringBuilder
    //   277: dup
    //   278: ldc 185
    //   280: invokespecial 126	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   283: iload 26
    //   285: invokevirtual 188	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   288: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   291: invokestatic 191	com/ja/sdk/utils/LogUtil:logW	(Ljava/lang/String;Ljava/lang/String;)I
    //   294: pop
    //   295: ldc 13
    //   297: new 122	java/lang/StringBuilder
    //   300: dup
    //   301: ldc 193
    //   303: invokespecial 126	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   306: aload_1
    //   307: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   310: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   313: invokestatic 191	com/ja/sdk/utils/LogUtil:logW	(Ljava/lang/String;Ljava/lang/String;)I
    //   316: pop
    //   317: ldc 13
    //   319: ldc 195
    //   321: invokestatic 191	com/ja/sdk/utils/LogUtil:logW	(Ljava/lang/String;Ljava/lang/String;)I
    //   324: pop
    //   325: ldc 13
    //   327: ldc 197
    //   329: invokestatic 139	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   332: pop
    //   333: aload 6
    //   335: ifnull +8 -> 343
    //   338: aload 6
    //   340: invokevirtual 173	java/io/OutputStream:close	()V
    //   343: aload 5
    //   345: ifnull +17 -> 362
    //   348: aload 5
    //   350: invokevirtual 200	java/net/HttpURLConnection:disconnect	()V
    //   353: ldc2_w 201
    //   356: invokestatic 208	java/lang/Thread:sleep	(J)V
    //   359: invokestatic 213	java/lang/System:gc	()V
    //   362: ldc 2
    //   364: monitorexit
    //   365: return
    //   366: aload 12
    //   368: invokeinterface 217 1 0
    //   373: checkcast 58	java/lang/String
    //   376: astore 13
    //   378: ldc 13
    //   380: new 122	java/lang/StringBuilder
    //   383: dup
    //   384: aload 13
    //   386: invokestatic 125	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   389: invokespecial 126	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   392: ldc 219
    //   394: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   397: aload 5
    //   399: aload 13
    //   401: invokevirtual 223	java/net/HttpURLConnection:getRequestProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   404: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   407: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   410: invokestatic 139	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   413: pop
    //   414: goto -307 -> 107
    //   417: astore 7
    //   419: ldc 13
    //   421: ldc 197
    //   423: invokestatic 139	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   426: pop
    //   427: aload 6
    //   429: ifnull +8 -> 437
    //   432: aload 6
    //   434: invokevirtual 173	java/io/OutputStream:close	()V
    //   437: aload 5
    //   439: ifnull +17 -> 456
    //   442: aload 5
    //   444: invokevirtual 200	java/net/HttpURLConnection:disconnect	()V
    //   447: ldc2_w 201
    //   450: invokestatic 208	java/lang/Thread:sleep	(J)V
    //   453: invokestatic 213	java/lang/System:gc	()V
    //   456: aload 7
    //   458: athrow
    //   459: astore 8
    //   461: ldc 2
    //   463: monitorexit
    //   464: aload 8
    //   466: athrow
    //   467: astore 16
    //   469: iconst_0
    //   470: invokestatic 29	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   473: invokestatic 179	com/ja/sdk/net/HttpUtils:setExceptionSendNetWorkStatus	(Ljava/lang/Boolean;)V
    //   476: ldc 225
    //   478: aload 16
    //   480: invokevirtual 226	java/io/IOException:toString	()Ljava/lang/String;
    //   483: invokestatic 139	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   486: pop
    //   487: goto -340 -> 147
    //   490: ldc 13
    //   492: new 122	java/lang/StringBuilder
    //   495: dup
    //   496: ldc 185
    //   498: invokespecial 126	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   501: iload 26
    //   503: invokevirtual 188	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   506: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   509: invokestatic 139	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   512: pop
    //   513: ldc 13
    //   515: new 122	java/lang/StringBuilder
    //   518: dup
    //   519: ldc 193
    //   521: invokespecial 126	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   524: aload_1
    //   525: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   528: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   531: invokestatic 139	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   534: pop
    //   535: ldc 13
    //   537: ldc 195
    //   539: invokestatic 139	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   542: pop
    //   543: aload 4
    //   545: ifnull +19 -> 564
    //   548: iconst_0
    //   549: invokestatic 29	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   552: invokestatic 54	com/ja/sdk/framework/ExceptionDataHandle:setSendFlag	(Ljava/lang/Boolean;)V
    //   555: aload 4
    //   557: aload_2
    //   558: aload_3
    //   559: invokeinterface 229 3 0
    //   564: ldc 13
    //   566: ldc 197
    //   568: invokestatic 139	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   571: pop
    //   572: aload 6
    //   574: ifnull +8 -> 582
    //   577: aload 6
    //   579: invokevirtual 173	java/io/OutputStream:close	()V
    //   582: aload 5
    //   584: ifnull -222 -> 362
    //   587: aload 5
    //   589: invokevirtual 200	java/net/HttpURLConnection:disconnect	()V
    //   592: ldc2_w 201
    //   595: invokestatic 208	java/lang/Thread:sleep	(J)V
    //   598: invokestatic 213	java/lang/System:gc	()V
    //   601: goto -239 -> 362
    //   604: astore 24
    //   606: goto -244 -> 362
    //   609: astore 21
    //   611: ldc 13
    //   613: ldc 231
    //   615: invokestatic 139	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   618: pop
    //   619: goto -76 -> 543
    //   622: astore 32
    //   624: goto -281 -> 343
    //   627: astore 11
    //   629: goto -192 -> 437
    //   632: astore 25
    //   634: goto -52 -> 582
    //   637: astore 10
    //   639: goto -183 -> 456
    //   642: astore 7
    //   644: aload 20
    //   646: astore 6
    //   648: goto -229 -> 419
    //   651: astore 31
    //   653: goto -291 -> 362
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	656	0	paramContext	Context
    //   0	656	1	paramString1	String
    //   0	656	2	paramString2	String
    //   0	656	3	paramJSONArray	JSONArray
    //   0	656	4	paramHttpCallBackListener	HttpCallBackListener
    //   4	584	5	localHttpURLConnection	java.net.HttpURLConnection
    //   7	640	6	localObject1	Object
    //   417	40	7	localObject2	Object
    //   642	1	7	localObject3	Object
    //   459	6	8	localObject4	Object
    //   637	1	10	localException1	Exception
    //   627	1	11	localException2	Exception
    //   105	262	12	localIterator	java.util.Iterator
    //   376	24	13	str	String
    //   467	12	16	localIOException1	java.io.IOException
    //   183	6	19	i	int
    //   205	440	20	localDataOutputStream	java.io.DataOutputStream
    //   609	1	21	localIOException2	java.io.IOException
    //   604	1	24	localException3	Exception
    //   632	1	25	localException4	Exception
    //   235	267	26	j	int
    //   651	1	31	localException5	Exception
    //   622	1	32	localException6	Exception
    // Exception table:
    //   from	to	target	type
    //   14	23	417	finally
    //   23	107	417	finally
    //   107	142	417	finally
    //   142	147	417	finally
    //   147	172	417	finally
    //   179	185	417	finally
    //   193	207	417	finally
    //   230	237	417	finally
    //   245	259	417	finally
    //   264	272	417	finally
    //   272	325	417	finally
    //   366	414	417	finally
    //   469	487	417	finally
    //   490	543	417	finally
    //   548	564	417	finally
    //   611	619	417	finally
    //   325	333	459	finally
    //   338	343	459	finally
    //   348	362	459	finally
    //   419	427	459	finally
    //   432	437	459	finally
    //   442	456	459	finally
    //   456	459	459	finally
    //   564	572	459	finally
    //   577	582	459	finally
    //   587	601	459	finally
    //   142	147	467	java/io/IOException
    //   587	601	604	java/lang/Exception
    //   230	237	609	java/io/IOException
    //   245	259	609	java/io/IOException
    //   264	272	609	java/io/IOException
    //   272	325	609	java/io/IOException
    //   490	543	609	java/io/IOException
    //   338	343	622	java/lang/Exception
    //   432	437	627	java/lang/Exception
    //   577	582	632	java/lang/Exception
    //   442	456	637	java/lang/Exception
    //   207	226	642	finally
    //   348	362	651	java/lang/Exception
  }
  
  /* Error */
  private static void doHttpGzip(Context paramContext, String paramString1, String paramString2, JSONArray paramJSONArray, HttpCallBackListener paramHttpCallBackListener)
    throws Exception
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aconst_null
    //   4: astore 5
    //   6: aconst_null
    //   7: astore 6
    //   9: aload 4
    //   11: ifnull +12 -> 23
    //   14: aload 4
    //   16: aload_2
    //   17: aload_3
    //   18: invokeinterface 48 3 0
    //   23: aload_0
    //   24: new 56	java/net/URL
    //   27: dup
    //   28: aload_2
    //   29: invokevirtual 62	java/lang/String:toString	()Ljava/lang/String;
    //   32: invokespecial 65	java/net/URL:<init>	(Ljava/lang/String;)V
    //   35: invokestatic 71	com/ja/sdk/utils/NetUtils:openConncetion	(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    //   38: astore 5
    //   40: aload 5
    //   42: iconst_1
    //   43: invokevirtual 77	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   46: aload 5
    //   48: iconst_1
    //   49: invokevirtual 80	java/net/HttpURLConnection:setDoInput	(Z)V
    //   52: aload 5
    //   54: aload_1
    //   55: invokevirtual 83	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   58: aload 5
    //   60: ldc 85
    //   62: ldc 87
    //   64: invokevirtual 91	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   67: aload 5
    //   69: ldc 234
    //   71: ldc 236
    //   73: invokevirtual 91	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   76: aload 5
    //   78: sipush 30000
    //   81: invokevirtual 95	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   84: aload 5
    //   86: sipush 30000
    //   89: invokevirtual 98	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   92: aload 5
    //   94: invokevirtual 102	java/net/HttpURLConnection:getRequestProperties	()Ljava/util/Map;
    //   97: invokeinterface 108 1 0
    //   102: invokeinterface 114 1 0
    //   107: astore 11
    //   109: aload 11
    //   111: invokeinterface 120 1 0
    //   116: istore 12
    //   118: aconst_null
    //   119: astore 6
    //   121: iload 12
    //   123: ifne +180 -> 303
    //   126: aload 5
    //   128: invokevirtual 142	java/net/HttpURLConnection:connect	()V
    //   131: aconst_null
    //   132: astore 6
    //   134: aload_3
    //   135: ifnull +54 -> 189
    //   138: aload_3
    //   139: invokevirtual 150	org/json/JSONArray:length	()I
    //   142: istore 13
    //   144: aconst_null
    //   145: astore 6
    //   147: iload 13
    //   149: ifle +40 -> 189
    //   152: new 238	java/util/zip/GZIPOutputStream
    //   155: dup
    //   156: aload 5
    //   158: invokevirtual 156	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   161: invokespecial 239	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   164: astore 14
    //   166: aload 14
    //   168: aload_3
    //   169: invokevirtual 160	org/json/JSONArray:toString	()Ljava/lang/String;
    //   172: ldc 18
    //   174: invokevirtual 164	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   177: invokevirtual 170	java/io/OutputStream:write	([B)V
    //   180: aload 14
    //   182: invokevirtual 173	java/io/OutputStream:close	()V
    //   185: aload 14
    //   187: astore 6
    //   189: aload 5
    //   191: invokevirtual 176	java/net/HttpURLConnection:getResponseCode	()I
    //   194: istore 15
    //   196: ldc 13
    //   198: new 122	java/lang/StringBuilder
    //   201: dup
    //   202: ldc 241
    //   204: invokespecial 126	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   207: iload 15
    //   209: invokevirtual 188	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   212: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   215: invokestatic 139	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   218: pop
    //   219: iload 15
    //   221: sipush 200
    //   224: if_icmpne +172 -> 396
    //   227: ldc 13
    //   229: new 122	java/lang/StringBuilder
    //   232: dup
    //   233: ldc 243
    //   235: invokespecial 126	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   238: iload 15
    //   240: invokevirtual 188	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   243: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   246: invokestatic 139	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   249: pop
    //   250: iconst_1
    //   251: invokestatic 29	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   254: invokestatic 54	com/ja/sdk/framework/ExceptionDataHandle:setSendFlag	(Ljava/lang/Boolean;)V
    //   257: aload 4
    //   259: ifnull +11 -> 270
    //   262: aload 4
    //   264: aload_3
    //   265: invokeinterface 183 2 0
    //   270: aload 6
    //   272: ifnull +8 -> 280
    //   275: aload 6
    //   277: invokevirtual 173	java/io/OutputStream:close	()V
    //   280: aload 5
    //   282: ifnull +17 -> 299
    //   285: aload 5
    //   287: invokevirtual 200	java/net/HttpURLConnection:disconnect	()V
    //   290: ldc2_w 201
    //   293: invokestatic 208	java/lang/Thread:sleep	(J)V
    //   296: invokestatic 213	java/lang/System:gc	()V
    //   299: ldc 2
    //   301: monitorexit
    //   302: return
    //   303: aload 11
    //   305: invokeinterface 217 1 0
    //   310: checkcast 58	java/lang/String
    //   313: astore 22
    //   315: ldc 13
    //   317: new 122	java/lang/StringBuilder
    //   320: dup
    //   321: aload 22
    //   323: invokestatic 125	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   326: invokespecial 126	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   329: ldc 219
    //   331: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   334: aload 5
    //   336: aload 22
    //   338: invokevirtual 223	java/net/HttpURLConnection:getRequestProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   341: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   344: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   347: invokestatic 139	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   350: pop
    //   351: goto -242 -> 109
    //   354: astore 7
    //   356: aload 6
    //   358: ifnull +8 -> 366
    //   361: aload 6
    //   363: invokevirtual 173	java/io/OutputStream:close	()V
    //   366: aload 5
    //   368: ifnull +17 -> 385
    //   371: aload 5
    //   373: invokevirtual 200	java/net/HttpURLConnection:disconnect	()V
    //   376: ldc2_w 201
    //   379: invokestatic 208	java/lang/Thread:sleep	(J)V
    //   382: invokestatic 213	java/lang/System:gc	()V
    //   385: aload 7
    //   387: athrow
    //   388: astore 8
    //   390: ldc 2
    //   392: monitorexit
    //   393: aload 8
    //   395: athrow
    //   396: aload 4
    //   398: ifnull +19 -> 417
    //   401: aload 4
    //   403: aload_2
    //   404: aload_3
    //   405: invokeinterface 229 3 0
    //   410: iconst_0
    //   411: invokestatic 29	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   414: invokestatic 54	com/ja/sdk/framework/ExceptionDataHandle:setSendFlag	(Ljava/lang/Boolean;)V
    //   417: aload 6
    //   419: ifnull +8 -> 427
    //   422: aload 6
    //   424: invokevirtual 173	java/io/OutputStream:close	()V
    //   427: aload 5
    //   429: ifnull -130 -> 299
    //   432: aload 5
    //   434: invokevirtual 200	java/net/HttpURLConnection:disconnect	()V
    //   437: ldc2_w 201
    //   440: invokestatic 208	java/lang/Thread:sleep	(J)V
    //   443: invokestatic 213	java/lang/System:gc	()V
    //   446: goto -147 -> 299
    //   449: astore 20
    //   451: goto -152 -> 299
    //   454: astore 19
    //   456: goto -176 -> 280
    //   459: astore 10
    //   461: goto -95 -> 366
    //   464: astore 21
    //   466: goto -39 -> 427
    //   469: astore 9
    //   471: goto -86 -> 385
    //   474: astore 7
    //   476: aload 14
    //   478: astore 6
    //   480: goto -124 -> 356
    //   483: astore 18
    //   485: goto -186 -> 299
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	488	0	paramContext	Context
    //   0	488	1	paramString1	String
    //   0	488	2	paramString2	String
    //   0	488	3	paramJSONArray	JSONArray
    //   0	488	4	paramHttpCallBackListener	HttpCallBackListener
    //   4	429	5	localHttpURLConnection	java.net.HttpURLConnection
    //   7	472	6	localObject1	Object
    //   354	32	7	localObject2	Object
    //   474	1	7	localObject3	Object
    //   388	6	8	localObject4	Object
    //   469	1	9	localException1	Exception
    //   459	1	10	localException2	Exception
    //   107	197	11	localIterator	java.util.Iterator
    //   116	6	12	bool	boolean
    //   142	6	13	i	int
    //   164	313	14	localGZIPOutputStream	java.util.zip.GZIPOutputStream
    //   194	45	15	j	int
    //   483	1	18	localException3	Exception
    //   454	1	19	localException4	Exception
    //   449	1	20	localException5	Exception
    //   464	1	21	localException6	Exception
    //   313	24	22	str	String
    // Exception table:
    //   from	to	target	type
    //   14	23	354	finally
    //   23	109	354	finally
    //   109	118	354	finally
    //   126	131	354	finally
    //   138	144	354	finally
    //   152	166	354	finally
    //   189	219	354	finally
    //   227	257	354	finally
    //   262	270	354	finally
    //   303	351	354	finally
    //   401	417	354	finally
    //   275	280	388	finally
    //   285	299	388	finally
    //   361	366	388	finally
    //   371	385	388	finally
    //   385	388	388	finally
    //   422	427	388	finally
    //   432	446	388	finally
    //   432	446	449	java/lang/Exception
    //   275	280	454	java/lang/Exception
    //   361	366	459	java/lang/Exception
    //   422	427	464	java/lang/Exception
    //   371	385	469	java/lang/Exception
    //   166	185	474	finally
    //   285	299	483	java/lang/Exception
  }
  
  /* Error */
  private static void doHttpPageVisit(Context paramContext, String paramString1, String paramString2, JSONArray paramJSONArray, HttpCallBackListener paramHttpCallBackListener)
    throws Exception
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aconst_null
    //   4: astore 5
    //   6: aconst_null
    //   7: astore 6
    //   9: aload 4
    //   11: ifnull +12 -> 23
    //   14: aload 4
    //   16: aload_2
    //   17: aload_3
    //   18: invokeinterface 48 3 0
    //   23: iconst_0
    //   24: invokestatic 29	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   27: invokestatic 247	com/ja/sdk/framework/PageAccessDataHandle:setSendFlag	(Ljava/lang/Boolean;)V
    //   30: aload_0
    //   31: new 56	java/net/URL
    //   34: dup
    //   35: aload_2
    //   36: invokevirtual 62	java/lang/String:toString	()Ljava/lang/String;
    //   39: invokespecial 65	java/net/URL:<init>	(Ljava/lang/String;)V
    //   42: invokestatic 71	com/ja/sdk/utils/NetUtils:openConncetion	(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    //   45: astore 5
    //   47: aload 5
    //   49: iconst_1
    //   50: invokevirtual 77	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   53: aload 5
    //   55: iconst_1
    //   56: invokevirtual 80	java/net/HttpURLConnection:setDoInput	(Z)V
    //   59: aload 5
    //   61: aload_1
    //   62: invokevirtual 83	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   65: aload 5
    //   67: ldc 85
    //   69: ldc 87
    //   71: invokevirtual 91	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   74: aload 5
    //   76: sipush 30000
    //   79: invokevirtual 95	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   82: aload 5
    //   84: sipush 30000
    //   87: invokevirtual 98	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   90: aload 5
    //   92: invokevirtual 102	java/net/HttpURLConnection:getRequestProperties	()Ljava/util/Map;
    //   95: invokeinterface 108 1 0
    //   100: invokeinterface 114 1 0
    //   105: astore 12
    //   107: aload 12
    //   109: invokeinterface 120 1 0
    //   114: ifne +252 -> 366
    //   117: ldc 13
    //   119: new 122	java/lang/StringBuilder
    //   122: dup
    //   123: aload_1
    //   124: invokestatic 125	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   127: invokespecial 126	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   130: ldc 128
    //   132: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   138: invokestatic 139	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   141: pop
    //   142: aload 5
    //   144: invokevirtual 142	java/net/HttpURLConnection:connect	()V
    //   147: ldc 13
    //   149: new 122	java/lang/StringBuilder
    //   152: dup
    //   153: aload_1
    //   154: invokestatic 125	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   157: invokespecial 126	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   160: ldc 144
    //   162: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   168: invokestatic 139	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   171: pop
    //   172: aconst_null
    //   173: astore 6
    //   175: aload_3
    //   176: ifnull +54 -> 230
    //   179: aload_3
    //   180: invokevirtual 150	org/json/JSONArray:length	()I
    //   183: istore 19
    //   185: aconst_null
    //   186: astore 6
    //   188: iload 19
    //   190: ifle +40 -> 230
    //   193: new 152	java/io/DataOutputStream
    //   196: dup
    //   197: aload 5
    //   199: invokevirtual 156	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   202: invokespecial 159	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   205: astore 20
    //   207: aload 20
    //   209: aload_3
    //   210: invokevirtual 160	org/json/JSONArray:toString	()Ljava/lang/String;
    //   213: ldc 18
    //   215: invokevirtual 164	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   218: invokevirtual 170	java/io/OutputStream:write	([B)V
    //   221: aload 20
    //   223: invokevirtual 173	java/io/OutputStream:close	()V
    //   226: aload 20
    //   228: astore 6
    //   230: aload 5
    //   232: invokevirtual 176	java/net/HttpURLConnection:getResponseCode	()I
    //   235: istore 26
    //   237: iload 26
    //   239: sipush 200
    //   242: if_icmpne +248 -> 490
    //   245: iconst_1
    //   246: invokestatic 29	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   249: invokestatic 247	com/ja/sdk/framework/PageAccessDataHandle:setSendFlag	(Ljava/lang/Boolean;)V
    //   252: iconst_1
    //   253: invokestatic 29	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   256: invokestatic 250	com/ja/sdk/net/HttpUtils:setPageVisitSendNetWorkStatus	(Ljava/lang/Boolean;)V
    //   259: aload 4
    //   261: ifnull +11 -> 272
    //   264: aload 4
    //   266: aload_3
    //   267: invokeinterface 183 2 0
    //   272: ldc 13
    //   274: new 122	java/lang/StringBuilder
    //   277: dup
    //   278: ldc 185
    //   280: invokespecial 126	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   283: iload 26
    //   285: invokevirtual 188	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   288: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   291: invokestatic 191	com/ja/sdk/utils/LogUtil:logW	(Ljava/lang/String;Ljava/lang/String;)I
    //   294: pop
    //   295: ldc 13
    //   297: new 122	java/lang/StringBuilder
    //   300: dup
    //   301: ldc 193
    //   303: invokespecial 126	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   306: aload_1
    //   307: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   310: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   313: invokestatic 191	com/ja/sdk/utils/LogUtil:logW	(Ljava/lang/String;Ljava/lang/String;)I
    //   316: pop
    //   317: ldc 13
    //   319: ldc 195
    //   321: invokestatic 191	com/ja/sdk/utils/LogUtil:logW	(Ljava/lang/String;Ljava/lang/String;)I
    //   324: pop
    //   325: ldc 13
    //   327: ldc 197
    //   329: invokestatic 139	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   332: pop
    //   333: aload 6
    //   335: ifnull +8 -> 343
    //   338: aload 6
    //   340: invokevirtual 173	java/io/OutputStream:close	()V
    //   343: aload 5
    //   345: ifnull +17 -> 362
    //   348: aload 5
    //   350: invokevirtual 200	java/net/HttpURLConnection:disconnect	()V
    //   353: ldc2_w 201
    //   356: invokestatic 208	java/lang/Thread:sleep	(J)V
    //   359: invokestatic 213	java/lang/System:gc	()V
    //   362: ldc 2
    //   364: monitorexit
    //   365: return
    //   366: aload 12
    //   368: invokeinterface 217 1 0
    //   373: checkcast 58	java/lang/String
    //   376: astore 13
    //   378: ldc 13
    //   380: new 122	java/lang/StringBuilder
    //   383: dup
    //   384: aload 13
    //   386: invokestatic 125	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   389: invokespecial 126	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   392: ldc 219
    //   394: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   397: aload 5
    //   399: aload 13
    //   401: invokevirtual 223	java/net/HttpURLConnection:getRequestProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   404: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   407: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   410: invokestatic 139	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   413: pop
    //   414: goto -307 -> 107
    //   417: astore 7
    //   419: ldc 13
    //   421: ldc 197
    //   423: invokestatic 139	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   426: pop
    //   427: aload 6
    //   429: ifnull +8 -> 437
    //   432: aload 6
    //   434: invokevirtual 173	java/io/OutputStream:close	()V
    //   437: aload 5
    //   439: ifnull +17 -> 456
    //   442: aload 5
    //   444: invokevirtual 200	java/net/HttpURLConnection:disconnect	()V
    //   447: ldc2_w 201
    //   450: invokestatic 208	java/lang/Thread:sleep	(J)V
    //   453: invokestatic 213	java/lang/System:gc	()V
    //   456: aload 7
    //   458: athrow
    //   459: astore 8
    //   461: ldc 2
    //   463: monitorexit
    //   464: aload 8
    //   466: athrow
    //   467: astore 16
    //   469: iconst_0
    //   470: invokestatic 29	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   473: invokestatic 250	com/ja/sdk/net/HttpUtils:setPageVisitSendNetWorkStatus	(Ljava/lang/Boolean;)V
    //   476: ldc 225
    //   478: aload 16
    //   480: invokevirtual 226	java/io/IOException:toString	()Ljava/lang/String;
    //   483: invokestatic 139	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   486: pop
    //   487: goto -340 -> 147
    //   490: ldc 13
    //   492: new 122	java/lang/StringBuilder
    //   495: dup
    //   496: ldc 185
    //   498: invokespecial 126	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   501: iload 26
    //   503: invokevirtual 188	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   506: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   509: invokestatic 139	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   512: pop
    //   513: ldc 13
    //   515: new 122	java/lang/StringBuilder
    //   518: dup
    //   519: ldc 193
    //   521: invokespecial 126	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   524: aload_1
    //   525: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   528: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   531: invokestatic 139	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   534: pop
    //   535: ldc 13
    //   537: ldc 195
    //   539: invokestatic 139	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   542: pop
    //   543: aload 4
    //   545: ifnull +19 -> 564
    //   548: iconst_0
    //   549: invokestatic 29	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   552: invokestatic 247	com/ja/sdk/framework/PageAccessDataHandle:setSendFlag	(Ljava/lang/Boolean;)V
    //   555: aload 4
    //   557: aload_2
    //   558: aload_3
    //   559: invokeinterface 229 3 0
    //   564: ldc 13
    //   566: ldc 197
    //   568: invokestatic 139	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   571: pop
    //   572: aload 6
    //   574: ifnull +8 -> 582
    //   577: aload 6
    //   579: invokevirtual 173	java/io/OutputStream:close	()V
    //   582: aload 5
    //   584: ifnull -222 -> 362
    //   587: aload 5
    //   589: invokevirtual 200	java/net/HttpURLConnection:disconnect	()V
    //   592: ldc2_w 201
    //   595: invokestatic 208	java/lang/Thread:sleep	(J)V
    //   598: invokestatic 213	java/lang/System:gc	()V
    //   601: goto -239 -> 362
    //   604: astore 24
    //   606: goto -244 -> 362
    //   609: astore 21
    //   611: ldc 13
    //   613: ldc 252
    //   615: invokestatic 139	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   618: pop
    //   619: goto -76 -> 543
    //   622: astore 32
    //   624: goto -281 -> 343
    //   627: astore 11
    //   629: goto -192 -> 437
    //   632: astore 25
    //   634: goto -52 -> 582
    //   637: astore 10
    //   639: goto -183 -> 456
    //   642: astore 7
    //   644: aload 20
    //   646: astore 6
    //   648: goto -229 -> 419
    //   651: astore 31
    //   653: goto -291 -> 362
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	656	0	paramContext	Context
    //   0	656	1	paramString1	String
    //   0	656	2	paramString2	String
    //   0	656	3	paramJSONArray	JSONArray
    //   0	656	4	paramHttpCallBackListener	HttpCallBackListener
    //   4	584	5	localHttpURLConnection	java.net.HttpURLConnection
    //   7	640	6	localObject1	Object
    //   417	40	7	localObject2	Object
    //   642	1	7	localObject3	Object
    //   459	6	8	localObject4	Object
    //   637	1	10	localException1	Exception
    //   627	1	11	localException2	Exception
    //   105	262	12	localIterator	java.util.Iterator
    //   376	24	13	str	String
    //   467	12	16	localIOException1	java.io.IOException
    //   183	6	19	i	int
    //   205	440	20	localDataOutputStream	java.io.DataOutputStream
    //   609	1	21	localIOException2	java.io.IOException
    //   604	1	24	localException3	Exception
    //   632	1	25	localException4	Exception
    //   235	267	26	j	int
    //   651	1	31	localException5	Exception
    //   622	1	32	localException6	Exception
    // Exception table:
    //   from	to	target	type
    //   14	23	417	finally
    //   23	107	417	finally
    //   107	142	417	finally
    //   142	147	417	finally
    //   147	172	417	finally
    //   179	185	417	finally
    //   193	207	417	finally
    //   230	237	417	finally
    //   245	259	417	finally
    //   264	272	417	finally
    //   272	325	417	finally
    //   366	414	417	finally
    //   469	487	417	finally
    //   490	543	417	finally
    //   548	564	417	finally
    //   611	619	417	finally
    //   325	333	459	finally
    //   338	343	459	finally
    //   348	362	459	finally
    //   419	427	459	finally
    //   432	437	459	finally
    //   442	456	459	finally
    //   456	459	459	finally
    //   564	572	459	finally
    //   577	582	459	finally
    //   587	601	459	finally
    //   142	147	467	java/io/IOException
    //   587	601	604	java/lang/Exception
    //   230	237	609	java/io/IOException
    //   245	259	609	java/io/IOException
    //   264	272	609	java/io/IOException
    //   272	325	609	java/io/IOException
    //   490	543	609	java/io/IOException
    //   338	343	622	java/lang/Exception
    //   432	437	627	java/lang/Exception
    //   577	582	632	java/lang/Exception
    //   442	456	637	java/lang/Exception
    //   207	226	642	finally
    //   348	362	651	java/lang/Exception
  }
  
  public static Boolean getExceptionSendNetWorkStatus()
  {
    try
    {
      Boolean localBoolean = isNetWorkExceptionOk;
      return localBoolean;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static Boolean getPageVisitSendNetWorkStatus()
  {
    try
    {
      Boolean localBoolean = isNetWorkPageVisitOk;
      return localBoolean;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static void postException(Context paramContext, String paramString, JSONArray paramJSONArray, HttpCallBackListener paramHttpCallBackListener)
    throws Exception
  {
    for (;;)
    {
      try
      {
        if (Constants.GZIP_SEND.booleanValue())
        {
          doHttpGzip(paramContext, "POST", paramString, paramJSONArray, paramHttpCallBackListener);
          return;
        }
        doHttpException(paramContext, "POST", paramString, paramJSONArray, paramHttpCallBackListener);
        continue;
      }
      catch (Throwable localThrowable)
      {
        LogUtil.logException("HttpUtils", localThrowable);
        if (Constants.GZIP_SEND.booleanValue())
        {
          doHttpGzip(paramContext, "POST", paramString, paramJSONArray, paramHttpCallBackListener);
          continue;
        }
      }
      finally {}
      doHttpException(paramContext, "POST", paramString, paramJSONArray, paramHttpCallBackListener);
    }
  }
  
  public static void postPageVisit(Context paramContext, String paramString, JSONArray paramJSONArray, HttpCallBackListener paramHttpCallBackListener)
    throws Exception
  {
    for (;;)
    {
      try
      {
        if (Constants.GZIP_SEND.booleanValue())
        {
          doHttpGzip(paramContext, "POST", paramString, paramJSONArray, paramHttpCallBackListener);
          return;
        }
        doHttpPageVisit(paramContext, "POST", paramString, paramJSONArray, paramHttpCallBackListener);
        continue;
      }
      catch (Throwable localThrowable)
      {
        LogUtil.logException("HttpUtils", localThrowable);
        if (Constants.GZIP_SEND.booleanValue())
        {
          doHttpGzip(paramContext, "POST", paramString, paramJSONArray, paramHttpCallBackListener);
          continue;
        }
      }
      finally {}
      doHttpPageVisit(paramContext, "POST", paramString, paramJSONArray, paramHttpCallBackListener);
    }
  }
  
  public static void setExceptionSendNetWorkStatus(Boolean paramBoolean)
  {
    try
    {
      isNetWorkExceptionOk = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static void setPageVisitSendNetWorkStatus(Boolean paramBoolean)
  {
    try
    {
      isNetWorkPageVisitOk = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.sdk.net.HttpUtils
 * JD-Core Version:    0.7.0.1
 */