package com.google.zxing.oned.rss.expanded;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import com.google.zxing.oned.rss.AbstractRSSReader;
import com.google.zxing.oned.rss.DataCharacter;
import com.google.zxing.oned.rss.FinderPattern;
import com.google.zxing.oned.rss.RSSUtils;
import com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class RSSExpandedReader
  extends AbstractRSSReader
{
  private static final int[] EVEN_TOTAL_SUBSET;
  private static final int[][] FINDER_PATTERNS;
  private static final int[][] FINDER_PATTERN_SEQUENCES = { { 0, 0 }, { 0, 1, 1 }, { 0, 2, 1, 3 }, { 0, 4, 1, 3, 2 }, { 0, 4, 1, 3, 3, 5 }, { 0, 4, 1, 3, 4, 5, 5 }, { 0, 0, 1, 1, 2, 2, 3, 3 }, { 0, 0, 1, 1, 2, 2, 3, 4, 4 }, { 0, 0, 1, 1, 2, 2, 3, 4, 5, 5 }, { 0, 0, 1, 1, 2, 3, 3, 4, 4, 5, 5 } };
  private static final int FINDER_PAT_A = 0;
  private static final int FINDER_PAT_B = 1;
  private static final int FINDER_PAT_C = 2;
  private static final int FINDER_PAT_D = 3;
  private static final int FINDER_PAT_E = 4;
  private static final int FINDER_PAT_F = 5;
  private static final int[] GSUM;
  private static final int LONGEST_SEQUENCE_SIZE = FINDER_PATTERN_SEQUENCES[(-1 + FINDER_PATTERN_SEQUENCES.length)].length;
  private static final int MAX_PAIRS = 11;
  private static final int[] SYMBOL_WIDEST = { 7, 5, 4, 3, 1 };
  private static final int[][] WEIGHTS;
  private final int[] currentSequence = new int[LONGEST_SEQUENCE_SIZE];
  private final List<ExpandedPair> pairs = new ArrayList(11);
  private final int[] startEnd = new int[2];
  
  static
  {
    EVEN_TOTAL_SUBSET = new int[] { 4, 20, 52, 104, 204 };
    GSUM = new int[] { 0, 348, 1388, 2948, 3988 };
    FINDER_PATTERNS = new int[][] { { 1, 8, 4, 1 }, { 3, 6, 4, 1 }, { 3, 4, 6, 1 }, { 3, 2, 8, 1 }, { 2, 6, 5, 1 }, { 2, 2, 9, 1 } };
    WEIGHTS = new int[][] { { 1, 3, 9, 27, 81, 32, 96, 77 }, { 20, 60, 180, 118, 143, 7, 21, 63 }, { 189, 145, 13, 39, 117, 140, 209, 205 }, { 193, 157, 49, 147, 19, 57, 171, 91 }, { 62, 186, 136, 197, 169, 85, 44, 132 }, { 185, 133, 188, 142, 4, 12, 36, 108 }, { 113, 128, 173, 97, 80, 29, 87, 50 }, { 150, 28, 84, 41, 123, 158, 52, 156 }, { 46, 138, 203, 187, 139, 206, 196, 166 }, { 76, 17, 51, 153, 37, 111, 122, 155 }, { 43, 129, 176, 106, 107, 110, 119, 146 }, { 16, 48, 144, 10, 30, 90, 59, 177 }, { 109, 116, 137, 200, 178, 112, 125, 164 }, { 70, 210, 208, 202, 184, 130, 179, 115 }, { 134, 191, 151, 31, 93, 68, 204, 190 }, { 148, 22, 66, 198, 172, 94, 71, 2 }, { 6, 18, 54, 162, 64, 192, 154, 40 }, { 120, 149, 25, 75, 14, 42, 126, 167 }, { 79, 26, 78, 23, 69, 207, 199, 175 }, { 103, 98, 83, 38, 114, 131, 182, 124 }, { 161, 61, 183, 127, 170, 88, 53, 159 }, { 55, 165, 73, 8, 24, 72, 5, 15 }, { 45, 135, 194, 160, 58, 174, 100, 89 } };
  }
  
  private void adjustOddEvenCounts(int paramInt)
    throws NotFoundException
  {
    int i = count(getOddCounts());
    int j = count(getEvenCounts());
    int k = i + j - paramInt;
    int m;
    int i1;
    int i2;
    int i3;
    label61:
    int i4;
    int i5;
    if ((i & 0x1) == 1)
    {
      m = 1;
      int n = j & 0x1;
      i1 = 0;
      if (n == 0) {
        i1 = 1;
      }
      i2 = 0;
      if (i <= 13) {
        break label99;
      }
      i3 = 1;
      i4 = 0;
      if (j <= 13) {
        break label119;
      }
      i5 = 1;
    }
    for (;;)
    {
      if (k == 1) {
        if (m != 0)
        {
          if (i1 != 0)
          {
            throw NotFoundException.getNotFoundInstance();
            m = 0;
            break;
            label99:
            i3 = 0;
            i2 = 0;
            if (i >= 4) {
              break label61;
            }
            i2 = 1;
            i3 = 0;
            break label61;
            label119:
            i5 = 0;
            i4 = 0;
            if (j >= 4) {
              continue;
            }
            i4 = 1;
            i5 = 0;
            continue;
          }
          i3 = 1;
        }
      }
    }
    while (i2 != 0) {
      if (i3 != 0)
      {
        throw NotFoundException.getNotFoundInstance();
        if (i1 == 0) {
          throw NotFoundException.getNotFoundInstance();
        }
        i5 = 1;
        continue;
        if (k == -1)
        {
          if (m != 0)
          {
            if (i1 != 0) {
              throw NotFoundException.getNotFoundInstance();
            }
            i2 = 1;
          }
          else
          {
            if (i1 == 0) {
              throw NotFoundException.getNotFoundInstance();
            }
            i4 = 1;
          }
        }
        else if (k == 0)
        {
          if (m != 0)
          {
            if (i1 == 0) {
              throw NotFoundException.getNotFoundInstance();
            }
            if (i < j)
            {
              i2 = 1;
              i5 = 1;
            }
            else
            {
              i3 = 1;
              i4 = 1;
            }
          }
          else if (i1 != 0)
          {
            throw NotFoundException.getNotFoundInstance();
          }
        }
        else {
          throw NotFoundException.getNotFoundInstance();
        }
      }
      else
      {
        increment(getOddCounts(), getOddRoundingErrors());
      }
    }
    if (i3 != 0) {
      decrement(getOddCounts(), getOddRoundingErrors());
    }
    if (i4 != 0)
    {
      if (i5 != 0) {
        throw NotFoundException.getNotFoundInstance();
      }
      increment(getEvenCounts(), getOddRoundingErrors());
    }
    if (i5 != 0) {
      decrement(getEvenCounts(), getEvenRoundingErrors());
    }
  }
  
  private boolean checkChecksum()
  {
    ExpandedPair localExpandedPair1 = (ExpandedPair)this.pairs.get(0);
    DataCharacter localDataCharacter1 = localExpandedPair1.getLeftChar();
    int i = localExpandedPair1.getRightChar().getChecksumPortion();
    int j = 2;
    for (int k = 1; k < this.pairs.size(); k++)
    {
      ExpandedPair localExpandedPair2 = (ExpandedPair)this.pairs.get(k);
      i += localExpandedPair2.getLeftChar().getChecksumPortion();
      j++;
      DataCharacter localDataCharacter2 = localExpandedPair2.getRightChar();
      if (localDataCharacter2 != null)
      {
        i += localDataCharacter2.getChecksumPortion();
        j++;
      }
    }
    int m = i % 211 + 211 * (j - 4);
    int n = localDataCharacter1.getValue();
    boolean bool = false;
    if (m == n) {
      bool = true;
    }
    return bool;
  }
  
  private boolean checkPairSequence(List<ExpandedPair> paramList, FinderPattern paramFinderPattern)
    throws NotFoundException
  {
    int i = 1 + paramList.size();
    if (i > this.currentSequence.length) {
      throw NotFoundException.getNotFoundInstance();
    }
    for (int j = 0; j < paramList.size(); j++) {
      this.currentSequence[j] = ((ExpandedPair)paramList.get(j)).getFinderPattern().getValue();
    }
    this.currentSequence[(i - 1)] = paramFinderPattern.getValue();
    label164:
    for (int[] arrayOfInt1 : FINDER_PATTERN_SEQUENCES) {
      if (arrayOfInt1.length >= i)
      {
        int n = 1;
        for (int i1 = 0;; i1++) {
          if (i1 < i)
          {
            if (this.currentSequence[i1] != arrayOfInt1[i1]) {
              n = 0;
            }
          }
          else
          {
            if (n == 0) {
              break label164;
            }
            if (i != arrayOfInt1.length) {
              break;
            }
            return true;
          }
        }
        return false;
      }
    }
    throw NotFoundException.getNotFoundInstance();
  }
  
  private static Result constructResult(List<ExpandedPair> paramList)
    throws NotFoundException
  {
    String str = AbstractExpandedDecoder.createDecoder(BitArrayBuilder.buildBitArray(paramList)).parseInformation();
    ResultPoint[] arrayOfResultPoint1 = ((ExpandedPair)paramList.get(0)).getFinderPattern().getResultPoints();
    ResultPoint[] arrayOfResultPoint2 = ((ExpandedPair)paramList.get(-1 + paramList.size())).getFinderPattern().getResultPoints();
    ResultPoint[] arrayOfResultPoint3 = new ResultPoint[4];
    arrayOfResultPoint3[0] = arrayOfResultPoint1[0];
    arrayOfResultPoint3[1] = arrayOfResultPoint1[1];
    arrayOfResultPoint3[2] = arrayOfResultPoint2[0];
    arrayOfResultPoint3[3] = arrayOfResultPoint2[1];
    return new Result(str, null, arrayOfResultPoint3, BarcodeFormat.RSS_EXPANDED);
  }
  
  private void findNextPair(BitArray paramBitArray, List<ExpandedPair> paramList, int paramInt)
    throws NotFoundException
  {
    int[] arrayOfInt = getDecodeFinderCounters();
    arrayOfInt[0] = 0;
    arrayOfInt[1] = 0;
    arrayOfInt[2] = 0;
    arrayOfInt[3] = 0;
    int i = paramBitArray.getSize();
    int j;
    int k;
    if (paramInt >= 0)
    {
      j = paramInt;
      if (paramList.size() % 2 == 0) {
        break label173;
      }
      k = 1;
      label53:
      m = 0;
    }
    int n;
    int i1;
    int i2;
    for (;;)
    {
      if (j < i) {
        if (paramBitArray.get(j)) {
          break label179;
        }
      }
      label173:
      label179:
      for (m = 1;; m = 0)
      {
        if (m != 0) {
          break label185;
        }
        n = 0;
        i1 = j;
        for (i2 = j;; i2++)
        {
          if (i2 >= i) {
            break label314;
          }
          if ((m ^ paramBitArray.get(i2)) == 0) {
            break;
          }
          arrayOfInt[n] = (1 + arrayOfInt[n]);
        }
        if (paramList.isEmpty())
        {
          j = 0;
          break;
        }
        j = ((ExpandedPair)paramList.get(-1 + paramList.size())).getFinderPattern().getStartEnd()[1];
        break;
        k = 0;
        break label53;
      }
      label185:
      j++;
    }
    if (n == 3)
    {
      if (k != 0) {
        reverseCounters(arrayOfInt);
      }
      if (isFinderPattern(arrayOfInt))
      {
        this.startEnd[0] = i1;
        this.startEnd[1] = i2;
        return;
      }
      if (k != 0) {
        reverseCounters(arrayOfInt);
      }
      i1 += arrayOfInt[0] + arrayOfInt[1];
      arrayOfInt[0] = arrayOfInt[2];
      arrayOfInt[1] = arrayOfInt[3];
      arrayOfInt[2] = 0;
      arrayOfInt[3] = 0;
      n--;
      label285:
      arrayOfInt[n] = 1;
      if (m != 0) {
        break label308;
      }
    }
    label308:
    for (int m = 1;; m = 0)
    {
      break;
      n++;
      break label285;
    }
    label314:
    throw NotFoundException.getNotFoundInstance();
  }
  
  private static int getNextSecondBar(BitArray paramBitArray, int paramInt)
  {
    if (paramBitArray.get(paramInt)) {
      return paramBitArray.getNextSet(paramBitArray.getNextUnset(paramInt));
    }
    return paramBitArray.getNextUnset(paramBitArray.getNextSet(paramInt));
  }
  
  private static boolean isNotA1left(FinderPattern paramFinderPattern, boolean paramBoolean1, boolean paramBoolean2)
  {
    return (paramFinderPattern.getValue() != 0) || (!paramBoolean1) || (!paramBoolean2);
  }
  
  private FinderPattern parseFoundFinderPattern(BitArray paramBitArray, int paramInt, boolean paramBoolean)
  {
    int k;
    int i;
    int j;
    if (paramBoolean)
    {
      for (int n = -1 + this.startEnd[0]; (n >= 0) && (!paramBitArray.get(n)); n--) {}
      int i1 = n + 1;
      k = this.startEnd[0] - i1;
      i = i1;
      j = this.startEnd[1];
    }
    for (;;)
    {
      int[] arrayOfInt = getDecodeFinderCounters();
      System.arraycopy(arrayOfInt, 0, arrayOfInt, 1, -1 + arrayOfInt.length);
      arrayOfInt[0] = k;
      try
      {
        int m = parseFinderValue(arrayOfInt, FINDER_PATTERNS);
        return new FinderPattern(m, new int[] { i, j }, i, j, paramInt);
      }
      catch (NotFoundException localNotFoundException) {}
      i = this.startEnd[0];
      j = paramBitArray.getNextUnset(1 + this.startEnd[1]);
      k = j - this.startEnd[1];
    }
    return null;
  }
  
  private static void reverseCounters(int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt.length;
    for (int j = 0; j < i / 2; j++)
    {
      int k = paramArrayOfInt[j];
      paramArrayOfInt[j] = paramArrayOfInt[(-1 + (i - j))];
      paramArrayOfInt[(-1 + (i - j))] = k;
    }
  }
  
  DataCharacter decodeDataCharacter(BitArray paramBitArray, FinderPattern paramFinderPattern, boolean paramBoolean1, boolean paramBoolean2)
    throws NotFoundException
  {
    int[] arrayOfInt1 = getDataCharacterCounters();
    arrayOfInt1[0] = 0;
    arrayOfInt1[1] = 0;
    arrayOfInt1[2] = 0;
    arrayOfInt1[3] = 0;
    arrayOfInt1[4] = 0;
    arrayOfInt1[5] = 0;
    arrayOfInt1[6] = 0;
    arrayOfInt1[7] = 0;
    int[] arrayOfInt2;
    int[] arrayOfInt3;
    float[] arrayOfFloat2;
    int m;
    label104:
    float f2;
    int i19;
    label142:
    int i20;
    if (paramBoolean2)
    {
      recordPatternInReverse(paramBitArray, paramFinderPattern.getStartEnd()[0], arrayOfInt1);
      float f1 = count(arrayOfInt1) / 17;
      arrayOfInt2 = getOddCounts();
      arrayOfInt3 = getEvenCounts();
      float[] arrayOfFloat1 = getOddRoundingErrors();
      arrayOfFloat2 = getEvenRoundingErrors();
      m = 0;
      if (m >= arrayOfInt1.length) {
        break label278;
      }
      f2 = 1.0F * arrayOfInt1[m] / f1;
      i19 = (int)(0.5F + f2);
      if (i19 >= 1) {
        break label243;
      }
      i19 = 1;
      i20 = m >> 1;
      if ((m & 0x1) != 0) {
        break label257;
      }
      arrayOfInt2[i20] = i19;
      arrayOfFloat1[i20] = (f2 - i19);
    }
    for (;;)
    {
      m++;
      break label104;
      recordPattern(paramBitArray, 1 + paramFinderPattern.getStartEnd()[1], arrayOfInt1);
      int i = 0;
      for (int j = -1 + arrayOfInt1.length; i < j; j--)
      {
        int k = arrayOfInt1[i];
        arrayOfInt1[i] = arrayOfInt1[j];
        arrayOfInt1[j] = k;
        i++;
      }
      break;
      label243:
      if (i19 <= 8) {
        break label142;
      }
      i19 = 8;
      break label142;
      label257:
      arrayOfInt3[i20] = i19;
      arrayOfFloat2[i20] = (f2 - i19);
    }
    label278:
    adjustOddEvenCounts(17);
    int n = 4 * paramFinderPattern.getValue();
    int i1;
    int i2;
    if (paramBoolean1)
    {
      i1 = 0;
      i2 = n + i1;
      if (!paramBoolean2) {
        break label395;
      }
    }
    int i4;
    int i5;
    int i6;
    label395:
    for (int i3 = 0;; i3 = 1)
    {
      i4 = -1 + (i3 + i2);
      i5 = 0;
      i6 = 0;
      for (int i7 = -1 + arrayOfInt2.length; i7 >= 0; i7--)
      {
        if (isNotA1left(paramFinderPattern, paramBoolean1, paramBoolean2)) {
          i6 += WEIGHTS[i4][(i7 * 2)] * arrayOfInt2[i7];
        }
        i5 += arrayOfInt2[i7];
      }
      i1 = 2;
      break;
    }
    int i8 = 0;
    int i9 = 0;
    for (int i10 = -1 + arrayOfInt3.length; i10 >= 0; i10--)
    {
      if (isNotA1left(paramFinderPattern, paramBoolean1, paramBoolean2)) {
        i8 += WEIGHTS[i4][(1 + i10 * 2)] * arrayOfInt3[i10];
      }
      i9 += arrayOfInt3[i10];
    }
    int i11 = i6 + i8;
    if (((i5 & 0x1) != 0) || (i5 > 13) || (i5 < 4)) {
      throw NotFoundException.getNotFoundInstance();
    }
    int i12 = (13 - i5) / 2;
    int i13 = SYMBOL_WIDEST[i12];
    int i14 = 9 - i13;
    int i15 = RSSUtils.getRSSvalue(arrayOfInt2, i13, true);
    int i16 = RSSUtils.getRSSvalue(arrayOfInt3, i14, false);
    int i17 = EVEN_TOTAL_SUBSET[i12];
    int i18 = GSUM[i12] + (i16 + i15 * i17);
    DataCharacter localDataCharacter = new DataCharacter(i18, i11);
    return localDataCharacter;
  }
  
  public Result decodeRow(int paramInt, BitArray paramBitArray, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException
  {
    reset();
    decodeRow2pairs(paramInt, paramBitArray);
    return constructResult(this.pairs);
  }
  
  List<ExpandedPair> decodeRow2pairs(int paramInt, BitArray paramBitArray)
    throws NotFoundException
  {
    ExpandedPair localExpandedPair;
    do
    {
      do
      {
        localExpandedPair = retrieveNextPair(paramBitArray, this.pairs, paramInt);
        this.pairs.add(localExpandedPair);
      } while (!localExpandedPair.mayBeLast());
      if (checkChecksum()) {
        return this.pairs;
      }
    } while (!localExpandedPair.mustBeLast());
    throw NotFoundException.getNotFoundInstance();
  }
  
  public void reset()
  {
    this.pairs.clear();
  }
  
  ExpandedPair retrieveNextPair(BitArray paramBitArray, List<ExpandedPair> paramList, int paramInt)
    throws NotFoundException
  {
    boolean bool1;
    int i;
    int j;
    if (paramList.size() % 2 == 0)
    {
      bool1 = true;
      i = 1;
      j = -1;
    }
    label123:
    for (;;)
    {
      findNextPair(paramBitArray, paramList, j);
      FinderPattern localFinderPattern = parseFoundFinderPattern(paramBitArray, paramInt, bool1);
      if (localFinderPattern == null) {
        j = getNextSecondBar(paramBitArray, this.startEnd[0]);
      }
      for (;;)
      {
        if (i != 0) {
          break label123;
        }
        bool2 = checkPairSequence(paramList, localFinderPattern);
        DataCharacter localDataCharacter1 = decodeDataCharacter(paramBitArray, localFinderPattern, bool1, true);
        try
        {
          DataCharacter localDataCharacter3 = decodeDataCharacter(paramBitArray, localFinderPattern, bool1, false);
          localDataCharacter2 = localDataCharacter3;
        }
        catch (NotFoundException localNotFoundException)
        {
          DataCharacter localDataCharacter2;
          while (bool2) {
            localDataCharacter2 = null;
          }
          throw localNotFoundException;
        }
        return new ExpandedPair(localDataCharacter1, localDataCharacter2, localFinderPattern, bool2);
        bool1 = false;
        break;
        i = 0;
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.rss.expanded.RSSExpandedReader
 * JD-Core Version:    0.7.0.1
 */