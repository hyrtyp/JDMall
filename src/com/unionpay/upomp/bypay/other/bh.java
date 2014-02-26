package com.unionpay.upomp.bypay.other;

import com.unionpay.upomp.bypay.util.Utils;

public class bh
  extends eu
{
  private String a;
  private String b = "";
  private String c = "";
  
  public bh(cq paramcq, String paramString1, String paramString2, String paramString3)
  {
    super(paramcq);
    this.jdField_a_of_type_JavaLangString = "";
    this.jdField_a_of_type_JavaLangString = Utils.i(paramString1);
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
    //   5: new 41	java/net/URL
    //   8: dup
    //   9: aload_0
    //   10: getfield 17	com/unionpay/upomp/bypay/other/bh:jdField_a_of_type_JavaLangString	Ljava/lang/String;
    //   13: invokevirtual 47	java/lang/String:trim	()Ljava/lang/String;
    //   16: invokespecial 50	java/net/URL:<init>	(Ljava/lang/String;)V
    //   19: astore_3
    //   20: aload_3
    //   21: invokevirtual 54	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   24: checkcast 56	java/net/HttpURLConnection
    //   27: astore 5
    //   29: aload 5
    //   31: getstatic 62	com/unionpay/upomp/bypay/other/eh:t	I
    //   34: invokevirtual 66	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   37: aload 5
    //   39: ldc 68
    //   41: ldc 70
    //   43: invokevirtual 74	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   46: aload 5
    //   48: ldc 76
    //   50: ldc 78
    //   52: invokevirtual 74	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   55: getstatic 81	com/unionpay/upomp/bypay/other/eh:L	Ljava/lang/String;
    //   58: ldc 15
    //   60: invokevirtual 85	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   63: ifne +13 -> 76
    //   66: aload 5
    //   68: ldc 87
    //   70: getstatic 81	com/unionpay/upomp/bypay/other/eh:L	Ljava/lang/String;
    //   73: invokevirtual 74	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   76: aload 5
    //   78: ldc 89
    //   80: ldc 91
    //   82: invokevirtual 74	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   85: aload 5
    //   87: iconst_1
    //   88: invokevirtual 95	java/net/HttpURLConnection:setDoInput	(Z)V
    //   91: aload 5
    //   93: iconst_1
    //   94: invokevirtual 98	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   97: aload 5
    //   99: ldc 100
    //   101: invokevirtual 103	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   104: aload 5
    //   106: invokevirtual 107	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   109: aload_0
    //   110: getfield 19	com/unionpay/upomp/bypay/other/bh:b	Ljava/lang/String;
    //   113: invokevirtual 47	java/lang/String:trim	()Ljava/lang/String;
    //   116: ldc 109
    //   118: invokevirtual 113	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   121: invokevirtual 119	java/io/OutputStream:write	([B)V
    //   124: aload 5
    //   126: invokevirtual 123	java/net/HttpURLConnection:getResponseCode	()I
    //   129: istore 23
    //   131: iload 23
    //   133: istore_2
    //   134: aload_0
    //   135: getfield 30	com/unionpay/upomp/bypay/other/bh:jdField_a_of_type_Boolean	Z
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
    //   157: invokevirtual 129	java/io/InputStreamReader:close	()V
    //   160: aload_1
    //   161: ifnull +7 -> 168
    //   164: aload_1
    //   165: invokevirtual 132	java/io/BufferedReader:close	()V
    //   168: aload 11
    //   170: ifnull +8 -> 178
    //   173: aload 11
    //   175: invokevirtual 135	java/io/InputStream:close	()V
    //   178: aload 5
    //   180: ifnull +8 -> 188
    //   183: aload 5
    //   185: invokevirtual 138	java/net/HttpURLConnection:disconnect	()V
    //   188: iload 9
    //   190: invokestatic 144	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   193: areturn
    //   194: astore 25
    //   196: iconst_0
    //   197: putstatic 147	com/unionpay/upomp/bypay/other/eh:jdField_f_of_type_Int	I
    //   200: aload 25
    //   202: invokevirtual 150	java/net/MalformedURLException:printStackTrace	()V
    //   205: aconst_null
    //   206: astore_3
    //   207: goto -187 -> 20
    //   210: astore 4
    //   212: iconst_0
    //   213: putstatic 147	com/unionpay/upomp/bypay/other/eh:jdField_f_of_type_Int	I
    //   216: aload 4
    //   218: invokevirtual 151	java/io/IOException:printStackTrace	()V
    //   221: aconst_null
    //   222: astore 5
    //   224: goto -195 -> 29
    //   227: astore 6
    //   229: iconst_0
    //   230: putstatic 147	com/unionpay/upomp/bypay/other/eh:jdField_f_of_type_Int	I
    //   233: aload 6
    //   235: invokevirtual 152	java/net/ProtocolException:printStackTrace	()V
    //   238: goto -134 -> 104
    //   241: astore 24
    //   243: iconst_0
    //   244: putstatic 147	com/unionpay/upomp/bypay/other/eh:jdField_f_of_type_Int	I
    //   247: aload 24
    //   249: invokevirtual 153	java/io/UnsupportedEncodingException:printStackTrace	()V
    //   252: goto -128 -> 124
    //   255: astore 7
    //   257: iconst_0
    //   258: putstatic 147	com/unionpay/upomp/bypay/other/eh:jdField_f_of_type_Int	I
    //   261: aload 7
    //   263: invokevirtual 151	java/io/IOException:printStackTrace	()V
    //   266: goto -142 -> 124
    //   269: astore 8
    //   271: aload 8
    //   273: invokevirtual 151	java/io/IOException:printStackTrace	()V
    //   276: goto -142 -> 134
    //   279: iload_2
    //   280: sipush 200
    //   283: if_icmplt +169 -> 452
    //   286: iload_2
    //   287: sipush 299
    //   290: if_icmpgt +162 -> 452
    //   293: aload 5
    //   295: invokevirtual 157	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   298: astore 22
    //   300: aload 22
    //   302: astore 11
    //   304: new 125	java/io/InputStreamReader
    //   307: dup
    //   308: aload 11
    //   310: invokespecial 160	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   313: astore 16
    //   315: new 131	java/io/BufferedReader
    //   318: dup
    //   319: aload 16
    //   321: invokespecial 163	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   324: astore 17
    //   326: new 165	java/lang/StringBuffer
    //   329: dup
    //   330: invokespecial 167	java/lang/StringBuffer:<init>	()V
    //   333: astore 18
    //   335: aload 17
    //   337: invokevirtual 170	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   340: astore 20
    //   342: aload 20
    //   344: ifnonnull +46 -> 390
    //   347: aload_0
    //   348: getfield 21	com/unionpay/upomp/bypay/other/bh:c	Ljava/lang/String;
    //   351: getstatic 172	com/unionpay/upomp/bypay/other/eh:jdField_f_of_type_JavaLangString	Ljava/lang/String;
    //   354: invokevirtual 85	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   357: ifne +54 -> 411
    //   360: aconst_null
    //   361: putstatic 175	com/unionpay/upomp/bypay/other/eh:aN	Ljava/lang/String;
    //   364: aload 17
    //   366: astore_1
    //   367: iload_2
    //   368: istore 9
    //   370: aload 16
    //   372: astore 10
    //   374: goto -224 -> 150
    //   377: astore 15
    //   379: aload 15
    //   381: invokevirtual 151	java/io/IOException:printStackTrace	()V
    //   384: aconst_null
    //   385: astore 11
    //   387: goto -83 -> 304
    //   390: aload 18
    //   392: aload 20
    //   394: invokevirtual 179	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   397: pop
    //   398: goto -63 -> 335
    //   401: astore 19
    //   403: aload 19
    //   405: invokevirtual 151	java/io/IOException:printStackTrace	()V
    //   408: goto -61 -> 347
    //   411: aload 18
    //   413: invokevirtual 182	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   416: putstatic 175	com/unionpay/upomp/bypay/other/eh:aN	Ljava/lang/String;
    //   419: goto -55 -> 364
    //   422: astore 14
    //   424: aload 14
    //   426: invokevirtual 151	java/io/IOException:printStackTrace	()V
    //   429: goto -269 -> 160
    //   432: astore 13
    //   434: aload 13
    //   436: invokevirtual 151	java/io/IOException:printStackTrace	()V
    //   439: goto -271 -> 168
    //   442: astore 12
    //   444: aload 12
    //   446: invokevirtual 151	java/io/IOException:printStackTrace	()V
    //   449: goto -271 -> 178
    //   452: iload_2
    //   453: istore 9
    //   455: aconst_null
    //   456: astore_1
    //   457: aconst_null
    //   458: astore 10
    //   460: aconst_null
    //   461: astore 11
    //   463: goto -313 -> 150
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	466	0	this	bh
    //   1	456	1	localObject1	java.lang.Object
    //   4	449	2	i	int
    //   19	188	3	localURL	java.net.URL
    //   210	7	4	localIOException1	java.io.IOException
    //   27	267	5	localHttpURLConnection	java.net.HttpURLConnection
    //   227	7	6	localProtocolException	java.net.ProtocolException
    //   255	7	7	localIOException2	java.io.IOException
    //   269	3	8	localIOException3	java.io.IOException
    //   145	309	9	j	int
    //   148	311	10	localObject2	java.lang.Object
    //   142	320	11	localObject3	java.lang.Object
    //   442	3	12	localIOException4	java.io.IOException
    //   432	3	13	localIOException5	java.io.IOException
    //   422	3	14	localIOException6	java.io.IOException
    //   377	3	15	localIOException7	java.io.IOException
    //   313	58	16	localInputStreamReader	java.io.InputStreamReader
    //   324	41	17	localBufferedReader	java.io.BufferedReader
    //   333	79	18	localStringBuffer	java.lang.StringBuffer
    //   401	3	19	localIOException8	java.io.IOException
    //   340	53	20	str	String
    //   298	3	22	localInputStream	java.io.InputStream
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
    //   293	300	377	java/io/IOException
    //   335	342	401	java/io/IOException
    //   390	398	401	java/io/IOException
    //   155	160	422	java/io/IOException
    //   164	168	432	java/io/IOException
    //   173	178	442	java/io/IOException
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.bh
 * JD-Core Version:    0.7.0.1
 */