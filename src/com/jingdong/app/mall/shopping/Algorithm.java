package com.jingdong.app.mall.shopping;

import android.graphics.Color;
import java.util.Vector;

public class Algorithm
{
  public static final int BINS = 65;
  
  public static int ComputerSrcColorIndexF(int paramInt1, int paramInt2, int[] paramArrayOfInt, Vector<Float> paramVector, Vector<Integer> paramVector1, int paramInt3)
  {
    Vector localVector1 = new Vector();
    Vector localVector2 = new Vector();
    int i = 0;
    int j;
    int i4;
    label40:
    RGB localRGB3;
    if (i >= 65)
    {
      j = 0;
      if (j < paramInt1) {
        break label194;
      }
      i4 = 0;
      if (i4 < 65) {
        break label350;
      }
      FeatureSortData(localVector1, paramVector, paramVector1, 65, paramInt3);
      localVector1.clear();
      localRGB3 = new RGB();
      if (((Float)paramVector.get(0)).floatValue() < 0.75D) {
        break label464;
      }
      RGB localRGB4 = (RGB)localVector2.get(-1 + ((Integer)paramVector1.get(0)).intValue());
      localRGB3.R = localRGB4.R;
      localRGB3.G = localRGB4.G;
      localRGB3.B = localRGB4.B;
    }
    for (;;)
    {
      return Color.rgb(localRGB3.R, localRGB3.G, localRGB3.B);
      localVector1.add(Float.valueOf(0.0F));
      localVector2.add(new RGB());
      i++;
      break;
      label194:
      for (int k = 0;; k++)
      {
        if (k >= paramInt2)
        {
          j++;
          break;
        }
        int m = paramArrayOfInt[(k + paramInt2 * j)];
        int n = (char)(0xFF & m >> 16);
        int i1 = (char)(0xFF & m >> 8);
        int i2 = (char)(m & 0xFF);
        int i3 = GetIndex(RGB2HSV(n, i1, i2));
        localVector1.set(i3, Float.valueOf(1.0F + ((Float)localVector1.get(i3)).floatValue()));
        RGB localRGB1 = (RGB)localVector2.get(i3);
        localRGB1.R = (n + localRGB1.R);
        localRGB1.G = (i1 + localRGB1.G);
        localRGB1.B = (i2 + localRGB1.B);
      }
      label350:
      float f = ((Float)localVector1.get(i4)).floatValue();
      if (f != 0.0F)
      {
        RGB localRGB2 = (RGB)localVector2.get(i4);
        localRGB2.R = ((int)(localRGB2.R / f));
        localRGB2.G = ((int)(localRGB2.G / f));
        localRGB2.B = ((int)(localRGB2.B / f));
      }
      localVector1.set(i4, Float.valueOf(((Float)localVector1.get(i4)).floatValue() / (paramInt1 * paramInt2)));
      i4++;
      break label40;
      label464:
      int i5 = paramArrayOfInt[(paramInt2 / 2 + paramInt2 * (paramInt1 / 2))];
      int i6 = (char)(0xFF & i5 >> 16);
      int i7 = (char)(0xFF & i5 >> 8);
      int i8 = (char)(i5 & 0xFF);
      localRGB3.R = i6;
      localRGB3.G = i7;
      localRGB3.B = i8;
      int i9 = -1 + ((Integer)paramVector1.get(0)).intValue();
      if (((Float)paramVector.get(0)).floatValue() >= 0.2D)
      {
        double d1 = Math.sqrt(Math.pow(((RGB)localVector2.get(i9)).R - localRGB3.R, 2.0D) + Math.pow(((RGB)localVector2.get(i9)).G - localRGB3.G, 2.0D) + Math.pow(((RGB)localVector2.get(i9)).B - localRGB3.B, 2.0D));
        for (int i10 = 1; i10 < paramInt3; i10++)
        {
          double d2 = Math.sqrt(Math.pow(((RGB)localVector2.get(i10)).R - localRGB3.R, 2.0D) + Math.pow(((RGB)localVector2.get(i10)).G - localRGB3.G, 2.0D) + Math.pow(((RGB)localVector2.get(i10)).B - localRGB3.B, 2.0D));
          if (d2 < d1)
          {
            i9 = -1 + ((Integer)paramVector1.get(i10)).intValue();
            d1 = d2;
          }
          localRGB3.R = ((RGB)localVector2.get(i9)).R;
          localRGB3.G = ((RGB)localVector2.get(i9)).G;
          localRGB3.B = ((RGB)localVector2.get(i9)).B;
        }
      }
    }
  }
  
