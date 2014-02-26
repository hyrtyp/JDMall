package com.jd.common.security;

import java.io.PrintStream;

public class Base32
{
  private static final String base32Chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567";
  private static final int[] base32Lookup;
  
  static
  {
    int[] arrayOfInt = new int[80];
    arrayOfInt[0] = 255;
    arrayOfInt[1] = 255;
    arrayOfInt[2] = 26;
    arrayOfInt[3] = 27;
    arrayOfInt[4] = 28;
    arrayOfInt[5] = 29;
    arrayOfInt[6] = 30;
    arrayOfInt[7] = 31;
    arrayOfInt[8] = 255;
    arrayOfInt[9] = 255;
    arrayOfInt[10] = 255;
    arrayOfInt[11] = 255;
    arrayOfInt[12] = 255;
    arrayOfInt[13] = 255;
    arrayOfInt[14] = 255;
    arrayOfInt[15] = 255;
    arrayOfInt[16] = 255;
    arrayOfInt[18] = 1;
    arrayOfInt[19] = 2;
    arrayOfInt[20] = 3;
    arrayOfInt[21] = 4;
    arrayOfInt[22] = 5;
    arrayOfInt[23] = 6;
    arrayOfInt[24] = 7;
    arrayOfInt[25] = 8;
    arrayOfInt[26] = 9;
    arrayOfInt[27] = 10;
    arrayOfInt[28] = 11;
    arrayOfInt[29] = 12;
    arrayOfInt[30] = 13;
    arrayOfInt[31] = 14;
    arrayOfInt[32] = 15;
    arrayOfInt[33] = 16;
    arrayOfInt[34] = 17;
    arrayOfInt[35] = 18;
    arrayOfInt[36] = 19;
    arrayOfInt[37] = 20;
    arrayOfInt[38] = 21;
    arrayOfInt[39] = 22;
    arrayOfInt[40] = 23;
    arrayOfInt[41] = 24;
    arrayOfInt[42] = 25;
    arrayOfInt[43] = 255;
    arrayOfInt[44] = 255;
    arrayOfInt[45] = 255;
    arrayOfInt[46] = 255;
    arrayOfInt[47] = 255;
    arrayOfInt[48] = 255;
    arrayOfInt[50] = 1;
    arrayOfInt[51] = 2;
    arrayOfInt[52] = 3;
    arrayOfInt[53] = 4;
    arrayOfInt[54] = 5;
    arrayOfInt[55] = 6;
    arrayOfInt[56] = 7;
    arrayOfInt[57] = 8;
    arrayOfInt[58] = 9;
    arrayOfInt[59] = 10;
    arrayOfInt[60] = 11;
    arrayOfInt[61] = 12;
    arrayOfInt[62] = 13;
    arrayOfInt[63] = 14;
    arrayOfInt[64] = 15;
    arrayOfInt[65] = 16;
    arrayOfInt[66] = 17;
    arrayOfInt[67] = 18;
    arrayOfInt[68] = 19;
    arrayOfInt[69] = 20;
    arrayOfInt[70] = 21;
    arrayOfInt[71] = 22;
    arrayOfInt[72] = 23;
    arrayOfInt[73] = 24;
    arrayOfInt[74] = 25;
    arrayOfInt[75] = 255;
    arrayOfInt[76] = 255;
    arrayOfInt[77] = 255;
    arrayOfInt[78] = 255;
    arrayOfInt[79] = 255;
    base32Lookup = arrayOfInt;
  }
  
  public static byte[] decode(String paramString)
  {
    byte[] arrayOfByte = new byte[5 * paramString.length() / 8];
    int i = 0;
    int j = 0;
    int k = 0;
    if (i >= paramString.length()) {
      label27:
      return arrayOfByte;
    }
    int m = '￐' + paramString.charAt(i);
    if ((m < 0) || (m >= base32Lookup.length)) {}
    for (;;)
    {
      i++;
      break;
      int n = base32Lookup[m];
      if (n != 255) {
        if (j <= 3)
        {
          j = (j + 5) % 8;
          if (j == 0)
          {
            arrayOfByte[k] = ((byte)(n | arrayOfByte[k]));
            k++;
            if (k >= arrayOfByte.length) {
              return arrayOfByte;
            }
          }
          else
          {
            arrayOfByte[k] = ((byte)(arrayOfByte[k] | n << 8 - j));
          }
        }
        else
        {
          j = (j + 5) % 8;
          arrayOfByte[k] = ((byte)(arrayOfByte[k] | n >>> j));
          k++;
          if (k >= arrayOfByte.length) {
            break label27;
          }
          arrayOfByte[k] = ((byte)(arrayOfByte[k] | n << 8 - j));
        }
      }
    }
  }
  
  public static String encode(byte[] paramArrayOfByte)
  {
    int i = 0;
    int j = 0;
    int k = paramArrayOfByte.length;
    int m = 0;
    StringBuffer localStringBuffer;
    switch (k)
    {
    default: 
      localStringBuffer = new StringBuffer(m + 8 * (7 + paramArrayOfByte.length) / 5);
      if (i >= paramArrayOfByte.length) {
        switch (paramArrayOfByte.length)
        {
        }
      }
      break;
    }
    for (;;)
    {
      return localStringBuffer.toString();
      m = 6;
      break;
      m = 4;
      break;
      m = 3;
      break;
      m = 1;
      break;
      int n;
      label142:
      int i2;
      label170:
      int i1;
      if (paramArrayOfByte[i] >= 0)
      {
        n = paramArrayOfByte[i];
        if (j <= 3) {
          break label252;
        }
        if (i + 1 >= paramArrayOfByte.length) {
          break label246;
        }
        if (paramArrayOfByte[(i + 1)] < 0) {
          break label232;
        }
        i2 = paramArrayOfByte[(i + 1)];
        int i3 = n & 255 >> j;
        j = (j + 5) % 8;
        i1 = i3 << j | i2 >> 8 - j;
        i++;
      }
      for (;;)
      {
        localStringBuffer.append("ABCDEFGHIJKLMNOPQRSTUVWXYZ234567".charAt(i1));
        break;
        n = 256 + paramArrayOfByte[i];
        break label142;
        label232:
        i2 = 256 + paramArrayOfByte[(i + 1)];
        break label170;
        label246:
        i2 = 0;
        break label170;
        label252:
        i1 = 0x1F & n >> 8 - (j + 5);
        j = (j + 5) % 8;
        if (j == 0) {
          i++;
        }
      }
      localStringBuffer.append("======");
      continue;
      localStringBuffer.append("====");
      continue;
      localStringBuffer.append("===");
      continue;
      localStringBuffer.append("=");
    }
  }
  
  public static void main(String[] paramArrayOfString)
  {
    if (paramArrayOfString.length == 0)
    {
      System.out.println("Supply a Base32-encoded argument.");
      return;
    }
    System.out.println(" Original: " + paramArrayOfString[0]);
    byte[] arrayOfByte = decode(paramArrayOfString[0]);
    System.out.print("      Hex: ");
    for (int i = 0;; i++)
    {
      if (i >= arrayOfByte.length)
      {
        System.out.println();
        System.out.println("Reencoded: " + encode(arrayOfByte));
        return;
      }
      int j = arrayOfByte[i];
      if (j < 0) {
        j += 256;
      }
      System.out.print(Integer.toHexString(j + 256).substring(1));
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.security.Base32
 * JD-Core Version:    0.7.0.1
 */