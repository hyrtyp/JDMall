package com.jd.lottery.lib.utils;

import com.jd.common.security.DESCoder;
import com.jd.common.security.MD5;
import com.jd.droidlib.util.L;

public class Encrypt
{
  public static String desEncrypt(String paramString1, String paramString2)
  {
    try
    {
      String str = DESCoder.encryptBASE64(DESCoder.encrypt(paramString1.getBytes(), paramString2));
      return str;
    }
    catch (Exception localException)
    {
      L.e("SecurityVerifyUtils desEncrypt error!", localException);
    }
    return null;
  }
  
  public static String initKey(String paramString)
  {
    try
    {
      String str = DESCoder.initKey(paramString);
      return str;
    }
    catch (Exception localException)
    {
      L.e("SecurityVerifyUtils initKey error!", localException);
    }
    return null;
  }
  
  public static String verifyAndDecrypter(String paramString1, String paramString2, String paramString3)
  {
    if ((StringUtils.isNotBlank(paramString1)) && (StringUtils.isNotBlank(paramString2)) && (StringUtils.isNotBlank(paramString3)) && (paramString1.equals(new MD5().getMD5ofStr(paramString2 + paramString3)))) {
      try
      {
        String str = Des3.decode(paramString2);
        return str;
      }
      catch (Exception localException)
      {
        L.e("SecurityVerifyUtils verifyAndDecrypter error!", localException);
      }
    }
    return null;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.utils.Encrypt
 * JD-Core Version:    0.7.0.1
 */