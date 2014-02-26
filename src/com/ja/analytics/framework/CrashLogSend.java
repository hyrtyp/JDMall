package com.ja.analytics.framework;

import com.ja.analytics.logcrash.CrashLog;
import com.ja.analytics.net.HttpCallBackListener;
import com.ja.analytics.utils.LogUtil;
import org.json.JSONObject;

public class CrashLogSend
{
  private static final String TAG = CrashLogSend.class.getName();
  private static boolean isSendOK;
  private static CrashLogSend mDataHandle = new CrashLogSend();
  
  public static Boolean getSendFlag()
  {
    return Boolean.valueOf(isSendOK);
  }
  
  public static CrashLogSend getSingleton()
  {
    return mDataHandle;
  }
  
  public static void setSendFlag(Boolean paramBoolean)
  {
    isSendOK = paramBoolean.booleanValue();
  }
  
  /* Error */
  public void sendData(android.content.Context paramContext, org.json.JSONArray paramJSONArray)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 20	com/ja/analytics/framework/CrashLogSend:TAG	Ljava/lang/String;
    //   5: ldc 51
    //   7: invokestatic 57	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   10: pop
    //   11: aload_2
    //   12: ifnonnull +6 -> 18
    //   15: aload_0
    //   16: monitorexit
    //   17: return
    //   18: aload_1
    //   19: ldc 59
    //   21: aload_2
    //   22: new 61	com/ja/analytics/framework/CrashLogSend$1
    //   25: dup
    //   26: aload_0
    //   27: invokespecial 64	com/ja/analytics/framework/CrashLogSend$1:<init>	(Lcom/ja/analytics/framework/CrashLogSend;)V
    //   30: invokestatic 70	com/ja/analytics/net/HttpUtils:postCrash	(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;Lcom/ja/analytics/net/HttpCallBackListener;)V
    //   33: goto -18 -> 15
    //   36: astore 5
    //   38: aload 5
    //   40: invokestatic 74	com/ja/analytics/utils/LogUtil:logException	(Ljava/lang/Throwable;)I
    //   43: pop
    //   44: goto -29 -> 15
    //   47: astore_3
    //   48: aload_0
    //   49: monitorexit
    //   50: aload_3
    //   51: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	this	CrashLogSend
    //   0	52	1	paramContext	android.content.Context
    //   0	52	2	paramJSONArray	org.json.JSONArray
    //   47	4	3	localObject	Object
    //   36	3	5	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   18	33	36	java/lang/Exception
    //   2	11	47	finally
    //   18	33	47	finally
    //   38	44	47	finally
  }
  
  /* Error */
  public void sendFiveExceptionDataToServer(android.content.Context paramContext, org.json.JSONArray paramJSONArray)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 20	com/ja/analytics/framework/CrashLogSend:TAG	Ljava/lang/String;
    //   5: ldc 81
    //   7: invokestatic 57	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   10: pop
    //   11: aload_2
    //   12: ifnonnull +15 -> 27
    //   15: getstatic 20	com/ja/analytics/framework/CrashLogSend:TAG	Ljava/lang/String;
    //   18: ldc 83
    //   20: invokestatic 57	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   23: pop
    //   24: aload_0
    //   25: monitorexit
    //   26: return
    //   27: aload_2
    //   28: invokevirtual 89	org/json/JSONArray:length	()I
    //   31: istore 6
    //   33: iload 6
    //   35: iconst_5
    //   36: idiv
    //   37: istore 7
    //   39: iload 6
    //   41: iconst_5
    //   42: irem
    //   43: istore 8
    //   45: iconst_0
    //   46: istore 9
    //   48: iconst_0
    //   49: istore 10
    //   51: iload 6
    //   53: iconst_5
    //   54: if_icmplt +446 -> 500
    //   57: iconst_0
    //   58: istore 24
    //   60: iload 24
    //   62: iload 7
    //   64: if_icmplt +179 -> 243
    //   67: ldc2_w 90
    //   70: invokestatic 97	java/lang/Thread:sleep	(J)V
    //   73: getstatic 20	com/ja/analytics/framework/CrashLogSend:TAG	Ljava/lang/String;
    //   76: new 99	java/lang/StringBuilder
    //   79: dup
    //   80: ldc 101
    //   82: invokespecial 104	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   85: iload 9
    //   87: invokevirtual 108	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   90: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   93: invokestatic 57	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   96: pop
    //   97: getstatic 20	com/ja/analytics/framework/CrashLogSend:TAG	Ljava/lang/String;
    //   100: new 99	java/lang/StringBuilder
    //   103: dup
    //   104: ldc 113
    //   106: invokespecial 104	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   109: iload 10
    //   111: invokevirtual 108	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   114: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   117: invokestatic 57	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   120: pop
    //   121: new 85	org/json/JSONArray
    //   124: dup
    //   125: invokespecial 114	org/json/JSONArray:<init>	()V
    //   128: astore 39
    //   130: iconst_0
    //   131: istore 40
    //   133: iload 9
    //   135: iload 8
    //   137: if_icmplt +312 -> 449
    //   140: aload 39
    //   142: invokevirtual 89	org/json/JSONArray:length	()I
    //   145: ifeq -121 -> 24
    //   148: aload_0
    //   149: aload_1
    //   150: aload 39
    //   152: invokevirtual 116	com/ja/analytics/framework/CrashLogSend:sendData	(Landroid/content/Context;Lorg/json/JSONArray;)V
    //   155: invokestatic 118	com/ja/analytics/framework/CrashLogSend:getSendFlag	()Ljava/lang/Boolean;
    //   158: invokevirtual 45	java/lang/Boolean:booleanValue	()Z
    //   161: ifeq -137 -> 24
    //   164: new 85	org/json/JSONArray
    //   167: dup
    //   168: invokespecial 114	org/json/JSONArray:<init>	()V
    //   171: pop
    //   172: invokestatic 124	com/ja/analytics/db/CrashTable:getIdIndexArray	()Lorg/json/JSONArray;
    //   175: astore 42
    //   177: aload 42
    //   179: invokevirtual 89	org/json/JSONArray:length	()I
    //   182: istore 43
    //   184: iload 43
    //   186: ifeq -162 -> 24
    //   189: iconst_m1
    //   190: istore 44
    //   192: iload 10
    //   194: istore 45
    //   196: iload 45
    //   198: iload 8
    //   200: if_icmpge -176 -> 24
    //   203: aload 42
    //   205: iload 45
    //   207: invokevirtual 128	org/json/JSONArray:getInt	(I)I
    //   210: istore 48
    //   212: iload 48
    //   214: istore 44
    //   216: iload 44
    //   218: iconst_m1
    //   219: if_icmpeq +453 -> 672
    //   222: aload_1
    //   223: iload 44
    //   225: invokestatic 133	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   228: invokestatic 137	com/ja/analytics/db/CrashTable:updateCrashLogSendFlagItem	(Landroid/content/Context;Ljava/lang/Integer;)V
    //   231: aload_1
    //   232: iload 44
    //   234: invokestatic 141	com/ja/analytics/db/CrashTable:deleteCrashDataItem	(Landroid/content/Context;I)V
    //   237: iconst_m1
    //   238: istore 44
    //   240: goto +432 -> 672
    //   243: new 85	org/json/JSONArray
    //   246: dup
    //   247: invokespecial 114	org/json/JSONArray:<init>	()V
    //   250: astore 25
    //   252: iconst_0
    //   253: istore 26
    //   255: iload 26
    //   257: iconst_5
    //   258: if_icmplt +62 -> 320
    //   261: aload_0
    //   262: aload_1
    //   263: aload 25
    //   265: invokevirtual 116	com/ja/analytics/framework/CrashLogSend:sendData	(Landroid/content/Context;Lorg/json/JSONArray;)V
    //   268: invokestatic 118	com/ja/analytics/framework/CrashLogSend:getSendFlag	()Ljava/lang/Boolean;
    //   271: invokevirtual 45	java/lang/Boolean:booleanValue	()Z
    //   274: ifeq +40 -> 314
    //   277: new 85	org/json/JSONArray
    //   280: dup
    //   281: invokespecial 114	org/json/JSONArray:<init>	()V
    //   284: pop
    //   285: invokestatic 124	com/ja/analytics/db/CrashTable:getIdIndexArray	()Lorg/json/JSONArray;
    //   288: astore 28
    //   290: aload 28
    //   292: invokevirtual 89	org/json/JSONArray:length	()I
    //   295: istore 29
    //   297: iload 29
    //   299: ifeq -232 -> 67
    //   302: iconst_m1
    //   303: istore 30
    //   305: iconst_0
    //   306: istore 31
    //   308: iload 31
    //   310: iconst_5
    //   311: if_icmplt +61 -> 372
    //   314: iinc 24 1
    //   317: goto -257 -> 60
    //   320: aload_2
    //   321: iload 9
    //   323: invokevirtual 145	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   326: astore 54
    //   328: aload 25
    //   330: iload 26
    //   332: aload 54
    //   334: invokevirtual 149	org/json/JSONArray:put	(ILjava/lang/Object;)Lorg/json/JSONArray;
    //   337: pop
    //   338: iload 26
    //   340: iconst_5
    //   341: if_icmpge +6 -> 347
    //   344: iinc 9 1
    //   347: iinc 26 1
    //   350: goto -95 -> 255
    //   353: astore 52
    //   355: getstatic 20	com/ja/analytics/framework/CrashLogSend:TAG	Ljava/lang/String;
    //   358: aload 52
    //   360: invokestatic 152	com/ja/analytics/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   363: pop
    //   364: goto -17 -> 347
    //   367: astore_3
    //   368: aload_0
    //   369: monitorexit
    //   370: aload_3
    //   371: athrow
    //   372: aload 28
    //   374: iload 10
    //   376: invokevirtual 128	org/json/JSONArray:getInt	(I)I
    //   379: istore 34
    //   381: iload 34
    //   383: istore 30
    //   385: iload 31
    //   387: iconst_5
    //   388: if_icmpge +6 -> 394
    //   391: iinc 10 1
    //   394: iload 30
    //   396: iconst_m1
    //   397: if_icmpeq +281 -> 678
    //   400: aload_1
    //   401: iload 30
    //   403: invokestatic 133	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   406: invokestatic 137	com/ja/analytics/db/CrashTable:updateCrashLogSendFlagItem	(Landroid/content/Context;Ljava/lang/Integer;)V
    //   409: aload_1
    //   410: iload 30
    //   412: invokestatic 141	com/ja/analytics/db/CrashTable:deleteCrashDataItem	(Landroid/content/Context;I)V
    //   415: iconst_m1
    //   416: istore 30
    //   418: goto +260 -> 678
    //   421: astore 32
    //   423: getstatic 20	com/ja/analytics/framework/CrashLogSend:TAG	Ljava/lang/String;
    //   426: aload 32
    //   428: invokestatic 152	com/ja/analytics/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   431: pop
    //   432: goto -38 -> 394
    //   435: astore 35
    //   437: getstatic 20	com/ja/analytics/framework/CrashLogSend:TAG	Ljava/lang/String;
    //   440: aload 35
    //   442: invokestatic 152	com/ja/analytics/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   445: pop
    //   446: goto -373 -> 73
    //   449: aload 39
    //   451: iload 40
    //   453: aload_2
    //   454: iload 9
    //   456: invokevirtual 145	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   459: invokevirtual 149	org/json/JSONArray:put	(ILjava/lang/Object;)Lorg/json/JSONArray;
    //   462: pop
    //   463: iinc 40 1
    //   466: iinc 9 1
    //   469: goto -336 -> 133
    //   472: astore 49
    //   474: getstatic 20	com/ja/analytics/framework/CrashLogSend:TAG	Ljava/lang/String;
    //   477: aload 49
    //   479: invokestatic 152	com/ja/analytics/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   482: pop
    //   483: goto -20 -> 463
    //   486: astore 46
    //   488: getstatic 20	com/ja/analytics/framework/CrashLogSend:TAG	Ljava/lang/String;
    //   491: aload 46
    //   493: invokestatic 152	com/ja/analytics/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   496: pop
    //   497: goto -281 -> 216
    //   500: new 85	org/json/JSONArray
    //   503: dup
    //   504: invokespecial 114	org/json/JSONArray:<init>	()V
    //   507: astore 11
    //   509: iconst_0
    //   510: istore 12
    //   512: iload 12
    //   514: iload 8
    //   516: if_icmplt +108 -> 624
    //   519: aload 11
    //   521: invokevirtual 89	org/json/JSONArray:length	()I
    //   524: ifeq -500 -> 24
    //   527: aload_0
    //   528: aload_1
    //   529: aload 11
    //   531: invokevirtual 116	com/ja/analytics/framework/CrashLogSend:sendData	(Landroid/content/Context;Lorg/json/JSONArray;)V
    //   534: invokestatic 118	com/ja/analytics/framework/CrashLogSend:getSendFlag	()Ljava/lang/Boolean;
    //   537: invokevirtual 45	java/lang/Boolean:booleanValue	()Z
    //   540: ifeq -516 -> 24
    //   543: new 85	org/json/JSONArray
    //   546: dup
    //   547: invokespecial 114	org/json/JSONArray:<init>	()V
    //   550: pop
    //   551: invokestatic 124	com/ja/analytics/db/CrashTable:getIdIndexArray	()Lorg/json/JSONArray;
    //   554: astore 14
    //   556: aload 14
    //   558: invokevirtual 89	org/json/JSONArray:length	()I
    //   561: istore 15
    //   563: iload 15
    //   565: ifeq -541 -> 24
    //   568: iconst_m1
    //   569: istore 16
    //   571: iconst_0
    //   572: istore 17
    //   574: iload 17
    //   576: iload 8
    //   578: if_icmpge -554 -> 24
    //   581: aload 14
    //   583: iload 17
    //   585: invokevirtual 128	org/json/JSONArray:getInt	(I)I
    //   588: istore 20
    //   590: iload 20
    //   592: istore 16
    //   594: iload 16
    //   596: iconst_m1
    //   597: if_icmpeq +21 -> 618
    //   600: aload_1
    //   601: iload 16
    //   603: invokestatic 133	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   606: invokestatic 137	com/ja/analytics/db/CrashTable:updateCrashLogSendFlagItem	(Landroid/content/Context;Ljava/lang/Integer;)V
    //   609: aload_1
    //   610: iload 16
    //   612: invokestatic 141	com/ja/analytics/db/CrashTable:deleteCrashDataItem	(Landroid/content/Context;I)V
    //   615: iconst_m1
    //   616: istore 16
    //   618: iinc 17 1
    //   621: goto -47 -> 574
    //   624: aload 11
    //   626: iload 12
    //   628: aload_2
    //   629: iload 12
    //   631: invokevirtual 145	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   634: invokevirtual 149	org/json/JSONArray:put	(ILjava/lang/Object;)Lorg/json/JSONArray;
    //   637: pop
    //   638: iinc 12 1
    //   641: goto -129 -> 512
    //   644: astore 21
    //   646: getstatic 20	com/ja/analytics/framework/CrashLogSend:TAG	Ljava/lang/String;
    //   649: aload 21
    //   651: invokestatic 152	com/ja/analytics/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   654: pop
    //   655: goto -17 -> 638
    //   658: astore 18
    //   660: getstatic 20	com/ja/analytics/framework/CrashLogSend:TAG	Ljava/lang/String;
    //   663: aload 18
    //   665: invokestatic 152	com/ja/analytics/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   668: pop
    //   669: goto -75 -> 594
    //   672: iinc 45 1
    //   675: goto -479 -> 196
    //   678: iinc 31 1
    //   681: goto -373 -> 308
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	684	0	this	CrashLogSend
    //   0	684	1	paramContext	android.content.Context
    //   0	684	2	paramJSONArray	org.json.JSONArray
    //   367	4	3	localObject	Object
    //   31	24	6	i	int
    //   37	28	7	j	int
    //   43	536	8	k	int
    //   46	421	9	m	int
    //   49	343	10	n	int
    //   507	118	11	localJSONArray1	org.json.JSONArray
    //   510	129	12	i1	int
    //   554	28	14	localJSONArray2	org.json.JSONArray
    //   561	3	15	i2	int
    //   569	48	16	i3	int
    //   572	47	17	i4	int
    //   658	6	18	localJSONException1	org.json.JSONException
    //   588	3	20	i5	int
    //   644	6	21	localJSONException2	org.json.JSONException
    //   58	257	24	i6	int
    //   250	79	25	localJSONArray3	org.json.JSONArray
    //   253	95	26	i7	int
    //   288	85	28	localJSONArray4	org.json.JSONArray
    //   295	3	29	i8	int
    //   303	114	30	i9	int
    //   306	373	31	i10	int
    //   421	6	32	localJSONException3	org.json.JSONException
    //   379	3	34	i11	int
    //   435	6	35	localInterruptedException	java.lang.InterruptedException
    //   128	322	39	localJSONArray5	org.json.JSONArray
    //   131	333	40	i12	int
    //   175	29	42	localJSONArray6	org.json.JSONArray
    //   182	3	43	i13	int
    //   190	49	44	i14	int
    //   194	479	45	i15	int
    //   486	6	46	localJSONException4	org.json.JSONException
    //   210	3	48	i16	int
    //   472	6	49	localJSONException5	org.json.JSONException
    //   353	6	52	localJSONException6	org.json.JSONException
    //   326	7	54	localJSONObject	JSONObject
    // Exception table:
    //   from	to	target	type
    //   320	338	353	org/json/JSONException
    //   2	11	367	finally
    //   15	24	367	finally
    //   27	39	367	finally
    //   67	73	367	finally
    //   73	130	367	finally
    //   140	184	367	finally
    //   203	212	367	finally
    //   222	237	367	finally
    //   243	252	367	finally
    //   261	297	367	finally
    //   320	338	367	finally
    //   355	364	367	finally
    //   372	381	367	finally
    //   400	415	367	finally
    //   423	432	367	finally
    //   437	446	367	finally
    //   449	463	367	finally
    //   474	483	367	finally
    //   488	497	367	finally
    //   500	509	367	finally
    //   519	563	367	finally
    //   581	590	367	finally
    //   600	615	367	finally
    //   624	638	367	finally
    //   646	655	367	finally
    //   660	669	367	finally
    //   372	381	421	org/json/JSONException
    //   67	73	435	java/lang/InterruptedException
    //   449	463	472	org/json/JSONException
    //   203	212	486	org/json/JSONException
    //   624	638	644	org/json/JSONException
    //   581	590	658	org/json/JSONException
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.analytics.framework.CrashLogSend
 * JD-Core Version:    0.7.0.1
 */