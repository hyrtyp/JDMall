package com.jd.droidlib.util.crypto;

import com.jd.droidlib.util.L;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class HashCalc
{
  public static final String MD5 = "MD5";
  public static final String SHA1 = "SHA-1";
  
  public static String getHash(String paramString1, String paramString2)
    throws UnsupportedEncodingException, NoSuchAlgorithmException
  {
    byte[] arrayOfByte = paramString1.getBytes("utf-8");
    for (String str = new BigInteger(1, MessageDigest.getInstance(paramString2).digest(arrayOfByte)).toString(16);; str = "0" + str) {
      if (str.length() >= 32) {
        return str;
      }
    }
  }
  
  public static String getMD5(String paramString)
  {
    try
    {
      String str = getHash(paramString, "MD5");
      return str;
    }
    catch (Exception localException)
    {
      L.w(localException);
    }
    return null;
  }
  
  public static String getSHA1(String paramString)
  {
    try
    {
      String str = getHash(paramString, "SHA-1");
      return str;
    }
    catch (Exception localException)
    {
      L.w(localException);
    }
    return null;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.util.crypto.HashCalc
 * JD-Core Version:    0.7.0.1
 */