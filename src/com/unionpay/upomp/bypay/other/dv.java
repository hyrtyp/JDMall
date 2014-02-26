package com.unionpay.upomp.bypay.other;

import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

public class dv
{
  public static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    X509EncodedKeySpec localX509EncodedKeySpec = new X509EncodedKeySpec(paramArrayOfByte2);
    PublicKey localPublicKey = KeyFactory.getInstance("RSA").generatePublic(localX509EncodedKeySpec);
    Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
    localCipher.init(1, localPublicKey);
    return localCipher.doFinal(paramArrayOfByte1);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.dv
 * JD-Core Version:    0.7.0.1
 */