package com.jd.lottery.lib.utils;

import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

public class AesEncryptUtil
{
  public static String byteToString(byte[] paramArrayOfByte)
  {
    try
    {
      String str = new String(paramArrayOfByte, "utf-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      localUnsupportedEncodingException.printStackTrace();
    }
    return "";
  }
  
  public static byte[] decrypt(byte[] paramArrayOfByte, String paramString)
  {
    try
    {
      KeyGenerator localKeyGenerator = KeyGenerator.getInstance("AES");
      SecureRandom localSecureRandom = SecureRandom.getInstance("SHA1PRNG");
      localSecureRandom.setSeed(paramString.getBytes());
      localKeyGenerator.init(128, localSecureRandom);
      SecretKeySpec localSecretKeySpec = new SecretKeySpec(localKeyGenerator.generateKey().getEncoded(), "AES");
      Cipher localCipher = Cipher.getInstance("AES");
      localCipher.init(2, localSecretKeySpec);
      byte[] arrayOfByte = localCipher.doFinal(paramArrayOfByte);
      return arrayOfByte;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      localNoSuchAlgorithmException.printStackTrace();
      return null;
    }
    catch (NoSuchPaddingException localNoSuchPaddingException)
    {
      for (;;)
      {
        localNoSuchPaddingException.printStackTrace();
      }
    }
    catch (InvalidKeyException localInvalidKeyException)
    {
      for (;;)
      {
        localInvalidKeyException.printStackTrace();
      }
    }
    catch (IllegalBlockSizeException localIllegalBlockSizeException)
    {
      for (;;)
      {
        localIllegalBlockSizeException.printStackTrace();
      }
    }
    catch (BadPaddingException localBadPaddingException)
    {
      for (;;)
      {
        localBadPaddingException.printStackTrace();
      }
    }
  }
  
  public static byte[] encrypt(String paramString1, String paramString2)
  {
    try
    {
      KeyGenerator localKeyGenerator = KeyGenerator.getInstance("AES");
      SecureRandom localSecureRandom = SecureRandom.getInstance("SHA1PRNG");
      localSecureRandom.setSeed(paramString2.getBytes());
      localKeyGenerator.init(128, localSecureRandom);
      SecretKeySpec localSecretKeySpec = new SecretKeySpec(localKeyGenerator.generateKey().getEncoded(), "AES");
      Cipher localCipher = Cipher.getInstance("AES");
      byte[] arrayOfByte1 = paramString1.getBytes("utf-8");
      localCipher.init(1, localSecretKeySpec);
      byte[] arrayOfByte2 = localCipher.doFinal(arrayOfByte1);
      return arrayOfByte2;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      localNoSuchAlgorithmException.printStackTrace();
      return null;
    }
    catch (NoSuchPaddingException localNoSuchPaddingException)
    {
      for (;;)
      {
        localNoSuchPaddingException.printStackTrace();
      }
    }
    catch (InvalidKeyException localInvalidKeyException)
    {
      for (;;)
      {
        localInvalidKeyException.printStackTrace();
      }
    }
    catch (IllegalBlockSizeException localIllegalBlockSizeException)
    {
      for (;;)
      {
        localIllegalBlockSizeException.printStackTrace();
      }
    }
    catch (BadPaddingException localBadPaddingException)
    {
      for (;;)
      {
        localBadPaddingException.printStackTrace();
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        localUnsupportedEncodingException.printStackTrace();
      }
    }
  }
  
  public static String parseByte2HexStr(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    for (int i = 0;; i++)
    {
      if (i >= paramArrayOfByte.length) {
        return localStringBuffer.toString();
      }
      String str = Integer.toHexString(0xFF & paramArrayOfByte[i]);
      if (str.length() == 1) {
        str = '0' + str;
      }
      localStringBuffer.append(str.toUpperCase());
    }
  }
  
  public static byte[] parseHexStr2Byte(String paramString)
  {
    byte[] arrayOfByte;
    if (paramString.length() < 1) {
      arrayOfByte = null;
    }
    for (;;)
    {
      return arrayOfByte;
      arrayOfByte = new byte[paramString.length() / 2];
      for (int i = 0; i < paramString.length() / 2; i++)
      {
        int j = Integer.parseInt(paramString.substring(i * 2, 1 + i * 2), 16);
        arrayOfByte[i] = ((byte)(Integer.parseInt(paramString.substring(1 + i * 2, 2 + i * 2), 16) + j * 16));
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.utils.AesEncryptUtil
 * JD-Core Version:    0.7.0.1
 */