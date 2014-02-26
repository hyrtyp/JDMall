package com.google.zxing.oned;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.Map;

public abstract class OneDReader
  implements Reader
{
  protected static final int INTEGER_MATH_SHIFT = 8;
  protected static final int PATTERN_MATCH_RESULT_SCALE_FACTOR = 256;
  
  private Result doDecode(BinaryBitmap paramBinaryBitmap, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException
  {
    int i = paramBinaryBitmap.getWidth();
    int j = paramBinaryBitmap.getHeight();
    Object localObject = new BitArray(i);
    int k = j >> 1;
    int m;
    int n;
    label59:
    int i1;
    int i2;
    label79:
    int i3;
    int i4;
    int i5;
    if (paramMap != null)
    {
      DecodeHintType localDecodeHintType2 = DecodeHintType.TRY_HARDER;
      if (paramMap.containsKey(localDecodeHintType2))
      {
        m = 1;
        if (m == 0) {
          break label144;
        }
        n = 8;
        i1 = Math.max(1, j >> n);
        if (m == 0) {
          break label150;
        }
        i2 = j;
        i3 = 0;
        if (i3 < i2)
        {
          i4 = i3 + 1 >> 1;
          if ((i3 & 0x1) != 0) {
            break label157;
          }
          i5 = 1;
          label107:
          if (i5 == 0) {
            break label163;
          }
        }
      }
    }
    int i6;
    for (;;)
    {
      i6 = k + i1 * i4;
      if ((i6 >= 0) && (i6 < j)) {
        break label171;
      }
      throw NotFoundException.getNotFoundInstance();
      m = 0;
      break;
      label144:
      n = 5;
      break label59;
      label150:
      i2 = 15;
      break label79;
      label157:
      i5 = 0;
      break label107;
      label163:
      i4 = -i4;
    }
    for (;;)
    {
      try
      {
        label171:
        BitArray localBitArray = paramBinaryBitmap.getBlackRow(i6, (BitArray)localObject);
        localObject = localBitArray;
        i7 = 0;
        if (i7 < 2) {
          if (i7 == 1)
          {
            ((BitArray)localObject).reverse();
            if (paramMap != null)
            {
              DecodeHintType localDecodeHintType1 = DecodeHintType.NEED_RESULT_POINT_CALLBACK;
              if (paramMap.containsKey(localDecodeHintType1))
              {
                EnumMap localEnumMap = new EnumMap(DecodeHintType.class);
                localEnumMap.putAll(paramMap);
                localEnumMap.remove(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
                paramMap = localEnumMap;
              }
            }
          }
        }
      }
      catch (NotFoundException localNotFoundException)
      {
        try
        {
          Result localResult = decodeRow(i6, (BitArray)localObject, paramMap);
          if (i7 == 1)
          {
            localResult.putMetadata(ResultMetadataType.ORIENTATION, Integer.valueOf(180));
            ResultPoint[] arrayOfResultPoint = localResult.getResultPoints();
            if (arrayOfResultPoint != null)
            {
              arrayOfResultPoint[0] = new ResultPoint(i - arrayOfResultPoint[0].getX() - 1.0F, arrayOfResultPoint[0].getY());
              arrayOfResultPoint[1] = new ResultPoint(i - arrayOfResultPoint[1].getX() - 1.0F, arrayOfResultPoint[1].getY());
            }
          }
          return localResult;
        }
        catch (ReaderException localReaderException)
        {
          int i7;
          i7++;
        }
        localNotFoundException = localNotFoundException;
        i3++;
      }
    }
  }
  
  protected static int patternMatchVariance(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt)
  {
    int i = paramArrayOfInt1.length;
    int j = 0;
    int k = 0;
    for (int m = 0; m < i; m++)
    {
      j += paramArrayOfInt1[m];
      k += paramArrayOfInt2[m];
    }
    if (j < k) {}
    int i2;
    label143:
    for (;;)
    {
      return 2147483647;
      int n = (j << 8) / k;
      int i1 = paramInt * n >> 8;
      i2 = 0;
      int i3 = 0;
      if (i3 >= i) {
        break;
      }
      int i4 = paramArrayOfInt1[i3] << 8;
      int i5 = n * paramArrayOfInt2[i3];
      if (i4 > i5) {}
      for (int i6 = i4 - i5;; i6 = i5 - i4)
      {
        if (i6 > i1) {
          break label143;
        }
        i2 += i6;
        i3++;
        break;
      }
    }
    return i2 / j;
  }
  
  protected static void recordPattern(BitArray paramBitArray, int paramInt, int[] paramArrayOfInt)
    throws NotFoundException
  {
    int i = paramArrayOfInt.length;
    Arrays.fill(paramArrayOfInt, 0, i, 0);
    int j = paramBitArray.getSize();
    if (paramInt >= j) {
      throw NotFoundException.getNotFoundInstance();
    }
    if (!paramBitArray.get(paramInt)) {}
    int m;
    int n;
    for (int k = 1;; k = 0)
    {
      m = 0;
      for (n = paramInt;; n++)
      {
        if (n >= j) {
          break label93;
        }
        if ((k ^ paramBitArray.get(n)) == 0) {
          break;
        }
        paramArrayOfInt[m] = (1 + paramArrayOfInt[m]);
      }
    }
    m++;
    if (m == i)
    {
      label93:
      if ((m != i) && ((m != i - 1) || (n != j))) {
        throw NotFoundException.getNotFoundInstance();
      }
    }
    else
    {
      paramArrayOfInt[m] = 1;
      if (k == 0) {}
      for (k = 1;; k = 0) {
        break;
      }
    }
  }
  
  protected static void recordPatternInReverse(BitArray paramBitArray, int paramInt, int[] paramArrayOfInt)
    throws NotFoundException
  {
    int i = paramArrayOfInt.length;
    boolean bool = paramBitArray.get(paramInt);
    while ((paramInt > 0) && (i >= 0))
    {
      paramInt--;
      if (paramBitArray.get(paramInt) != bool)
      {
        i--;
        if (!bool) {}
        for (bool = true;; bool = false) {
          break;
        }
      }
    }
    if (i >= 0) {
      throw NotFoundException.getNotFoundInstance();
    }
    recordPattern(paramBitArray, paramInt + 1, paramArrayOfInt);
  }
  
  public Result decode(BinaryBitmap paramBinaryBitmap)
    throws NotFoundException, FormatException
  {
    return decode(paramBinaryBitmap, null);
  }
  
  public Result decode(BinaryBitmap paramBinaryBitmap, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException, FormatException
  {
    try
    {
      Result localResult2 = doDecode(paramBinaryBitmap, paramMap);
      localResult1 = localResult2;
    }
    catch (NotFoundException localNotFoundException)
    {
      Result localResult1;
      if ((paramMap == null) || (!paramMap.containsKey(DecodeHintType.TRY_HARDER))) {
        break label200;
      }
      label200:
      for (int i = 1;; i = 0)
      {
        if ((i == 0) || (!paramBinaryBitmap.isRotateSupported())) {
          break label206;
        }
        BinaryBitmap localBinaryBitmap = paramBinaryBitmap.rotateCounterClockwise();
        localResult1 = doDecode(localBinaryBitmap, paramMap);
        Map localMap = localResult1.getResultMetadata();
        int j = 270;
        if ((localMap != null) && (localMap.containsKey(ResultMetadataType.ORIENTATION))) {
          j = (j + ((Integer)localMap.get(ResultMetadataType.ORIENTATION)).intValue()) % 360;
        }
        localResult1.putMetadata(ResultMetadataType.ORIENTATION, Integer.valueOf(j));
        ResultPoint[] arrayOfResultPoint = localResult1.getResultPoints();
        if (arrayOfResultPoint == null) {
          break;
        }
        int k = localBinaryBitmap.getHeight();
        for (int m = 0; m < arrayOfResultPoint.length; m++) {
          arrayOfResultPoint[m] = new ResultPoint(k - arrayOfResultPoint[m].getY() - 1.0F, arrayOfResultPoint[m].getX());
        }
      }
      label206:
      throw localNotFoundException;
    }
    return localResult1;
  }
  
  public abstract Result decodeRow(int paramInt, BitArray paramBitArray, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException, ChecksumException, FormatException;
  
  public void reset() {}
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.OneDReader
 * JD-Core Version:    0.7.0.1
 */