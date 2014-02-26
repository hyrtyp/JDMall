package com.jd.common.security;

import java.io.PrintStream;
import java.lang.reflect.Array;

public class MD5
{
  static final byte[] PADDING;
  static final int S11 = 7;
  static final int S12 = 12;
  static final int S13 = 17;
  static final int S14 = 22;
  static final int S21 = 5;
  static final int S22 = 9;
  static final int S23 = 14;
  static final int S24 = 20;
  static final int S31 = 4;
  static final int S32 = 11;
  static final int S33 = 16;
  static final int S34 = 23;
  static final int S41 = 6;
  static final int S42 = 10;
  static final int S43 = 15;
  static final int S44 = 21;
  private byte[] buffer = new byte[64];
  private long[] count = new long[2];
  private byte[] digest = new byte[16];
  public String digestHexStr;
  private long[] state = new long[4];
  
  static
  {
    byte[] arrayOfByte = new byte[64];
    arrayOfByte[0] = -128;
    PADDING = arrayOfByte;
  }
  
  public MD5()
  {
    md5Init();
  }
  
  private void Decode(long[] paramArrayOfLong, byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;
    for (int j = 0;; j += 4)
    {
      if (j >= paramInt) {
        return;
      }
      paramArrayOfLong[i] = (b2iu(paramArrayOfByte[j]) | b2iu(paramArrayOfByte[(j + 1)]) << 8 | b2iu(paramArrayOfByte[(j + 2)]) << 16 | b2iu(paramArrayOfByte[(j + 3)]) << 24);
      i++;
    }
  }
  
  private void Encode(byte[] paramArrayOfByte, long[] paramArrayOfLong, int paramInt)
  {
    int i = 0;
    for (int j = 0;; j += 4)
    {
      if (j >= paramInt) {
        return;
      }
      paramArrayOfByte[j] = ((byte)(int)(0xFF & paramArrayOfLong[i]));
      paramArrayOfByte[(j + 1)] = ((byte)(int)(0xFF & paramArrayOfLong[i] >>> 8));
      paramArrayOfByte[(j + 2)] = ((byte)(int)(0xFF & paramArrayOfLong[i] >>> 16));
      paramArrayOfByte[(j + 3)] = ((byte)(int)(0xFF & paramArrayOfLong[i] >>> 24));
      i++;
    }
  }
  
  private long F(long paramLong1, long paramLong2, long paramLong3)
  {
    return paramLong1 & paramLong2 | paramLong3 & (0xFFFFFFFF ^ paramLong1);
  }
  
  private long FF(long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5, long paramLong6, long paramLong7)
  {
    long l = paramLong1 + (paramLong7 + (paramLong5 + F(paramLong2, paramLong3, paramLong4)));
    return paramLong2 + ((int)l << (int)paramLong6 | (int)l >>> (int)(32L - paramLong6));
  }
  
  private long G(long paramLong1, long paramLong2, long paramLong3)
  {
    return paramLong1 & paramLong3 | paramLong2 & (0xFFFFFFFF ^ paramLong3);
  }
  
  private long GG(long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5, long paramLong6, long paramLong7)
  {
    long l = paramLong1 + (paramLong7 + (paramLong5 + G(paramLong2, paramLong3, paramLong4)));
    return paramLong2 + ((int)l << (int)paramLong6 | (int)l >>> (int)(32L - paramLong6));
  }
  
  private long H(long paramLong1, long paramLong2, long paramLong3)
  {
    return paramLong3 ^ paramLong1 ^ paramLong2;
  }
  
  private long HH(long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5, long paramLong6, long paramLong7)
  {
    long l = paramLong1 + (paramLong7 + (paramLong5 + H(paramLong2, paramLong3, paramLong4)));
    return paramLong2 + ((int)l << (int)paramLong6 | (int)l >>> (int)(32L - paramLong6));
  }
  
  private long I(long paramLong1, long paramLong2, long paramLong3)
  {
    return paramLong2 ^ (paramLong1 | 0xFFFFFFFF ^ paramLong3);
  }
  
