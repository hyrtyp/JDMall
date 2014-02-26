package com.unionpay.upomp.bypay.other;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class da
{
  public static byte[] a(byte[] paramArrayOfByte)
  {
    try
    {
      MessageDigest localMessageDigest2 = MessageDigest.getInstance("MD5");
      localMessageDigest1 = localMessageDigest2;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      for (;;)
      {
        localNoSuchAlgorithmException.printStackTrace();
        MessageDigest localMessageDigest1 = null;
      }
    }
    return localMessageDigest1.digest(paramArrayOfByte);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.da
 * JD-Core Version:    0.7.0.1
 */