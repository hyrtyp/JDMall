package com.ja.analytics.net;

import android.content.Context;
import android.util.Log;
import com.ja.analytics.constant.Constants;
import com.ja.analytics.logevent.EventLog;
import com.ja.analytics.utils.DevicesUtils;
import com.ja.analytics.utils.LogUtil;
import com.ja.analytics.utils.ManifestPackageUtils;
import com.ja.analytics.utils.SessionStatic;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class HttpUtils
{
  private static final int OK = 200;
  private static final String POST = "POST";
  private static final String TAG = HttpUtils.class.getName();
  private static final int TIME_OUT = 30000;
  private static final String UTF8 = "UTF-8";
  private static int mCrashNetworkStatus = 65535;
  private static int mEventNetworkStatus = 65535;
  
  /* Error */
  private static void doHttpCrash(Context paramContext, String paramString1, String paramString2, JSONArray paramJSONArray, HttpCallBackListener paramHttpCallBackListener)
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
    //   11: ifnull +34 -> 45
    //   14: new 44	org/json/JSONObject
    //   17: dup
    //   18: invokespecial 45	org/json/JSONObject:<init>	()V
    //   21: astore 42
    //   23: aload 42
    //   25: ldc 47
    //   27: aload_3
    //   28: invokevirtual 52	org/json/JSONArray:toString	()Ljava/lang/String;
    //   31: invokevirtual 56	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   34: pop
    //   35: aload 4
    //   37: aload_2
    //   38: aload 42
    //   40: invokeinterface 62 3 0
    //   45: iconst_0
    //   46: invokestatic 68	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   49: invokestatic 74	com/ja/analytics/framework/CrashLogSend:setSendFlag	(Ljava/lang/Boolean;)V
    //   52: aload_0
    //   53: new 76	java/net/URL
    //   56: dup
    //   57: aload_2
    //   58: invokevirtual 79	java/lang/String:toString	()Ljava/lang/String;
    //   61: invokespecial 82	java/net/URL:<init>	(Ljava/lang/String;)V
    //   64: invokestatic 88	com/ja/analytics/utils/NetUtils:openConncetion	(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    //   67: astore 5
    //   69: aload 5
    //   71: iconst_1
    //   72: invokevirtual 94	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   75: aload 5
    //   77: iconst_1
    //   78: invokevirtual 97	java/net/HttpURLConnection:setDoInput	(Z)V
    //   81: aload 5
    //   83: aload_1
    //   84: invokevirtual 100	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   87: aload 5
    //   89: ldc 102
    //   91: ldc 104
    //   93: invokevirtual 108	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   96: aload 5
    //   98: sipush 30000
    //   101: invokevirtual 112	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   104: aload 5
    //   106: sipush 30000
    //   109: invokevirtual 115	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   112: aload 5
    //   114: invokevirtual 119	java/net/HttpURLConnection:getRequestProperties	()Ljava/util/Map;
    //   117: invokeinterface 125 1 0
    //   122: invokeinterface 131 1 0
    //   127: astore 12
    //   129: aload 12
    //   131: invokeinterface 137 1 0
    //   136: istore 13
    //   138: aconst_null
    //   139: astore 6
    //   141: iload 13
    //   143: ifne +327 -> 470
    //   146: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   149: new 139	java/lang/StringBuilder
    //   152: dup
    //   153: aload_1
    //   154: invokestatic 142	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   157: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   160: ldc 145
    //   162: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   168: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   171: pop
    //   172: aload 5
    //   174: invokevirtual 159	java/net/HttpURLConnection:connect	()V
    //   177: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   180: new 139	java/lang/StringBuilder
    //   183: dup
    //   184: aload_1
    //   185: invokestatic 142	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   188: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   191: ldc 161
    //   193: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   199: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   202: pop
    //   203: aconst_null
    //   204: astore 6
    //   206: aload_3
    //   207: ifnull +62 -> 269
    //   210: aload_3
    //   211: invokevirtual 165	org/json/JSONArray:length	()I
    //   214: istore 18
    //   216: aconst_null
    //   217: astore 6
    //   219: iload 18
    //   221: ifle +48 -> 269
    //   224: new 167	java/io/DataOutputStream
    //   227: dup
    //   228: aload 5
    //   230: invokevirtual 171	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   233: invokespecial 174	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   236: astore 19
    //   238: aload 19
    //   240: aload_3
    //   241: invokevirtual 52	org/json/JSONArray:toString	()Ljava/lang/String;
    //   244: ldc 16
    //   246: invokestatic 180	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   249: ldc 16
    //   251: invokevirtual 184	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   254: invokestatic 190	com/ja/analytics/utils/StrUtil:compress	([B)[B
    //   257: invokevirtual 196	java/io/OutputStream:write	([B)V
    //   260: aload 19
    //   262: invokevirtual 199	java/io/OutputStream:close	()V
    //   265: aload 19
    //   267: astore 6
    //   269: aload 5
    //   271: invokevirtual 202	java/net/HttpURLConnection:getResponseCode	()I
    //   274: istore 27
    //   276: iload 27
    //   278: sipush 200
    //   281: if_icmpne +331 -> 612
    //   284: iconst_1
    //   285: invokestatic 68	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   288: invokestatic 74	com/ja/analytics/framework/CrashLogSend:setSendFlag	(Ljava/lang/Boolean;)V
    //   291: sipush 4369
    //   294: invokestatic 205	com/ja/analytics/net/HttpUtils:setCrashNetworkStatus	(I)V
    //   297: aload 4
    //   299: ifnull +33 -> 332
    //   302: new 44	org/json/JSONObject
    //   305: dup
    //   306: invokespecial 45	org/json/JSONObject:<init>	()V
    //   309: astore 28
    //   311: aload 28
    //   313: ldc 47
    //   315: aload_3
    //   316: invokevirtual 52	org/json/JSONArray:toString	()Ljava/lang/String;
    //   319: invokevirtual 56	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   322: pop
    //   323: aload 4
    //   325: aload 28
    //   327: invokeinterface 209 2 0
    //   332: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   335: new 139	java/lang/StringBuilder
    //   338: dup
    //   339: ldc 211
    //   341: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   344: iload 27
    //   346: invokevirtual 214	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   349: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   352: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   355: pop
    //   356: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   359: new 139	java/lang/StringBuilder
    //   362: dup
    //   363: ldc 216
    //   365: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   368: aload_1
    //   369: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   372: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   375: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   378: pop
    //   379: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   382: new 139	java/lang/StringBuilder
    //   385: dup
    //   386: ldc 218
    //   388: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   391: aload_2
    //   392: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   395: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   398: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   401: pop
    //   402: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   405: new 139	java/lang/StringBuilder
    //   408: dup
    //   409: ldc 220
    //   411: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   414: aload_3
    //   415: invokevirtual 52	org/json/JSONArray:toString	()Ljava/lang/String;
    //   418: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   421: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   424: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   427: pop
    //   428: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   431: ldc 222
    //   433: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   436: pop
    //   437: aload 6
    //   439: ifnull +8 -> 447
    //   442: aload 6
    //   444: invokevirtual 199	java/io/OutputStream:close	()V
    //   447: aload 5
    //   449: ifnull +17 -> 466
    //   452: aload 5
    //   454: invokevirtual 225	java/net/HttpURLConnection:disconnect	()V
    //   457: ldc2_w 226
    //   460: invokestatic 233	java/lang/Thread:sleep	(J)V
    //   463: invokestatic 238	java/lang/System:gc	()V
    //   466: ldc 2
    //   468: monitorexit
    //   469: return
    //   470: aload 12
    //   472: invokeinterface 242 1 0
    //   477: checkcast 78	java/lang/String
    //   480: astore 40
    //   482: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   485: new 139	java/lang/StringBuilder
    //   488: dup
    //   489: aload 40
    //   491: invokestatic 142	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   494: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   497: ldc 244
    //   499: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   502: aload 5
    //   504: aload 40
    //   506: invokevirtual 248	java/net/HttpURLConnection:getRequestProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   509: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   512: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   515: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   518: pop
    //   519: goto -390 -> 129
    //   522: astore 7
    //   524: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   527: ldc 222
    //   529: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   532: pop
    //   533: aload 6
    //   535: ifnull +8 -> 543
    //   538: aload 6
    //   540: invokevirtual 199	java/io/OutputStream:close	()V
    //   543: aload 5
    //   545: ifnull +17 -> 562
    //   548: aload 5
    //   550: invokevirtual 225	java/net/HttpURLConnection:disconnect	()V
    //   553: ldc2_w 226
    //   556: invokestatic 233	java/lang/Thread:sleep	(J)V
    //   559: invokestatic 238	java/lang/System:gc	()V
    //   562: aload 7
    //   564: athrow
    //   565: astore 8
    //   567: ldc 2
    //   569: monitorexit
    //   570: aload 8
    //   572: athrow
    //   573: astore 15
    //   575: iconst_0
    //   576: invokestatic 205	com/ja/analytics/net/HttpUtils:setCrashNetworkStatus	(I)V
    //   579: new 139	java/lang/StringBuilder
    //   582: dup
    //   583: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   586: invokestatic 142	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   589: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   592: ldc 250
    //   594: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   597: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   600: aload 15
    //   602: invokevirtual 251	java/io/IOException:toString	()Ljava/lang/String;
    //   605: invokestatic 254	com/ja/analytics/utils/LogUtil:logE	(Ljava/lang/String;Ljava/lang/String;)I
    //   608: pop
    //   609: goto -432 -> 177
    //   612: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   615: new 139	java/lang/StringBuilder
    //   618: dup
    //   619: ldc 211
    //   621: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   624: iload 27
    //   626: invokevirtual 214	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   629: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   632: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   635: pop
    //   636: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   639: new 139	java/lang/StringBuilder
    //   642: dup
    //   643: ldc 216
    //   645: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   648: aload_1
    //   649: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   652: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   655: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   658: pop
    //   659: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   662: new 139	java/lang/StringBuilder
    //   665: dup
    //   666: ldc 218
    //   668: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   671: aload_2
    //   672: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   675: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   678: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   681: pop
    //   682: aload 4
    //   684: ifnull +41 -> 725
    //   687: iconst_0
    //   688: invokestatic 68	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   691: invokestatic 74	com/ja/analytics/framework/CrashLogSend:setSendFlag	(Ljava/lang/Boolean;)V
    //   694: new 44	org/json/JSONObject
    //   697: dup
    //   698: invokespecial 45	org/json/JSONObject:<init>	()V
    //   701: astore 25
    //   703: aload 25
    //   705: ldc 47
    //   707: aload_3
    //   708: invokevirtual 52	org/json/JSONArray:toString	()Ljava/lang/String;
    //   711: invokevirtual 56	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   714: pop
    //   715: aload 4
    //   717: aload_2
    //   718: aload 25
    //   720: invokeinterface 257 3 0
    //   725: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   728: ldc 222
    //   730: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   733: pop
    //   734: aload 6
    //   736: ifnull +8 -> 744
    //   739: aload 6
    //   741: invokevirtual 199	java/io/OutputStream:close	()V
    //   744: aload 5
    //   746: ifnull -280 -> 466
    //   749: aload 5
    //   751: invokevirtual 225	java/net/HttpURLConnection:disconnect	()V
    //   754: ldc2_w 226
    //   757: invokestatic 233	java/lang/Thread:sleep	(J)V
    //   760: invokestatic 238	java/lang/System:gc	()V
    //   763: goto -297 -> 466
    //   766: astore 23
    //   768: goto -302 -> 466
    //   771: astore 20
    //   773: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   776: ldc_w 259
    //   779: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   782: pop
    //   783: goto -101 -> 682
    //   786: astore 36
    //   788: goto -341 -> 447
    //   791: astore 11
    //   793: goto -250 -> 543
    //   796: astore 24
    //   798: goto -54 -> 744
    //   801: astore 10
    //   803: goto -241 -> 562
    //   806: astore 7
    //   808: aload 19
    //   810: astore 6
    //   812: goto -288 -> 524
    //   815: astore 35
    //   817: goto -351 -> 466
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	820	0	paramContext	Context
    //   0	820	1	paramString1	String
    //   0	820	2	paramString2	String
    //   0	820	3	paramJSONArray	JSONArray
    //   0	820	4	paramHttpCallBackListener	HttpCallBackListener
    //   4	746	5	localHttpURLConnection	java.net.HttpURLConnection
    //   7	804	6	localObject1	Object
    //   522	41	7	localObject2	Object
    //   806	1	7	localObject3	Object
    //   565	6	8	localObject4	Object
    //   801	1	10	localException1	Exception
    //   791	1	11	localException2	Exception
    //   127	344	12	localIterator	java.util.Iterator
    //   136	6	13	bool	boolean
    //   573	28	15	localIOException1	IOException
    //   214	6	18	i	int
    //   236	573	19	localDataOutputStream	java.io.DataOutputStream
    //   771	1	20	localIOException2	IOException
    //   766	1	23	localException3	Exception
    //   796	1	24	localException4	Exception
    //   701	18	25	localJSONObject1	JSONObject
    //   274	351	27	j	int
    //   309	17	28	localJSONObject2	JSONObject
    //   815	1	35	localException5	Exception
    //   786	1	36	localException6	Exception
    //   480	25	40	str	String
    //   21	18	42	localJSONObject3	JSONObject
    // Exception table:
    //   from	to	target	type
    //   14	45	522	finally
    //   45	129	522	finally
    //   129	138	522	finally
    //   146	172	522	finally
    //   172	177	522	finally
    //   177	203	522	finally
    //   210	216	522	finally
    //   224	238	522	finally
    //   269	276	522	finally
    //   284	297	522	finally
    //   302	332	522	finally
    //   332	428	522	finally
    //   470	519	522	finally
    //   575	609	522	finally
    //   612	682	522	finally
    //   687	725	522	finally
    //   773	783	522	finally
    //   428	437	565	finally
    //   442	447	565	finally
    //   452	466	565	finally
    //   524	533	565	finally
    //   538	543	565	finally
    //   548	562	565	finally
    //   562	565	565	finally
    //   725	734	565	finally
    //   739	744	565	finally
    //   749	763	565	finally
    //   172	177	573	java/io/IOException
    //   749	763	766	java/lang/Exception
    //   269	276	771	java/io/IOException
    //   284	297	771	java/io/IOException
    //   302	332	771	java/io/IOException
    //   332	428	771	java/io/IOException
    //   612	682	771	java/io/IOException
    //   442	447	786	java/lang/Exception
    //   538	543	791	java/lang/Exception
    //   739	744	796	java/lang/Exception
    //   548	562	801	java/lang/Exception
    //   238	265	806	finally
    //   452	466	815	java/lang/Exception
  }
  
  /* Error */
  private static void doHttpEvent(Context paramContext, String paramString1, String paramString2, JSONObject paramJSONObject, HttpCallBackListener paramHttpCallBackListener)
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
    //   11: ifnull +34 -> 45
    //   14: new 44	org/json/JSONObject
    //   17: dup
    //   18: invokespecial 45	org/json/JSONObject:<init>	()V
    //   21: astore 42
    //   23: aload 42
    //   25: ldc 47
    //   27: aload_3
    //   28: invokevirtual 262	org/json/JSONObject:toString	()Ljava/lang/String;
    //   31: invokevirtual 56	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   34: pop
    //   35: aload 4
    //   37: aload_2
    //   38: aload 42
    //   40: invokeinterface 62 3 0
    //   45: iconst_0
    //   46: invokestatic 68	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   49: invokestatic 265	com/ja/analytics/framework/EventLogSend:setSendFlag	(Ljava/lang/Boolean;)V
    //   52: aload_0
    //   53: new 76	java/net/URL
    //   56: dup
    //   57: aload_2
    //   58: invokevirtual 79	java/lang/String:toString	()Ljava/lang/String;
    //   61: invokespecial 82	java/net/URL:<init>	(Ljava/lang/String;)V
    //   64: invokestatic 88	com/ja/analytics/utils/NetUtils:openConncetion	(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    //   67: astore 5
    //   69: aload 5
    //   71: iconst_1
    //   72: invokevirtual 94	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   75: aload 5
    //   77: iconst_1
    //   78: invokevirtual 97	java/net/HttpURLConnection:setDoInput	(Z)V
    //   81: aload 5
    //   83: aload_1
    //   84: invokevirtual 100	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   87: aload 5
    //   89: ldc 102
    //   91: ldc_w 267
    //   94: invokevirtual 108	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   97: aload 5
    //   99: sipush 30000
    //   102: invokevirtual 112	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   105: aload 5
    //   107: sipush 30000
    //   110: invokevirtual 115	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   113: aload 5
    //   115: invokevirtual 119	java/net/HttpURLConnection:getRequestProperties	()Ljava/util/Map;
    //   118: invokeinterface 125 1 0
    //   123: invokeinterface 131 1 0
    //   128: astore 12
    //   130: aload 12
    //   132: invokeinterface 137 1 0
    //   137: istore 13
    //   139: aconst_null
    //   140: astore 6
    //   142: iload 13
    //   144: ifne +327 -> 471
    //   147: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   150: new 139	java/lang/StringBuilder
    //   153: dup
    //   154: aload_1
    //   155: invokestatic 142	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   158: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   161: ldc 145
    //   163: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   166: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   169: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   172: pop
    //   173: aload 5
    //   175: invokevirtual 159	java/net/HttpURLConnection:connect	()V
    //   178: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   181: new 139	java/lang/StringBuilder
    //   184: dup
    //   185: aload_1
    //   186: invokestatic 142	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   189: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   192: ldc 161
    //   194: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   200: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   203: pop
    //   204: aconst_null
    //   205: astore 6
    //   207: aload_3
    //   208: ifnull +62 -> 270
    //   211: aload_3
    //   212: invokevirtual 268	org/json/JSONObject:length	()I
    //   215: istore 18
    //   217: aconst_null
    //   218: astore 6
    //   220: iload 18
    //   222: ifle +48 -> 270
    //   225: new 167	java/io/DataOutputStream
    //   228: dup
    //   229: aload 5
    //   231: invokevirtual 171	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   234: invokespecial 174	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   237: astore 19
    //   239: aload 19
    //   241: aload_3
    //   242: invokevirtual 262	org/json/JSONObject:toString	()Ljava/lang/String;
    //   245: ldc 16
    //   247: invokestatic 180	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   250: ldc 16
    //   252: invokevirtual 184	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   255: invokestatic 190	com/ja/analytics/utils/StrUtil:compress	([B)[B
    //   258: invokevirtual 196	java/io/OutputStream:write	([B)V
    //   261: aload 19
    //   263: invokevirtual 199	java/io/OutputStream:close	()V
    //   266: aload 19
    //   268: astore 6
    //   270: aload 5
    //   272: invokevirtual 202	java/net/HttpURLConnection:getResponseCode	()I
    //   275: istore 27
    //   277: iload 27
    //   279: sipush 200
    //   282: if_icmpne +331 -> 613
    //   285: iconst_1
    //   286: invokestatic 68	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   289: invokestatic 265	com/ja/analytics/framework/EventLogSend:setSendFlag	(Ljava/lang/Boolean;)V
    //   292: sipush 4369
    //   295: invokestatic 271	com/ja/analytics/net/HttpUtils:setEventNetworkStatus	(I)V
    //   298: aload 4
    //   300: ifnull +33 -> 333
    //   303: new 44	org/json/JSONObject
    //   306: dup
    //   307: invokespecial 45	org/json/JSONObject:<init>	()V
    //   310: astore 28
    //   312: aload 28
    //   314: ldc 47
    //   316: aload_3
    //   317: invokevirtual 262	org/json/JSONObject:toString	()Ljava/lang/String;
    //   320: invokevirtual 56	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   323: pop
    //   324: aload 4
    //   326: aload 28
    //   328: invokeinterface 209 2 0
    //   333: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   336: new 139	java/lang/StringBuilder
    //   339: dup
    //   340: ldc 211
    //   342: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   345: iload 27
    //   347: invokevirtual 214	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   350: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   353: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   356: pop
    //   357: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   360: new 139	java/lang/StringBuilder
    //   363: dup
    //   364: ldc 216
    //   366: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   369: aload_1
    //   370: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   373: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   376: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   379: pop
    //   380: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   383: new 139	java/lang/StringBuilder
    //   386: dup
    //   387: ldc 218
    //   389: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   392: aload_2
    //   393: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   396: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   399: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   402: pop
    //   403: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   406: new 139	java/lang/StringBuilder
    //   409: dup
    //   410: ldc 220
    //   412: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   415: aload_3
    //   416: invokevirtual 262	org/json/JSONObject:toString	()Ljava/lang/String;
    //   419: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   422: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   425: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   428: pop
    //   429: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   432: ldc 222
    //   434: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   437: pop
    //   438: aload 6
    //   440: ifnull +8 -> 448
    //   443: aload 6
    //   445: invokevirtual 199	java/io/OutputStream:close	()V
    //   448: aload 5
    //   450: ifnull +17 -> 467
    //   453: aload 5
    //   455: invokevirtual 225	java/net/HttpURLConnection:disconnect	()V
    //   458: ldc2_w 226
    //   461: invokestatic 233	java/lang/Thread:sleep	(J)V
    //   464: invokestatic 238	java/lang/System:gc	()V
    //   467: ldc 2
    //   469: monitorexit
    //   470: return
    //   471: aload 12
    //   473: invokeinterface 242 1 0
    //   478: checkcast 78	java/lang/String
    //   481: astore 40
    //   483: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   486: new 139	java/lang/StringBuilder
    //   489: dup
    //   490: aload 40
    //   492: invokestatic 142	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   495: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   498: ldc 244
    //   500: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   503: aload 5
    //   505: aload 40
    //   507: invokevirtual 248	java/net/HttpURLConnection:getRequestProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   510: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   513: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   516: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   519: pop
    //   520: goto -390 -> 130
    //   523: astore 7
    //   525: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   528: ldc 222
    //   530: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   533: pop
    //   534: aload 6
    //   536: ifnull +8 -> 544
    //   539: aload 6
    //   541: invokevirtual 199	java/io/OutputStream:close	()V
    //   544: aload 5
    //   546: ifnull +17 -> 563
    //   549: aload 5
    //   551: invokevirtual 225	java/net/HttpURLConnection:disconnect	()V
    //   554: ldc2_w 226
    //   557: invokestatic 233	java/lang/Thread:sleep	(J)V
    //   560: invokestatic 238	java/lang/System:gc	()V
    //   563: aload 7
    //   565: athrow
    //   566: astore 8
    //   568: ldc 2
    //   570: monitorexit
    //   571: aload 8
    //   573: athrow
    //   574: astore 15
    //   576: iconst_0
    //   577: invokestatic 271	com/ja/analytics/net/HttpUtils:setEventNetworkStatus	(I)V
    //   580: new 139	java/lang/StringBuilder
    //   583: dup
    //   584: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   587: invokestatic 142	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   590: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   593: ldc 250
    //   595: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   598: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   601: aload 15
    //   603: invokevirtual 251	java/io/IOException:toString	()Ljava/lang/String;
    //   606: invokestatic 254	com/ja/analytics/utils/LogUtil:logE	(Ljava/lang/String;Ljava/lang/String;)I
    //   609: pop
    //   610: goto -432 -> 178
    //   613: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   616: new 139	java/lang/StringBuilder
    //   619: dup
    //   620: ldc 211
    //   622: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   625: iload 27
    //   627: invokevirtual 214	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   630: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   633: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   636: pop
    //   637: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   640: new 139	java/lang/StringBuilder
    //   643: dup
    //   644: ldc 216
    //   646: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   649: aload_1
    //   650: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   653: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   656: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   659: pop
    //   660: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   663: new 139	java/lang/StringBuilder
    //   666: dup
    //   667: ldc 218
    //   669: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   672: aload_2
    //   673: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   676: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   679: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   682: pop
    //   683: aload 4
    //   685: ifnull +41 -> 726
    //   688: iconst_0
    //   689: invokestatic 68	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   692: invokestatic 265	com/ja/analytics/framework/EventLogSend:setSendFlag	(Ljava/lang/Boolean;)V
    //   695: new 44	org/json/JSONObject
    //   698: dup
    //   699: invokespecial 45	org/json/JSONObject:<init>	()V
    //   702: astore 25
    //   704: aload 25
    //   706: ldc 47
    //   708: aload_3
    //   709: invokevirtual 262	org/json/JSONObject:toString	()Ljava/lang/String;
    //   712: invokevirtual 56	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   715: pop
    //   716: aload 4
    //   718: aload_2
    //   719: aload 25
    //   721: invokeinterface 257 3 0
    //   726: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   729: ldc 222
    //   731: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   734: pop
    //   735: aload 6
    //   737: ifnull +8 -> 745
    //   740: aload 6
    //   742: invokevirtual 199	java/io/OutputStream:close	()V
    //   745: aload 5
    //   747: ifnull -280 -> 467
    //   750: aload 5
    //   752: invokevirtual 225	java/net/HttpURLConnection:disconnect	()V
    //   755: ldc2_w 226
    //   758: invokestatic 233	java/lang/Thread:sleep	(J)V
    //   761: invokestatic 238	java/lang/System:gc	()V
    //   764: goto -297 -> 467
    //   767: astore 23
    //   769: goto -302 -> 467
    //   772: astore 20
    //   774: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   777: ldc_w 273
    //   780: invokestatic 254	com/ja/analytics/utils/LogUtil:logE	(Ljava/lang/String;Ljava/lang/String;)I
    //   783: pop
    //   784: goto -101 -> 683
    //   787: astore 36
    //   789: goto -341 -> 448
    //   792: astore 11
    //   794: goto -250 -> 544
    //   797: astore 24
    //   799: goto -54 -> 745
    //   802: astore 10
    //   804: goto -241 -> 563
    //   807: astore 7
    //   809: aload 19
    //   811: astore 6
    //   813: goto -288 -> 525
    //   816: astore 35
    //   818: goto -351 -> 467
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	821	0	paramContext	Context
    //   0	821	1	paramString1	String
    //   0	821	2	paramString2	String
    //   0	821	3	paramJSONObject	JSONObject
    //   0	821	4	paramHttpCallBackListener	HttpCallBackListener
    //   4	747	5	localHttpURLConnection	java.net.HttpURLConnection
    //   7	805	6	localObject1	Object
    //   523	41	7	localObject2	Object
    //   807	1	7	localObject3	Object
    //   566	6	8	localObject4	Object
    //   802	1	10	localException1	Exception
    //   792	1	11	localException2	Exception
    //   128	344	12	localIterator	java.util.Iterator
    //   137	6	13	bool	boolean
    //   574	28	15	localIOException1	IOException
    //   215	6	18	i	int
    //   237	573	19	localDataOutputStream	java.io.DataOutputStream
    //   772	1	20	localIOException2	IOException
    //   767	1	23	localException3	Exception
    //   797	1	24	localException4	Exception
    //   702	18	25	localJSONObject1	JSONObject
    //   275	351	27	j	int
    //   310	17	28	localJSONObject2	JSONObject
    //   816	1	35	localException5	Exception
    //   787	1	36	localException6	Exception
    //   481	25	40	str	String
    //   21	18	42	localJSONObject3	JSONObject
    // Exception table:
    //   from	to	target	type
    //   14	45	523	finally
    //   45	130	523	finally
    //   130	139	523	finally
    //   147	173	523	finally
    //   173	178	523	finally
    //   178	204	523	finally
    //   211	217	523	finally
    //   225	239	523	finally
    //   270	277	523	finally
    //   285	298	523	finally
    //   303	333	523	finally
    //   333	429	523	finally
    //   471	520	523	finally
    //   576	610	523	finally
    //   613	683	523	finally
    //   688	726	523	finally
    //   774	784	523	finally
    //   429	438	566	finally
    //   443	448	566	finally
    //   453	467	566	finally
    //   525	534	566	finally
    //   539	544	566	finally
    //   549	563	566	finally
    //   563	566	566	finally
    //   726	735	566	finally
    //   740	745	566	finally
    //   750	764	566	finally
    //   173	178	574	java/io/IOException
    //   750	764	767	java/lang/Exception
    //   270	277	772	java/io/IOException
    //   285	298	772	java/io/IOException
    //   303	333	772	java/io/IOException
    //   333	429	772	java/io/IOException
    //   613	683	772	java/io/IOException
    //   443	448	787	java/lang/Exception
    //   539	544	792	java/lang/Exception
    //   740	745	797	java/lang/Exception
    //   549	563	802	java/lang/Exception
    //   239	266	807	finally
    //   453	467	816	java/lang/Exception
  }
  
  /* Error */
  public static JSONObject doHttpOnlineConfig(Context paramContext, String paramString1, String paramString2, JSONArray paramJSONArray, HttpCallBackListener paramHttpCallBackListener)
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
    //   11: ifnull +34 -> 45
    //   14: new 44	org/json/JSONObject
    //   17: dup
    //   18: invokespecial 45	org/json/JSONObject:<init>	()V
    //   21: astore 37
    //   23: aload 37
    //   25: ldc 47
    //   27: aload_3
    //   28: invokevirtual 52	org/json/JSONArray:toString	()Ljava/lang/String;
    //   31: invokevirtual 56	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   34: pop
    //   35: aload 4
    //   37: aload_2
    //   38: aload 37
    //   40: invokeinterface 62 3 0
    //   45: aload_0
    //   46: new 76	java/net/URL
    //   49: dup
    //   50: aload_2
    //   51: invokevirtual 79	java/lang/String:toString	()Ljava/lang/String;
    //   54: invokespecial 82	java/net/URL:<init>	(Ljava/lang/String;)V
    //   57: invokestatic 88	com/ja/analytics/utils/NetUtils:openConncetion	(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    //   60: astore 5
    //   62: aload 5
    //   64: iconst_1
    //   65: invokevirtual 94	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   68: aload 5
    //   70: iconst_1
    //   71: invokevirtual 97	java/net/HttpURLConnection:setDoInput	(Z)V
    //   74: aload 5
    //   76: aload_1
    //   77: invokevirtual 100	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   80: aload 5
    //   82: ldc 102
    //   84: ldc 104
    //   86: invokevirtual 108	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   89: aload 5
    //   91: sipush 30000
    //   94: invokevirtual 112	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   97: aload 5
    //   99: sipush 30000
    //   102: invokevirtual 115	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   105: aload 5
    //   107: invokevirtual 119	java/net/HttpURLConnection:getRequestProperties	()Ljava/util/Map;
    //   110: invokeinterface 125 1 0
    //   115: invokeinterface 131 1 0
    //   120: astore 12
    //   122: aload 12
    //   124: invokeinterface 137 1 0
    //   129: istore 13
    //   131: aconst_null
    //   132: astore 6
    //   134: iload 13
    //   136: ifne +197 -> 333
    //   139: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   142: new 139	java/lang/StringBuilder
    //   145: dup
    //   146: aload_1
    //   147: invokestatic 142	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   150: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   153: ldc 145
    //   155: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   161: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   164: pop
    //   165: aload 5
    //   167: invokevirtual 159	java/net/HttpURLConnection:connect	()V
    //   170: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   173: new 139	java/lang/StringBuilder
    //   176: dup
    //   177: aload_1
    //   178: invokestatic 142	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   181: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   184: ldc 161
    //   186: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   192: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   195: pop
    //   196: aconst_null
    //   197: astore 6
    //   199: aload_3
    //   200: ifnull +54 -> 254
    //   203: aload_3
    //   204: invokevirtual 165	org/json/JSONArray:length	()I
    //   207: istore 18
    //   209: aconst_null
    //   210: astore 6
    //   212: iload 18
    //   214: ifle +40 -> 254
    //   217: new 167	java/io/DataOutputStream
    //   220: dup
    //   221: aload 5
    //   223: invokevirtual 171	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   226: invokespecial 174	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   229: astore 19
    //   231: aload 19
    //   233: aload_3
    //   234: invokevirtual 52	org/json/JSONArray:toString	()Ljava/lang/String;
    //   237: ldc 16
    //   239: invokevirtual 184	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   242: invokevirtual 196	java/io/OutputStream:write	([B)V
    //   245: aload 19
    //   247: invokevirtual 199	java/io/OutputStream:close	()V
    //   250: aload 19
    //   252: astore 6
    //   254: aload 5
    //   256: invokevirtual 202	java/net/HttpURLConnection:getResponseCode	()I
    //   259: istore 28
    //   261: iload 28
    //   263: sipush 200
    //   266: if_icmpne +206 -> 472
    //   269: new 44	org/json/JSONObject
    //   272: dup
    //   273: aload 5
    //   275: invokevirtual 279	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   278: ldc 16
    //   280: invokestatic 283	com/ja/analytics/net/HttpUtils:readAsString	(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    //   283: invokespecial 284	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   286: astore 23
    //   288: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   291: ldc_w 286
    //   294: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   297: pop
    //   298: aload 6
    //   300: ifnull +8 -> 308
    //   303: aload 6
    //   305: invokevirtual 199	java/io/OutputStream:close	()V
    //   308: aload 5
    //   310: ifnull +17 -> 327
    //   313: aload 5
    //   315: invokevirtual 225	java/net/HttpURLConnection:disconnect	()V
    //   318: ldc2_w 226
    //   321: invokestatic 233	java/lang/Thread:sleep	(J)V
    //   324: invokestatic 238	java/lang/System:gc	()V
    //   327: ldc 2
    //   329: monitorexit
    //   330: aload 23
    //   332: areturn
    //   333: aload 12
    //   335: invokeinterface 242 1 0
    //   340: checkcast 78	java/lang/String
    //   343: astore 35
    //   345: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   348: new 139	java/lang/StringBuilder
    //   351: dup
    //   352: aload 35
    //   354: invokestatic 142	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   357: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   360: ldc 244
    //   362: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   365: aload 5
    //   367: aload 35
    //   369: invokevirtual 248	java/net/HttpURLConnection:getRequestProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   372: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   375: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   378: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   381: pop
    //   382: goto -260 -> 122
    //   385: astore 7
    //   387: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   390: ldc_w 286
    //   393: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   396: pop
    //   397: aload 6
    //   399: ifnull +8 -> 407
    //   402: aload 6
    //   404: invokevirtual 199	java/io/OutputStream:close	()V
    //   407: aload 5
    //   409: ifnull +17 -> 426
    //   412: aload 5
    //   414: invokevirtual 225	java/net/HttpURLConnection:disconnect	()V
    //   417: ldc2_w 226
    //   420: invokestatic 233	java/lang/Thread:sleep	(J)V
    //   423: invokestatic 238	java/lang/System:gc	()V
    //   426: aload 7
    //   428: athrow
    //   429: astore 8
    //   431: ldc 2
    //   433: monitorexit
    //   434: aload 8
    //   436: athrow
    //   437: astore 15
    //   439: new 139	java/lang/StringBuilder
    //   442: dup
    //   443: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   446: invokestatic 142	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   449: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   452: ldc 250
    //   454: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   457: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   460: aload 15
    //   462: invokevirtual 251	java/io/IOException:toString	()Ljava/lang/String;
    //   465: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   468: pop
    //   469: goto -299 -> 170
    //   472: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   475: new 139	java/lang/StringBuilder
    //   478: dup
    //   479: ldc 211
    //   481: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   484: iload 28
    //   486: invokevirtual 214	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   489: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   492: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   495: pop
    //   496: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   499: new 139	java/lang/StringBuilder
    //   502: dup
    //   503: ldc 216
    //   505: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   508: aload_1
    //   509: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   512: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   515: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   518: pop
    //   519: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   522: new 139	java/lang/StringBuilder
    //   525: dup
    //   526: ldc 218
    //   528: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   531: aload_2
    //   532: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   535: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   538: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   541: pop
    //   542: aload 4
    //   544: ifnull +38 -> 582
    //   547: aload_3
    //   548: ifnull +34 -> 582
    //   551: new 44	org/json/JSONObject
    //   554: dup
    //   555: invokespecial 45	org/json/JSONObject:<init>	()V
    //   558: astore 26
    //   560: aload 26
    //   562: ldc 47
    //   564: aload_3
    //   565: invokevirtual 52	org/json/JSONArray:toString	()Ljava/lang/String;
    //   568: invokevirtual 56	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   571: pop
    //   572: aload 4
    //   574: aload_2
    //   575: aload 26
    //   577: invokeinterface 257 3 0
    //   582: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   585: ldc_w 286
    //   588: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   591: pop
    //   592: aload 6
    //   594: ifnull +8 -> 602
    //   597: aload 6
    //   599: invokevirtual 199	java/io/OutputStream:close	()V
    //   602: aload 5
    //   604: ifnull +17 -> 621
    //   607: aload 5
    //   609: invokevirtual 225	java/net/HttpURLConnection:disconnect	()V
    //   612: ldc2_w 226
    //   615: invokestatic 233	java/lang/Thread:sleep	(J)V
    //   618: invokestatic 238	java/lang/System:gc	()V
    //   621: aconst_null
    //   622: astore 23
    //   624: goto -297 -> 327
    //   627: astore 20
    //   629: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   632: ldc_w 259
    //   635: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   638: pop
    //   639: goto -97 -> 542
    //   642: astore 31
    //   644: goto -336 -> 308
    //   647: astore 11
    //   649: goto -242 -> 407
    //   652: astore 25
    //   654: goto -52 -> 602
    //   657: astore 24
    //   659: goto -38 -> 621
    //   662: astore 10
    //   664: goto -238 -> 426
    //   667: astore 7
    //   669: aload 19
    //   671: astore 6
    //   673: goto -286 -> 387
    //   676: astore 30
    //   678: goto -351 -> 327
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	681	0	paramContext	Context
    //   0	681	1	paramString1	String
    //   0	681	2	paramString2	String
    //   0	681	3	paramJSONArray	JSONArray
    //   0	681	4	paramHttpCallBackListener	HttpCallBackListener
    //   4	604	5	localHttpURLConnection	java.net.HttpURLConnection
    //   7	665	6	localObject1	Object
    //   385	42	7	localObject2	Object
    //   667	1	7	localObject3	Object
    //   429	6	8	localObject4	Object
    //   662	1	10	localException1	Exception
    //   647	1	11	localException2	Exception
    //   120	214	12	localIterator	java.util.Iterator
    //   129	6	13	bool	boolean
    //   437	24	15	localIOException1	IOException
    //   207	6	18	i	int
    //   229	441	19	localDataOutputStream	java.io.DataOutputStream
    //   627	1	20	localIOException2	IOException
    //   286	337	23	localJSONObject1	JSONObject
    //   657	1	24	localException3	Exception
    //   652	1	25	localException4	Exception
    //   558	18	26	localJSONObject2	JSONObject
    //   259	226	28	j	int
    //   676	1	30	localException5	Exception
    //   642	1	31	localException6	Exception
    //   343	25	35	str	String
    //   21	18	37	localJSONObject3	JSONObject
    // Exception table:
    //   from	to	target	type
    //   14	45	385	finally
    //   45	122	385	finally
    //   122	131	385	finally
    //   139	165	385	finally
    //   165	170	385	finally
    //   170	196	385	finally
    //   203	209	385	finally
    //   217	231	385	finally
    //   254	261	385	finally
    //   269	288	385	finally
    //   333	382	385	finally
    //   439	469	385	finally
    //   472	542	385	finally
    //   551	582	385	finally
    //   629	639	385	finally
    //   288	298	429	finally
    //   303	308	429	finally
    //   313	327	429	finally
    //   387	397	429	finally
    //   402	407	429	finally
    //   412	426	429	finally
    //   426	429	429	finally
    //   582	592	429	finally
    //   597	602	429	finally
    //   607	621	429	finally
    //   165	170	437	java/io/IOException
    //   254	261	627	java/io/IOException
    //   269	288	627	java/io/IOException
    //   472	542	627	java/io/IOException
    //   303	308	642	java/lang/Exception
    //   402	407	647	java/lang/Exception
    //   597	602	652	java/lang/Exception
    //   607	621	657	java/lang/Exception
    //   412	426	662	java/lang/Exception
    //   231	250	667	finally
    //   313	327	676	java/lang/Exception
  }
  
  /* Error */
  public static JSONObject doHttpRealTimeData(Context paramContext, String paramString1, String paramString2, JSONArray paramJSONArray, HttpCallBackListener paramHttpCallBackListener)
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
    //   11: ifnull +34 -> 45
    //   14: new 44	org/json/JSONObject
    //   17: dup
    //   18: invokespecial 45	org/json/JSONObject:<init>	()V
    //   21: astore 37
    //   23: aload 37
    //   25: ldc 47
    //   27: aload_3
    //   28: invokevirtual 52	org/json/JSONArray:toString	()Ljava/lang/String;
    //   31: invokevirtual 56	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   34: pop
    //   35: aload 4
    //   37: aload_2
    //   38: aload 37
    //   40: invokeinterface 62 3 0
    //   45: aload_0
    //   46: new 76	java/net/URL
    //   49: dup
    //   50: aload_2
    //   51: invokevirtual 79	java/lang/String:toString	()Ljava/lang/String;
    //   54: invokespecial 82	java/net/URL:<init>	(Ljava/lang/String;)V
    //   57: invokestatic 88	com/ja/analytics/utils/NetUtils:openConncetion	(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    //   60: astore 5
    //   62: aload 5
    //   64: iconst_1
    //   65: invokevirtual 94	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   68: aload 5
    //   70: iconst_1
    //   71: invokevirtual 97	java/net/HttpURLConnection:setDoInput	(Z)V
    //   74: aload 5
    //   76: aload_1
    //   77: invokevirtual 100	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   80: aload 5
    //   82: ldc 102
    //   84: ldc 104
    //   86: invokevirtual 108	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   89: aload 5
    //   91: sipush 30000
    //   94: invokevirtual 112	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   97: aload 5
    //   99: sipush 30000
    //   102: invokevirtual 115	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   105: aload 5
    //   107: invokevirtual 119	java/net/HttpURLConnection:getRequestProperties	()Ljava/util/Map;
    //   110: invokeinterface 125 1 0
    //   115: invokeinterface 131 1 0
    //   120: astore 12
    //   122: aload 12
    //   124: invokeinterface 137 1 0
    //   129: istore 13
    //   131: aconst_null
    //   132: astore 6
    //   134: iload 13
    //   136: ifne +197 -> 333
    //   139: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   142: new 139	java/lang/StringBuilder
    //   145: dup
    //   146: aload_1
    //   147: invokestatic 142	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   150: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   153: ldc 145
    //   155: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   161: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   164: pop
    //   165: aload 5
    //   167: invokevirtual 159	java/net/HttpURLConnection:connect	()V
    //   170: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   173: new 139	java/lang/StringBuilder
    //   176: dup
    //   177: aload_1
    //   178: invokestatic 142	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   181: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   184: ldc 161
    //   186: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   192: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   195: pop
    //   196: aconst_null
    //   197: astore 6
    //   199: aload_3
    //   200: ifnull +54 -> 254
    //   203: aload_3
    //   204: invokevirtual 165	org/json/JSONArray:length	()I
    //   207: istore 18
    //   209: aconst_null
    //   210: astore 6
    //   212: iload 18
    //   214: ifle +40 -> 254
    //   217: new 167	java/io/DataOutputStream
    //   220: dup
    //   221: aload 5
    //   223: invokevirtual 171	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   226: invokespecial 174	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   229: astore 19
    //   231: aload 19
    //   233: aload_3
    //   234: invokevirtual 52	org/json/JSONArray:toString	()Ljava/lang/String;
    //   237: ldc 16
    //   239: invokevirtual 184	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   242: invokevirtual 196	java/io/OutputStream:write	([B)V
    //   245: aload 19
    //   247: invokevirtual 199	java/io/OutputStream:close	()V
    //   250: aload 19
    //   252: astore 6
    //   254: aload 5
    //   256: invokevirtual 202	java/net/HttpURLConnection:getResponseCode	()I
    //   259: istore 28
    //   261: iload 28
    //   263: sipush 200
    //   266: if_icmpne +206 -> 472
    //   269: new 44	org/json/JSONObject
    //   272: dup
    //   273: aload 5
    //   275: invokevirtual 279	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   278: ldc 16
    //   280: invokestatic 283	com/ja/analytics/net/HttpUtils:readAsString	(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    //   283: invokespecial 284	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   286: astore 23
    //   288: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   291: ldc_w 286
    //   294: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   297: pop
    //   298: aload 6
    //   300: ifnull +8 -> 308
    //   303: aload 6
    //   305: invokevirtual 199	java/io/OutputStream:close	()V
    //   308: aload 5
    //   310: ifnull +17 -> 327
    //   313: aload 5
    //   315: invokevirtual 225	java/net/HttpURLConnection:disconnect	()V
    //   318: ldc2_w 226
    //   321: invokestatic 233	java/lang/Thread:sleep	(J)V
    //   324: invokestatic 238	java/lang/System:gc	()V
    //   327: ldc 2
    //   329: monitorexit
    //   330: aload 23
    //   332: areturn
    //   333: aload 12
    //   335: invokeinterface 242 1 0
    //   340: checkcast 78	java/lang/String
    //   343: astore 35
    //   345: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   348: new 139	java/lang/StringBuilder
    //   351: dup
    //   352: aload 35
    //   354: invokestatic 142	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   357: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   360: ldc 244
    //   362: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   365: aload 5
    //   367: aload 35
    //   369: invokevirtual 248	java/net/HttpURLConnection:getRequestProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   372: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   375: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   378: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   381: pop
    //   382: goto -260 -> 122
    //   385: astore 7
    //   387: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   390: ldc_w 286
    //   393: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   396: pop
    //   397: aload 6
    //   399: ifnull +8 -> 407
    //   402: aload 6
    //   404: invokevirtual 199	java/io/OutputStream:close	()V
    //   407: aload 5
    //   409: ifnull +17 -> 426
    //   412: aload 5
    //   414: invokevirtual 225	java/net/HttpURLConnection:disconnect	()V
    //   417: ldc2_w 226
    //   420: invokestatic 233	java/lang/Thread:sleep	(J)V
    //   423: invokestatic 238	java/lang/System:gc	()V
    //   426: aload 7
    //   428: athrow
    //   429: astore 8
    //   431: ldc 2
    //   433: monitorexit
    //   434: aload 8
    //   436: athrow
    //   437: astore 15
    //   439: new 139	java/lang/StringBuilder
    //   442: dup
    //   443: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   446: invokestatic 142	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   449: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   452: ldc 250
    //   454: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   457: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   460: aload 15
    //   462: invokevirtual 251	java/io/IOException:toString	()Ljava/lang/String;
    //   465: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   468: pop
    //   469: goto -299 -> 170
    //   472: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   475: new 139	java/lang/StringBuilder
    //   478: dup
    //   479: ldc 211
    //   481: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   484: iload 28
    //   486: invokevirtual 214	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   489: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   492: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   495: pop
    //   496: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   499: new 139	java/lang/StringBuilder
    //   502: dup
    //   503: ldc 216
    //   505: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   508: aload_1
    //   509: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   512: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   515: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   518: pop
    //   519: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   522: new 139	java/lang/StringBuilder
    //   525: dup
    //   526: ldc 218
    //   528: invokespecial 143	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   531: aload_2
    //   532: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   535: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   538: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   541: pop
    //   542: aload 4
    //   544: ifnull +38 -> 582
    //   547: aload_3
    //   548: ifnull +34 -> 582
    //   551: new 44	org/json/JSONObject
    //   554: dup
    //   555: invokespecial 45	org/json/JSONObject:<init>	()V
    //   558: astore 26
    //   560: aload 26
    //   562: ldc 47
    //   564: aload_3
    //   565: invokevirtual 52	org/json/JSONArray:toString	()Ljava/lang/String;
    //   568: invokevirtual 56	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   571: pop
    //   572: aload 4
    //   574: aload_2
    //   575: aload 26
    //   577: invokeinterface 257 3 0
    //   582: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   585: ldc_w 286
    //   588: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   591: pop
    //   592: aload 6
    //   594: ifnull +8 -> 602
    //   597: aload 6
    //   599: invokevirtual 199	java/io/OutputStream:close	()V
    //   602: aload 5
    //   604: ifnull +17 -> 621
    //   607: aload 5
    //   609: invokevirtual 225	java/net/HttpURLConnection:disconnect	()V
    //   612: ldc2_w 226
    //   615: invokestatic 233	java/lang/Thread:sleep	(J)V
    //   618: invokestatic 238	java/lang/System:gc	()V
    //   621: aconst_null
    //   622: astore 23
    //   624: goto -297 -> 327
    //   627: astore 20
    //   629: getstatic 28	com/ja/analytics/net/HttpUtils:TAG	Ljava/lang/String;
    //   632: ldc_w 259
    //   635: invokestatic 156	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   638: pop
    //   639: goto -97 -> 542
    //   642: astore 31
    //   644: goto -336 -> 308
    //   647: astore 11
    //   649: goto -242 -> 407
    //   652: astore 25
    //   654: goto -52 -> 602
    //   657: astore 24
    //   659: goto -38 -> 621
    //   662: astore 10
    //   664: goto -238 -> 426
    //   667: astore 7
    //   669: aload 19
    //   671: astore 6
    //   673: goto -286 -> 387
    //   676: astore 30
    //   678: goto -351 -> 327
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	681	0	paramContext	Context
    //   0	681	1	paramString1	String
    //   0	681	2	paramString2	String
    //   0	681	3	paramJSONArray	JSONArray
    //   0	681	4	paramHttpCallBackListener	HttpCallBackListener
    //   4	604	5	localHttpURLConnection	java.net.HttpURLConnection
    //   7	665	6	localObject1	Object
    //   385	42	7	localObject2	Object
    //   667	1	7	localObject3	Object
    //   429	6	8	localObject4	Object
    //   662	1	10	localException1	Exception
    //   647	1	11	localException2	Exception
    //   120	214	12	localIterator	java.util.Iterator
    //   129	6	13	bool	boolean
    //   437	24	15	localIOException1	IOException
    //   207	6	18	i	int
    //   229	441	19	localDataOutputStream	java.io.DataOutputStream
    //   627	1	20	localIOException2	IOException
    //   286	337	23	localJSONObject1	JSONObject
    //   657	1	24	localException3	Exception
    //   652	1	25	localException4	Exception
    //   558	18	26	localJSONObject2	JSONObject
    //   259	226	28	j	int
    //   676	1	30	localException5	Exception
    //   642	1	31	localException6	Exception
    //   343	25	35	str	String
    //   21	18	37	localJSONObject3	JSONObject
    // Exception table:
    //   from	to	target	type
    //   14	45	385	finally
    //   45	122	385	finally
    //   122	131	385	finally
    //   139	165	385	finally
    //   165	170	385	finally
    //   170	196	385	finally
    //   203	209	385	finally
    //   217	231	385	finally
    //   254	261	385	finally
    //   269	288	385	finally
    //   333	382	385	finally
    //   439	469	385	finally
    //   472	542	385	finally
    //   551	582	385	finally
    //   629	639	385	finally
    //   288	298	429	finally
    //   303	308	429	finally
    //   313	327	429	finally
    //   387	397	429	finally
    //   402	407	429	finally
    //   412	426	429	finally
    //   426	429	429	finally
    //   582	592	429	finally
    //   597	602	429	finally
    //   607	621	429	finally
    //   165	170	437	java/io/IOException
    //   254	261	627	java/io/IOException
    //   269	288	627	java/io/IOException
    //   472	542	627	java/io/IOException
    //   303	308	642	java/lang/Exception
    //   402	407	647	java/lang/Exception
    //   597	602	652	java/lang/Exception
    //   607	621	657	java/lang/Exception
    //   412	426	662	java/lang/Exception
    //   231	250	667	finally
    //   313	327	676	java/lang/Exception
  }
  
  public static boolean getConfiguration(Context paramContext)
  {
    for (;;)
    {
      try
      {
        String str1 = "{\"appkey\":\"" + EventLog.getAppkey(paramContext) + "\",\"accesskey\":\"" + EventLog.getAccessKey(paramContext) + "\"}";
        DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
        HttpPost localHttpPost = new HttpPost("http://jma.man.jcloud.com/maengine/jmasdkservice/sdkdata/boot/configuration");
        localHttpPost.addHeader("Content-Type", "application/json");
        localHttpPost.setEntity(new StringEntity(str1));
        HttpResponse localHttpResponse = localDefaultHttpClient.execute(localHttpPost);
        if (localHttpResponse.getStatusLine().getStatusCode() != 200) {
          continue;
        }
        str2 = EntityUtils.toString(localHttpResponse.getEntity());
        Log.i("MobJaAgent", "Response from online config data result: " + str2);
        if (str2 != null)
        {
          int i = str2.length();
          if (i == 0) {}
        }
      }
      catch (Exception localException)
      {
        String str2;
        JSONObject localJSONObject1;
        Object localObject;
        JSONObject localJSONObject2;
        Integer localInteger;
        LogUtil.logE(TAG, "get online configuration failed:" + localException.getMessage());
        continue;
        if ((!"timesend".equals(localJSONObject2.get("send"))) || (localInteger.intValue() <= 0)) {
          continue;
        }
        Constants.SEND_STRATEGY = false;
        Constants.SEND_INTERVAL = 1000 * localInteger.intValue();
        continue;
        Constants.SEND_STRATEGY = false;
        continue;
        Log.i("MobJaAgent", "Request to real time data fail!!");
        continue;
      }
      try
      {
        localJSONObject1 = new JSONObject(str2);
        Constants.ISAPPKEY_VALIDE = localJSONObject1.getBoolean("isvalid");
        localObject = localJSONObject1.get("sendlog");
        if ((localObject instanceof String))
        {
          Constants.SEND_STRATEGY = false;
          return Constants.SEND_STRATEGY;
        }
        if (!(localObject instanceof JSONObject)) {
          continue;
        }
        localJSONObject2 = (JSONObject)localObject;
        localInteger = (Integer)localJSONObject2.get("time");
        if (("numsend".equals(localJSONObject2.get("send"))) && (localInteger.intValue() == -1))
        {
          Constants.SEND_STRATEGY = true;
          continue;
        }
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  public static int getCrashNetworkStatus()
  {
    try
    {
      int i = mCrashNetworkStatus;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static int getEventNetworkStatus()
  {
    try
    {
      int i = mEventNetworkStatus;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static void postCrash(Context paramContext, String paramString, JSONArray paramJSONArray, HttpCallBackListener paramHttpCallBackListener)
    throws Exception
  {
    try
    {
      doHttpCrash(paramContext, "POST", paramString, paramJSONArray, paramHttpCallBackListener);
      return;
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        LogUtil.logE(TAG, "sending crash log faild:" + localThrowable.getMessage());
        doHttpCrash(paramContext, "POST", paramString, paramJSONArray, paramHttpCallBackListener);
      }
    }
    finally {}
  }
  
  public static void postEvent(Context paramContext, String paramString, JSONObject paramJSONObject, HttpCallBackListener paramHttpCallBackListener)
    throws Exception
  {
    try
    {
      doHttpEvent(paramContext, "POST", paramString, paramJSONObject, paramHttpCallBackListener);
      return;
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        LogUtil.logE(TAG, "sending event log faild:" + localThrowable.getMessage());
        doHttpEvent(paramContext, "POST", paramString, paramJSONObject, paramHttpCallBackListener);
      }
    }
    finally {}
  }
  
  public static byte[] readAsBytes(InputStream paramInputStream)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte1 = new byte[1024];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte1);
      if (i == -1)
      {
        byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
        localByteArrayOutputStream.close();
        paramInputStream.close();
        return arrayOfByte2;
      }
      localByteArrayOutputStream.write(arrayOfByte1, 0, i);
    }
  }
  
  public static String readAsString(InputStream paramInputStream, String paramString)
    throws IOException
  {
    return new String(readAsBytes(paramInputStream), paramString).replaceAll("\\r", " ").replaceAll("\\n", " ");
  }
  
  public static void sendSessionData(Context paramContext)
  {
    try
    {
      SessionStatic.sendLastSessionTime(paramContext);
      SessionStatic.startSessionTime(paramContext);
      String str1 = EventLog.getAppkey(paramContext);
      if (str1 == null) {
        LogUtil.logE(TAG, "没有获取到appkey/appkey无效,放弃当前操作");
      }
      HttpPost localHttpPost = new HttpPost("http://jma.man.jcloud.com/maengine/jmadata/RealTimeAnalysis");
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new BasicNameValuePair("sesiontimes", EventLog.getSingleton().getSessionCount()));
      localArrayList.add(new BasicNameValuePair("appkey", str1));
      localArrayList.add(new BasicNameValuePair("version", ManifestPackageUtils.getAppVersionCode(paramContext)));
      localArrayList.add(new BasicNameValuePair("channel", EventLog.getAppChannel(paramContext)));
      localArrayList.add(new BasicNameValuePair("deviceid", DevicesUtils.getDeviceId2(paramContext)));
      localHttpPost.setEntity(new UrlEncodedFormEntity(localArrayList, "UTF-8"));
      HttpResponse localHttpResponse = new DefaultHttpClient().execute(localHttpPost);
      if (localHttpResponse.getStatusLine().getStatusCode() == 200)
      {
        String str2 = EntityUtils.toString(localHttpResponse.getEntity());
        Log.i("MobJaAgent", "Request to real time data result: " + str2);
        return;
      }
      Log.i("MobJaAgent", "Request to real time data fail!!");
      return;
    }
    catch (Exception localException)
    {
      LogUtil.logE(TAG, "sending startup time failed:" + localException.getMessage());
    }
  }
  
  public static void setCrashNetworkStatus(int paramInt)
  {
    try
    {
      mCrashNetworkStatus = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static void setEventNetworkStatus(int paramInt)
  {
    try
    {
      mEventNetworkStatus = paramInt;
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
 * Qualified Name:     com.ja.analytics.net.HttpUtils
 * JD-Core Version:    0.7.0.1
 */