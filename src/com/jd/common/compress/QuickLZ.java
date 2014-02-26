package com.jd.common.compress;

public final class QuickLZ
{
  private static final int CWORD_LEN = 4;
  private static final int DEFAULT_HEADERLEN = 9;
  private static final int HASH_VALUES = 4096;
  private static final int MINOFFSET = 2;
  private static final int UNCOMPRESSED_END = 4;
  private static final int UNCONDITIONAL_MATCHLEN = 6;
  public final int QLZ_COMPRESSION_LEVEL = 1;
  public final int QLZ_MEMORY_SAFE = 0;
  public final int QLZ_STREAMING_BUFFER = 0;
  public final int QLZ_VERSION_MAJOR = 1;
  public final int QLZ_VERSION_MINOR = 4;
  public final int QLZ_VERSION_REVISION = 1;
  
  public static byte[] compress(byte[] paramArrayOfByte)
  {
    int i = 9 + 4;
    long l = 2147483648L;
    int j = 9;
    byte[] arrayOfByte1 = new byte[400 + paramArrayOfByte.length];
    int[] arrayOfInt1 = new int[4096];
    int[] arrayOfInt2 = new int[4096];
    byte[] arrayOfByte2 = new byte[4096];
    int k = -1 + (-4 + (-6 + paramArrayOfByte.length));
    if (paramArrayOfByte.length == 0) {
      return new byte[0];
    }
    int m = 0;
    int n = 0;
    int i1 = 0;
    if (k <= 0) {
      m = (int)fastread(paramArrayOfByte, 0, 3);
    }
    if (i1 > k)
    {
      label95:
      int i13 = -1 + paramArrayOfByte.length;
      if (i1 <= i13) {
        break label770;
      }
    }
    for (;;)
    {
      if ((1L & l) == 1L)
      {
        fastwrite(arrayOfByte1, j, 0x80000000 | l >>> 1, 4);
        arrayOfByte1[0] = 3;
        fastwrite(arrayOfByte1, 1, i, 4);
        fastwrite(arrayOfByte1, 5, paramArrayOfByte.length, 4);
        byte[] arrayOfByte4 = new byte[i];
        System.arraycopy(arrayOfByte1, 0, arrayOfByte4, 0, i);
        return arrayOfByte4;
        if ((1L & l) == 1L)
        {
          int i12 = 3 * (paramArrayOfByte.length >> 2);
          if ((i1 > i12) && (i > i1 - (i1 >> 5)))
          {
            byte[] arrayOfByte3 = new byte[9 + paramArrayOfByte.length];
            arrayOfByte3[0] = 2;
            fastwrite(arrayOfByte3, 1, 9 + paramArrayOfByte.length, 4);
            fastwrite(arrayOfByte3, 5, paramArrayOfByte.length, 4);
            System.arraycopy(paramArrayOfByte, 0, arrayOfByte3, 9, paramArrayOfByte.length);
            return arrayOfByte3;
          }
          fastwrite(arrayOfByte1, j, 0x80000000 | l >>> 1, 4);
          j = i;
          i += 4;
          l = 2147483648L;
        }
        int i2 = 0xFFF & (m ^ m >>> 12);
        int i3 = arrayOfInt1[i2];
        int i4 = m ^ arrayOfInt2[i2];
        arrayOfInt2[i2] = m;
        arrayOfInt1[i2] = i1;
        if ((i4 == 0) && (arrayOfByte2[i2] != 0)) {
          if (i1 - i3 <= 2)
          {
            int i11 = i3 + 1;
            if ((i1 != i11) || (n < 3) || (i1 <= 3) || (paramArrayOfByte[i1] != paramArrayOfByte[(i1 - 3)]) || (paramArrayOfByte[i1] != paramArrayOfByte[(i1 - 2)]) || (paramArrayOfByte[i1] != paramArrayOfByte[(i1 - 1)]) || (paramArrayOfByte[i1] != paramArrayOfByte[(i1 + 1)]) || (paramArrayOfByte[i1] != paramArrayOfByte[(i1 + 2)])) {}
          }
          else
          {
            l = 0x80000000 | l >>> 1;
            if (paramArrayOfByte[(i3 + 3)] != paramArrayOfByte[(i1 + 3)])
            {
              int i10 = 0x1 | i2 << 4;
              arrayOfByte1[(i + 0)] = ((byte)(i10 >>> 0));
              arrayOfByte1[(i + 1)] = ((byte)(i10 >>> 8));
              i1 += 3;
              i += 2;
            }
            for (;;)
            {
              m = (int)fastread(paramArrayOfByte, i1, 3);
              n = 0;
              break;
              int i5 = i1;
              int i6;
              if (-1 + (1 + (-4 + paramArrayOfByte.length - i1)) > 255)
              {
                i6 = 255;
                label543:
                i1 += 4;
                if (paramArrayOfByte[(i3 + i1 - i5)] == paramArrayOfByte[i1])
                {
                  i1++;
                  if (paramArrayOfByte[(i3 + i1 - i5)] == paramArrayOfByte[i1]) {
                    i1++;
                  }
                }
              }
              int i7;
              int i8;
              for (;;)
              {
                if ((paramArrayOfByte[(i3 + (i1 - i5))] != paramArrayOfByte[i1]) || (i1 - i5 >= i6))
                {
                  i7 = i1 - i5;
                  i8 = i2 << 4;
                  if (i7 >= 18) {
                    break label694;
                  }
                  int i9 = i8 | i7 - 2;
                  arrayOfByte1[(i + 0)] = ((byte)(i9 >>> 0));
                  arrayOfByte1[(i + 1)] = ((byte)(i9 >>> 8));
                  i += 2;
                  break;
                  i6 = -1 + (1 + (-4 + paramArrayOfByte.length - i1));
                  break label543;
                }
                i1++;
              }
              label694:
              fastwrite(arrayOfByte1, i, i8 | i7 << 16, 3);
              i += 3;
            }
          }
        }
        n++;
        arrayOfByte2[i2] = 1;
        arrayOfByte1[i] = paramArrayOfByte[i1];
        l >>>= 1;
        i1++;
        i++;
        m = 0xFFFF & m >>> 8 | (0xFF & paramArrayOfByte[(i1 + 2)]) << 16;
        break;
        label770:
        if ((1L & l) == 1L)
        {
          fastwrite(arrayOfByte1, j, 0x80000000 | l >>> 1, 4);
          j = i;
          i += 4;
          l = 2147483648L;
        }
        arrayOfByte1[i] = paramArrayOfByte[i1];
        i1++;
        i++;
        l >>>= 1;
        break label95;
      }
      l >>>= 1;
    }
  }
  