  public static void FeatureSortData(Vector<Float> paramVector1, Vector<Float> paramVector2, Vector<Integer> paramVector, int paramInt1, int paramInt2)
  {
    Vector localVector = new Vector(paramInt1);
    int i = 0;
    int j;
    if (i >= paramInt1)
    {
      j = 0;
      if (j < paramInt1) {
        break label71;
      }
      paramVector2.clear();
      paramVector.clear();
    }
    for (int n = 0;; n++)
    {
      if (n >= paramInt2)
      {
        localVector.clear();
        return;
        localVector.add(Integer.valueOf(i + 1));
        i++;
        break;
        label71:
        for (int k = 0;; k++)
        {
          if (k >= paramInt1 - 1)
          {
            j++;
            break;
          }
          if (((Float)paramVector1.get(k)).floatValue() < ((Float)paramVector1.get(k + 1)).floatValue())
          {
            float f = ((Float)paramVector1.get(k)).floatValue();
            paramVector1.set(k, (Float)paramVector1.get(k + 1));
            paramVector1.set(k + 1, Float.valueOf(f));
            int m = ((Integer)localVector.get(k)).intValue();
            localVector.set(k, (Integer)localVector.get(k + 1));
            localVector.set(k + 1, Integer.valueOf(m));
          }
        }
      }
      paramVector2.add((Float)paramVector1.get(n));
      paramVector.add((Integer)localVector.get(n));
    }
  }
  
