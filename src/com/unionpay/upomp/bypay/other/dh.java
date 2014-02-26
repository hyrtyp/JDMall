package com.unionpay.upomp.bypay.other;

import java.security.PublicKey;
import javax.crypto.Cipher;

public class dh
{
  /* Error */
  public static String a(String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +15 -> 16
    //   4: ldc 14
    //   6: aload_0
    //   7: invokevirtual 20	java/lang/String:trim	()Ljava/lang/String;
    //   10: invokevirtual 24	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   13: ifeq +7 -> 20
    //   16: aconst_null
    //   17: astore_3
    //   18: aload_3
    //   19: areturn
    //   20: aload_1
    //   21: ifnull +15 -> 36
    //   24: ldc 14
    //   26: aload_1
    //   27: invokevirtual 20	java/lang/String:trim	()Ljava/lang/String;
    //   30: invokevirtual 24	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   33: ifeq +5 -> 38
    //   36: aconst_null
    //   37: areturn
    //   38: aload_0
    //   39: aload_1
    //   40: invokestatic 27	com/unionpay/upomp/bypay/other/dh:a	(Ljava/lang/String;Ljava/lang/String;)[B
    //   43: astore 5
    //   45: new 29	java/security/spec/X509EncodedKeySpec
    //   48: dup
    //   49: aload_2
    //   50: iconst_0
    //   51: invokestatic 34	com/unionpay/upomp/bypay/other/p:a	(Ljava/lang/String;I)[B
    //   54: invokespecial 37	java/security/spec/X509EncodedKeySpec:<init>	([B)V
    //   57: astore 6
    //   59: new 16	java/lang/String
    //   62: dup
    //   63: ldc 39
    //   65: invokestatic 45	java/security/KeyFactory:getInstance	(Ljava/lang/String;)Ljava/security/KeyFactory;
    //   68: aload 6
    //   70: invokevirtual 49	java/security/KeyFactory:generatePublic	(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    //   73: aload 5
    //   75: invokestatic 52	com/unionpay/upomp/bypay/other/dh:a	(Ljava/security/PublicKey;[B)[B
    //   78: invokestatic 55	com/unionpay/upomp/bypay/other/dh:a	([B)[B
    //   81: invokespecial 56	java/lang/String:<init>	([B)V
    //   84: astore 7
    //   86: ldc 14
    //   88: astore_3
    //   89: iconst_0
    //   90: istore 8
    //   92: iload 8
    //   94: aload 7
    //   96: invokevirtual 60	java/lang/String:toCharArray	()[C
    //   99: arraylength
    //   100: if_icmpge -82 -> 18
    //   103: aload 7
    //   105: iload 8
    //   107: invokevirtual 64	java/lang/String:charAt	(I)C
    //   110: bipush 13
    //   112: if_icmpeq +40 -> 152
    //   115: aload 7
    //   117: iload 8
    //   119: invokevirtual 64	java/lang/String:charAt	(I)C
    //   122: bipush 10
    //   124: if_icmpeq +28 -> 152
    //   127: new 66	java/lang/StringBuilder
    //   130: dup
    //   131: aload_3
    //   132: invokestatic 70	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   135: invokespecial 73	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   138: aload 7
    //   140: iload 8
    //   142: invokevirtual 64	java/lang/String:charAt	(I)C
    //   145: invokevirtual 77	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   148: invokevirtual 80	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   151: astore_3
    //   152: iinc 8 1
    //   155: goto -63 -> 92
    //   158: astore 4
    //   160: new 12	java/lang/Exception
    //   163: dup
    //   164: ldc 82
    //   166: aload 4
    //   168: invokespecial 85	java/lang/Exception:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   171: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	172	0	paramString1	String
    //   0	172	1	paramString2	String
    //   0	172	2	paramString3	String
    //   17	135	3	str1	String
    //   158	9	4	localException	Exception
    //   43	31	5	arrayOfByte	byte[]
    //   57	12	6	localX509EncodedKeySpec	java.security.spec.X509EncodedKeySpec
    //   84	55	7	str2	String
    //   90	63	8	i	int
    // Exception table:
    //   from	to	target	type
    //   38	86	158	java/lang/Exception
  }
  