  public static byte[] decompress(byte[] paramArrayOfByte)
  {
    int i = (int)sizeDecompressed(paramArrayOfByte);
    int j = headerLen(paramArrayOfByte);
    long l = 1L;
    byte[] arrayOfByte1 = new byte[i];
    int[] arrayOfInt = new int[4096];
    byte[] arrayOfByte2 = new byte[4096];
    int k = -1 + (-4 + (i - 6));
    int m = -1;
    int n = 0x1 & paramArrayOfByte[0];
    int i1 = 0;
    int i2 = 0;
    if (n != 1)
    {
      byte[] arrayOfByte3 = new byte[i];
      System.arraycopy(paramArrayOfByte, headerLen(paramArrayOfByte), arrayOfByte3, 0, i);
      return arrayOfByte3;
    }
    if (l == 1L)
    {
      l = fastread(paramArrayOfByte, j, 4);
      j += 4;
      if (i1 <= k) {
        i2 = (int)fastread(paramArrayOfByte, j, 3);
      }
    }
    if ((1L & l) == 1L)
    {
      l >>>= 1;
      int i5 = arrayOfInt[(0xFFF & i2 >>> 4)];
      int i6;
      label162:
      int i7;
      if ((i2 & 0xF) != 0)
      {
        i6 = 2 + (i2 & 0xF);
        j += 2;
        arrayOfByte1[(i1 + 0)] = arrayOfByte1[(i5 + 0)];
        arrayOfByte1[(i1 + 1)] = arrayOfByte1[(i5 + 1)];
        arrayOfByte1[(i1 + 2)] = arrayOfByte1[(i5 + 2)];
        i7 = 3;
        label207:
        if (i7 < i6) {
          break label279;
        }
        i1 += i6;
      }
      for (int i8 = (int)fastread(arrayOfByte1, m + 1, 3);; i8 = 0xFFFF & i8 >>> 8 | (0xFF & arrayOfByte1[(m + 3)]) << 16)
      {
        if (m >= i1 - i6)
        {
          m = i1 - 1;
          i2 = (int)fastread(paramArrayOfByte, j, 3);
          break;
          i6 = 0xFF & paramArrayOfByte[(j + 2)];
          j += 3;
          break label162;
          label279:
          arrayOfByte1[(i1 + i7)] = arrayOfByte1[(i5 + i7)];
          i7++;
          break label207;
        }
        m++;
        int i9 = 0xFFF & (i8 ^ i8 >>> 12);
        arrayOfInt[i9] = m;
        arrayOfByte2[i9] = 1;
      }
    }
    if (i1 <= k)
    {
      arrayOfByte1[i1] = paramArrayOfByte[j];
      i1++;
      j++;
      l >>>= 1;
      for (;;)
      {
        if (m >= i1 - 3)
        {
          i2 = 0xFFFF & i2 >> 8 | (0xFF & paramArrayOfByte[(j + 2)]) << 16;
          break;
        }
        m++;
        i3 = (int)fastread(arrayOfByte1, m, 3);
        i4 = 0xFFF & (i3 ^ i3 >>> 12);
        arrayOfInt[i4] = m;
        arrayOfByte2[i4] = 1;
      }
    }
    while (i1 <= i - 1)
    {
      int i3;
      int i4;
      if (l == 1L)
      {
        j += 4;
        l = 2147483648L;
      }
      arrayOfByte1[i1] = paramArrayOfByte[j];
      i1++;
      j++;
      l >>>= 1;
    }
    return arrayOfByte1;
  }
  
