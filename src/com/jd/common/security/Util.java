package com.jd.common.security;

import java.io.PrintStream;

class Util
{
  public static final char[] HEX_DIGITS = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  
  public static int[] byte2int(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    int[] arrayOfInt = new int[i / 4];
    int j = 0;
    int m;
    for (int k = 0;; k = m)
    {
      if (k >= i / 4) {
        return arrayOfInt;
      }
      m = k + 1;
      int n = j + 1;
      int i1 = (0xFF & paramArrayOfByte[j]) << 24;
      int i2 = n + 1;
      int i3 = i1 | (0xFF & paramArrayOfByte[n]) << 16;
      int i4 = i2 + 1;
      int i5 = i3 | (0xFF & paramArrayOfByte[i2]) << 8;
      j = i4 + 1;
      arrayOfInt[k] = (i5 | 0xFF & paramArrayOfByte[i4]);
    }
  }
  
  public static short[] byte2short(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    short[] arrayOfShort = new short[i / 2];
    int j = 0;
    int m;
    for (int k = 0;; k = m)
    {
      if (k >= i / 2) {
        return arrayOfShort;
      }
      m = k + 1;
      int n = j + 1;
      int i1 = (0xFF & paramArrayOfByte[j]) << 8;
      j = n + 1;
      arrayOfShort[k] = ((short)(i1 | 0xFF & paramArrayOfByte[n]));
    }
  }
  
  public static byte[] hex2byte(String paramString)
  {
    int i = paramString.length();
    byte[] arrayOfByte = new byte[(i + 1) / 2];
    int k;
    int j;
    if (i % 2 == 1)
    {
      k = 0 + 1;
      j = 0 + 1;
      arrayOfByte[0] = ((byte)hexDigit(paramString.charAt(0)));
    }
    for (;;)
    {
      if (j >= i) {
        return arrayOfByte;
      }
      int m = k + 1;
      int n = j + 1;
      int i1 = hexDigit(paramString.charAt(j)) << 4;
      j = n + 1;
      arrayOfByte[k] = ((byte)(i1 | hexDigit(paramString.charAt(n))));
      k = m;
      continue;
      j = 0;
      k = 0;
    }
  }
  
  public static int hexDigit(char paramChar)
  {
    if ((paramChar >= '0') && (paramChar <= '9')) {
      return paramChar - '0';
    }
    if ((paramChar >= 'A') && (paramChar <= 'F')) {
      return 10 + (paramChar - 'A');
    }
    if ((paramChar >= 'a') && (paramChar <= 'f')) {
      return 10 + (paramChar - 'a');
    }
    return 0;
  }
  
  public static byte[] int2byte(int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt.length;
    byte[] arrayOfByte = new byte[i * 4];
    int j = 0;
    int m;
    for (int k = 0;; k = m)
    {
      if (k >= i) {
        return arrayOfByte;
      }
      m = k + 1;
      int n = paramArrayOfInt[k];
      int i1 = j + 1;
      arrayOfByte[j] = ((byte)(0xFF & n >>> 24));
      int i2 = i1 + 1;
      arrayOfByte[i1] = ((byte)(0xFF & n >>> 16));
      int i3 = i2 + 1;
      arrayOfByte[i2] = ((byte)(0xFF & n >>> 8));
      j = i3 + 1;
      arrayOfByte[i3] = ((byte)(n & 0xFF));
    }
  }
  
  public static boolean isHex(String paramString)
  {
    int i = paramString.length();
    int k;
    for (int j = 0;; j = k)
    {
      if (j >= i) {
        return true;
      }
      k = j + 1;
      int m = paramString.charAt(j);
      if (((m < 48) || (m > 57)) && ((m < 65) || (m > 70)) && ((m < 97) || (m > 102))) {
        return false;
      }
    }
  }
  
  public static void main(String[] paramArrayOfString)
  {
    String str = toHEX1(new byte[] { 10, 11, 12, 13 });
    System.out.println("s = " + str);
  }
  
