package com.google.zxing.pdf417.detector;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.detector.MathUtils;
import java.util.Arrays;
import java.util.Map;

public final class Detector
{
  private static final int INTEGER_MATH_SHIFT = 8;
  private static final int MAX_AVG_VARIANCE = 107;
  private static final int MAX_INDIVIDUAL_VARIANCE = 204;
  private static final int PATTERN_MATCH_RESULT_SCALE_FACTOR = 256;
  private static final int SKEW_THRESHOLD = 3;
  private static final int[] START_PATTERN = { 8, 1, 1, 1, 1, 1, 1, 3 };
  private static final int[] START_PATTERN_REVERSE = { 3, 1, 1, 1, 1, 1, 1, 8 };
  private static final int[] STOP_PATTERN = { 7, 1, 1, 3, 1, 1, 1, 2, 1 };
  private static final int[] STOP_PATTERN_REVERSE = { 1, 2, 1, 1, 1, 3, 1, 1, 7 };
  private final BinaryBitmap image;
  
  public Detector(BinaryBitmap paramBinaryBitmap)
  {
    this.image = paramBinaryBitmap;
  }
  
  private static int computeDimension(ResultPoint paramResultPoint1, ResultPoint paramResultPoint2, ResultPoint paramResultPoint3, ResultPoint paramResultPoint4, float paramFloat)
  {
    return 17 * ((8 + (MathUtils.round(ResultPoint.distance(paramResultPoint1, paramResultPoint2) / paramFloat) + MathUtils.round(ResultPoint.distance(paramResultPoint3, paramResultPoint4) / paramFloat) >> 1)) / 17);
  }
  
  private static float computeModuleWidth(ResultPoint[] paramArrayOfResultPoint)
  {
    return ((ResultPoint.distance(paramArrayOfResultPoint[0], paramArrayOfResultPoint[4]) + ResultPoint.distance(paramArrayOfResultPoint[1], paramArrayOfResultPoint[5])) / 34.0F + (ResultPoint.distance(paramArrayOfResultPoint[6], paramArrayOfResultPoint[2]) + ResultPoint.distance(paramArrayOfResultPoint[7], paramArrayOfResultPoint[3])) / 36.0F) / 2.0F;
  }
  
  private static int computeYDimension(ResultPoint paramResultPoint1, ResultPoint paramResultPoint2, ResultPoint paramResultPoint3, ResultPoint paramResultPoint4, float paramFloat)
  {
    return MathUtils.round(ResultPoint.distance(paramResultPoint1, paramResultPoint3) / paramFloat) + MathUtils.round(ResultPoint.distance(paramResultPoint2, paramResultPoint4) / paramFloat) >> 1;
  }
  
  private static void correctCodeWordVertices(ResultPoint[] paramArrayOfResultPoint, boolean paramBoolean)
  {
    float f1 = paramArrayOfResultPoint[0].getX();
    float f2 = paramArrayOfResultPoint[0].getY();
    float f3 = paramArrayOfResultPoint[2].getX();
    float f4 = paramArrayOfResultPoint[2].getY();
    float f5 = paramArrayOfResultPoint[4].getX();
    float f6 = paramArrayOfResultPoint[4].getY();
    float f7 = paramArrayOfResultPoint[6].getX();
    float f8 = paramArrayOfResultPoint[6].getY();
    float f9 = f6 - f8;
    if (paramBoolean) {
      f9 = -f9;
    }
    float f31;
    float f32;
    float f34;
    if (f9 > 3.0F)
    {
      f31 = f7 - f1;
      f32 = f8 - f2;
      float f33 = f31 * f31 + f32 * f32;
      f34 = f31 * (f5 - f1) / f33;
    }
    float f16;
    float f17;
    float f18;
    float f19;
    float f20;
    float f22;
    do
    {
      paramArrayOfResultPoint[4] = new ResultPoint(f1 + f34 * f31, f2 + f34 * f32);
      for (;;)
      {
        float f14 = paramArrayOfResultPoint[1].getX();
        float f15 = paramArrayOfResultPoint[1].getY();
        f16 = paramArrayOfResultPoint[3].getX();
        f17 = paramArrayOfResultPoint[3].getY();
        f18 = paramArrayOfResultPoint[5].getX();
        f19 = paramArrayOfResultPoint[5].getY();
        f20 = paramArrayOfResultPoint[7].getX();
        float f21 = paramArrayOfResultPoint[7].getY();
        f22 = f21 - f19;
        if (paramBoolean) {
          f22 = -f22;
        }
        if (f22 <= 3.0F) {
          break;
        }
        float f27 = f20 - f14;
        float f28 = f21 - f15;
        float f29 = f27 * f27 + f28 * f28;
        float f30 = f27 * (f18 - f14) / f29;
        paramArrayOfResultPoint[5] = new ResultPoint(f14 + f30 * f27, f15 + f30 * f28);
        return;
        if (-f9 > 3.0F)
        {
          float f10 = f3 - f5;
          float f11 = f4 - f6;
          float f12 = f10 * f10 + f11 * f11;
          float f13 = f10 * (f3 - f7) / f12;
          paramArrayOfResultPoint[6] = new ResultPoint(f3 - f13 * f10, f4 - f13 * f11);
        }
      }
    } while (-f22 <= 3.0F);
    float f23 = f16 - f18;
    float f24 = f17 - f19;
    float f25 = f23 * f23 + f24 * f24;
    float f26 = f23 * (f16 - f20) / f25;
    paramArrayOfResultPoint[7] = new ResultPoint(f16 - f26 * f23, f17 - f26 * f24);
  }
  
