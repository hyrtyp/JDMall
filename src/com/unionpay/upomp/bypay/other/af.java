package com.unionpay.upomp.bypay.other;

public class af
  extends eu
{
  private String a;
  private String b = "";
  private String c = "";
  
  public af(cq paramcq, String paramString1, String paramString2, String paramString3)
  {
    super(paramcq);
    this.jdField_a_of_type_JavaLangString = "";
    this.jdField_a_of_type_JavaLangString = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.jdField_a_of_type_Boolean = false;
  }
  
  /* Error */
  public java.lang.Integer a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: bipush 254
    //   4: istore_2
    //   5: new 35	java/net/URL
    //   8: dup
    //   9: aload_0
    //   10: getfield 17	com/unionpay/upomp/bypay/other/af:jdField_a_of_type_JavaLangString	Ljava/lang/String;
    //   13: invokevirtual 41	java/lang/String:trim	()Ljava/lang/String;
    //   16: invokespecial 44	java/net/URL:<init>	(Ljava/lang/String;)V
    //   19: astore_3
    //   20: aload_3
    //   21: invokevirtual 48	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   24: checkcast 50	java/net/HttpURLConnection
    //   27: astore 5
    //   29: aload 5
    //   31: getstatic 56	com/unionpay/upomp/bypay/other/eh:t	I
    //   34: invokevirtual 60	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   37: aload 5
    //   39: ldc 62
    //   41: ldc 64
    //   43: invokevirtual 68	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   46: aload 5
    //   48: ldc 70
    //   50: ldc 72
    //   52: invokevirtual 68	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   55: getstatic 75	com/unionpay/upomp/bypay/other/eh:L	Ljava/lang/String;
    //   58: ldc 15
    //   60: invokevirtual 79	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   63: ifne +13 -> 76
    //   66: aload 5
    //   68: ldc 81
    //   70: getstatic 75	com/unionpay/upomp/bypay/other/eh:L	Ljava/lang/String;
    //   73: invokevirtual 68	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   76: aload 5
    //   78: ldc 83
    //   80: ldc 85
    //   82: invokevirtual 68	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   85: aload 5
    //   87: iconst_1
    //   88: invokevirtual 89	java/net/HttpURLConnection:setDoInput	(Z)V
    //   91: aload 5
    //   93: iconst_1
    //   94: invokevirtual 92	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   97: aload 5
    //   99: ldc 94
    //   101: invokevirtual 97	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   104: aload 5
    //   106: invokevirtual 101	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   109: aload_0
    //   110: getfield 19	com/unionpay/upomp/bypay/other/af:b	Ljava/lang/String;
    //   113: invokevirtual 41	java/lang/String:trim	()Ljava/lang/String;
    //   116: ldc 103
    //   118: invokevirtual 107	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   121: invokevirtual 113	java/io/OutputStream:write	([B)V
    //   124: aload 5
    //   126: invokevirtual 117	java/net/HttpURLConnection:getResponseCode	()I
    //   129: istore 23
    //   131: iload 23
    //   133: istore_2
    //   134: aload_0
    //   135: getfield 24	com/unionpay/upomp/bypay/other/af:jdField_a_of_type_Boolean	Z
    //   138: ifeq +141 -> 279
    //   141: aconst_null
    //   142: astore 11
    //   144: iconst_m1
    //   145: istore 9
    //   147: aconst_null
    //   148: astore 10
    //   150: aload 10
    //   152: ifnull +8 -> 160
    //   155: aload 10
    //   157: invokevirtual 123	java/io/InputStreamReader:close	()V
    //   160: aload_1
    //   161: ifnull +7 -> 168
    //   164: aload_1
    //   165: invokevirtual 126	java/io/BufferedReader:close	()V
    //   168: aload 11
    //   170: ifnull +8 -> 178
    //   173: aload 11
    //   175: invokevirtual 129	java/io/InputStream:close	()V
    //   178: aload 5
    //   180: ifnull +8 -> 188
    //   183: aload 5
    //   185: invokevirtual 132	java/net/HttpURLConnection:disconnect	()V
    //   188: iload 9
    //   190: invokestatic 138	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   193: areturn
    //   194: astore 25
    //   196: iconst_0
    //   197: putstatic 141	com/unionpay/upomp/bypay/other/eh:f	I
    //   200: aload 25
    //   202: invokevirtual 144	java/net/MalformedURLException:printStackTrace	()V
    //   205: aconst_null
    //   206: astore_3
    //   207: goto -187 -> 20
    //   210: astore 4
    //   212: iconst_0
    //   213: putstatic 141	com/unionpay/upomp/bypay/other/eh:f	I
    //   216: aload 4
    //   218: invokevirtual 145	java/io/IOException:printStackTrace	()V
    //   221: aconst_null
    //   222: astore 5
    //   224: goto -195 -> 29
    //   227: astore 6
    //   229: iconst_0
    //   230: putstatic 141	com/unionpay/upomp/bypay/other/eh:f	I
    //   233: aload 6
    //   235: invokevirtual 146	java/net/ProtocolException:printStackTrace	()V
    //   238: goto -134 -> 104
    //   241: astore 24
    //   243: iconst_0
    //   244: putstatic 141	com/unionpay/upomp/bypay/other/eh:f	I
    //   247: aload 24
    //   249: invokevirtual 147	java/io/UnsupportedEncodingException:printStackTrace	()V
    //   252: goto -128 -> 124
    //   255: astore 7
    //   257: iconst_0
    //   258: putstatic 141	com/unionpay/upomp/bypay/other/eh:f	I
    //   261: aload 7
    //   263: invokevirtual 145	java/io/IOException:printStackTrace	()V
    //   266: goto -142 -> 124
    //   269: astore 8
    //   271: aload 8
    //   273: invokevirtual 145	java/io/IOException:printStackTrace	()V
    //   276: goto -142 -> 134
    //   279: iload_2
    //   280: sipush 200
    //   283: if_icmplt +175 -> 458
    //   286: iload_2
    //   287: sipush 299
    //   290: if_icmpgt +168 -> 458
    //   293: getstatic 150	com/unionpay/upomp/bypay/other/eh:aM	Ljava/lang/String;
    //   296: ifnonnull +162 -> 458
    //   299: aload 5
    //   301: invokevirtual 154	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   304: astore 22
    //   306: aload 22
    //   308: astore 11
    //   310: new 119	java/io/InputStreamReader
    //   313: dup
    //   314: aload 11
    //   316: invokespecial 157	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   319: astore 16
    //   321: new 125	java/io/BufferedReader
    //   324: dup
    //   325: aload 16
    //   327: invokespecial 160	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   330: astore 17
    //   332: new 162	java/lang/StringBuffer
    //   335: dup
    //   336: invokespecial 164	java/lang/StringBuffer:<init>	()V
    //   339: astore 18
    //   341: aload 17
    //   343: invokevirtual 167	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   346: astore 20
    //   348: aload 20
    //   350: ifnonnull +46 -> 396
    //   353: aload_0
    //   354: getfield 21	com/unionpay/upomp/bypay/other/af:c	Ljava/lang/String;
    //   357: getstatic 170	com/unionpay/upomp/bypay/other/eh:e	Ljava/lang/String;
    //   360: invokevirtual 79	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   363: ifne +54 -> 417
    //   366: aconst_null
    //   367: putstatic 150	com/unionpay/upomp/bypay/other/eh:aM	Ljava/lang/String;
    //   370: aload 17
    //   372: astore_1
    //   373: iload_2
    //   374: istore 9
    //   376: aload 16
    //   378: astore 10
    //   380: goto -230 -> 150
    //   383: astore 15
    //   385: aload 15
    //   387: invokevirtual 145	java/io/IOException:printStackTrace	()V
    //   390: aconst_null
    //   391: astore 11
    //   393: goto -83 -> 310
    //   396: aload 18
    //   398: aload 20
    //   400: invokevirtual 174	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   403: pop
    //   404: goto -63 -> 341
    //   407: astore 19
    //   409: aload 19
    //   411: invokevirtual 145	java/io/IOException:printStackTrace	()V
    //   414: goto -61 -> 353
    //   417: aload 18
    //   419: invokevirtual 177	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   422: putstatic 150	com/unionpay/upomp/bypay/other/eh:aM	Ljava/lang/String;
    //   425: goto -55 -> 370
    //   428: astore 14
    //   430: aload 14
    //   432: invokevirtual 145	java/io/IOException:printStackTrace	()V
    //   435: goto -275 -> 160
    //   438: astore 13
    //   440: aload 13
    //   442: invokevirtual 145	java/io/IOException:printStackTrace	()V
    //   445: goto -277 -> 168
    //   448: astore 12
    //   450: aload 12
    //   452: invokevirtual 145	java/io/IOException:printStackTrace	()V
    //   455: goto -277 -> 178
    //   458: iload_2
    //   459: istore 9
    //   461: aconst_null
    //   462: astore_1
    //   463: aconst_null
    //   464: astore 10
    //   466: aconst_null
    //   467: astore 11
    //   469: goto -319 -> 150
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	472	0	this	af
    //   1	462	1	localObject1	java.lang.Object
    //   4	455	2	i	int
    //   19	188	3	localURL	java.net.URL
    //   210	7	4	localIOException1	java.io.IOException
    //   27	273	5	localHttpURLConnection	java.net.HttpURLConnection
    //   227	7	6	localProtocolException	java.net.ProtocolException
    //   255	7	7	localIOException2	java.io.IOException
    //   269	3	8	localIOException3	java.io.IOException
    //   145	315	9	j	int
    //   148	317	10	localObject2	java.lang.Object
    //   142	326	11	localObject3	java.lang.Object
    //   448	3	12	localIOException4	java.io.IOException
    //   438	3	13	localIOException5	java.io.IOException
    //   428	3	14	localIOException6	java.io.IOException
    //   383	3	15	localIOException7	java.io.IOException
    //   319	58	16	localInputStreamReader	java.io.InputStreamReader
    //   330	41	17	localBufferedReader	java.io.BufferedReader
    //   339	79	18	localStringBuffer	java.lang.StringBuffer
    //   407	3	19	localIOException8	java.io.IOException
    //   346	53	20	str	String
    //   304	3	22	localInputStream	java.io.InputStream
    //   129	3	23	k	int
    //   241	7	24	localUnsupportedEncodingException	java.io.UnsupportedEncodingException
    //   194	7	25	localMalformedURLException	java.net.MalformedURLException
    // Exception table:
    //   from	to	target	type
    //   5	20	194	java/net/MalformedURLException
    //   20	29	210	java/io/IOException
    //   97	104	227	java/net/ProtocolException
    //   104	124	241	java/io/UnsupportedEncodingException
    //   104	124	255	java/io/IOException
    //   124	131	269	java/io/IOException
    //   299	306	383	java/io/IOException
    //   341	348	407	java/io/IOException
    //   396	404	407	java/io/IOException
    //   155	160	428	java/io/IOException
    //   164	168	438	java/io/IOException
    //   173	178	448	java/io/IOException
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.af
 * JD-Core Version:    0.7.0.1
 */