  public static byte[] short2byte(short[] paramArrayOfShort)
  {
    int i = paramArrayOfShort.length;
    byte[] arrayOfByte = new byte[i * 2];
    int j = 0;
    int m;
    for (int k = 0;; k = m)
    {
      if (k >= i) {
        return arrayOfByte;
      }
      m = k + 1;
      int n = paramArrayOfShort[k];
      int i1 = j + 1;
      arrayOfByte[j] = ((byte)(0xFF & n >>> 8));
      j = i1 + 1;
      arrayOfByte[i1] = ((byte)(n & 0xFF));
    }
  }
  
  public static String toHEX(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    char[] arrayOfChar = new char[i * 3];
    int j = 0;
    int m;
    for (int k = 0;; k = m)
    {
      if (k >= i) {
        return new String(arrayOfChar);
      }
      m = k + 1;
      int n = paramArrayOfByte[k];
      int i1 = j + 1;
      arrayOfChar[j] = HEX_DIGITS[(0xF & n >>> 4)];
      int i2 = i1 + 1;
      arrayOfChar[i1] = HEX_DIGITS[(n & 0xF)];
      int i3 = i2 + 1;
      arrayOfChar[i2] = ' ';
      j = i3;
    }
  }
  
  public static String toHEX(int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt.length;
    char[] arrayOfChar = new char[i * 10];
    int j = 0;
    int m;
    for (int k = 0;; k = m)
    {
      if (k >= i) {
        return new String(arrayOfChar);
      }
      m = k + 1;
      int n = paramArrayOfInt[k];
      int i1 = j + 1;
      arrayOfChar[j] = HEX_DIGITS[(0xF & n >>> 28)];
      int i2 = i1 + 1;
      arrayOfChar[i1] = HEX_DIGITS[(0xF & n >>> 24)];
      int i3 = i2 + 1;
      arrayOfChar[i2] = HEX_DIGITS[(0xF & n >>> 20)];
      int i4 = i3 + 1;
      arrayOfChar[i3] = HEX_DIGITS[(0xF & n >>> 16)];
      int i5 = i4 + 1;
      arrayOfChar[i4] = ' ';
      int i6 = i5 + 1;
      arrayOfChar[i5] = HEX_DIGITS[(0xF & n >>> 12)];
      int i7 = i6 + 1;
      arrayOfChar[i6] = HEX_DIGITS[(0xF & n >>> 8)];
      int i8 = i7 + 1;
      arrayOfChar[i7] = HEX_DIGITS[(0xF & n >>> 4)];
      int i9 = i8 + 1;
      arrayOfChar[i8] = HEX_DIGITS[(n & 0xF)];
      j = i9 + 1;
      arrayOfChar[i9] = ' ';
    }
  }
  
  public static String toHEX(short[] paramArrayOfShort)
  {
    int i = paramArrayOfShort.length;
    char[] arrayOfChar = new char[i * 5];
    int j = 0;
    int m;
    for (int k = 0;; k = m)
    {
      if (k >= i) {
        return new String(arrayOfChar);
      }
      m = k + 1;
      int n = paramArrayOfShort[k];
      int i1 = j + 1;
      arrayOfChar[j] = HEX_DIGITS[(0xF & n >>> 12)];
      int i2 = i1 + 1;
      arrayOfChar[i1] = HEX_DIGITS[(0xF & n >>> 8)];
      int i3 = i2 + 1;
      arrayOfChar[i2] = HEX_DIGITS[(0xF & n >>> 4)];
      int i4 = i3 + 1;
      arrayOfChar[i3] = HEX_DIGITS[(n & 0xF)];
      int i5 = i4 + 1;
      arrayOfChar[i4] = ' ';
      j = i5;
    }
  }
  
  public static String toHEX1(byte paramByte)
  {
    char[] arrayOfChar = new char[2];
    int i = 0 + 1;
    arrayOfChar[0] = HEX_DIGITS[(0xF & paramByte >>> 4)];
    (i + 1);
    arrayOfChar[i] = HEX_DIGITS[(paramByte & 0xF)];
    return new String(arrayOfChar);
  }
  
