package com.jd.common.util;

import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.NoSuchProviderException;
import java.util.Calendar;
import java.util.Locale;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.IvParameterSpec;

public class DES
{
  private Cipher c;
  private SecretKey deskey;
  IvParameterSpec iv = new IvParameterSpec(this.salt);
  private final byte[] salt = "3#6q0/bj".getBytes();
  
  public DES()
  {
    try
    {
      init("3#6q0/bj");
      return;
    }
    catch (NoSuchProviderException localNoSuchProviderException)
    {
      localNoSuchProviderException.printStackTrace();
    }
  }
  
  public static void main(String[] paramArrayOfString)
  {
    DES localDES = new DES();
    try
    {
      System.out.println(localDES.encode("venderorderinfo"));
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      localUnsupportedEncodingException.printStackTrace();
      return;
    }
    catch (InvalidAlgorithmParameterException localInvalidAlgorithmParameterException)
    {
      localInvalidAlgorithmParameterException.printStackTrace();
    }
  }
  
  public byte[] createEncryptor(String paramString)
    throws UnsupportedEncodingException, InvalidAlgorithmParameterException
  {
    try
    {
      byte[] arrayOfByte = this.c.doFinal(paramString.getBytes());
      return arrayOfByte;
    }
    catch (BadPaddingException localBadPaddingException)
    {
      localBadPaddingException.printStackTrace();
      return null;
    }
    catch (IllegalBlockSizeException localIllegalBlockSizeException)
    {
      for (;;)
      {
        localIllegalBlockSizeException.printStackTrace();
      }
    }
  }
  
  public String encode(String paramString)
    throws UnsupportedEncodingException, InvalidAlgorithmParameterException
  {
    Calendar localCalendar = Calendar.getInstance(Locale.CHINESE);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(localCalendar.get(6));
    return toHexString(createEncryptor(String.format("%03d", arrayOfObject) + paramString)).toUpperCase();
  }
  
  public void init(String paramString)
    throws NoSuchProviderException
  {
    try
    {
      DESKeySpec localDESKeySpec = new DESKeySpec(paramString.getBytes());
      this.deskey = SecretKeyFactory.getInstance("DES").generateSecret(localDESKeySpec);
      this.c = Cipher.getInstance("DES/CBC/PKCS5Padding");
      this.c.init(1, this.deskey, this.iv);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public String toHexString(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    for (int i = 0;; i++)
    {
      if (i >= paramArrayOfByte.length) {
        return localStringBuffer.toString();
      }
      String str = Integer.toHexString(0xFF & paramArrayOfByte[i]);
      if (str.length() < 2) {
        str = "0" + str;
      }
      localStringBuffer.append(str);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.util.DES
 * JD-Core Version:    0.7.0.1
 */