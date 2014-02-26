package com.unionpay.upomp.bypay.other;

import java.security.Key;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESedeKeySpec;

public class f
{
  public static String a = "MfI7rgld";
  public static String b = "d/3ANjbUjBjN3xrEQjnNOw==";
  public static String c = "ebtXuadBvNBuZ0arK6kslg==";
  
  private static Key a(byte[] paramArrayOfByte)
  {
    DESedeKeySpec localDESedeKeySpec = new DESedeKeySpec(paramArrayOfByte);
    return SecretKeyFactory.getInstance("DESede").generateSecret(localDESedeKeySpec);
  }
  
  public static byte[] a()
  {
    try
    {
      KeyGenerator localKeyGenerator2 = KeyGenerator.getInstance("DESede");
      localKeyGenerator1 = localKeyGenerator2;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      for (;;)
      {
        localNoSuchAlgorithmException.printStackTrace();
        KeyGenerator localKeyGenerator1 = null;
      }
    }
    localKeyGenerator1.init(168);
    return localKeyGenerator1.generateKey().getEncoded();
  }
  
  public static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    Key localKey = a(paramArrayOfByte2);
    Cipher localCipher = Cipher.getInstance("DESede/ECB/PKCS5Padding");
    localCipher.init(2, localKey);
    return localCipher.doFinal(paramArrayOfByte1);
  }
  
  public static byte[] b()
  {
    return a();
  }
  
  public static byte[] b(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    Key localKey = a(paramArrayOfByte2);
    Cipher localCipher = Cipher.getInstance("DESede/ECB/PKCS5Padding");
    localCipher.init(1, localKey);
    return localCipher.doFinal(paramArrayOfByte1);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.f
 * JD-Core Version:    0.7.0.1
 */