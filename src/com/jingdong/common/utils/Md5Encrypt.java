package com.jingdong.common.utils;

public class Md5Encrypt
{
  private static final char[] DIGITS = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  
  public static char[] encodeHex(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    char[] arrayOfChar = new char[i << 1];
    int j = 0;
    int k = 0;
    for (;;)
    {
      if (j >= i) {
        return arrayOfChar;
      }
      int m = k + 1;
      arrayOfChar[k] = DIGITS[((0xF0 & paramArrayOfByte[j]) >>> 4)];
      k = m + 1;
      arrayOfChar[m] = DIGITS[(0xF & paramArrayOfByte[j])];
      j++;
    }
  }
  
  /* Error */
  public static java.lang.String md5(java.lang.String paramString)
  {
    // Byte code:
    //   0: ldc 39
    //   2: invokestatic 45	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   5: astore_2
    //   6: aload_2
    //   7: aload_0
    //   8: ldc 47
    //   10: invokevirtual 53	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   13: invokevirtual 57	java/security/MessageDigest:update	([B)V
    //   16: new 49	java/lang/String
    //   19: dup
    //   20: aload_2
    //   21: invokevirtual 61	java/security/MessageDigest:digest	()[B
    //   24: invokestatic 63	com/jingdong/common/utils/Md5Encrypt:encodeHex	([B)[C
    //   27: invokespecial 66	java/lang/String:<init>	([C)V
    //   30: areturn
    //   31: astore_1
    //   32: new 68	java/lang/IllegalStateException
    //   35: dup
    //   36: ldc 70
    //   38: invokespecial 73	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   41: athrow
    //   42: astore_3
    //   43: new 68	java/lang/IllegalStateException
    //   46: dup
    //   47: ldc 75
    //   49: invokespecial 73	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   52: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	53	0	paramString	java.lang.String
    //   31	1	1	localNoSuchAlgorithmException	java.security.NoSuchAlgorithmException
    //   5	16	2	localMessageDigest	java.security.MessageDigest
    //   42	1	3	localUnsupportedEncodingException	java.io.UnsupportedEncodingException
    // Exception table:
    //   from	to	target	type
    //   0	6	31	java/security/NoSuchAlgorithmException
    //   6	16	42	java/io/UnsupportedEncodingException
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.Md5Encrypt
 * JD-Core Version:    0.7.0.1
 */