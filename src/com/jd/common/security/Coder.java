package com.jd.common.security;

import java.security.MessageDigest;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public abstract class Coder
{
  public static final String KEY_MD5 = "MD5";
  public static final String KEY_SHA = "SHA";
  private static final Log log = LogFactory.getLog(Coder.class);
  
  public static String asHex(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer(2 * paramArrayOfByte.length);
    for (int i = 0;; i++)
    {
      if (i >= paramArrayOfByte.length) {
        return localStringBuffer.toString();
      }
      if ((0xFF & paramArrayOfByte[i]) < 16) {
        localStringBuffer.append("0");
      }
      localStringBuffer.append(Long.toString(0xFF & paramArrayOfByte[i], 16));
    }
  }
  
  public static byte[] decryptBASE64(String paramString)
    throws Exception
  {
    return new BASE64Decoder().decodeBuffer(paramString);
  }
  
  public static String encryptBASE64(byte[] paramArrayOfByte)
    throws Exception
  {
    return new BASE64Encoder().encode(paramArrayOfByte);
  }
  
  public static byte[] encryptMD5(byte[] paramArrayOfByte)
    throws Exception
  {
    MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
    localMessageDigest.update(paramArrayOfByte);
    return localMessageDigest.digest();
  }
  
  public static byte[] encryptSHA(byte[] paramArrayOfByte)
    throws Exception
  {
    MessageDigest localMessageDigest = MessageDigest.getInstance("SHA");
    localMessageDigest.update(paramArrayOfByte);
    return localMessageDigest.digest();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.security.Coder
 * JD-Core Version:    0.7.0.1
 */