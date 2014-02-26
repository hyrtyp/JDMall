package com.ja.sdk.framework;

import android.content.Context;
import com.ja.sdk.exception.ExceptionData;
import com.ja.sdk.exception.ExceptionUncaughtExceptionHandler;
import com.ja.sdk.net.HttpCallBackListener;
import com.ja.sdk.utils.LogUtil;
import org.json.JSONArray;

public class ExceptionDataHandle
{
  private static final String TAG = "ExceptionDataHandle";
  private static boolean isSendOK;
  private static ExceptionDataHandle mDataHandle = new ExceptionDataHandle();
  private boolean isExceptionAnalysisOn = false;
  
  public static Boolean getSendFlag()
  {
    return Boolean.valueOf(isSendOK);
  }
  
  public static ExceptionDataHandle getSingleInstance()
  {
    return mDataHandle;
  }
  
  public static void setSendFlag(Boolean paramBoolean)
  {
    isSendOK = paramBoolean.booleanValue();
  }
  
  public void openExceptonDataAnalysis(Context paramContext)
  {
    LogUtil.logD("ExceptionDataHandle", "openExceptonDataAnalysis");
    if (!this.isExceptionAnalysisOn)
    {
      this.isExceptionAnalysisOn = true;
      ExceptionUncaughtExceptionHandler.getSingleInstance().setUncatchedExceptionHandler(paramContext);
    }
  }
  
