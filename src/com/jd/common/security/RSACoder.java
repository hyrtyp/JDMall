package com.jd.common.security;

import java.security.Key;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.Cipher;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public abstract class RSACoder
  extends Coder
{
  public static final String KEY_ALGORITHM = "RSA";
  private static final String PRIVATE_KEY = "RSAPrivateKey";
  private static final String PUBLIC_KEY = "RSAPublicKey";
  public static final String SIGNATURE_ALGORITHM = "MD5withRSA";
  private static final Log log = LogFactory.getLog(RSACoder.class);
  
  public static byte[] decryptByPrivateKey(byte[] paramArrayOfByte, String paramString)
    throws Exception
  {
    PKCS8EncodedKeySpec localPKCS8EncodedKeySpec = new PKCS8EncodedKeySpec(decryptBASE64(paramString));
    KeyFactory localKeyFactory = KeyFactory.getInstance("RSA");
    PrivateKey localPrivateKey = localKeyFactory.generatePrivate(localPKCS8EncodedKeySpec);
    Cipher localCipher = Cipher.getInstance(localKeyFactory.getAlgorithm());
    localCipher.init(2, localPrivateKey);
    return localCipher.doFinal(paramArrayOfByte);
  }
  
  public static byte[] decryptByPublicKey(byte[] paramArrayOfByte, String paramString)
    throws Exception
  {
    X509EncodedKeySpec localX509EncodedKeySpec = new X509EncodedKeySpec(decryptBASE64(paramString));
    KeyFactory localKeyFactory = KeyFactory.getInstance("RSA");
    PublicKey localPublicKey = localKeyFactory.generatePublic(localX509EncodedKeySpec);
    Cipher localCipher = Cipher.getInstance(localKeyFactory.getAlgorithm());
    localCipher.init(2, localPublicKey);
    return localCipher.doFinal(paramArrayOfByte);
  }
  
  public static byte[] encryptByPrivateKey(byte[] paramArrayOfByte, String paramString)
    throws Exception
  {
    PKCS8EncodedKeySpec localPKCS8EncodedKeySpec = new PKCS8EncodedKeySpec(decryptBASE64(paramString));
    KeyFactory localKeyFactory = KeyFactory.getInstance("RSA");
    PrivateKey localPrivateKey = localKeyFactory.generatePrivate(localPKCS8EncodedKeySpec);
    Cipher localCipher = Cipher.getInstance(localKeyFactory.getAlgorithm());
    localCipher.init(1, localPrivateKey);
    return localCipher.doFinal(paramArrayOfByte);
  }
  
  public static byte[] encryptByPublicKey(byte[] paramArrayOfByte, String paramString)
    throws Exception
  {
    X509EncodedKeySpec localX509EncodedKeySpec = new X509EncodedKeySpec(decryptBASE64(paramString));
    KeyFactory localKeyFactory = KeyFactory.getInstance("RSA");
    PublicKey localPublicKey = localKeyFactory.generatePublic(localX509EncodedKeySpec);
    Cipher localCipher = Cipher.getInstance(localKeyFactory.getAlgorithm());
    localCipher.init(1, localPublicKey);
    return localCipher.doFinal(paramArrayOfByte);
  }
  
  public static String getPrivateKey(Map<String, Object> paramMap)
    throws Exception
  {
    return encryptBASE64(((Key)paramMap.get("RSAPrivateKey")).getEncoded());
  }
  
  public static String getPublicKey(Map<String, Object> paramMap)
    throws Exception
  {
    return encryptBASE64(((Key)paramMap.get("RSAPublicKey")).getEncoded());
  }
  
  public static Map<String, Object> initKey()
    throws Exception
  {
    KeyPairGenerator localKeyPairGenerator = KeyPairGenerator.getInstance("RSA");
    localKeyPairGenerator.initialize(1024);
    KeyPair localKeyPair = localKeyPairGenerator.generateKeyPair();
    RSAPublicKey localRSAPublicKey = (RSAPublicKey)localKeyPair.getPublic();
    RSAPrivateKey localRSAPrivateKey = (RSAPrivateKey)localKeyPair.getPrivate();
    HashMap localHashMap = new HashMap(2);
    localHashMap.put("RSAPublicKey", localRSAPublicKey);
    localHashMap.put("RSAPrivateKey", localRSAPrivateKey);
    return localHashMap;
  }
  
  public static String sign(byte[] paramArrayOfByte, String paramString)
    throws Exception
  {
    PKCS8EncodedKeySpec localPKCS8EncodedKeySpec = new PKCS8EncodedKeySpec(decryptBASE64(paramString));
    PrivateKey localPrivateKey = KeyFactory.getInstance("RSA").generatePrivate(localPKCS8EncodedKeySpec);
    Signature localSignature = Signature.getInstance("MD5withRSA");
    localSignature.initSign(localPrivateKey);
    localSignature.update(paramArrayOfByte);
    return encryptBASE64(localSignature.sign());
  }
  
  public static boolean verify(byte[] paramArrayOfByte, String paramString1, String paramString2)
    throws Exception
  {
    X509EncodedKeySpec localX509EncodedKeySpec = new X509EncodedKeySpec(decryptBASE64(paramString1));
    PublicKey localPublicKey = KeyFactory.getInstance("RSA").generatePublic(localX509EncodedKeySpec);
    Signature localSignature = Signature.getInstance("MD5withRSA");
    localSignature.initVerify(localPublicKey);
    localSignature.update(paramArrayOfByte);
    return localSignature.verify(decryptBASE64(paramString2));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.security.RSACoder
 * JD-Core Version:    0.7.0.1
 */