  private static byte[] a(String paramString)
  {
    int i = paramString.length();
    byte[] arrayOfByte = new byte[8];
    int j = i - 13;
    int k;
    do
    {
      try
      {
        arrayOfByte[0] = 0;
        arrayOfByte[1] = 0;
        k = 2;
      }
      catch (Exception localException)
      {
        return arrayOfByte;
      }
      arrayOfByte[k] = ((byte)Integer.parseInt(paramString.substring(j, j + 2), 16));
      j += 2;
      k++;
    } while (k < 8);
    return arrayOfByte;
  }
  
  private static byte[] a(String paramString1, String paramString2)
  {
    byte[] arrayOfByte1 = b(paramString1);
    byte[] arrayOfByte2;
    byte[] arrayOfByte3;
    if (paramString2.length() == 11)
    {
      paramString2 = "00" + paramString2;
      arrayOfByte2 = a(paramString2);
      arrayOfByte3 = new byte[8];
    }
    for (int i = 0;; i++)
    {
      if (i >= 8)
      {
        return arrayOfByte3;
        if (paramString2.length() != 12) {
          break;
        }
        paramString2 = "0" + paramString2;
        break;
      }
      arrayOfByte3[i] = ((byte)(arrayOfByte1[i] ^ arrayOfByte2[i]));
    }
  }
  
  private static byte[] a(PublicKey paramPublicKey, byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = null;
    for (;;)
    {
      int n;
      try
      {
        Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        localCipher.init(1, paramPublicKey);
        int i = localCipher.getBlockSize();
        int j = localCipher.getOutputSize(paramArrayOfByte.length);
        int k = paramArrayOfByte.length % i;
        arrayOfByte = null;
        int m;
        if (k != 0)
        {
          m = 1 + paramArrayOfByte.length / i;
          arrayOfByte = new byte[m * j];
          n = 0;
          if (paramArrayOfByte.length - n * i <= 0) {
            return arrayOfByte;
          }
        }
        else
        {
          m = paramArrayOfByte.length / i;
          continue;
        }
        if (paramArrayOfByte.length - n * i > i)
        {
          localCipher.doFinal(paramArrayOfByte, n * i, i, arrayOfByte, n * j);
        }
        else
        {
          int i1 = n * i;
          int i2 = paramArrayOfByte.length - n * i;
          int i3 = n * j;
          localCipher.doFinal(paramArrayOfByte, i1, i2, arrayOfByte, i3);
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return arrayOfByte;
      }
      n++;
    }
  }
  
  private static byte[] a(byte[] paramArrayOfByte)
  {
    return p.b(paramArrayOfByte, 0);
  }
  
  private static byte[] b(String paramString)
  {
    int i = paramString.length();
    byte[] arrayOfByte = new byte[8];
    int n;
    int i1;
    try
    {
      arrayOfByte[0] = ((byte)Integer.parseInt(new Integer(i).toString(), 10));
      if (i % 2 != 0) {
        break label233;
      }
      n = 1;
      i1 = 0;
    }
    catch (Exception localException)
    {
      label100:
      return arrayOfByte;
    }
    arrayOfByte[n] = ((byte)Integer.parseInt(paramString.substring(i1, i1 + 2), 16));
    int i2;
    if ((i1 == i - 2) && (n < 7))
    {
      i2 = n + 1;
      break label217;
      arrayOfByte[i2] = -1;
      i2++;
    }
    for (;;)
    {
      int k;
      int j;
      int m;
      if (k < i - 1)
      {
        arrayOfByte[j] = ((byte)Integer.parseInt(paramString.substring(k, k + 2), 16));
        if (k == i - 3)
        {
          String str = paramString.substring(i - 1) + "F";
          arrayOfByte[(j + 1)] = ((byte)Integer.parseInt(str, 16));
          if (j + 1 < 7) {
            m = j + 2;
          }
        }
      }
      else
      {
        label217:
        label231:
        label233:
        while (m < 8)
        {
          arrayOfByte[m] = -1;
          m++;
          continue;
          for (;;)
          {
            if (i1 < i) {
              break label231;
            }
            return arrayOfByte;
            if (i2 < 8) {
              break;
            }
            n++;
            i1 += 2;
          }
          break;
          j = 1;
          k = 0;
          break label100;
        }
      }
      j++;
      k += 2;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.dh
 * JD-Core Version:    0.7.0.1
 */