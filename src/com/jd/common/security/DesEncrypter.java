package com.jd.common.security;

import java.io.PrintStream;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;

public class DesEncrypter
  extends Des
{
  public DesEncrypter(String paramString)
    throws Exception
  {
    PBEKeySpec localPBEKeySpec = new PBEKeySpec(paramString.toCharArray(), salt, iterationCount);
    SecretKey localSecretKey = SecretKeyFactory.getInstance("PBEWithMD5AndDES").generateSecret(localPBEKeySpec);
    this.cipher = Cipher.getInstance(localSecretKey.getAlgorithm());
    PBEParameterSpec localPBEParameterSpec = new PBEParameterSpec(salt, iterationCount);
    this.cipher.init(1, localSecretKey, localPBEParameterSpec);
  }
  
  public static String cryptString(String paramString1, String paramString2)
    throws Exception
  {
    return new DesEncrypter(paramString2).encrypt(paramString1);
  }
  
  public static void main(String[] paramArrayOfString)
    throws Exception
  {
    System.out.println("key = " + "c2#sUjAKq3dGP7%Zjz-ydBPUvKoe_qI8");
    String str1 = cryptString("hello world xxss", "c2#sUjAKq3dGP7%Zjz-ydBPUvKoe_qI8");
    System.out.println("encrypted = " + str1);
    String str2 = DesDecrypter.decryptString(str1, "c2#sUjAKq3dGP7%Zjz-ydBPUvKoe_qI8");
    System.out.println("plain = " + str2);
  }
  
  public String encrypt(String paramString)
    throws Exception
  {
    return Base32.encode(encrypt(paramString.getBytes()));
  }
  
  public byte[] encrypt(byte[] paramArrayOfByte)
    throws IllegalBlockSizeException, BadPaddingException
  {
    return this.cipher.doFinal(paramArrayOfByte);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.security.DesEncrypter
 * JD-Core Version:    0.7.0.1
 */