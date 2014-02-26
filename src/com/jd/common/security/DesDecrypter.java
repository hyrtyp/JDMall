package com.jd.common.security;

import java.io.PrintStream;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;

public class DesDecrypter
  extends Des
{
  DesDecrypter(String paramString)
    throws Exception
  {
    PBEKeySpec localPBEKeySpec = new PBEKeySpec(paramString.toCharArray(), salt, iterationCount);
    SecretKey localSecretKey = SecretKeyFactory.getInstance("PBEWithMD5AndDES").generateSecret(localPBEKeySpec);
    this.cipher = Cipher.getInstance(localSecretKey.getAlgorithm());
    PBEParameterSpec localPBEParameterSpec = new PBEParameterSpec(salt, iterationCount);
    this.cipher.init(2, localSecretKey, localPBEParameterSpec);
  }
  
  public static String decryptString(String paramString1, String paramString2)
    throws Exception
  {
    return new DesDecrypter(paramString2).decrypt(paramString1);
  }
  
  public static void main(String[] paramArrayOfString)
    throws Exception
  {
    System.out.println("key = " + "ck|jhtr%oxo)ajlos\\qz=i_g,ge*g|j[");
    String str1 = DesEncrypter.cryptString("hello world xxss", "ck|jhtr%oxo)ajlos\\qz=i_g,ge*g|j[");
    System.out.println("encrypted = " + str1);
    String str2 = decryptString(str1, "ck|jhtr%oxo)ajlos\\qz=i_g,ge*g|j[");
    System.out.println("plain = " + str2);
  }
  
  public String decrypt(String paramString)
    throws Exception
  {
    return new String(decrypt(Base32.decode(paramString)));
  }
  
  public byte[] decrypt(byte[] paramArrayOfByte)
    throws IllegalBlockSizeException, BadPaddingException
  {
    return this.cipher.doFinal(paramArrayOfByte);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.security.DesDecrypter
 * JD-Core Version:    0.7.0.1
 */