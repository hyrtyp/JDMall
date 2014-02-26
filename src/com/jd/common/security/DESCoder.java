package com.jd.common.security;

import java.security.Key;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public abstract class DESCoder
  extends Coder
{
  public static final String ALGORITHM = "TripleDES";
  private static final Log log = LogFactory.getLog(DESCoder.class);
  
  public static byte[] decrypt(byte[] paramArrayOfByte, String paramString)
    throws Exception
  {
    Key localKey = toKey(decryptBASE64(paramString));
    Cipher localCipher = Cipher.getInstance("TripleDES");
    localCipher.init(2, localKey);
    return localCipher.doFinal(paramArrayOfByte);
  }
  
  public static byte[] encrypt(byte[] paramArrayOfByte, String paramString)
    throws Exception
  {
    Key localKey = toKey(decryptBASE64(paramString));
    Cipher localCipher = Cipher.getInstance("TripleDES");
    localCipher.init(1, localKey);
    return localCipher.doFinal(paramArrayOfByte);
  }
  
  public static String initKey()
    throws Exception
  {
    return initKey(null);
  }
  
  public static String initKey(String paramString)
    throws Exception
  {
    if (paramString != null) {}
    for (SecureRandom localSecureRandom = new SecureRandom(decryptBASE64(paramString));; localSecureRandom = new SecureRandom())
    {
      KeyGenerator localKeyGenerator = KeyGenerator.getInstance("TripleDES");
      localKeyGenerator.init(localSecureRandom);
      return encryptBASE64(localKeyGenerator.generateKey().getEncoded());
    }
  }
  
  private static Key toKey(byte[] paramArrayOfByte)
    throws Exception
  {
    return new SecretKeySpec(paramArrayOfByte, "TripleDES");
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.security.DESCoder
 * JD-Core Version:    0.7.0.1
 */