  /* Error */
  public void sendData(Context paramContext, JSONArray paramJSONArray)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc 8
    //   4: ldc 64
    //   6: invokestatic 50	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   9: pop
    //   10: aload_2
    //   11: ifnonnull +6 -> 17
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: aload_1
    //   18: ldc 66
    //   20: aload_2
    //   21: new 68	com/ja/sdk/framework/ExceptionDataHandle$1
    //   24: dup
    //   25: aload_0
    //   26: invokespecial 71	com/ja/sdk/framework/ExceptionDataHandle$1:<init>	(Lcom/ja/sdk/framework/ExceptionDataHandle;)V
    //   29: invokestatic 77	com/ja/sdk/net/HttpUtils:postException	(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;Lcom/ja/sdk/net/HttpCallBackListener;)V
    //   32: goto -18 -> 14
    //   35: astore 5
    //   37: aload 5
    //   39: invokestatic 81	com/ja/sdk/utils/LogUtil:logException	(Ljava/lang/Throwable;)I
    //   42: pop
    //   43: goto -29 -> 14
    //   46: astore_3
    //   47: aload_0
    //   48: monitorexit
    //   49: aload_3
    //   50: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	51	0	this	ExceptionDataHandle
    //   0	51	1	paramContext	Context
    //   0	51	2	paramJSONArray	JSONArray
    //   46	4	3	localObject	Object
    //   35	3	5	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   17	32	35	java/lang/Exception
    //   2	10	46	finally
    //   17	32	46	finally
    //   37	43	46	finally
  }
  
  /* Error */
  public void sendFiveExceptionDataToServer(Context paramContext, JSONArray paramJSONArray)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc 8
    //   4: ldc 88
    //   6: invokestatic 50	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   9: pop
    //   10: aload_2
    //   11: ifnonnull +14 -> 25
    //   14: ldc 8
    //   16: ldc 90
    //   18: invokestatic 50	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   21: pop
    //   22: aload_0
    //   23: monitorexit
    //   24: return
    //   25: aload_2
    //   26: invokevirtual 96	org/json/JSONArray:length	()I
    //   29: istore 6
    //   31: iload 6
    //   33: iconst_5
    //   34: idiv
    //   35: istore 7
    //   37: iload 6
    //   39: iconst_5
    //   40: irem
    //   41: istore 8
    //   43: iconst_0
    //   44: istore 9
    //   46: iconst_0
    //   47: istore 10
    //   49: iload 6
    //   51: iconst_5
    //   52: if_icmple +439 -> 491
    //   55: iconst_0
    //   56: istore 24
    //   58: iload 24
    //   60: iload 7
    //   62: if_icmplt +177 -> 239
    //   65: ldc2_w 97
    //   68: invokestatic 104	java/lang/Thread:sleep	(J)V
    //   71: ldc 8
    //   73: new 106	java/lang/StringBuilder
    //   76: dup
    //   77: ldc 108
    //   79: invokespecial 111	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   82: iload 9
    //   84: invokevirtual 115	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   87: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   90: invokestatic 50	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   93: pop
    //   94: ldc 8
    //   96: new 106	java/lang/StringBuilder
    //   99: dup
    //   100: ldc 121
    //   102: invokespecial 111	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   105: iload 10
    //   107: invokevirtual 115	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   110: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   113: invokestatic 50	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   116: pop
    //   117: new 92	org/json/JSONArray
    //   120: dup
    //   121: invokespecial 122	org/json/JSONArray:<init>	()V
    //   124: astore 39
    //   126: iconst_0
    //   127: istore 40
    //   129: iload 9
    //   131: iload 8
    //   133: if_icmplt +309 -> 442
    //   136: aload 39
    //   138: invokevirtual 96	org/json/JSONArray:length	()I
    //   141: ifeq -119 -> 22
    //   144: aload_0
    //   145: aload_1
    //   146: aload 39
    //   148: invokevirtual 124	com/ja/sdk/framework/ExceptionDataHandle:sendData	(Landroid/content/Context;Lorg/json/JSONArray;)V
    //   151: invokestatic 126	com/ja/sdk/framework/ExceptionDataHandle:getSendFlag	()Ljava/lang/Boolean;
    //   154: invokevirtual 41	java/lang/Boolean:booleanValue	()Z
    //   157: ifeq -135 -> 22
    //   160: new 92	org/json/JSONArray
    //   163: dup
    //   164: invokespecial 122	org/json/JSONArray:<init>	()V
    //   167: pop
    //   168: invokestatic 132	com/ja/sdk/db/ExceptionTable:getIdIndexArray	()Lorg/json/JSONArray;
    //   171: astore 42
    //   173: aload 42
    //   175: invokevirtual 96	org/json/JSONArray:length	()I
    //   178: istore 43
    //   180: iload 43
    //   182: ifeq -160 -> 22
    //   185: iconst_m1
    //   186: istore 44
    //   188: iload 10
    //   190: istore 45
    //   192: iload 45
    //   194: iload 8
    //   196: if_icmpge -174 -> 22
    //   199: aload 42
    //   201: iload 45
    //   203: invokevirtual 136	org/json/JSONArray:getInt	(I)I
    //   206: istore 48
    //   208: iload 48
    //   210: istore 44
    //   212: iload 44
    //   214: iconst_m1
    //   215: if_icmpeq +446 -> 661
    //   218: aload_1
    //   219: iload 44
    //   221: invokestatic 141	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   224: invokestatic 145	com/ja/sdk/db/ExceptionTable:updateExceptionDataSendFlagItem	(Landroid/content/Context;Ljava/lang/Integer;)V
    //   227: aload_1
    //   228: iload 44
    //   230: invokestatic 149	com/ja/sdk/db/ExceptionTable:deleteExceptionDataItem	(Landroid/content/Context;I)V
    //   233: iconst_m1
    //   234: istore 44
    //   236: goto +425 -> 661
    //   239: new 92	org/json/JSONArray
    //   242: dup
    //   243: invokespecial 122	org/json/JSONArray:<init>	()V
    //   246: astore 25
    //   248: iconst_0
    //   249: istore 26
    //   251: iload 26
    //   253: iconst_5
    //   254: if_icmplt +62 -> 316
    //   257: aload_0
    //   258: aload_1
    //   259: aload 25
    //   261: invokevirtual 124	com/ja/sdk/framework/ExceptionDataHandle:sendData	(Landroid/content/Context;Lorg/json/JSONArray;)V
    //   264: invokestatic 126	com/ja/sdk/framework/ExceptionDataHandle:getSendFlag	()Ljava/lang/Boolean;
    //   267: invokevirtual 41	java/lang/Boolean:booleanValue	()Z
    //   270: ifeq +40 -> 310
    //   273: new 92	org/json/JSONArray
    //   276: dup
    //   277: invokespecial 122	org/json/JSONArray:<init>	()V
    //   280: pop
    //   281: invokestatic 132	com/ja/sdk/db/ExceptionTable:getIdIndexArray	()Lorg/json/JSONArray;
    //   284: astore 28
    //   286: aload 28
    //   288: invokevirtual 96	org/json/JSONArray:length	()I
    //   291: istore 29
    //   293: iload 29
    //   295: ifeq -230 -> 65
    //   298: iconst_m1
    //   299: istore 30
    //   301: iconst_0
    //   302: istore 31
    //   304: iload 31
    //   306: iconst_5
    //   307: if_icmplt +60 -> 367
    //   310: iinc 24 1
    //   313: goto -255 -> 58
    //   316: aload_2
    //   317: iload 9
    //   319: invokevirtual 153	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   322: astore 54
    //   324: aload 25
    //   326: iload 26
    //   328: aload 54
    //   330: invokevirtual 157	org/json/JSONArray:put	(ILjava/lang/Object;)Lorg/json/JSONArray;
    //   333: pop
    //   334: iload 26
    //   336: iconst_5
    //   337: if_icmpge +6 -> 343
    //   340: iinc 9 1
    //   343: iinc 26 1
    //   346: goto -95 -> 251
    //   349: astore 52
    //   351: ldc 8
    //   353: aload 52
    //   355: invokestatic 160	com/ja/sdk/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   358: pop
    //   359: goto -16 -> 343
    //   362: astore_3
    //   363: aload_0
    //   364: monitorexit
    //   365: aload_3
    //   366: athrow
    //   367: aload 28
    //   369: iload 10
    //   371: invokevirtual 136	org/json/JSONArray:getInt	(I)I
    //   374: istore 34
    //   376: iload 34
    //   378: istore 30
    //   380: iload 31
    //   382: iconst_5
    //   383: if_icmpge +6 -> 389
    //   386: iinc 10 1
    //   389: iload 30
    //   391: iconst_m1
    //   392: if_icmpeq +275 -> 667
    //   395: aload_1
    //   396: iload 30
    //   398: invokestatic 141	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   401: invokestatic 145	com/ja/sdk/db/ExceptionTable:updateExceptionDataSendFlagItem	(Landroid/content/Context;Ljava/lang/Integer;)V
    //   404: aload_1
    //   405: iload 30
    //   407: invokestatic 149	com/ja/sdk/db/ExceptionTable:deleteExceptionDataItem	(Landroid/content/Context;I)V
    //   410: iconst_m1
    //   411: istore 30
    //   413: goto +254 -> 667
    //   416: astore 32
    //   418: ldc 8
    //   420: aload 32
    //   422: invokestatic 160	com/ja/sdk/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   425: pop
    //   426: goto -37 -> 389
    //   429: astore 35
    //   431: ldc 8
    //   433: aload 35
    //   435: invokestatic 160	com/ja/sdk/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   438: pop
    //   439: goto -368 -> 71
    //   442: aload 39
    //   444: iload 40
    //   446: aload_2
    //   447: iload 9
    //   449: invokevirtual 153	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   452: invokevirtual 157	org/json/JSONArray:put	(ILjava/lang/Object;)Lorg/json/JSONArray;
    //   455: pop
    //   456: iinc 40 1
    //   459: iinc 9 1
    //   462: goto -333 -> 129
    //   465: astore 49
    //   467: ldc 8
    //   469: aload 49
    //   471: invokestatic 160	com/ja/sdk/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   474: pop
    //   475: goto -19 -> 456
    //   478: astore 46
    //   480: ldc 8
    //   482: aload 46
    //   484: invokestatic 160	com/ja/sdk/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   487: pop
    //   488: goto -276 -> 212
    //   491: new 92	org/json/JSONArray
    //   494: dup
    //   495: invokespecial 122	org/json/JSONArray:<init>	()V
    //   498: astore 11
    //   500: iconst_0
    //   501: istore 12
    //   503: iload 12
    //   505: iload 8
    //   507: if_icmplt +108 -> 615
    //   510: aload 11
    //   512: invokevirtual 96	org/json/JSONArray:length	()I
    //   515: ifeq -493 -> 22
    //   518: aload_0
    //   519: aload_1
    //   520: aload 11
    //   522: invokevirtual 124	com/ja/sdk/framework/ExceptionDataHandle:sendData	(Landroid/content/Context;Lorg/json/JSONArray;)V
    //   525: invokestatic 126	com/ja/sdk/framework/ExceptionDataHandle:getSendFlag	()Ljava/lang/Boolean;
    //   528: invokevirtual 41	java/lang/Boolean:booleanValue	()Z
    //   531: ifeq -509 -> 22
    //   534: new 92	org/json/JSONArray
    //   537: dup
    //   538: invokespecial 122	org/json/JSONArray:<init>	()V
    //   541: pop
    //   542: invokestatic 132	com/ja/sdk/db/ExceptionTable:getIdIndexArray	()Lorg/json/JSONArray;
    //   545: astore 14
    //   547: aload 14
    //   549: invokevirtual 96	org/json/JSONArray:length	()I
    //   552: istore 15
    //   554: iload 15
    //   556: ifeq -534 -> 22
    //   559: iconst_m1
    //   560: istore 16
    //   562: iconst_0
    //   563: istore 17
    //   565: iload 17
    //   567: iload 8
    //   569: if_icmpge -547 -> 22
    //   572: aload 14
    //   574: iload 17
    //   576: invokevirtual 136	org/json/JSONArray:getInt	(I)I
    //   579: istore 20
    //   581: iload 20
    //   583: istore 16
    //   585: iload 16
    //   587: iconst_m1
    //   588: if_icmpeq +21 -> 609
    //   591: aload_1
    //   592: iload 16
    //   594: invokestatic 141	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   597: invokestatic 145	com/ja/sdk/db/ExceptionTable:updateExceptionDataSendFlagItem	(Landroid/content/Context;Ljava/lang/Integer;)V
    //   600: aload_1
    //   601: iload 16
    //   603: invokestatic 149	com/ja/sdk/db/ExceptionTable:deleteExceptionDataItem	(Landroid/content/Context;I)V
    //   606: iconst_m1
    //   607: istore 16
    //   609: iinc 17 1
    //   612: goto -47 -> 565
    //   615: aload 11
    //   617: iload 12
    //   619: aload_2
    //   620: iload 12
    //   622: invokevirtual 153	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   625: invokevirtual 157	org/json/JSONArray:put	(ILjava/lang/Object;)Lorg/json/JSONArray;
    //   628: pop
    //   629: iinc 12 1
    //   632: goto -129 -> 503
    //   635: astore 21
    //   637: ldc 8
    //   639: aload 21
    //   641: invokestatic 160	com/ja/sdk/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   644: pop
    //   645: goto -16 -> 629
    //   648: astore 18
    //   650: ldc 8
    //   652: aload 18
    //   654: invokestatic 160	com/ja/sdk/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   657: pop
    //   658: goto -73 -> 585
    //   661: iinc 45 1
    //   664: goto -472 -> 192
    //   667: iinc 31 1
    //   670: goto -366 -> 304
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	673	0	this	ExceptionDataHandle
    //   0	673	1	paramContext	Context
    //   0	673	2	paramJSONArray	JSONArray
    //   362	4	3	localObject	Object
    //   29	24	6	i	int
    //   35	28	7	j	int
    //   41	529	8	k	int
    //   44	416	9	m	int
    //   47	340	10	n	int
    //   498	118	11	localJSONArray1	JSONArray
    //   501	129	12	i1	int
    //   545	28	14	localJSONArray2	JSONArray
    //   552	3	15	i2	int
    //   560	48	16	i3	int
    //   563	47	17	i4	int
    //   648	5	18	localJSONException1	org.json.JSONException
    //   579	3	20	i5	int
    //   635	5	21	localJSONException2	org.json.JSONException
    //   56	255	24	i6	int
    //   246	79	25	localJSONArray3	JSONArray
    //   249	95	26	i7	int
    //   284	84	28	localJSONArray4	JSONArray
    //   291	3	29	i8	int
    //   299	113	30	i9	int
    //   302	366	31	i10	int
    //   416	5	32	localJSONException3	org.json.JSONException
    //   374	3	34	i11	int
    //   429	5	35	localInterruptedException	java.lang.InterruptedException
    //   124	319	39	localJSONArray5	JSONArray
    //   127	330	40	i12	int
    //   171	29	42	localJSONArray6	JSONArray
    //   178	3	43	i13	int
    //   186	49	44	i14	int
    //   190	472	45	i15	int
    //   478	5	46	localJSONException4	org.json.JSONException
    //   206	3	48	i16	int
    //   465	5	49	localJSONException5	org.json.JSONException
    //   349	5	52	localJSONException6	org.json.JSONException
    //   322	7	54	localJSONObject	org.json.JSONObject
    // Exception table:
    //   from	to	target	type
    //   316	334	349	org/json/JSONException
    //   2	10	362	finally
    //   14	22	362	finally
    //   25	37	362	finally
    //   65	71	362	finally
    //   71	126	362	finally
    //   136	180	362	finally
    //   199	208	362	finally
    //   218	233	362	finally
    //   239	248	362	finally
    //   257	293	362	finally
    //   316	334	362	finally
    //   351	359	362	finally
    //   367	376	362	finally
    //   395	410	362	finally
    //   418	426	362	finally
    //   431	439	362	finally
    //   442	456	362	finally
    //   467	475	362	finally
    //   480	488	362	finally
    //   491	500	362	finally
    //   510	554	362	finally
    //   572	581	362	finally
    //   591	606	362	finally
    //   615	629	362	finally
    //   637	645	362	finally
    //   650	658	362	finally
    //   367	376	416	org/json/JSONException
    //   65	71	429	java/lang/InterruptedException
    //   442	456	465	org/json/JSONException
    //   199	208	478	org/json/JSONException
    //   615	629	635	org/json/JSONException
    //   572	581	648	org/json/JSONException
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.sdk.framework.ExceptionDataHandle
 * JD-Core Version:    0.7.0.1
 */