  private static int[] findGuardPattern(BitMatrix paramBitMatrix, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    Arrays.fill(paramArrayOfInt2, 0, paramArrayOfInt2.length, 0);
    int i = paramArrayOfInt1.length;
    boolean bool = paramBoolean;
    int j = 0;
    int k = paramInt1;
    int m = paramInt1;
    while (m < paramInt1 + paramInt3) {
      if ((bool ^ paramBitMatrix.get(m, paramInt2)))
      {
        paramArrayOfInt2[j] = (1 + paramArrayOfInt2[j]);
        m++;
      }
      else
      {
        if (j == i - 1)
        {
          if (patternMatchVariance(paramArrayOfInt2, paramArrayOfInt1, 204) < 107) {
            return new int[] { k, m };
          }
          k += paramArrayOfInt2[0] + paramArrayOfInt2[1];
          System.arraycopy(paramArrayOfInt2, 2, paramArrayOfInt2, 0, i - 2);
          paramArrayOfInt2[(i - 2)] = 0;
          paramArrayOfInt2[(i - 1)] = 0;
          j--;
          label151:
          paramArrayOfInt2[j] = 1;
          if (bool) {
            break label174;
          }
        }
        label174:
        for (bool = true;; bool = false)
        {
          break;
          j++;
          break label151;
        }
      }
    }
    return null;
  }
  
