package com.jingdong.common.utils;

public class ContentConvertUtil
{
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
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.ContentConvertUtil
 * JD-Core Version:    0.7.0.1
 */