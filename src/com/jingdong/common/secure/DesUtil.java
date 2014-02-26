package com.jingdong.common.secure;

import com.jingdong.common.utils.Log;
import java.io.PrintStream;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;

public class DesUtil
{
  private static final String DES = "DES";
  private static final String PADDING = "DES/ECB/PKCS5Padding";
  
  public static String bytesTo16HexString(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder("");
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length <= 0)) {
      return "";
    }
    for (int i = 0;; i++)
    {
      if (i >= paramArrayOfByte.length) {
        return localStringBuilder.toString();
      }
      String str = Integer.toHexString(0xFF & paramArrayOfByte[i]);
      if (str.length() < 2) {
        localStringBuilder.append(0);
      }
      localStringBuilder.append(str);
    }
  }
  
  public static final String decrypt(String paramString1, String paramString2)
  {
    try
    {
      String str = new String(decrypt(Base64.decode(paramString1.getBytes()), paramString2.getBytes()));
      return str;
    }
    catch (Exception localException)
    {
      Log.e("Exception -->DesUtil ", "Exception -->DesUtil");
      localException.printStackTrace();
    }
    return null;
  }
  
  public static final String decrypt(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      String str = new String(decrypt(Base64.decode(paramString1.getBytes()), paramString2.getBytes()), paramString3);
      return str;
    }
    catch (Exception localException)
    {
      Log.e("Exception -->DesUtil ", "Exception -->DesUtil");
      localException.printStackTrace();
    }
    return null;
  }
  
  public static byte[] decrypt(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws Exception
  {
    SecureRandom localSecureRandom = new SecureRandom();
    DESKeySpec localDESKeySpec = new DESKeySpec(paramArrayOfByte2);
    SecretKey localSecretKey = SecretKeyFactory.getInstance("DES").generateSecret(localDESKeySpec);
    Cipher localCipher = Cipher.getInstance("DES/ECB/PKCS5Padding");
    localCipher.init(2, localSecretKey, localSecureRandom);
    return localCipher.doFinal(paramArrayOfByte1);
  }
  
  public static final String encrypt(String paramString1, String paramString2)
  {
    try
    {
      String str = Base64.encodeBytes(encrypt(paramString1.getBytes("utf-8"), paramString2.getBytes()));
      return str;
    }
    catch (Exception localException)
    {
      Log.e("Exception -->DesUtil ", "Exception -->DesUtil");
      localException.printStackTrace();
    }
    return null;
  }
  
  public static byte[] encrypt(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws Exception
  {
    SecureRandom localSecureRandom = new SecureRandom();
    DESKeySpec localDESKeySpec = new DESKeySpec(paramArrayOfByte2);
    SecretKey localSecretKey = SecretKeyFactory.getInstance("DES").generateSecret(localDESKeySpec);
    Cipher localCipher = Cipher.getInstance("DES/ECB/PKCS5Padding");
    localCipher.init(1, localSecretKey, localSecureRandom);
    return localCipher.doFinal(paramArrayOfByte1);
  }
  
  public static void main(String[] paramArrayOfString)
  {
    System.out.println(decrypt("zkg3mzuPDWK7Y5lm+AEEDZP9il67Zf+BH6xeA7tmedn7evkOJi4i51SLzlyRjSldT9hRsBRQoc4y6yuAUc3KmtLMYy1rZbP/m8VJrcu6fKOuuoc68SpJkH6hRRLmC2do5XiIuCpLX0jBMOVw8uykvmVN7XIbLGXdQy4KrYPSx+2r/cd7DbB9iERC3zN5KEc+xzRxk7WoJNS4OEHovMjjsWr2wz4BXN3kAje053LLOljR4YErFUid+zAYSK9NpRIIW4RZDTX4MNEzWMBryueDO3+xGXSPvib7IOvKnVEtZKes7XDMNpIE5uQ4jvGvBWtYNxDLD1S/i6weLlEWDdojccst2G+mJMaafUNtBvhUSQlq7e61F3WHkkEgdRkEfli3RirXnVraSpdyE5Ok2YEPbW0o1o+3bDYwbNFxsb76p3iLhklOnlfZRu2b5OplNx7qImEa+DPtYNCRQV19EIgSMm8lwXzPArP6r7O7l5H7c1Be8Nk8nRT2QK66hzrxKkmQ0vZnVA1Bt6RPYwr1VAKY8z6Gw0PqkrtQF8QQBAdN3WlqlgWQEYpi3IMom1xLWEVeA31VeA/OcuQr2ajog75hi+apAYd7pW9KCiGzg7UIXJbuA9l3Bd1Jqs3b4LWIn/xYjJzZ/MdG3owxDh8VamudzQlVHFoS47IPZJUgrUcLtXvlaPsa7fDGafZnBafQ3IwH52WtLv9Whob0/2uO28OJEHTiR3jOFtexo32LMehNz95s36qrPmVukmxOSbJrJMpmxbZlJ1EbT36lxY2t2QqImAZVXLtwQv44kNEIPfO02k2huTldx4yor+JXc66Rkcq67OmiRhwAdZIvbkFxAeDdwGLbIgUEKgEcl5s0C4RMhtI=", "LJc4ZEnVXvtuese1RWsIs1Tml55wDvJU", "utf-8"));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.secure.DesUtil
 * JD-Core Version:    0.7.0.1
 */