  static long fastread(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    switch (paramInt2)
    {
    default: 
      return 0L;
    case 3: 
      return 0L | (0xFF & paramArrayOfByte[(paramInt1 + 0)]) << 0 | (0xFF & paramArrayOfByte[(paramInt1 + 1)]) << 8 | (0xFF & paramArrayOfByte[(paramInt1 + 2)]) << 16;
    case 2: 
      return 0L | (0xFF & paramArrayOfByte[(paramInt1 + 0)]) << 0 | (0xFF & paramArrayOfByte[(paramInt1 + 1)]) << 8;
    case 1: 
      return 0L | (0xFF & paramArrayOfByte[(paramInt1 + 0)]) << 0;
    }
    return 0L | (0xFF & paramArrayOfByte[(paramInt1 + 0)]) << 0 | (0xFF & paramArrayOfByte[(paramInt1 + 1)]) << 8 | (0xFF & paramArrayOfByte[(paramInt1 + 2)]) << 16 | (0xFF & paramArrayOfByte[(paramInt1 + 3)]) << 24;
  }
  
  static void fastwrite(byte[] paramArrayOfByte, int paramInt1, long paramLong, int paramInt2)
  {
    switch (paramInt2)
    {
    default: 
      return;
    case 3: 
      paramArrayOfByte[paramInt1] = ((byte)(int)paramLong);
      paramArrayOfByte[(paramInt1 + 1)] = ((byte)(int)(paramLong >>> 8));
      paramArrayOfByte[(paramInt1 + 2)] = ((byte)(int)(paramLong >>> 16));
      return;
    case 2: 
      paramArrayOfByte[paramInt1] = ((byte)(int)paramLong);
      paramArrayOfByte[(paramInt1 + 1)] = ((byte)(int)(paramLong >>> 8));
      return;
    }
    paramArrayOfByte[paramInt1] = ((byte)(int)paramLong);
    paramArrayOfByte[(paramInt1 + 1)] = ((byte)(int)(paramLong >>> 8));
    paramArrayOfByte[(paramInt1 + 2)] = ((byte)(int)(paramLong >>> 16));
    paramArrayOfByte[(paramInt1 + 3)] = ((byte)(int)(paramLong >>> 24));
  }
  
  static int headerLen(byte[] paramArrayOfByte)
  {
    if ((0x2 & paramArrayOfByte[0]) == 2) {
      return 9;
    }
    return 3;
  }
  
  public static long sizeCompressed(byte[] paramArrayOfByte)
  {
    if (headerLen(paramArrayOfByte) == 9) {
      return fastread(paramArrayOfByte, 1, 4);
    }
    return fastread(paramArrayOfByte, 1, 1);
  }
  
  public static long sizeDecompressed(byte[] paramArrayOfByte)
  {
    if (headerLen(paramArrayOfByte) == 9) {
      return fastread(paramArrayOfByte, 5, 4);
    }
    return fastread(paramArrayOfByte, 2, 1);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.compress.QuickLZ
 * JD-Core Version:    0.7.0.1
 */