  private long II(long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5, long paramLong6, long paramLong7)
  {
    long l = paramLong1 + (paramLong7 + (paramLong5 + I(paramLong2, paramLong3, paramLong4)));
    return paramLong2 + ((int)l << (int)paramLong6 | (int)l >>> (int)(32L - paramLong6));
  }
  
  public static long b2iu(byte paramByte)
  {
    if (paramByte < 0) {
      paramByte &= 0xFF;
    }
    return paramByte;
  }
  
  public static String byteHEX(byte paramByte)
  {
    char[] arrayOfChar1 = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
    char[] arrayOfChar2 = new char[2];
    arrayOfChar2[0] = arrayOfChar1[(0xF & paramByte >>> 4)];
    arrayOfChar2[1] = arrayOfChar1[(paramByte & 0xF)];
    return new String(arrayOfChar2);
  }
  
  public static void main(String[] paramArrayOfString)
  {
    MD5 localMD5 = new MD5();
    if (Array.getLength(paramArrayOfString) == 0)
    {
      System.out.println("MD5 Test suite:");
      System.out.println("MD5(\"\"):" + localMD5.getMD5ofStr(""));
      System.out.println("MD5(\"a\"):" + localMD5.getMD5ofStr("a"));
      System.out.println("MD5(\"abc\"):" + localMD5.getMD5ofStr("abc"));
      System.out.println("MD5(\"message digest\"):" + localMD5.getMD5ofStr("message digest"));
      System.out.println("MD5(\"abcdefghijklmnopqrstuvwxyz\"):" + localMD5.getMD5ofStr("abcdefghijklmnopqrstuvwxyz"));
      System.out.println("MD5(\"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\"):" + localMD5.getMD5ofStr("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"));
      return;
    }
    System.out.println("MD5(" + paramArrayOfString[0] + ")=" + localMD5.getMD5ofStr(paramArrayOfString[0]));
  }
  
  private void md5Final()
  {
    byte[] arrayOfByte = new byte[8];
    Encode(arrayOfByte, this.count, 8);
    int i = 0x3F & (int)(this.count[0] >>> 3);
    if (i < 56) {}
    for (int j = 56 - i;; j = 120 - i)
    {
      md5Update(PADDING, j);
      md5Update(arrayOfByte, 8);
      Encode(this.digest, this.state, 16);
      return;
    }
  }
  
  private void md5Init()
  {
    this.count[0] = 0L;
    this.count[1] = 0L;
    this.state[0] = 1732584193L;
    this.state[1] = 4023233417L;
    this.state[2] = 2562383102L;
    this.state[3] = 271733878L;
  }
  
  private void md5Memcpy(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2, int paramInt3)
  {
    for (int i = 0;; i++)
    {
      if (i >= paramInt3) {
        return;
      }
      paramArrayOfByte1[(paramInt1 + i)] = paramArrayOfByte2[(paramInt2 + i)];
    }
  }
  