  public static int GetIndex(HSV paramHSV)
  {
    int i = -1;
    int j;
    if (((paramHSV.H >= 0) && (paramHSV.H <= 10)) || ((paramHSV.H > 330) && (paramHSV.H <= 360)))
    {
      i = 0;
      if ((paramHSV.v < 0.0F) || (paramHSV.v >= 0.18D)) {
        break label288;
      }
      j = 60;
    }
    label288:
    label427:
    label577:
    boolean bool4;
    do
    {
      boolean bool3;
      do
      {
        boolean bool2;
        do
        {
          boolean bool1;
          do
          {
            boolean bool6;
            do
            {
              boolean bool5;
              do
              {
                boolean bool8;
                do
                {
                  boolean bool7;
                  do
                  {
                    return j;
                    if ((paramHSV.H > 10) && (paramHSV.H <= 25))
                    {
                      i = 1;
                      break;
                    }
                    if ((paramHSV.H > 25) && (paramHSV.H <= 65))
                    {
                      i = 2;
                      break;
                    }
                    if ((paramHSV.H > 65) && (paramHSV.H <= 80))
                    {
                      i = 3;
                      break;
                    }
                    if ((paramHSV.H > 80) && (paramHSV.H <= 165))
                    {
                      i = 4;
                      break;
                    }
                    if ((paramHSV.H > 165) && (paramHSV.H <= 170))
                    {
                      i = 5;
                      break;
                    }
                    if ((paramHSV.H > 170) && (paramHSV.H <= 235))
                    {
                      i = 6;
                      break;
                    }
                    if ((paramHSV.H > 235) && (paramHSV.H <= 240))
                    {
                      i = 7;
                      break;
                    }
                    if ((paramHSV.H > 240) && (paramHSV.H <= 305))
                    {
                      i = 8;
                      break;
                    }
                    if ((paramHSV.H <= 305) || (paramHSV.H > 330)) {
                      break;
                    }
                    i = 9;
                    break;
                    if ((paramHSV.s < 0.0F) || (paramHSV.s >= 0.18D)) {
                      break label427;
                    }
                    if ((paramHSV.v >= 0.18D) && (paramHSV.v < 0.3D)) {
                      return 61;
                    }
                    if ((paramHSV.v >= 0.3D) && (paramHSV.v < 0.75D)) {
                      return 62;
                    }
                    if ((paramHSV.v >= 0.75D) && (paramHSV.v < 0.85D)) {
                      return 63;
                    }
                    bool7 = paramHSV.v < 0.85D;
                    j = 0;
                  } while (bool7);
                  bool8 = paramHSV.v < 1.0D;
                  j = 0;
                } while (bool8);
                return 64;
                if ((paramHSV.s < 0.18D) || (paramHSV.s > 0.23D)) {
                  break label577;
                }
                if ((paramHSV.v >= 0.83D) && (paramHSV.v <= 1.0D)) {
                  return i + 10;
                }
                if ((paramHSV.v >= 0.78D) && (paramHSV.v < 0.83D)) {
                  return i + 20;
                }
                if ((paramHSV.v >= 0.23D) && (paramHSV.v < 0.78D)) {
                  return i + 30;
                }
                bool5 = paramHSV.v < 0.18D;
                j = 0;
              } while (bool5);
              bool6 = paramHSV.v < 0.23D;
              j = 0;
            } while (!bool6);
            return i + 40;
            bool1 = paramHSV.s < 0.23D;
            j = 0;
          } while (bool1);
          bool2 = paramHSV.s < 1.0D;
          j = 0;
        } while (bool2);
        if ((paramHSV.v >= 0.18D) && (paramHSV.v < 0.23D)) {
          return i + 50;
        }
        bool3 = paramHSV.v < 0.23D;
        j = 0;
      } while (bool3);
      bool4 = paramHSV.v < 1.0D;
      j = 0;
    } while (bool4);
    return i;
  }
  
  public static HSV RGB2HSV(char paramChar1, char paramChar2, char paramChar3)
  {
    HSV localHSV = new HSV();
    char c1;
    label22:
    char c2;
    if (paramChar1 > paramChar2)
    {
      c1 = paramChar1;
      if (c1 <= paramChar3) {
        break label71;
      }
      if (paramChar1 >= paramChar2) {
        break label77;
      }
      c2 = paramChar1;
      label30:
      if (c2 >= paramChar3) {
        break label83;
      }
    }
    for (;;)
    {
      if (c1 != c2) {
        break label89;
      }
      localHSV.H = 0;
      localHSV.s = 0.0F;
      localHSV.v = (c1 / 255.0F);
      return localHSV;
      c1 = paramChar2;
      break;
      label71:
      c1 = paramChar3;
      break label22;
      label77:
      c2 = paramChar2;
      break label30;
      label83:
      c2 = paramChar3;
    }
    label89:
    if (paramChar1 == c1)
    {
      localHSV.H = (60 * (paramChar2 - paramChar3) / (c1 - c2));
      if (localHSV.H < 0) {
        localHSV.H = (360 + localHSV.H);
      }
    }
    for (;;)
    {
      localHSV.v = (c1 / 255.0F);
      localHSV.s = ((c1 - c2) / c1);
      return localHSV;
      if (paramChar2 == c1) {
        localHSV.H = ((int)(60.0D * (2.0D + (paramChar3 - paramChar1) / (c1 - c2))));
      } else {
        localHSV.H = ((int)(60.0D * (4.0D + (paramChar1 - paramChar2) / (c1 - c2))));
      }
    }
  }
  
  public static class HSV
  {
    public int H = 0;
    public float s = 0.0F;
    public float v = 0.0F;
  }
  
  public static class RGB
  {
    public int B = 0;
    public int G = 0;
    public int R = 0;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.Algorithm
 * JD-Core Version:    0.7.0.1
 */