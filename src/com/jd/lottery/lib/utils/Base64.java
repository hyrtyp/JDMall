package com.jd.lottery.lib.utils;

import java.io.IOException;
import java.io.OutputStream;

public class Base64
{
  private static final char[] legalChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
  
  private static int decode(char paramChar)
  {
    if ((paramChar >= 'A') && (paramChar <= 'Z')) {
      return paramChar - 'A';
    }
    if ((paramChar >= 'a') && (paramChar <= 'z')) {
      return 26 + (paramChar - 'a');
    }
    if ((paramChar >= '0') && (paramChar <= '9')) {
      return 26 + (26 + (paramChar - '0'));
    }
    switch (paramChar)
    {
    default: 
      throw new RuntimeException("unexpected code: " + paramChar);
    case '+': 
      return 62;
    case '/': 
      return 63;
    }
    return 0;
  }
  
  private static void decode(String paramString, OutputStream paramOutputStream)
    throws IOException
  {
    int i = 0;
    int j = paramString.length();
    for (;;)
    {
      if ((i >= j) || (paramString.charAt(i) > ' ')) {
        if (i != j) {
          break label34;
        }
      }
      label34:
      int k;
      do
      {
        do
        {
          return;
          i++;
          break;
          k = (decode(paramString.charAt(i)) << 18) + (decode(paramString.charAt(i + 1)) << 12) + (decode(paramString.charAt(i + 2)) << 6) + decode(paramString.charAt(i + 3));
          paramOutputStream.write(0xFF & k >> 16);
        } while (paramString.charAt(i + 2) == '=');
        paramOutputStream.write(0xFF & k >> 8);
      } while (paramString.charAt(i + 3) == '=');
      paramOutputStream.write(k & 0xFF);
      i += 4;
    }
  }
  
  /* Error */
  public static byte[] decode(String paramString)
  {
    // Byte code:
    //   0: new 63	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 64	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_1
    //   8: aload_0
    //   9: aload_1
    //   10: invokestatic 66	com/jd/lottery/lib/utils/Base64:decode	(Ljava/lang/String;Ljava/io/OutputStream;)V
    //   13: aload_1
    //   14: invokevirtual 70	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   17: astore_3
    //   18: aload_1
    //   19: invokevirtual 73	java/io/ByteArrayOutputStream:close	()V
    //   22: aload_3
    //   23: areturn
    //   24: astore_2
    //   25: new 25	java/lang/RuntimeException
    //   28: dup
    //   29: invokespecial 74	java/lang/RuntimeException:<init>	()V
    //   32: athrow
    //   33: astore 4
    //   35: getstatic 80	java/lang/System:err	Ljava/io/PrintStream;
    //   38: new 27	java/lang/StringBuilder
    //   41: dup
    //   42: ldc 82
    //   44: invokespecial 32	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   47: aload 4
    //   49: invokevirtual 83	java/io/IOException:toString	()Ljava/lang/String;
    //   52: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: invokevirtual 40	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   58: invokevirtual 91	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   61: aload_3
    //   62: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	63	0	paramString	String
    //   7	12	1	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   24	1	2	localIOException1	IOException
    //   17	45	3	arrayOfByte	byte[]
    //   33	15	4	localIOException2	IOException
    // Exception table:
    //   from	to	target	type
    //   8	13	24	java/io/IOException
    //   18	22	33	java/io/IOException
  }
  
  public static String encode(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    StringBuffer localStringBuffer = new StringBuffer(3 * paramArrayOfByte.length / 2);
    int j = i - 3;
    int k = 0;
    int m = 0;
    if (k > j)
    {
      if (k != -2 + (0 + i)) {
        break label270;
      }
      int i3 = (0xFF & paramArrayOfByte[k]) << 16 | (0xFF & paramArrayOfByte[(k + 1)]) << 8;
      localStringBuffer.append(legalChars[(0x3F & i3 >> 18)]);
      localStringBuffer.append(legalChars[(0x3F & i3 >> 12)]);
      localStringBuffer.append(legalChars[(0x3F & i3 >> 6)]);
      localStringBuffer.append("=");
    }
    for (;;)
    {
      return localStringBuffer.toString();
      int n = (0xFF & paramArrayOfByte[k]) << 16 | (0xFF & paramArrayOfByte[(k + 1)]) << 8 | 0xFF & paramArrayOfByte[(k + 2)];
      localStringBuffer.append(legalChars[(0x3F & n >> 18)]);
      localStringBuffer.append(legalChars[(0x3F & n >> 12)]);
      localStringBuffer.append(legalChars[(0x3F & n >> 6)]);
      localStringBuffer.append(legalChars[(n & 0x3F)]);
      k += 3;
      int i1 = m + 1;
      if (m >= 14)
      {
        i1 = 0;
        localStringBuffer.append(" ");
      }
      m = i1;
      break;
      label270:
      if (k == -1 + (0 + i))
      {
        int i2 = (0xFF & paramArrayOfByte[k]) << 16;
        localStringBuffer.append(legalChars[(0x3F & i2 >> 18)]);
        localStringBuffer.append(legalChars[(0x3F & i2 >> 12)]);
        localStringBuffer.append("==");
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.utils.Base64
 * JD-Core Version:    0.7.0.1
 */