  private void md5Transform(byte[] paramArrayOfByte)
  {
    long l1 = this.state[0];
    long l2 = this.state[1];
    long l3 = this.state[2];
    long l4 = this.state[3];
    long[] arrayOfLong1 = new long[16];
    Decode(arrayOfLong1, paramArrayOfByte, 64);
    long l5 = FF(l1, l2, l3, l4, arrayOfLong1[0], 7L, 3614090360L);
    long l6 = FF(l4, l5, l2, l3, arrayOfLong1[1], 12L, 3905402710L);
    long l7 = FF(l3, l6, l5, l2, arrayOfLong1[2], 17L, 606105819L);
    long l8 = FF(l2, l7, l6, l5, arrayOfLong1[3], 22L, 3250441966L);
    long l9 = FF(l5, l8, l7, l6, arrayOfLong1[4], 7L, 4118548399L);
    long l10 = FF(l6, l9, l8, l7, arrayOfLong1[5], 12L, 1200080426L);
    long l11 = FF(l7, l10, l9, l8, arrayOfLong1[6], 17L, 2821735955L);
    long l12 = FF(l8, l11, l10, l9, arrayOfLong1[7], 22L, 4249261313L);
    long l13 = FF(l9, l12, l11, l10, arrayOfLong1[8], 7L, 1770035416L);
    long l14 = FF(l10, l13, l12, l11, arrayOfLong1[9], 12L, 2336552879L);
    long l15 = FF(l11, l14, l13, l12, arrayOfLong1[10], 17L, 4294925233L);
    long l16 = FF(l12, l15, l14, l13, arrayOfLong1[11], 22L, 2304563134L);
    long l17 = FF(l13, l16, l15, l14, arrayOfLong1[12], 7L, 1804603682L);
    long l18 = FF(l14, l17, l16, l15, arrayOfLong1[13], 12L, 4254626195L);
    long l19 = FF(l15, l18, l17, l16, arrayOfLong1[14], 17L, 2792965006L);
    long l20 = FF(l16, l19, l18, l17, arrayOfLong1[15], 22L, 1236535329L);
    long l21 = GG(l17, l20, l19, l18, arrayOfLong1[1], 5L, 4129170786L);
    long l22 = GG(l18, l21, l20, l19, arrayOfLong1[6], 9L, 3225465664L);
    long l23 = GG(l19, l22, l21, l20, arrayOfLong1[11], 14L, 643717713L);
    long l24 = GG(l20, l23, l22, l21, arrayOfLong1[0], 20L, 3921069994L);
    long l25 = GG(l21, l24, l23, l22, arrayOfLong1[5], 5L, 3593408605L);
    long l26 = GG(l22, l25, l24, l23, arrayOfLong1[10], 9L, 38016083L);
    long l27 = GG(l23, l26, l25, l24, arrayOfLong1[15], 14L, 3634488961L);
    long l28 = GG(l24, l27, l26, l25, arrayOfLong1[4], 20L, 3889429448L);
    long l29 = GG(l25, l28, l27, l26, arrayOfLong1[9], 5L, 568446438L);
    long l30 = GG(l26, l29, l28, l27, arrayOfLong1[14], 9L, 3275163606L);
    long l31 = GG(l27, l30, l29, l28, arrayOfLong1[3], 14L, 4107603335L);
    long l32 = GG(l28, l31, l30, l29, arrayOfLong1[8], 20L, 1163531501L);
    long l33 = GG(l29, l32, l31, l30, arrayOfLong1[13], 5L, 2850285829L);
    long l34 = GG(l30, l33, l32, l31, arrayOfLong1[2], 9L, 4243563512L);
    long l35 = GG(l31, l34, l33, l32, arrayOfLong1[7], 14L, 1735328473L);
    long l36 = GG(l32, l35, l34, l33, arrayOfLong1[12], 20L, 2368359562L);
    long l37 = HH(l33, l36, l35, l34, arrayOfLong1[5], 4L, 4294588738L);
    long l38 = HH(l34, l37, l36, l35, arrayOfLong1[8], 11L, 2272392833L);
    long l39 = HH(l35, l38, l37, l36, arrayOfLong1[11], 16L, 1839030562L);
    long l40 = HH(l36, l39, l38, l37, arrayOfLong1[14], 23L, 4259657740L);
    long l41 = HH(l37, l40, l39, l38, arrayOfLong1[1], 4L, 2763975236L);
    long l42 = HH(l38, l41, l40, l39, arrayOfLong1[4], 11L, 1272893353L);
    long l43 = HH(l39, l42, l41, l40, arrayOfLong1[7], 16L, 4139469664L);
    long l44 = HH(l40, l43, l42, l41, arrayOfLong1[10], 23L, 3200236656L);
    long l45 = HH(l41, l44, l43, l42, arrayOfLong1[13], 4L, 681279174L);
    long l46 = HH(l42, l45, l44, l43, arrayOfLong1[0], 11L, 3936430074L);
    long l47 = HH(l43, l46, l45, l44, arrayOfLong1[3], 16L, 3572445317L);
    long l48 = HH(l44, l47, l46, l45, arrayOfLong1[6], 23L, 76029189L);
    long l49 = HH(l45, l48, l47, l46, arrayOfLong1[9], 4L, 3654602809L);
    long l50 = HH(l46, l49, l48, l47, arrayOfLong1[12], 11L, 3873151461L);
    long l51 = HH(l47, l50, l49, l48, arrayOfLong1[15], 16L, 530742520L);
    long l52 = HH(l48, l51, l50, l49, arrayOfLong1[2], 23L, 3299628645L);
    long l53 = II(l49, l52, l51, l50, arrayOfLong1[0], 6L, 4096336452L);
    long l54 = II(l50, l53, l52, l51, arrayOfLong1[7], 10L, 1126891415L);
    long l55 = II(l51, l54, l53, l52, arrayOfLong1[14], 15L, 2878612391L);
    long l56 = II(l52, l55, l54, l53, arrayOfLong1[5], 21L, 4237533241L);
    long l57 = II(l53, l56, l55, l54, arrayOfLong1[12], 6L, 1700485571L);
    long l58 = II(l54, l57, l56, l55, arrayOfLong1[3], 10L, 2399980690L);
    long l59 = II(l55, l58, l57, l56, arrayOfLong1[10], 15L, 4293915773L);
    long l60 = II(l56, l59, l58, l57, arrayOfLong1[1], 21L, 2240044497L);
    long l61 = II(l57, l60, l59, l58, arrayOfLong1[8], 6L, 1873313359L);
    long l62 = II(l58, l61, l60, l59, arrayOfLong1[15], 10L, 4264355552L);
    long l63 = II(l59, l62, l61, l60, arrayOfLong1[6], 15L, 2734768916L);
    long l64 = II(l60, l63, l62, l61, arrayOfLong1[13], 21L, 1309151649L);
    long l65 = II(l61, l64, l63, l62, arrayOfLong1[4], 6L, 4149444226L);
    long l66 = II(l62, l65, l64, l63, arrayOfLong1[11], 10L, 3174756917L);
    long l67 = II(l63, l66, l65, l64, arrayOfLong1[2], 15L, 718787259L);
    long l68 = II(l64, l67, l66, l65, arrayOfLong1[9], 21L, 3951481745L);
    long[] arrayOfLong2 = this.state;
    arrayOfLong2[0] = (l65 + arrayOfLong2[0]);
    long[] arrayOfLong3 = this.state;
    arrayOfLong3[1] = (l68 + arrayOfLong3[1]);
    long[] arrayOfLong4 = this.state;
    arrayOfLong4[2] = (l67 + arrayOfLong4[2]);
    long[] arrayOfLong5 = this.state;
    arrayOfLong5[3] = (l66 + arrayOfLong5[3]);
  }
  
