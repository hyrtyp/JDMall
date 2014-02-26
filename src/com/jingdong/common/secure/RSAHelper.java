package com.jingdong.common.secure;

import android.util.Log;
import java.io.IOException;
import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.RSAPrivateKeySpec;
import java.security.spec.RSAPublicKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.StringTokenizer;
import javax.crypto.Cipher;

public class RSAHelper
{
  private static final int PT_LEN = 117;
  private static final String PUBLIC_KEY = "z35gz/L59tV5t3kI8v7+/vr//H5y/89+dv1+fv92gF/LMSt4yF/3uWv6Dme5vdDahm5fK/EvAucjmeuNYPmNptyX596cPgNhsvoRZyajnvzLxxWqEXHy60kmHudViRMr2XGxKBQEh3DMK8+AUsGaORU6xnwVeZHWJtUslz94lXNboAU7fxPTGj7YZKqAgvGUREyLZ2QHG+xhCoF6Cv38/v/+";
  public static final String RAS_D1 = "10181422781937368681220224452580987776122511431935312391878834964708126870730228463498680788599310908784256229822204254336226066937231750248762020207374189368257192202796979116569703068970833761011754528432893872901525616312296004047864321453311474491486232253554750079150960526505082970220415017289481286449";
  public static final String RAS_E1 = "65537";
  public static final String RAS_N1 = "151271798880033854287265892076354612533153713832406385904911178209493654664939238905534582371895950811379233854875946546459589151862470463852440833899497247142453992630018166245597346904446766965609150343967974904481793067794500077913992375940130870900414482641497283447201731956542465730058686924517791676251";
  private static final String RSA_N = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCMmJVS+HQCMeVKDPsGZNwjdQtj/m/QliM1evvRZj+7yu9nmfk13b8nX/UMhg0tcs0Vbgt66VK759qpmgCH6uLKVe2Xr0QDA4guH32SU9RUWXKlC3r6RDzPAY3Bb9CG2q3tJC5RnkoVtWRM6owkd4CycMXiOXhT3Zut/Ne+8q30eQIDAQAB";
  private static final String SPRIT_CHAR = "|";
  private static Cipher cipher;
  private static RSAHelper instance = new RSAHelper();
  private static PrivateKey privateKey;
  private static PublicKey publicKey;
  
