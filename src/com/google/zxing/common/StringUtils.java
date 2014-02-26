package com.google.zxing.common;

import com.google.zxing.DecodeHintType;
import java.util.Map;

public final class StringUtils
{
  private static final boolean ASSUME_SHIFT_JIS = false;
  private static final String EUC_JP = "EUC_JP";
  public static final String GB2312 = "GB2312";
  private static final String GBK = "GB2312";
  private static final String ISO88591 = "ISO8859_1";
  private static final String PLATFORM_DEFAULT_ENCODING = System.getProperty("file.encoding");
  public static final String SHIFT_JIS = "SJIS";
  private static final String UTF8 = "UTF8";
  
  static
  {
    if (("SJIS".equalsIgnoreCase(PLATFORM_DEFAULT_ENCODING)) || ("EUC_JP".equalsIgnoreCase(PLATFORM_DEFAULT_ENCODING))) {}
    for (boolean bool = true;; bool = false)
    {
      ASSUME_SHIFT_JIS = bool;
      return;
    }
  }
  
  public static String guessEncoding(byte[] paramArrayOfByte, Map<DecodeHintType, ?> paramMap)
  {
    if (paramMap != null)
    {
      String str2 = (String)paramMap.get(DecodeHintType.CHARACTER_SET);
      if (str2 != null) {
        return str2;
      }
    }
    int i = paramArrayOfByte.length;
    int j = 1;
    int k = 1;
    int m = 1;
    int n = 1;
    int i1 = 0;
    int i2 = 0;
    int i3 = 0;
    int i4 = 0;
    int i5 = 0;
    int i6 = 0;
    int i7 = 0;
    int i8 = 0;
    int i9 = 0;
    int i10 = 0;
    int i11 = 0;
    int i12;
    int i13;
    label109:
    int i14;
    if ((paramArrayOfByte.length > 3) && (paramArrayOfByte[0] == -17) && (paramArrayOfByte[1] == -69) && (paramArrayOfByte[2] == -65))
    {
      i12 = 1;
      i13 = 0;
      if ((i13 >= i) || ((j == 0) && (k == 0) && (m == 0))) {
        break label527;
      }
      i14 = 0xFF & paramArrayOfByte[i13];
      if ((i14 > 127) && (i14 > 176) && (i14 <= 247))
      {
        int i15 = 0xFF & paramArrayOfByte[(i13 + 1)];
        if ((i15 > 160) && (i15 <= 247)) {
          n = 1;
        }
      }
      if (m != 0)
      {
        if (i1 <= 0) {
          break label289;
        }
        if ((i14 & 0x80) != 0) {
          break label283;
        }
        m = 0;
      }
      label215:
      if (j != 0)
      {
        if ((i14 <= 127) || (i14 >= 160)) {
          break label369;
        }
        j = 0;
      }
      label236:
      if (k != 0)
      {
        if (i5 <= 0) {
          break label413;
        }
        if ((i14 >= 64) && (i14 != 127) && (i14 <= 252)) {
          break label407;
        }
        k = 0;
      }
    }
    for (;;)
    {
      i13++;
      break label109;
      i12 = 0;
      break;
      label283:
      i1--;
      break label215;
      label289:
      if ((i14 & 0x80) == 0) {
        break label215;
      }
      if ((i14 & 0x40) == 0)
      {
        m = 0;
        break label215;
      }
      i1++;
      if ((i14 & 0x20) == 0)
      {
        i2++;
        break label215;
      }
      i1++;
      if ((i14 & 0x10) == 0)
      {
        i3++;
        break label215;
      }
      i1++;
      if ((i14 & 0x8) == 0)
      {
        i4++;
        break label215;
      }
      m = 0;
      break label215;
      label369:
      if ((i14 <= 159) || ((i14 >= 192) && (i14 != 215) && (i14 != 247))) {
        break label236;
      }
      i11++;
      break label236;
      label407:
      i5--;
      continue;
      label413:
      if ((i14 == 128) || (i14 == 160) || (i14 > 239))
      {
        k = 0;
      }
      else if ((i14 > 160) && (i14 < 224))
      {
        i6++;
        i7++;
        i8 = 0;
        if (i7 > i9)
        {
          i9 = i7;
          i8 = 0;
        }
      }
      else if (i14 > 127)
      {
        i5++;
        i8++;
        i7 = 0;
        if (i8 > i10)
        {
          i10 = i8;
          i7 = 0;
        }
      }
      else
      {
        i8 = 0;
        i7 = 0;
      }
    }
    label527:
    if ((m != 0) && (i1 > 0)) {
      m = 0;
    }
    if ((k != 0) && (i5 > 0)) {
      k = 0;
    }
    if ((m != 0) && ((i12 != 0) || (i4 + (i2 + i3) > 0))) {
      return "UTF8";
    }
    if ((k != 0) && ((ASSUME_SHIFT_JIS) || (i9 >= 3) || (i10 >= 3))) {
      return "SJIS";
    }
    if (n != 0) {
      return "GB2312";
    }
    if ((j != 0) && (k != 0))
    {
      if (((i9 == 2) && (i6 == 2)) || (i11 * 10 >= i)) {}
      for (String str1 = "SJIS";; str1 = "ISO8859_1") {
        return str1;
      }
    }
    if (j != 0) {
      return "ISO8859_1";
    }
    if (k != 0) {
      return "SJIS";
    }
    if (m != 0) {
      return "UTF8";
    }
    return PLATFORM_DEFAULT_ENCODING;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.StringUtils
 * JD-Core Version:    0.7.0.1
 */