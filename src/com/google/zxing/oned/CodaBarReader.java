package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Map;

public final class CodaBarReader
  extends OneDReader
{
  static final char[] ALPHABET = "0123456789-$:/.+ABCD".toCharArray();
  private static final String ALPHABET_STRING = "0123456789-$:/.+ABCD";
  static final int[] CHARACTER_ENCODINGS = { 3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14 };
  private static final int MAX_ACCEPTABLE = 512;
  private static final int MIN_CHARACTER_LENGTH = 3;
  private static final int PADDING = 384;
  private static final char[] STARTEND_ENCODING = { 65, 66, 67, 68 };
  private int counterLength = 0;
  private int[] counters = new int[80];
  private final StringBuilder decodeRowResult = new StringBuilder(20);
  
  static boolean arrayContains(char[] paramArrayOfChar, char paramChar)
  {
    if (paramArrayOfChar != null)
    {
      int i = paramArrayOfChar.length;
      for (int j = 0; j < i; j++) {
        if (paramArrayOfChar[j] == paramChar) {
          return true;
        }
      }
    }
    return false;
  }
  
  private void counterAppend(int paramInt)
  {
    this.counters[this.counterLength] = paramInt;
    this.counterLength = (1 + this.counterLength);
    if (this.counterLength >= this.counters.length)
    {
      int[] arrayOfInt = new int[2 * this.counterLength];
      System.arraycopy(this.counters, 0, arrayOfInt, 0, this.counterLength);
      this.counters = arrayOfInt;
    }
  }
  
  private int findStartPattern()
    throws NotFoundException
  {
    for (int i = 1; i < this.counterLength; i += 2)
    {
      int j = toNarrowWidePattern(i);
      if ((j != -1) && (arrayContains(STARTEND_ENCODING, ALPHABET[j])))
      {
        int k = 0;
        for (int m = i; m < i + 7; m++) {
          k += this.counters[m];
        }
        if ((i == 1) || (this.counters[(i - 1)] >= k / 2)) {
          return i;
        }
      }
    }
    throw NotFoundException.getNotFoundInstance();
  }
  
  private void setCounters(BitArray paramBitArray)
    throws NotFoundException
  {
    this.counterLength = 0;
    int i = paramBitArray.getNextUnset(0);
    int j = paramBitArray.getSize();
    if (i >= j) {
      throw NotFoundException.getNotFoundInstance();
    }
    int k = 1;
    int m = 0;
    while (i < j) {
      if ((k ^ paramBitArray.get(i)) != 0)
      {
        m++;
        i++;
      }
      else
      {
        counterAppend(m);
        m = 1;
        if (k == 0) {}
        for (k = 1;; k = 0) {
          break;
        }
      }
    }
    counterAppend(m);
  }
  
  private int toNarrowWidePattern(int paramInt)
  {
    int i = paramInt + 7;
    if (i >= this.counterLength)
    {
      i1 = -1;
      return i1;
    }
    int[] arrayOfInt1 = { 0, 0 };
    int[] arrayOfInt2 = { 2147483647, 2147483647 };
    int[] arrayOfInt3 = { 0, 0 };
    for (int j = 0; j < 2; j++)
    {
      for (int i3 = paramInt + j; i3 < i; i3 += 2)
      {
        if (this.counters[i3] < arrayOfInt2[j]) {
          arrayOfInt2[j] = this.counters[i3];
        }
        if (this.counters[i3] > arrayOfInt1[j]) {
          arrayOfInt1[j] = this.counters[i3];
        }
      }
      arrayOfInt3[j] = ((arrayOfInt2[j] + arrayOfInt1[j]) / 2);
    }
    int k = 128;
    int m = 0;
    for (int n = 0; n < 7; n++)
    {
      int i2 = n & 0x1;
      k >>= 1;
      if (this.counters[(paramInt + n)] > arrayOfInt3[i2]) {
        m |= k;
      }
    }
    for (int i1 = 0;; i1++)
    {
      if (i1 >= CHARACTER_ENCODINGS.length) {
        break label250;
      }
      if (CHARACTER_ENCODINGS[i1] == m) {
        break;
      }
    }
    label250:
    return -1;
  }
  
  public Result decodeRow(int paramInt, BitArray paramBitArray, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException
  {
    setCounters(paramBitArray);
    int i = findStartPattern();
    int j = i;
    this.decodeRowResult.setLength(0);
    int k = toNarrowWidePattern(j);
    if (k == -1) {
      throw NotFoundException.getNotFoundInstance();
    }
    this.decodeRowResult.append((char)k);
    j += 8;
    if ((this.decodeRowResult.length() > 1) && (arrayContains(STARTEND_ENCODING, ALPHABET[k]))) {}
    int m;
    int n;
    for (;;)
    {
      m = this.counters[(j - 1)];
      n = 0;
      for (int i1 = -8; i1 < -1; i1++) {
        n += this.counters[(j + i1)];
      }
      if (j < this.counterLength) {
        break;
      }
    }
    if ((j < this.counterLength) && (m < n / 2)) {
      throw NotFoundException.getNotFoundInstance();
    }
    validatePattern(i);
    for (int i2 = 0; i2 < this.decodeRowResult.length(); i2++) {
      this.decodeRowResult.setCharAt(i2, ALPHABET[this.decodeRowResult.charAt(i2)]);
    }
    char c1 = this.decodeRowResult.charAt(0);
    if (!arrayContains(STARTEND_ENCODING, c1)) {
      throw NotFoundException.getNotFoundInstance();
    }
    char c2 = this.decodeRowResult.charAt(-1 + this.decodeRowResult.length());
    if (!arrayContains(STARTEND_ENCODING, c2)) {
      throw NotFoundException.getNotFoundInstance();
    }
    if (this.decodeRowResult.length() <= 3) {
      throw NotFoundException.getNotFoundInstance();
    }
    this.decodeRowResult.deleteCharAt(-1 + this.decodeRowResult.length());
    this.decodeRowResult.deleteCharAt(0);
    int i3 = 0;
    for (int i4 = 0; i4 < i; i4++) {
      i3 += this.counters[i4];
    }
    float f1 = i3;
    for (int i5 = i; i5 < j - 1; i5++) {
      i3 += this.counters[i5];
    }
    float f2 = i3;
    String str = this.decodeRowResult.toString();
    ResultPoint[] arrayOfResultPoint = new ResultPoint[2];
    ResultPoint localResultPoint1 = new ResultPoint(f1, paramInt);
    arrayOfResultPoint[0] = localResultPoint1;
    ResultPoint localResultPoint2 = new ResultPoint(f2, paramInt);
    arrayOfResultPoint[1] = localResultPoint2;
    return new Result(str, null, arrayOfResultPoint, BarcodeFormat.CODABAR);
  }
  
  void validatePattern(int paramInt)
    throws NotFoundException
  {
    int[] arrayOfInt1 = { 0, 0, 0, 0 };
    int[] arrayOfInt2 = { 0, 0, 0, 0 };
    int i = -1 + this.decodeRowResult.length();
    int j = paramInt;
    int[] arrayOfInt3;
    int[] arrayOfInt4;
    for (int k = 0;; k++)
    {
      int m = CHARACTER_ENCODINGS[this.decodeRowResult.charAt(k)];
      for (int n = 6; n >= 0; n--)
      {
        int i8 = (n & 0x1) + 2 * (m & 0x1);
        arrayOfInt1[i8] += this.counters[(j + n)];
        arrayOfInt2[i8] = (1 + arrayOfInt2[i8]);
        m >>= 1;
      }
      if (k >= i)
      {
        arrayOfInt3 = new int[4];
        arrayOfInt4 = new int[4];
        for (int i1 = 0; i1 < 2; i1++)
        {
          arrayOfInt4[i1] = 0;
          arrayOfInt4[(i1 + 2)] = ((arrayOfInt1[i1] << 8) / arrayOfInt2[i1] + (arrayOfInt1[(i1 + 2)] << 8) / arrayOfInt2[(i1 + 2)] >> 1);
          arrayOfInt3[i1] = arrayOfInt4[(i1 + 2)];
          arrayOfInt3[(i1 + 2)] = ((384 + 512 * arrayOfInt1[(i1 + 2)]) / arrayOfInt2[(i1 + 2)]);
        }
      }
      j += 8;
    }
    int i2 = paramInt;
    for (int i3 = 0;; i3++)
    {
      int i4 = CHARACTER_ENCODINGS[this.decodeRowResult.charAt(i3)];
      for (int i5 = 6; i5 >= 0; i5--)
      {
        int i6 = (i5 & 0x1) + 2 * (i4 & 0x1);
        int i7 = this.counters[(i2 + i5)] << 8;
        if ((i7 < arrayOfInt4[i6]) || (i7 > arrayOfInt3[i6])) {
          throw NotFoundException.getNotFoundInstance();
        }
        i4 >>= 1;
      }
      if (i3 >= i) {
        return;
      }
      i2 += 8;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.CodaBarReader
 * JD-Core Version:    0.7.0.1
 */