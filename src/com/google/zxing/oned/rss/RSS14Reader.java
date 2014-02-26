package com.google.zxing.oned.rss;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitArray;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class RSS14Reader
  extends AbstractRSSReader
{
  private static final int[][] FINDER_PATTERNS = { { 3, 8, 2, 1 }, { 3, 5, 5, 1 }, { 3, 3, 7, 1 }, { 3, 1, 9, 1 }, { 2, 7, 4, 1 }, { 2, 5, 6, 1 }, { 2, 3, 8, 1 }, { 1, 5, 7, 1 }, { 1, 3, 9, 1 } };
  private static final int[] INSIDE_GSUM;
  private static final int[] INSIDE_ODD_TOTAL_SUBSET;
  private static final int[] INSIDE_ODD_WIDEST;
  private static final int[] OUTSIDE_EVEN_TOTAL_SUBSET = { 1, 10, 34, 70, 126 };
  private static final int[] OUTSIDE_GSUM;
  private static final int[] OUTSIDE_ODD_WIDEST;
  private final List<Pair> possibleLeftPairs = new ArrayList();
  private final List<Pair> possibleRightPairs = new ArrayList();
  
  static
  {
    INSIDE_ODD_TOTAL_SUBSET = new int[] { 4, 20, 48, 81 };
    OUTSIDE_GSUM = new int[] { 0, 161, 961, 2015, 2715 };
    INSIDE_GSUM = new int[] { 0, 336, 1036, 1516 };
    OUTSIDE_ODD_WIDEST = new int[] { 8, 6, 4, 3, 1 };
    INSIDE_ODD_WIDEST = new int[] { 2, 4, 6, 8 };
  }
  
  private static void addOrTally(Collection<Pair> paramCollection, Pair paramPair)
  {
    if (paramPair == null) {}
    int i;
    do
    {
      return;
      Iterator localIterator = paramCollection.iterator();
      Pair localPair;
      do
      {
        boolean bool = localIterator.hasNext();
        i = 0;
        if (!bool) {
          break;
        }
        localPair = (Pair)localIterator.next();
      } while (localPair.getValue() != paramPair.getValue());
      localPair.incrementCount();
      i = 1;
    } while (i != 0);
    paramCollection.add(paramPair);
  }
  
  private void adjustOddEvenCounts(boolean paramBoolean, int paramInt)
    throws NotFoundException
  {
    int i = count(getOddCounts());
    int j = count(getEvenCounts());
    int k = i + j - paramInt;
    int m = i & 0x1;
    int n;
    int i1;
    label47:
    int i2;
    label58:
    int i3;
    int i4;
    int i5;
    label77:
    int i6;
    if (paramBoolean)
    {
      n = 1;
      if (m != n) {
        break label113;
      }
      i1 = 1;
      if ((j & 0x1) != 1) {
        break label119;
      }
      i2 = 1;
      i3 = 0;
      i4 = 0;
      if (!paramBoolean) {
        break label166;
      }
      if (i <= 12) {
        break label125;
      }
      i5 = 1;
      if (j <= 12) {
        break label145;
      }
      i6 = 1;
    }
    for (;;)
    {
      if (k == 1) {
        if (i1 != 0)
        {
          if (i2 != 0)
          {
            throw NotFoundException.getNotFoundInstance();
            n = 0;
            break;
            label113:
            i1 = 0;
            break label47;
            label119:
            i2 = 0;
            break label58;
            label125:
            i5 = 0;
            i3 = 0;
            if (i >= 4) {
              break label77;
            }
            i3 = 1;
            i5 = 0;
            break label77;
            label145:
            i6 = 0;
            i4 = 0;
            if (j >= 4) {
              continue;
            }
            i4 = 1;
            i6 = 0;
            continue;
            label166:
            if (i > 11) {
              i5 = 1;
            }
            for (;;)
            {
              if (j <= 10) {
                break label211;
              }
              i6 = 1;
              i4 = 0;
              break;
              i5 = 0;
              i3 = 0;
              if (i < 5)
              {
                i3 = 1;
                i5 = 0;
              }
            }
            label211:
            i6 = 0;
            i4 = 0;
            if (j >= 4) {
              continue;
            }
            i4 = 1;
            i6 = 0;
            continue;
          }
          i5 = 1;
        }
      }
    }
    while (i3 != 0) {
      if (i5 != 0)
      {
        throw NotFoundException.getNotFoundInstance();
        if (i2 == 0) {
          throw NotFoundException.getNotFoundInstance();
        }
        i6 = 1;
        continue;
        if (k == -1)
        {
          if (i1 != 0)
          {
            if (i2 != 0) {
              throw NotFoundException.getNotFoundInstance();
            }
            i3 = 1;
          }
          else
          {
            if (i2 == 0) {
              throw NotFoundException.getNotFoundInstance();
            }
            i4 = 1;
          }
        }
        else if (k == 0)
        {
          if (i1 != 0)
          {
            if (i2 == 0) {
              throw NotFoundException.getNotFoundInstance();
            }
            if (i < j)
            {
              i3 = 1;
              i6 = 1;
            }
            else
            {
              i5 = 1;
              i4 = 1;
            }
          }
          else if (i2 != 0)
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
    if (i5 != 0) {
      decrement(getOddCounts(), getOddRoundingErrors());
    }
    if (i4 != 0)
    {
      if (i6 != 0) {
        throw NotFoundException.getNotFoundInstance();
      }
      increment(getEvenCounts(), getOddRoundingErrors());
    }
    if (i6 != 0) {
      decrement(getEvenCounts(), getEvenRoundingErrors());
    }
  }
  
  private static boolean checkChecksum(Pair paramPair1, Pair paramPair2)
  {
    int i = paramPair1.getFinderPattern().getValue();
    int j = paramPair2.getFinderPattern().getValue();
    if (((i != 0) || (j != 8)) && (i == 8) && (j == 0)) {}
    int k = (paramPair1.getChecksumPortion() + 16 * paramPair2.getChecksumPortion()) % 79;
    int m = 9 * paramPair1.getFinderPattern().getValue() + paramPair2.getFinderPattern().getValue();
    if (m > 72) {
      m--;
    }
    if (m > 8) {
      m--;
    }
    return k == m;
  }
  
  private static Result constructResult(Pair paramPair1, Pair paramPair2)
  {
    String str1 = String.valueOf(4537077L * paramPair1.getValue() + paramPair2.getValue());
    StringBuilder localStringBuilder = new StringBuilder(14);
    for (int i = 13 - str1.length(); i > 0; i--) {
      localStringBuilder.append('0');
    }
    localStringBuilder.append(str1);
    int j = 0;
    for (int k = 0; k < 13; k++)
    {
      int n = '￐' + localStringBuilder.charAt(k);
      if ((k & 0x1) == 0) {
        n *= 3;
      }
      j += n;
    }
    int m = 10 - j % 10;
    if (m == 10) {
      m = 0;
    }
    localStringBuilder.append(m);
    ResultPoint[] arrayOfResultPoint1 = paramPair1.getFinderPattern().getResultPoints();
    ResultPoint[] arrayOfResultPoint2 = paramPair2.getFinderPattern().getResultPoints();
    String str2 = String.valueOf(localStringBuilder.toString());
    ResultPoint[] arrayOfResultPoint3 = new ResultPoint[4];
    arrayOfResultPoint3[0] = arrayOfResultPoint1[0];
    arrayOfResultPoint3[1] = arrayOfResultPoint1[1];
    arrayOfResultPoint3[2] = arrayOfResultPoint2[0];
    arrayOfResultPoint3[3] = arrayOfResultPoint2[1];
    return new Result(str2, null, arrayOfResultPoint3, BarcodeFormat.RSS_14);
  }
  
  private DataCharacter decodeDataCharacter(BitArray paramBitArray, FinderPattern paramFinderPattern, boolean paramBoolean)
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
    int m;
    label72:
    int[] arrayOfInt2;
    int[] arrayOfInt3;
    float[] arrayOfFloat2;
    int n;
    label111:
    float f2;
    int i22;
    label147:
    int i23;
    if (paramBoolean)
    {
      recordPatternInReverse(paramBitArray, paramFinderPattern.getStartEnd()[0], arrayOfInt1);
      if (!paramBoolean) {
        break label248;
      }
      m = 16;
      float f1 = count(arrayOfInt1) / m;
      arrayOfInt2 = getOddCounts();
      arrayOfInt3 = getEvenCounts();
      float[] arrayOfFloat1 = getOddRoundingErrors();
      arrayOfFloat2 = getEvenRoundingErrors();
      n = 0;
      if (n >= arrayOfInt1.length) {
        break label290;
      }
      f2 = arrayOfInt1[n] / f1;
      i22 = (int)(0.5F + f2);
      if (i22 >= 1) {
        break label255;
      }
      i22 = 1;
      i23 = n >> 1;
      if ((n & 0x1) != 0) {
        break label269;
      }
      arrayOfInt2[i23] = i22;
      arrayOfFloat1[i23] = (f2 - i22);
    }
    for (;;)
    {
      n++;
      break label111;
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
      label248:
      m = 15;
      break label72;
      label255:
      if (i22 <= 8) {
        break label147;
      }
      i22 = 8;
      break label147;
      label269:
      arrayOfInt3[i23] = i22;
      arrayOfFloat2[i23] = (f2 - i22);
    }
    label290:
    adjustOddEvenCounts(paramBoolean, m);
    int i1 = 0;
    int i2 = 0;
    for (int i3 = -1 + arrayOfInt2.length; i3 >= 0; i3--)
    {
      i2 = i2 * 9 + arrayOfInt2[i3];
      i1 += arrayOfInt2[i3];
    }
    int i4 = 0;
    int i5 = 0;
    for (int i6 = -1 + arrayOfInt3.length; i6 >= 0; i6--)
    {
      i4 = i4 * 9 + arrayOfInt3[i6];
      i5 += arrayOfInt3[i6];
    }
    int i7 = i2 + i4 * 3;
    if (paramBoolean)
    {
      if (((i1 & 0x1) != 0) || (i1 > 12) || (i1 < 4)) {
        throw NotFoundException.getNotFoundInstance();
      }
      int i15 = (12 - i1) / 2;
      int i16 = OUTSIDE_ODD_WIDEST[i15];
      int i17 = 9 - i16;
      int i18 = RSSUtils.getRSSvalue(arrayOfInt2, i16, false);
      int i19 = RSSUtils.getRSSvalue(arrayOfInt3, i17, true);
      int i20 = OUTSIDE_EVEN_TOTAL_SUBSET[i15];
      int i21 = OUTSIDE_GSUM[i15];
      DataCharacter localDataCharacter2 = new DataCharacter(i21 + (i19 + i18 * i20), i7);
      return localDataCharacter2;
    }
    if (((i5 & 0x1) != 0) || (i5 > 10) || (i5 < 4)) {
      throw NotFoundException.getNotFoundInstance();
    }
    int i8 = (10 - i5) / 2;
    int i9 = INSIDE_ODD_WIDEST[i8];
    int i10 = 9 - i9;
    int i11 = RSSUtils.getRSSvalue(arrayOfInt2, i9, true);
    int i12 = RSSUtils.getRSSvalue(arrayOfInt3, i10, false);
    int i13 = INSIDE_ODD_TOTAL_SUBSET[i8];
    int i14 = INSIDE_GSUM[i8];
    DataCharacter localDataCharacter1 = new DataCharacter(i14 + (i11 + i12 * i13), i7);
    return localDataCharacter1;
  }
  
  private Pair decodePair(BitArray paramBitArray, boolean paramBoolean, int paramInt, Map<DecodeHintType, ?> paramMap)
  {
    try
    {
      int[] arrayOfInt = findFinderPattern(paramBitArray, 0, paramBoolean);
      FinderPattern localFinderPattern = parseFoundFinderPattern(paramBitArray, paramInt, paramBoolean, arrayOfInt);
      if (paramMap == null) {}
      ResultPointCallback localResultPointCallback;
      for (Object localObject = null;; localObject = localResultPointCallback)
      {
        if (localObject != null)
        {
          float f = (arrayOfInt[0] + arrayOfInt[1]) / 2.0F;
          if (paramBoolean) {
            f = -1 + paramBitArray.getSize() - f;
          }
          localObject.foundPossibleResultPoint(new ResultPoint(f, paramInt));
        }
        DataCharacter localDataCharacter1 = decodeDataCharacter(paramBitArray, localFinderPattern, true);
        DataCharacter localDataCharacter2 = decodeDataCharacter(paramBitArray, localFinderPattern, false);
        return new Pair(1597 * localDataCharacter1.getValue() + localDataCharacter2.getValue(), localDataCharacter1.getChecksumPortion() + 4 * localDataCharacter2.getChecksumPortion(), localFinderPattern);
        localResultPointCallback = (ResultPointCallback)paramMap.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
      }
      return null;
    }
    catch (NotFoundException localNotFoundException) {}
  }
  
  private int[] findFinderPattern(BitArray paramBitArray, int paramInt, boolean paramBoolean)
    throws NotFoundException
  {
    int[] arrayOfInt = getDecodeFinderCounters();
    arrayOfInt[0] = 0;
    arrayOfInt[1] = 0;
    arrayOfInt[2] = 0;
    arrayOfInt[3] = 0;
    int i = paramBitArray.getSize();
    boolean bool = false;
    int j;
    int k;
    int m;
    for (;;)
    {
      if (paramInt < i) {
        if (paramBitArray.get(paramInt)) {
          break label104;
        }
      }
      label104:
      for (bool = true; paramBoolean == bool; bool = false)
      {
        j = 0;
        k = paramInt;
        for (m = paramInt;; m++)
        {
          if (m >= i) {
            break label216;
          }
          if (!(bool ^ paramBitArray.get(m))) {
            break;
          }
          arrayOfInt[j] = (1 + arrayOfInt[j]);
        }
      }
      paramInt++;
    }
    if (j == 3)
    {
      if (isFinderPattern(arrayOfInt)) {
        return new int[] { k, m };
      }
      k += arrayOfInt[0] + arrayOfInt[1];
      arrayOfInt[0] = arrayOfInt[2];
      arrayOfInt[1] = arrayOfInt[3];
      arrayOfInt[2] = 0;
      arrayOfInt[3] = 0;
      j--;
      label187:
      arrayOfInt[j] = 1;
      if (bool) {
        break label210;
      }
    }
    label210:
    for (bool = true;; bool = false)
    {
      break;
      j++;
      break label187;
    }
    label216:
    throw NotFoundException.getNotFoundInstance();
  }
  
  private FinderPattern parseFoundFinderPattern(BitArray paramBitArray, int paramInt, boolean paramBoolean, int[] paramArrayOfInt)
    throws NotFoundException
  {
    boolean bool = paramBitArray.get(paramArrayOfInt[0]);
    for (int i = -1 + paramArrayOfInt[0]; (i >= 0) && ((bool ^ paramBitArray.get(i))); i--) {}
    int j = i + 1;
    int k = paramArrayOfInt[0] - j;
    int[] arrayOfInt1 = getDecodeFinderCounters();
    System.arraycopy(arrayOfInt1, 0, arrayOfInt1, 1, -1 + arrayOfInt1.length);
    arrayOfInt1[0] = k;
    int m = parseFinderValue(arrayOfInt1, FINDER_PATTERNS);
    int n = j;
    int i1 = paramArrayOfInt[1];
    if (paramBoolean)
    {
      n = -1 + paramBitArray.getSize() - n;
      i1 = -1 + paramBitArray.getSize() - i1;
    }
    int[] arrayOfInt2 = new int[2];
    arrayOfInt2[0] = j;
    arrayOfInt2[1] = paramArrayOfInt[1];
    return new FinderPattern(m, arrayOfInt2, n, i1, paramInt);
  }
  
  public Result decodeRow(int paramInt, BitArray paramBitArray, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException
  {
    Pair localPair1 = decodePair(paramBitArray, false, paramInt, paramMap);
    addOrTally(this.possibleLeftPairs, localPair1);
    paramBitArray.reverse();
    Pair localPair2 = decodePair(paramBitArray, true, paramInt, paramMap);
    addOrTally(this.possibleRightPairs, localPair2);
    paramBitArray.reverse();
    Iterator localIterator1 = this.possibleLeftPairs.iterator();
    Pair localPair3;
    Pair localPair4;
    do
    {
      Iterator localIterator2;
      while (!localIterator2.hasNext())
      {
        do
        {
          if (!localIterator1.hasNext()) {
            break;
          }
          localPair3 = (Pair)localIterator1.next();
        } while (localPair3.getCount() <= 1);
        localIterator2 = this.possibleRightPairs.iterator();
      }
      localPair4 = (Pair)localIterator2.next();
    } while ((localPair4.getCount() <= 1) || (!checkChecksum(localPair3, localPair4)));
    return constructResult(localPair3, localPair4);
    throw NotFoundException.getNotFoundInstance();
  }
  
  public void reset()
  {
    this.possibleLeftPairs.clear();
    this.possibleRightPairs.clear();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.rss.RSS14Reader
 * JD-Core Version:    0.7.0.1
 */