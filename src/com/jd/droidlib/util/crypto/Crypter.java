package com.jd.droidlib.util.crypto;

import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

public class Crypter
{
  private static final String HEX = "0123456789ABCDEF";
  private final byte[] seed;
  
  public Crypter(String paramString)
  {
    this.seed = paramString.getBytes();
  }
  
  private static void appendHex(StringBuffer paramStringBuffer, byte paramByte)
  {
    paramStringBuffer.append("0123456789ABCDEF".charAt(0xF & paramByte >> 4)).append("0123456789ABCDEF".charAt(paramByte & 0xF));
  }
  
  private static byte[] decrypt(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws Exception
  {
    SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramArrayOfByte1, "AES");
    Cipher localCipher = Cipher.getInstance("AES");
    localCipher.init(2, localSecretKeySpec);
    return localCipher.doFinal(paramArrayOfByte2);
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
    SecureRandom localSecureRandom = SecureRandom.getInstance("SHA1PRNG");
    localSecureRandom.setSeed(paramArrayOfByte);
    localKeyGenerator.init(128, localSecureRandom);
    return localKeyGenerator.generateKey().getEncoded();
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
  
  public String decrypt(String paramString)
    throws Exception
  {
    return new String(decrypt(getRawKey(this.seed), toByte(paramString)));
  }
  
  public String encrypt(String paramString)
    throws Exception
  {
    return toHex(encrypt(getRawKey(this.seed), paramString.getBytes()));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.util.crypto.Crypter
 * JD-Core Version:    0.7.0.1
 */