  private static ResultPoint[] findVertices(BitMatrix paramBitMatrix, boolean paramBoolean)
  {
    int i = paramBitMatrix.getHeight();
    int j = paramBitMatrix.getWidth();
    ResultPoint[] arrayOfResultPoint = new ResultPoint[8];
    int[] arrayOfInt1 = new int[START_PATTERN.length];
    int k;
    int m;
    int n;
    label46:
    int i1;
    int i4;
    label127:
    int[] arrayOfInt2;
    int i3;
    label213:
    int i2;
    if (paramBoolean)
    {
      k = 9;
      m = Math.max(1, i >> k);
      n = 0;
      i1 = 0;
      if (n < i)
      {
        int[] arrayOfInt6 = findGuardPattern(paramBitMatrix, 0, n, j, false, START_PATTERN, arrayOfInt1);
        if (arrayOfInt6 == null) {
          break label381;
        }
        arrayOfResultPoint[0] = new ResultPoint(arrayOfInt6[0], n);
        arrayOfResultPoint[4] = new ResultPoint(arrayOfInt6[1], n);
        i1 = 1;
      }
      if (i1 != 0)
      {
        i4 = i - 1;
        i1 = 0;
        if (i4 > 0)
        {
          int[] arrayOfInt5 = findGuardPattern(paramBitMatrix, 0, i4, j, false, START_PATTERN, arrayOfInt1);
          if (arrayOfInt5 == null) {
            break label391;
          }
          arrayOfResultPoint[1] = new ResultPoint(arrayOfInt5[0], i4);
          arrayOfResultPoint[5] = new ResultPoint(arrayOfInt5[1], i4);
          i1 = 1;
        }
      }
      arrayOfInt2 = new int[STOP_PATTERN.length];
      if (i1 != 0)
      {
        i3 = 0;
        i1 = 0;
        if (i3 < i)
        {
          int[] arrayOfInt4 = findGuardPattern(paramBitMatrix, 0, i3, j, false, STOP_PATTERN, arrayOfInt2);
          if (arrayOfInt4 == null) {
            break label401;
          }
          arrayOfResultPoint[2] = new ResultPoint(arrayOfInt4[1], i3);
          arrayOfResultPoint[6] = new ResultPoint(arrayOfInt4[0], i3);
          i1 = 1;
        }
      }
      if (i1 != 0) {
        i2 = i - 1;
      }
    }
    for (;;)
    {
      i1 = 0;
      if (i2 > 0)
      {
        int[] arrayOfInt3 = findGuardPattern(paramBitMatrix, 0, i2, j, false, STOP_PATTERN, arrayOfInt2);
        if (arrayOfInt3 != null)
        {
          arrayOfResultPoint[3] = new ResultPoint(arrayOfInt3[1], i2);
          arrayOfResultPoint[7] = new ResultPoint(arrayOfInt3[0], i2);
          i1 = 1;
        }
      }
      else
      {
        if (i1 == 0) {
          break label421;
        }
        return arrayOfResultPoint;
        k = 7;
        break;
        label381:
        n += m;
        break label46;
        label391:
        i4 -= m;
        break label127;
        label401:
        i3 += m;
        break label213;
      }
      i2 -= m;
    }
    label421:
    return null;
  }
  
  private static ResultPoint[] findVertices180(BitMatrix paramBitMatrix, boolean paramBoolean)
  {
    int i = paramBitMatrix.getHeight();
    int j = paramBitMatrix.getWidth() >> 1;
    ResultPoint[] arrayOfResultPoint = new ResultPoint[8];
    int[] arrayOfInt1 = new int[START_PATTERN_REVERSE.length];
    int k;
    int m;
    int n;
    label50:
    int i1;
    int i4;
    label128:
    int[] arrayOfInt2;
    int i3;
    label217:
    int i2;
    if (paramBoolean)
    {
      k = 9;
      m = Math.max(1, i >> k);
      n = i - 1;
      i1 = 0;
      if (n > 0)
      {
        int[] arrayOfInt8 = findGuardPattern(paramBitMatrix, j, n, j, true, START_PATTERN_REVERSE, arrayOfInt1);
        if (arrayOfInt8 == null) {
          break label391;
        }
        arrayOfResultPoint[0] = new ResultPoint(arrayOfInt8[1], n);
        arrayOfResultPoint[4] = new ResultPoint(arrayOfInt8[0], n);
        i1 = 1;
      }
      if (i1 != 0)
      {
        i4 = 0;
        i1 = 0;
        if (i4 < i)
        {
          int[] arrayOfInt7 = findGuardPattern(paramBitMatrix, j, i4, j, true, START_PATTERN_REVERSE, arrayOfInt1);
          if (arrayOfInt7 == null) {
            break label401;
          }
          arrayOfResultPoint[1] = new ResultPoint(arrayOfInt7[1], i4);
          arrayOfResultPoint[5] = new ResultPoint(arrayOfInt7[0], i4);
          i1 = 1;
        }
      }
      arrayOfInt2 = new int[STOP_PATTERN_REVERSE.length];
      if (i1 != 0)
      {
        i3 = i - 1;
        i1 = 0;
        if (i3 > 0)
        {
          int[] arrayOfInt5 = STOP_PATTERN_REVERSE;
          int[] arrayOfInt6 = findGuardPattern(paramBitMatrix, 0, i3, j, false, arrayOfInt5, arrayOfInt2);
          if (arrayOfInt6 == null) {
            break label411;
          }
          arrayOfResultPoint[2] = new ResultPoint(arrayOfInt6[0], i3);
          arrayOfResultPoint[6] = new ResultPoint(arrayOfInt6[1], i3);
          i1 = 1;
        }
      }
      if (i1 != 0) {
        i2 = 0;
      }
    }
    for (;;)
    {
      i1 = 0;
      if (i2 < i)
      {
        int[] arrayOfInt3 = STOP_PATTERN_REVERSE;
        int[] arrayOfInt4 = findGuardPattern(paramBitMatrix, 0, i2, j, false, arrayOfInt3, arrayOfInt2);
        if (arrayOfInt4 != null)
        {
          arrayOfResultPoint[3] = new ResultPoint(arrayOfInt4[0], i2);
          arrayOfResultPoint[7] = new ResultPoint(arrayOfInt4[1], i2);
          i1 = 1;
        }
      }
      else
      {
        if (i1 == 0) {
          break label431;
        }
        return arrayOfResultPoint;
        k = 7;
        break;
        label391:
        n -= m;
        break label50;
        label401:
        i4 += m;
        break label128;
        label411:
        i3 -= m;
        break label217;
      }
      i2 += m;
    }
    label431:
    return null;
  }
  