  public static String toHEX1(int paramInt)
  {
    char[] arrayOfChar = new char[8];
    int i = 0 + 1;
    arrayOfChar[0] = HEX_DIGITS[(0xF & paramInt >>> 28)];
    int j = i + 1;
    arrayOfChar[i] = HEX_DIGITS[(0xF & paramInt >>> 24)];
    int k = j + 1;
    arrayOfChar[j] = HEX_DIGITS[(0xF & paramInt >>> 20)];
    int m = k + 1;
    arrayOfChar[k] = HEX_DIGITS[(0xF & paramInt >>> 16)];
    int n = m + 1;
    arrayOfChar[m] = HEX_DIGITS[(0xF & paramInt >>> 12)];
    int i1 = n + 1;
    arrayOfChar[n] = HEX_DIGITS[(0xF & paramInt >>> 8)];
    int i2 = i1 + 1;
    arrayOfChar[i1] = HEX_DIGITS[(0xF & paramInt >>> 4)];
    (i2 + 1);
    arrayOfChar[i2] = HEX_DIGITS[(paramInt & 0xF)];
    return new String(arrayOfChar);
  }
  
  public static String toHEX1(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    char[] arrayOfChar = new char[i * 2];
    int j = 0;
    int m;
    for (int k = 0;; k = m)
    {
      if (k >= i) {
        return new String(arrayOfChar);
      }
      m = k + 1;
      int n = paramArrayOfByte[k];
      int i1 = j + 1;
      arrayOfChar[j] = HEX_DIGITS[(0xF & n >>> 4)];
      j = i1 + 1;
      arrayOfChar[i1] = HEX_DIGITS[(n & 0xF)];
    }
  }
  
  public static String toHEX1(int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt.length;
    char[] arrayOfChar = new char[i * 8];
    int j = 0;
    int m;
    for (int k = 0;; k = m)
    {
      if (k >= i) {
        return new String(arrayOfChar);
      }
      m = k + 1;
      int n = paramArrayOfInt[k];
      int i1 = j + 1;
      arrayOfChar[j] = HEX_DIGITS[(0xF & n >>> 28)];
      int i2 = i1 + 1;
      arrayOfChar[i1] = HEX_DIGITS[(0xF & n >>> 24)];
      int i3 = i2 + 1;
      arrayOfChar[i2] = HEX_DIGITS[(0xF & n >>> 20)];
      int i4 = i3 + 1;
      arrayOfChar[i3] = HEX_DIGITS[(0xF & n >>> 16)];
      int i5 = i4 + 1;
      arrayOfChar[i4] = HEX_DIGITS[(0xF & n >>> 12)];
      int i6 = i5 + 1;
      arrayOfChar[i5] = HEX_DIGITS[(0xF & n >>> 8)];
      int i7 = i6 + 1;
      arrayOfChar[i6] = HEX_DIGITS[(0xF & n >>> 4)];
      j = i7 + 1;
      arrayOfChar[i7] = HEX_DIGITS[(n & 0xF)];
    }
  }
  
  public static String toHEX1(short[] paramArrayOfShort)
  {
    int i = paramArrayOfShort.length;
    char[] arrayOfChar = new char[i * 4];
    int j = 0;
    int m;
    for (int k = 0;; k = m)
    {
      if (k >= i) {
        return new String(arrayOfChar);
      }
      m = k + 1;
      int n = paramArrayOfShort[k];
      int i1 = j + 1;
      arrayOfChar[j] = HEX_DIGITS[(0xF & n >>> 12)];
      int i2 = i1 + 1;
      arrayOfChar[i1] = HEX_DIGITS[(0xF & n >>> 8)];
      int i3 = i2 + 1;
      arrayOfChar[i2] = HEX_DIGITS[(0xF & n >>> 4)];
      j = i3 + 1;
      arrayOfChar[i3] = HEX_DIGITS[(n & 0xF)];
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.security.Util
 * JD-Core Version:    0.7.0.1
 */