  private void md5Update(byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte1 = new byte[64];
    int i = 0x3F & (int)(this.count[0] >>> 3);
    long[] arrayOfLong1 = this.count;
    long l = arrayOfLong1[0] + (paramInt << 3);
    arrayOfLong1[0] = l;
    if (l < paramInt << 3)
    {
      long[] arrayOfLong3 = this.count;
      arrayOfLong3[1] = (1L + arrayOfLong3[1]);
    }
    long[] arrayOfLong2 = this.count;
    arrayOfLong2[1] += (paramInt >>> 29);
    int j = 64 - i;
    int k;
    if (paramInt >= j)
    {
      md5Memcpy(this.buffer, paramArrayOfByte, i, 0, j);
      md5Transform(this.buffer);
      k = j;
      if (k + 63 >= paramInt) {
        i = 0;
      }
    }
    for (;;)
    {
      byte[] arrayOfByte2 = this.buffer;
      int m = paramInt - k;
      md5Memcpy(arrayOfByte2, paramArrayOfByte, i, k, m);
      return;
      md5Memcpy(arrayOfByte1, paramArrayOfByte, 0, k, 64);
      md5Transform(arrayOfByte1);
      k += 64;
      break;
      k = 0;
    }
  }
  
  public String getMD5ofStr(String paramString)
  {
    md5Init();
    md5Update(paramString.getBytes(), paramString.length());
    md5Final();
    this.digestHexStr = "";
    for (int i = 0;; i++)
    {
      if (i >= 16) {
        return this.digestHexStr;
      }
      this.digestHexStr += byteHEX(this.digest[i]);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.security.MD5
 * JD-Core Version:    0.7.0.1
 */