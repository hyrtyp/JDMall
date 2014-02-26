package com.ja.analytics.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StrUtil
{
  public static boolean accessKeyValidation(String paramString)
  {
    return (paramString != null) && (!"".equals(paramString));
  }
  
  public static boolean channelValidation(String paramString)
  {
    if ((paramString == null) || ("".equals(paramString))) {
      return false;
    }
    return Pattern.compile("^[A-Za-z0-9\\s_]{1,20}+$").matcher(paramString).find();
  }
  
  /* Error */
  public static byte[] compress(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aconst_null
    //   3: astore_2
    //   4: aconst_null
    //   5: astore_3
    //   6: new 43	java/io/ByteArrayOutputStream
    //   9: dup
    //   10: invokespecial 44	java/io/ByteArrayOutputStream:<init>	()V
    //   13: astore 4
    //   15: new 46	java/util/zip/GZIPOutputStream
    //   18: dup
    //   19: aload 4
    //   21: invokespecial 49	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   24: astore 5
    //   26: new 51	java/io/ByteArrayInputStream
    //   29: dup
    //   30: aload_0
    //   31: invokespecial 54	java/io/ByteArrayInputStream:<init>	([B)V
    //   34: astore 6
    //   36: aload_0
    //   37: arraylength
    //   38: newarray byte
    //   40: astore 14
    //   42: aload 6
    //   44: aload 14
    //   46: invokevirtual 58	java/io/ByteArrayInputStream:read	([B)I
    //   49: istore 15
    //   51: iload 15
    //   53: iconst_m1
    //   54: if_icmpne +48 -> 102
    //   57: aload 5
    //   59: invokevirtual 61	java/util/zip/GZIPOutputStream:finish	()V
    //   62: aload 4
    //   64: invokevirtual 65	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   67: astore 16
    //   69: aload 5
    //   71: ifnull +8 -> 79
    //   74: aload 5
    //   76: invokevirtual 68	java/util/zip/GZIPOutputStream:close	()V
    //   79: aload 4
    //   81: ifnull +8 -> 89
    //   84: aload 4
    //   86: invokevirtual 69	java/io/ByteArrayOutputStream:close	()V
    //   89: aload 6
    //   91: ifnull +8 -> 99
    //   94: aload 6
    //   96: invokevirtual 70	java/io/ByteArrayInputStream:close	()V
    //   99: aload 16
    //   101: areturn
    //   102: aload 5
    //   104: aload 14
    //   106: iconst_0
    //   107: iload 15
    //   109: invokevirtual 74	java/util/zip/GZIPOutputStream:write	([BII)V
    //   112: goto -70 -> 42
    //   115: astore 9
    //   117: aload 6
    //   119: astore 10
    //   121: aload 5
    //   123: astore 11
    //   125: aload 4
    //   127: astore 12
    //   129: aload 11
    //   131: ifnull +8 -> 139
    //   134: aload 11
    //   136: invokevirtual 68	java/util/zip/GZIPOutputStream:close	()V
    //   139: aload 12
    //   141: ifnull +8 -> 149
    //   144: aload 12
    //   146: invokevirtual 69	java/io/ByteArrayOutputStream:close	()V
    //   149: aload 10
    //   151: ifnull +8 -> 159
    //   154: aload 10
    //   156: invokevirtual 70	java/io/ByteArrayInputStream:close	()V
    //   159: aconst_null
    //   160: areturn
    //   161: astore 7
    //   163: aload_2
    //   164: ifnull +7 -> 171
    //   167: aload_2
    //   168: invokevirtual 68	java/util/zip/GZIPOutputStream:close	()V
    //   171: aload_1
    //   172: ifnull +7 -> 179
    //   175: aload_1
    //   176: invokevirtual 69	java/io/ByteArrayOutputStream:close	()V
    //   179: aload_3
    //   180: ifnull +7 -> 187
    //   183: aload_3
    //   184: invokevirtual 70	java/io/ByteArrayInputStream:close	()V
    //   187: aload 7
    //   189: athrow
    //   190: astore 8
    //   192: goto -5 -> 187
    //   195: astore 7
    //   197: aload 4
    //   199: astore_1
    //   200: aconst_null
    //   201: astore_2
    //   202: aconst_null
    //   203: astore_3
    //   204: goto -41 -> 163
    //   207: astore 7
    //   209: aload 5
    //   211: astore_2
    //   212: aload 4
    //   214: astore_1
    //   215: aconst_null
    //   216: astore_3
    //   217: goto -54 -> 163
    //   220: astore 7
    //   222: aload 6
    //   224: astore_3
    //   225: aload 5
    //   227: astore_2
    //   228: aload 4
    //   230: astore_1
    //   231: goto -68 -> 163
    //   234: astore 13
    //   236: goto -77 -> 159
    //   239: astore 20
    //   241: aconst_null
    //   242: astore 12
    //   244: aconst_null
    //   245: astore 11
    //   247: aconst_null
    //   248: astore 10
    //   250: goto -121 -> 129
    //   253: astore 19
    //   255: aload 4
    //   257: astore 12
    //   259: aconst_null
    //   260: astore 11
    //   262: aconst_null
    //   263: astore 10
    //   265: goto -136 -> 129
    //   268: astore 18
    //   270: aload 5
    //   272: astore 11
    //   274: aload 4
    //   276: astore 12
    //   278: aconst_null
    //   279: astore 10
    //   281: goto -152 -> 129
    //   284: astore 17
    //   286: goto -187 -> 99
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	289	0	paramArrayOfByte	byte[]
    //   1	230	1	localObject1	Object
    //   3	225	2	localObject2	Object
    //   5	220	3	localObject3	Object
    //   13	262	4	localByteArrayOutputStream1	java.io.ByteArrayOutputStream
    //   24	247	5	localGZIPOutputStream1	java.util.zip.GZIPOutputStream
    //   34	189	6	localByteArrayInputStream1	java.io.ByteArrayInputStream
    //   161	27	7	localObject4	Object
    //   195	1	7	localObject5	Object
    //   207	1	7	localObject6	Object
    //   220	1	7	localObject7	Object
    //   190	1	8	localException1	java.lang.Exception
    //   115	1	9	localException2	java.lang.Exception
    //   119	161	10	localByteArrayInputStream2	java.io.ByteArrayInputStream
    //   123	150	11	localGZIPOutputStream2	java.util.zip.GZIPOutputStream
    //   127	150	12	localByteArrayOutputStream2	java.io.ByteArrayOutputStream
    //   234	1	13	localException3	java.lang.Exception
    //   40	65	14	arrayOfByte1	byte[]
    //   49	59	15	i	int
    //   67	33	16	arrayOfByte2	byte[]
    //   284	1	17	localException4	java.lang.Exception
    //   268	1	18	localException5	java.lang.Exception
    //   253	1	19	localException6	java.lang.Exception
    //   239	1	20	localException7	java.lang.Exception
    // Exception table:
    //   from	to	target	type
    //   36	42	115	java/lang/Exception
    //   42	51	115	java/lang/Exception
    //   57	69	115	java/lang/Exception
    //   102	112	115	java/lang/Exception
    //   6	15	161	finally
    //   167	171	190	java/lang/Exception
    //   175	179	190	java/lang/Exception
    //   183	187	190	java/lang/Exception
    //   15	26	195	finally
    //   26	36	207	finally
    //   36	42	220	finally
    //   42	51	220	finally
    //   57	69	220	finally
    //   102	112	220	finally
    //   134	139	234	java/lang/Exception
    //   144	149	234	java/lang/Exception
    //   154	159	234	java/lang/Exception
    //   6	15	239	java/lang/Exception
    //   15	26	253	java/lang/Exception
    //   26	36	268	java/lang/Exception
    //   74	79	284	java/lang/Exception
    //   84	89	284	java/lang/Exception
    //   94	99	284	java/lang/Exception
  }
  
  public static boolean keyValidation(String paramString)
  {
    if ((paramString == null) || ("".equals(paramString))) {
      return false;
    }
    return Pattern.compile("^[\\d]{1,20}+$").matcher(paramString).find();
  }
  
  public static boolean strValidation(String paramString, int paramInt)
  {
    Pattern localPattern1 = Pattern.compile("^[A-Za-z0-9]{1,20}+$");
    Pattern localPattern2 = Pattern.compile("^[-,0-9]+$");
    Matcher localMatcher1 = localPattern1.matcher(paramString);
    Matcher localMatcher2 = localPattern2.matcher(paramString);
    return (localMatcher1.find()) && (!localMatcher2.find());
  }
  
  public String byte2Char(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer(paramArrayOfByte.length);
    for (int i = 0;; i++)
    {
      if (i >= paramArrayOfByte.length) {
        return localStringBuffer.toString();
      }
      localStringBuffer.append((char)paramArrayOfByte[i]);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.analytics.utils.StrUtil
 * JD-Core Version:    0.7.0.1
 */