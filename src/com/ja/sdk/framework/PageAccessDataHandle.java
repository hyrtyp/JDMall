package com.ja.sdk.framework;

import com.ja.sdk.net.HttpCallBackListener;
import com.ja.sdk.pagevisit.PageAccessData;
import com.ja.sdk.utils.LogUtil;
import org.json.JSONArray;

public class PageAccessDataHandle
{
  private static final String TAG = "PageAccessDataHandle";
  private static boolean isSendOK;
  private static PageAccessDataHandle mDataHandle = new PageAccessDataHandle();
  
  public static Boolean getSendFlag()
  {
    return Boolean.valueOf(isSendOK);
  }
  
  public static PageAccessDataHandle getSingleInstance()
  {
    return mDataHandle;
  }
  
  public static void setSendFlag(Boolean paramBoolean)
  {
    isSendOK = paramBoolean.booleanValue();
  }
  
  /* Error */
  public void sendData(android.content.Context paramContext, JSONArray paramJSONArray)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc 8
    //   4: new 44	java/lang/StringBuilder
    //   7: dup
    //   8: ldc 46
    //   10: invokespecial 49	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   13: aload_2
    //   14: invokevirtual 55	org/json/JSONArray:toString	()Ljava/lang/String;
    //   17: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   23: invokestatic 66	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   26: pop
    //   27: aload_1
    //   28: ldc 68
    //   30: aload_2
    //   31: new 70	com/ja/sdk/framework/PageAccessDataHandle$1
    //   34: dup
    //   35: aload_0
    //   36: invokespecial 73	com/ja/sdk/framework/PageAccessDataHandle$1:<init>	(Lcom/ja/sdk/framework/PageAccessDataHandle;)V
    //   39: invokestatic 79	com/ja/sdk/net/HttpUtils:postPageVisit	(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;Lcom/ja/sdk/net/HttpCallBackListener;)V
    //   42: aload_0
    //   43: monitorexit
    //   44: return
    //   45: astore 5
    //   47: aload 5
    //   49: invokestatic 83	com/ja/sdk/utils/LogUtil:logException	(Ljava/lang/Throwable;)I
    //   52: pop
    //   53: goto -11 -> 42
    //   56: astore_3
    //   57: aload_0
    //   58: monitorexit
    //   59: aload_3
    //   60: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	61	0	this	PageAccessDataHandle
    //   0	61	1	paramContext	android.content.Context
    //   0	61	2	paramJSONArray	JSONArray
    //   56	4	3	localObject	Object
    //   45	3	5	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   27	42	45	java/lang/Exception
    //   2	27	56	finally
    //   27	42	56	finally
    //   47	53	56	finally
  }
  
  /* Error */
  public void sendFivePageAccessDataToServer(android.content.Context paramContext, JSONArray paramJSONArray)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_2
    //   3: ifnonnull +14 -> 17
    //   6: ldc 8
    //   8: ldc 90
    //   10: invokestatic 66	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   13: pop
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: aload_2
    //   18: invokevirtual 94	org/json/JSONArray:length	()I
    //   21: istore 4
    //   23: iload 4
    //   25: iconst_5
    //   26: idiv
    //   27: istore 5
    //   29: iload 4
    //   31: iconst_5
    //   32: irem
    //   33: istore 6
    //   35: iconst_0
    //   36: istore 7
    //   38: iconst_0
    //   39: istore 8
    //   41: iload 4
    //   43: iconst_5
    //   44: if_icmple +393 -> 437
    //   47: iconst_0
    //   48: istore 22
    //   50: iload 22
    //   52: iload 5
    //   54: if_icmplt +131 -> 185
    //   57: ldc2_w 95
    //   60: invokestatic 102	java/lang/Thread:sleep	(J)V
    //   63: new 51	org/json/JSONArray
    //   66: dup
    //   67: invokespecial 103	org/json/JSONArray:<init>	()V
    //   70: astore 35
    //   72: iconst_0
    //   73: istore 36
    //   75: iload 7
    //   77: iload 6
    //   79: if_icmplt +309 -> 388
    //   82: aload 35
    //   84: invokevirtual 94	org/json/JSONArray:length	()I
    //   87: ifeq -73 -> 14
    //   90: aload_0
    //   91: aload_1
    //   92: aload 35
    //   94: invokevirtual 105	com/ja/sdk/framework/PageAccessDataHandle:sendData	(Landroid/content/Context;Lorg/json/JSONArray;)V
    //   97: invokestatic 107	com/ja/sdk/framework/PageAccessDataHandle:getSendFlag	()Ljava/lang/Boolean;
    //   100: invokevirtual 38	java/lang/Boolean:booleanValue	()Z
    //   103: ifeq -89 -> 14
    //   106: new 51	org/json/JSONArray
    //   109: dup
    //   110: invokespecial 103	org/json/JSONArray:<init>	()V
    //   113: pop
    //   114: invokestatic 113	com/ja/sdk/db/PageAccessTable:getIdIndexArray	()Lorg/json/JSONArray;
    //   117: astore 38
    //   119: aload 38
    //   121: invokevirtual 94	org/json/JSONArray:length	()I
    //   124: istore 39
    //   126: iload 39
    //   128: ifeq -114 -> 14
    //   131: iconst_m1
    //   132: istore 40
    //   134: iload 8
    //   136: istore 41
    //   138: iload 41
    //   140: iload 6
    //   142: if_icmpge -128 -> 14
    //   145: aload 38
    //   147: iload 41
    //   149: invokevirtual 117	org/json/JSONArray:getInt	(I)I
    //   152: istore 44
    //   154: iload 44
    //   156: istore 40
    //   158: iload 40
    //   160: iconst_m1
    //   161: if_icmpeq +446 -> 607
    //   164: aload_1
    //   165: iload 40
    //   167: invokestatic 122	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   170: invokestatic 126	com/ja/sdk/db/PageAccessTable:updatePageAccessDataSendFlagItem	(Landroid/content/Context;Ljava/lang/Integer;)V
    //   173: aload_1
    //   174: iload 40
    //   176: invokestatic 130	com/ja/sdk/db/PageAccessTable:deletePageAccessDataItem	(Landroid/content/Context;I)V
    //   179: iconst_m1
    //   180: istore 40
    //   182: goto +425 -> 607
    //   185: new 51	org/json/JSONArray
    //   188: dup
    //   189: invokespecial 103	org/json/JSONArray:<init>	()V
    //   192: astore 23
    //   194: iconst_0
    //   195: istore 24
    //   197: iload 24
    //   199: iconst_5
    //   200: if_icmplt +62 -> 262
    //   203: aload_0
    //   204: aload_1
    //   205: aload 23
    //   207: invokevirtual 105	com/ja/sdk/framework/PageAccessDataHandle:sendData	(Landroid/content/Context;Lorg/json/JSONArray;)V
    //   210: invokestatic 107	com/ja/sdk/framework/PageAccessDataHandle:getSendFlag	()Ljava/lang/Boolean;
    //   213: invokevirtual 38	java/lang/Boolean:booleanValue	()Z
    //   216: ifeq +40 -> 256
    //   219: new 51	org/json/JSONArray
    //   222: dup
    //   223: invokespecial 103	org/json/JSONArray:<init>	()V
    //   226: pop
    //   227: invokestatic 113	com/ja/sdk/db/PageAccessTable:getIdIndexArray	()Lorg/json/JSONArray;
    //   230: astore 26
    //   232: aload 26
    //   234: invokevirtual 94	org/json/JSONArray:length	()I
    //   237: istore 27
    //   239: iload 27
    //   241: ifeq -184 -> 57
    //   244: iconst_m1
    //   245: istore 28
    //   247: iconst_0
    //   248: istore 29
    //   250: iload 29
    //   252: iconst_5
    //   253: if_icmplt +60 -> 313
    //   256: iinc 22 1
    //   259: goto -209 -> 50
    //   262: aload_2
    //   263: iload 7
    //   265: invokevirtual 134	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   268: astore 50
    //   270: aload 23
    //   272: iload 24
    //   274: aload 50
    //   276: invokevirtual 138	org/json/JSONArray:put	(ILjava/lang/Object;)Lorg/json/JSONArray;
    //   279: pop
    //   280: iload 24
    //   282: iconst_5
    //   283: if_icmpge +6 -> 289
    //   286: iinc 7 1
    //   289: iinc 24 1
    //   292: goto -95 -> 197
    //   295: astore 48
    //   297: ldc 8
    //   299: aload 48
    //   301: invokestatic 141	com/ja/sdk/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   304: pop
    //   305: goto -16 -> 289
    //   308: astore_3
    //   309: aload_0
    //   310: monitorexit
    //   311: aload_3
    //   312: athrow
    //   313: aload 26
    //   315: iload 8
    //   317: invokevirtual 117	org/json/JSONArray:getInt	(I)I
    //   320: istore 32
    //   322: iload 32
    //   324: istore 28
    //   326: iload 29
    //   328: iconst_5
    //   329: if_icmpge +6 -> 335
    //   332: iinc 8 1
    //   335: iload 28
    //   337: iconst_m1
    //   338: if_icmpeq +275 -> 613
    //   341: aload_1
    //   342: iload 28
    //   344: invokestatic 122	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   347: invokestatic 126	com/ja/sdk/db/PageAccessTable:updatePageAccessDataSendFlagItem	(Landroid/content/Context;Ljava/lang/Integer;)V
    //   350: aload_1
    //   351: iload 28
    //   353: invokestatic 130	com/ja/sdk/db/PageAccessTable:deletePageAccessDataItem	(Landroid/content/Context;I)V
    //   356: iconst_m1
    //   357: istore 28
    //   359: goto +254 -> 613
    //   362: astore 30
    //   364: ldc 8
    //   366: aload 30
    //   368: invokestatic 141	com/ja/sdk/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   371: pop
    //   372: goto -37 -> 335
    //   375: astore 33
    //   377: ldc 8
    //   379: aload 33
    //   381: invokestatic 141	com/ja/sdk/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   384: pop
    //   385: goto -322 -> 63
    //   388: aload 35
    //   390: iload 36
    //   392: aload_2
    //   393: iload 7
    //   395: invokevirtual 134	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   398: invokevirtual 138	org/json/JSONArray:put	(ILjava/lang/Object;)Lorg/json/JSONArray;
    //   401: pop
    //   402: iinc 36 1
    //   405: iinc 7 1
    //   408: goto -333 -> 75
    //   411: astore 45
    //   413: ldc 8
    //   415: aload 45
    //   417: invokestatic 141	com/ja/sdk/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   420: pop
    //   421: goto -19 -> 402
    //   424: astore 42
    //   426: ldc 8
    //   428: aload 42
    //   430: invokestatic 141	com/ja/sdk/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   433: pop
    //   434: goto -276 -> 158
    //   437: new 51	org/json/JSONArray
    //   440: dup
    //   441: invokespecial 103	org/json/JSONArray:<init>	()V
    //   444: astore 9
    //   446: iconst_0
    //   447: istore 10
    //   449: iload 10
    //   451: iload 6
    //   453: if_icmplt +108 -> 561
    //   456: aload 9
    //   458: invokevirtual 94	org/json/JSONArray:length	()I
    //   461: ifeq -447 -> 14
    //   464: aload_0
    //   465: aload_1
    //   466: aload 9
    //   468: invokevirtual 105	com/ja/sdk/framework/PageAccessDataHandle:sendData	(Landroid/content/Context;Lorg/json/JSONArray;)V
    //   471: invokestatic 107	com/ja/sdk/framework/PageAccessDataHandle:getSendFlag	()Ljava/lang/Boolean;
    //   474: invokevirtual 38	java/lang/Boolean:booleanValue	()Z
    //   477: ifeq -463 -> 14
    //   480: new 51	org/json/JSONArray
    //   483: dup
    //   484: invokespecial 103	org/json/JSONArray:<init>	()V
    //   487: pop
    //   488: invokestatic 113	com/ja/sdk/db/PageAccessTable:getIdIndexArray	()Lorg/json/JSONArray;
    //   491: astore 12
    //   493: aload 12
    //   495: invokevirtual 94	org/json/JSONArray:length	()I
    //   498: istore 13
    //   500: iload 13
    //   502: ifeq -488 -> 14
    //   505: iconst_m1
    //   506: istore 14
    //   508: iconst_0
    //   509: istore 15
    //   511: iload 15
    //   513: iload 6
    //   515: if_icmpge -501 -> 14
    //   518: aload 12
    //   520: iload 15
    //   522: invokevirtual 117	org/json/JSONArray:getInt	(I)I
    //   525: istore 18
    //   527: iload 18
    //   529: istore 14
    //   531: iload 14
    //   533: iconst_m1
    //   534: if_icmpeq +21 -> 555
    //   537: aload_1
    //   538: iload 14
    //   540: invokestatic 122	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   543: invokestatic 126	com/ja/sdk/db/PageAccessTable:updatePageAccessDataSendFlagItem	(Landroid/content/Context;Ljava/lang/Integer;)V
    //   546: aload_1
    //   547: iload 14
    //   549: invokestatic 130	com/ja/sdk/db/PageAccessTable:deletePageAccessDataItem	(Landroid/content/Context;I)V
    //   552: iconst_m1
    //   553: istore 14
    //   555: iinc 15 1
    //   558: goto -47 -> 511
    //   561: aload 9
    //   563: iload 10
    //   565: aload_2
    //   566: iload 10
    //   568: invokevirtual 134	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   571: invokevirtual 138	org/json/JSONArray:put	(ILjava/lang/Object;)Lorg/json/JSONArray;
    //   574: pop
    //   575: iinc 10 1
    //   578: goto -129 -> 449
    //   581: astore 19
    //   583: ldc 8
    //   585: aload 19
    //   587: invokestatic 141	com/ja/sdk/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   590: pop
    //   591: goto -16 -> 575
    //   594: astore 16
    //   596: ldc 8
    //   598: aload 16
    //   600: invokestatic 141	com/ja/sdk/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   603: pop
    //   604: goto -73 -> 531
    //   607: iinc 41 1
    //   610: goto -472 -> 138
    //   613: iinc 29 1
    //   616: goto -366 -> 250
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	619	0	this	PageAccessDataHandle
    //   0	619	1	paramContext	android.content.Context
    //   0	619	2	paramJSONArray	JSONArray
    //   308	4	3	localObject	Object
    //   21	24	4	i	int
    //   27	28	5	j	int
    //   33	483	6	k	int
    //   36	370	7	m	int
    //   39	294	8	n	int
    //   444	118	9	localJSONArray1	JSONArray
    //   447	129	10	i1	int
    //   491	28	12	localJSONArray2	JSONArray
    //   498	3	13	i2	int
    //   506	48	14	i3	int
    //   509	47	15	i4	int
    //   594	5	16	localJSONException1	org.json.JSONException
    //   525	3	18	i5	int
    //   581	5	19	localJSONException2	org.json.JSONException
    //   48	209	22	i6	int
    //   192	79	23	localJSONArray3	JSONArray
    //   195	95	24	i7	int
    //   230	84	26	localJSONArray4	JSONArray
    //   237	3	27	i8	int
    //   245	113	28	i9	int
    //   248	366	29	i10	int
    //   362	5	30	localJSONException3	org.json.JSONException
    //   320	3	32	i11	int
    //   375	5	33	localInterruptedException	java.lang.InterruptedException
    //   70	319	35	localJSONArray5	JSONArray
    //   73	330	36	i12	int
    //   117	29	38	localJSONArray6	JSONArray
    //   124	3	39	i13	int
    //   132	49	40	i14	int
    //   136	472	41	i15	int
    //   424	5	42	localJSONException4	org.json.JSONException
    //   152	3	44	i16	int
    //   411	5	45	localJSONException5	org.json.JSONException
    //   295	5	48	localJSONException6	org.json.JSONException
    //   268	7	50	localJSONObject	org.json.JSONObject
    // Exception table:
    //   from	to	target	type
    //   262	280	295	org/json/JSONException
    //   6	14	308	finally
    //   17	29	308	finally
    //   57	63	308	finally
    //   63	72	308	finally
    //   82	126	308	finally
    //   145	154	308	finally
    //   164	179	308	finally
    //   185	194	308	finally
    //   203	239	308	finally
    //   262	280	308	finally
    //   297	305	308	finally
    //   313	322	308	finally
    //   341	356	308	finally
    //   364	372	308	finally
    //   377	385	308	finally
    //   388	402	308	finally
    //   413	421	308	finally
    //   426	434	308	finally
    //   437	446	308	finally
    //   456	500	308	finally
    //   518	527	308	finally
    //   537	552	308	finally
    //   561	575	308	finally
    //   583	591	308	finally
    //   596	604	308	finally
    //   313	322	362	org/json/JSONException
    //   57	63	375	java/lang/InterruptedException
    //   388	402	411	org/json/JSONException
    //   145	154	424	org/json/JSONException
    //   561	575	581	org/json/JSONException
    //   518	527	594	org/json/JSONException
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.sdk.framework.PageAccessDataHandle
 * JD-Core Version:    0.7.0.1
 */