  public static byte[] dencrypt(byte[] paramArrayOfByte)
  {
    try
    {
      cipher.init(2, privateKey);
      byte[] arrayOfByte = cipher.doFinal(paramArrayOfByte);
      return arrayOfByte;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
  
  public static String dencryptBySeg(String paramString)
  {
    StringTokenizer localStringTokenizer = new StringTokenizer(paramString, "|");
    StringBuffer localStringBuffer = new StringBuffer();
    Log.i("test", "tokenizer counts:" + localStringTokenizer.countTokens());
    for (;;)
    {
      if (!localStringTokenizer.hasMoreTokens()) {
        return localStringBuffer.toString();
      }
      String str = (String)localStringTokenizer.nextElement();
      Log.i("test", "dencryptBySeg:" + str);
      try
      {
        byte[] arrayOfByte1 = Base64.decode(getFromatBase64String(str));
        Log.i("test", "base64 decode:" + new String(arrayOfByte1));
        byte[] arrayOfByte2 = dencrypt(arrayOfByte1);
        Log.i("test", "Rsa decode:" + new String(arrayOfByte2));
        localStringBuffer.append(new String(arrayOfByte2));
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }
  
  public static String dencryptBySegBaseZip(String paramString, int paramInt)
  {
    StringTokenizer localStringTokenizer = new StringTokenizer(paramString, "|");
    StringBuffer localStringBuffer = new StringBuffer();
    for (;;)
    {
      if (!localStringTokenizer.hasMoreTokens()) {
        return localStringBuffer.toString();
      }
      String str = (String)localStringTokenizer.nextElement();
      try
      {
        localStringBuffer.append(new String(dencrypt(Base64.decode(getFromatBase64String(str), 2))));
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
      }
    }
  }
  
  public static byte[] encrypt(byte[] paramArrayOfByte)
  {
    try
    {
      cipher.init(1, publicKey);
      byte[] arrayOfByte = cipher.doFinal(paramArrayOfByte);
      return arrayOfByte;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
  
  public static String encryptBySeg(byte[] paramArrayOfByte)
    throws IOException
  {
    return encryptBySeg(paramArrayOfByte, 0);
  }
  
  public static String encryptBySeg(byte[] paramArrayOfByte, int paramInt)
    throws IOException
  {
    int i = 1 + paramArrayOfByte.length / 117;
    StringBuffer localStringBuffer = new StringBuffer();
    int j = 0;
    if (j >= i)
    {
      localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
      return localStringBuffer.toString();
    }
    byte[] arrayOfByte;
    if (j == i - 1)
    {
      int k = paramArrayOfByte.length - j * 117;
      arrayOfByte = new byte[k];
      System.arraycopy(paramArrayOfByte, j * 117, arrayOfByte, 0, k);
    }
    for (;;)
    {
      localStringBuffer.append(Base64.encodeBytes(encrypt(arrayOfByte), paramInt)).append("|");
      j++;
      break;
      arrayOfByte = new byte[117];
      System.arraycopy(paramArrayOfByte, j * 117, arrayOfByte, 0, 117);
    }
  }
  
  public static String getFromatBase64String(String paramString)
  {
    String str = paramString.substring(-172 + paramString.length(), paramString.length());
    Log.i("reg", "regleng:" + paramString.length() + "reg:" + paramString);
    return str;
  }
  
  public static RSAHelper getInstance()
  {
    return instance;
  }
  
  public static PrivateKey getPrivateKey()
    throws Exception
  {
    RSAPrivateKeySpec localRSAPrivateKeySpec = new RSAPrivateKeySpec(new BigInteger("151271798880033854287265892076354612533153713832406385904911178209493654664939238905534582371895950811379233854875946546459589151862470463852440833899497247142453992630018166245597346904446766965609150343967974904481793067794500077913992375940130870900414482641497283447201731956542465730058686924517791676251", 10), new BigInteger("10181422781937368681220224452580987776122511431935312391878834964708126870730228463498680788599310908784256229822204254336226066937231750248762020207374189368257192202796979116569703068970833761011754528432893872901525616312296004047864321453311474491486232253554750079150960526505082970220415017289481286449", 10));
    return (RSAPrivateKey)KeyFactory.getInstance("RSA").generatePrivate(localRSAPrivateKeySpec);
  }
  
  public static PrivateKey getPrivateKey(String paramString)
    throws Exception
  {
    PKCS8EncodedKeySpec localPKCS8EncodedKeySpec = new PKCS8EncodedKeySpec(Base64.decode(paramString));
    return KeyFactory.getInstance("RSA").generatePrivate(localPKCS8EncodedKeySpec);
  }
  
  public static PublicKey getPublicKey()
    throws Exception
  {
    KeyFactory localKeyFactory = KeyFactory.getInstance("RSA");
    BigInteger localBigInteger = new BigInteger("65537", 10);
    return (RSAPublicKey)localKeyFactory.generatePublic(new RSAPublicKeySpec(new BigInteger("151271798880033854287265892076354612533153713832406385904911178209493654664939238905534582371895950811379233854875946546459589151862470463852440833899497247142453992630018166245597346904446766965609150343967974904481793067794500077913992375940130870900414482641497283447201731956542465730058686924517791676251", 10), localBigInteger));
  }
  
  public static RSAPublicKey getPublicKey(String paramString)
    throws Exception
  {
    byte[] arrayOfByte = Base64.decode(paramString);
    int i = 0;
    int j = arrayOfByte.length;
    for (;;)
    {
      if (i >= j)
      {
        X509EncodedKeySpec localX509EncodedKeySpec = new X509EncodedKeySpec(arrayOfByte);
        return (RSAPublicKey)KeyFactory.getInstance("RSA").generatePublic(localX509EncodedKeySpec);
      }
      arrayOfByte[i] = ((byte)(0xFFFFFFFF ^ arrayOfByte[i]));
      i++;
    }
  }
  
  public static void init()
  {
    try
    {
      publicKey = getPublicKey("z35gz/L59tV5t3kI8v7+/vr//H5y/89+dv1+fv92gF/LMSt4yF/3uWv6Dme5vdDahm5fK/EvAucjmeuNYPmNptyX596cPgNhsvoRZyajnvzLxxWqEXHy60kmHudViRMr2XGxKBQEh3DMK8+AUsGaORU6xnwVeZHWJtUslz94lXNboAU7fxPTGj7YZKqAgvGUREyLZ2QHG+xhCoF6Cv38/v/+");
      cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public static void init(String paramString)
  {
    try
    {
      publicKey = getPublicKey(paramString);
      cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding", "BC");
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public static void init(String paramString1, String paramString2)
  {
    try
    {
      privateKey = getPrivateKey(paramString1);
      publicKey = getPublicKey(paramString2);
      cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding", "BC");
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.secure.RSAHelper
 * JD-Core Version:    0.7.0.1
 */