  private static int patternMatchVariance(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt)
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
  
  private static BitMatrix sampleGrid(BitMatrix paramBitMatrix, ResultPoint paramResultPoint1, ResultPoint paramResultPoint2, ResultPoint paramResultPoint3, ResultPoint paramResultPoint4, int paramInt1, int paramInt2)
    throws NotFoundException
  {
    return GridSampler.getInstance().sampleGrid(paramBitMatrix, paramInt1, paramInt2, 0.0F, 0.0F, paramInt1, 0.0F, paramInt1, paramInt2, 0.0F, paramInt2, paramResultPoint1.getX(), paramResultPoint1.getY(), paramResultPoint3.getX(), paramResultPoint3.getY(), paramResultPoint4.getX(), paramResultPoint4.getY(), paramResultPoint2.getX(), paramResultPoint2.getY());
  }
  
  public DetectorResult detect()
    throws NotFoundException
  {
    return detect(null);
  }
  
  public DetectorResult detect(Map<DecodeHintType, ?> paramMap)
    throws NotFoundException
  {
    BitMatrix localBitMatrix1 = this.image.getBlackMatrix();
    boolean bool;
    ResultPoint[] arrayOfResultPoint1;
    if ((paramMap != null) && (paramMap.containsKey(DecodeHintType.TRY_HARDER)))
    {
      bool = true;
      arrayOfResultPoint1 = findVertices(localBitMatrix1, bool);
      if (arrayOfResultPoint1 != null) {
        break label70;
      }
      arrayOfResultPoint1 = findVertices180(localBitMatrix1, bool);
      if (arrayOfResultPoint1 != null) {
        correctCodeWordVertices(arrayOfResultPoint1, true);
      }
    }
    for (;;)
    {
      if (arrayOfResultPoint1 != null) {
        break label79;
      }
      throw NotFoundException.getNotFoundInstance();
      bool = false;
      break;
      label70:
      correctCodeWordVertices(arrayOfResultPoint1, false);
    }
    label79:
    float f = computeModuleWidth(arrayOfResultPoint1);
    if (f < 1.0F) {
      throw NotFoundException.getNotFoundInstance();
    }
    int i = computeDimension(arrayOfResultPoint1[4], arrayOfResultPoint1[6], arrayOfResultPoint1[5], arrayOfResultPoint1[7], f);
    if (i < 1) {
      throw NotFoundException.getNotFoundInstance();
    }
    int j = computeYDimension(arrayOfResultPoint1[4], arrayOfResultPoint1[6], arrayOfResultPoint1[5], arrayOfResultPoint1[7], f);
    if (j > i) {}
    for (;;)
    {
      BitMatrix localBitMatrix2 = sampleGrid(localBitMatrix1, arrayOfResultPoint1[4], arrayOfResultPoint1[5], arrayOfResultPoint1[6], arrayOfResultPoint1[7], i, j);
      ResultPoint[] arrayOfResultPoint2 = new ResultPoint[4];
      arrayOfResultPoint2[0] = arrayOfResultPoint1[5];
      arrayOfResultPoint2[1] = arrayOfResultPoint1[4];
      arrayOfResultPoint2[2] = arrayOfResultPoint1[6];
      arrayOfResultPoint2[3] = arrayOfResultPoint1[7];
      return new DetectorResult(localBitMatrix2, arrayOfResultPoint2);
      j = i;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.pdf417.detector.Detector
 * JD-Core Version:    0.7.0.1
 */