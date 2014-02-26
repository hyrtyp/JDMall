package com.jd.lottery.lib.utils;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESedeKeySpec;
import javax.crypto.spec.IvParameterSpec;

public class Des3
{
  private static final String encoding = "utf-8";
  private static final String iv = "01234567";
  private static final String secretKey = "LLz7aFEIAjf+OKuKoq3EXtlDFhkQgOMx";
  
  public static String decode(String paramString)
    throws Exception
  {
    DESedeKeySpec localDESedeKeySpec = new DESedeKeySpec("LLz7aFEIAjf+OKuKoq3EXtlDFhkQgOMx".getBytes());
    SecretKey localSecretKey = SecretKeyFactory.getInstance("desede").generateSecret(localDESedeKeySpec);
    Cipher localCipher = Cipher.getInstance("desede/CBC/PKCS5Padding");
    localCipher.init(2, localSecretKey, new IvParameterSpec("01234567".getBytes()));
    return new String(localCipher.doFinal(Base64.decode(paramString)), "utf-8");
  }
  
  public static String encode(String paramString)
    throws Exception
  {
    DESedeKeySpec localDESedeKeySpec = new DESedeKeySpec("LLz7aFEIAjf+OKuKoq3EXtlDFhkQgOMx".getBytes());
    SecretKey localSecretKey = SecretKeyFactory.getInstance("desede").generateSecret(localDESedeKeySpec);
    Cipher localCipher = Cipher.getInstance("desede/CBC/PKCS5Padding");
    localCipher.init(1, localSecretKey, new IvParameterSpec("01234567".getBytes()));
    return Base64.encode(localCipher.doFinal(paramString.getBytes("utf-8")));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.utils.Des3
 * JD-Core Version:    0.7.0.1
 */