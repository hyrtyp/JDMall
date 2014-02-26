package com.jingdong.common.utils;

import android.os.Build.VERSION;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

public class SimpleCrypto
{
  private static final String HEX = "0123456789ABCDEF";
  private static final int JELLY_BEAN_4_2 = 17;
  
  private static void appendHex(StringBuffer paramStringBuffer, byte paramByte)
  {
    paramStringBuffer.append("0123456789ABCDEF".charAt(0xF & paramByte >> 4)).append("0123456789ABCDEF".charAt(paramByte & 0xF));
  }
  
  public static String decrypt(String paramString1, String paramString2)
  {
    try
    {
      String str = new String(decrypt(getRawKey(paramString1.getBytes()), toByte(paramString2)));
      return str;
    }
    catch (Throwable localThrowable) {}
    return null;
  }
  
  private static byte[] decrypt(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws Exception
  {
    SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramArrayOfByte1, "AES");
    Cipher localCipher = Cipher.getInstance("AES");
    localCipher.init(2, localSecretKeySpec);
    return localCipher.doFinal(paramArrayOfByte2);
  }
  
  public static String encrypt(String paramString1, String paramString2)
  {
    try
    {
      String str = toHex(encrypt(getRawKey(paramString1.getBytes()), paramString2.getBytes()));
      return str;
    }
    catch (Throwable localThrowable) {}
    return null;
  }
  
  private static byte[] encrypt(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws Exception
  {
    SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramArrayOfByte1, "AES");
    Cipher localCipher = Cipher.getInstance("AES");
    localCipher.init(1, localSecretKeySpec);
    return localCipher.doFinal(paramArrayOfByte2);
  }
  
  public static String fromHex(String paramString)
  {
    return new String(toByte(paramString));
  }
  
  private static byte[] getRawKey(byte[] paramArrayOfByte)
    throws Exception
  {
    KeyGenerator localKeyGenerator = KeyGenerator.getInstance("AES");
    if (Build.VERSION.SDK_INT >= 17) {}
    for (SecureRandom localSecureRandom = SecureRandom.getInstance("SHA1PRNG", "Crypto");; localSecureRandom = SecureRandom.getInstance("SHA1PRNG"))
    {
      localSecureRandom.setSeed(paramArrayOfByte);
      localKeyGenerator.init(128, localSecureRandom);
      return localKeyGenerator.generateKey().getEncoded();
    }
  }
  
  public static byte[] toByte(String paramString)
  {
    int i = paramString.length() / 2;
    byte[] arrayOfByte = new byte[i];
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return arrayOfByte;
      }
      arrayOfByte[j] = Integer.valueOf(paramString.substring(j * 2, 2 + j * 2), 16).byteValue();
    }
  }
  
  public static String toHex(String paramString)
  {
    return toHex(paramString.getBytes());
  }
  
  public static String toHex(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return "";
    }
    StringBuffer localStringBuffer = new StringBuffer(2 * paramArrayOfByte.length);
    for (int i = 0;; i++)
    {
      if (i >= paramArrayOfByte.length) {
        return localStringBuffer.toString();
      }
      appendHex(localStringBuffer, paramArrayOfByte[i]);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.SimpleCrypto
 * JD-Core Version:    0.7.0.1
 */