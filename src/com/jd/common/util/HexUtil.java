package com.jd.common.util;

public class HexUtil
{
  private static final String HEX_CHARS = "0123456789abcdef";
  
  public static String appendParam(String paramString1, String paramString2, String paramString3)
  {
    if (!paramString1.equals("")) {
      if (!paramString3.equals("")) {
        paramString1 = paramString1 + "&" + paramString2 + "=" + paramString3;
      }
    }
    while (paramString3.equals("")) {
      return paramString1;
    }
    return paramString2 + "=" + paramString3;
  }
  
  public static byte[] toByteArray(String paramString)
  {
    byte[] arrayOfByte = new byte[paramString.length() / 2];
    int i = 0;
    for (int j = 0;; j++)
    {
      if (j >= arrayOfByte.length) {
        return arrayOfByte;
      }
      int k = i + 1;
      int m = Character.digit(paramString.charAt(i), 16) << 4;
      i = k + 1;
      arrayOfByte[j] = ((byte)(m | Character.digit(paramString.charAt(k), 16)));
    }
  }
  
  public static String toHexString(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    for (int i = 0;; i++)
    {
      if (i >= paramArrayOfByte.length) {
        return localStringBuffer.toString();
      }
      localStringBuffer.append("0123456789abcdef".charAt(0xF & paramArrayOfByte[i] >>> 4));
      localStringBuffer.append("0123456789abcdef".charAt(0xF & paramArrayOfByte[i]));
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.util.HexUtil
 * JD-Core Version:    0.7.0.1
 */