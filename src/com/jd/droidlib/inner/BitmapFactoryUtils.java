package com.jd.droidlib.inner;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Point;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.util.Pair;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import com.jd.droidlib.util.L;
import java.io.IOException;

public class BitmapFactoryUtils
{
  public static Point calcDecodeSizeHint(ImageView paramImageView)
  {
    Point localPoint = new Point();
    ViewGroup.LayoutParams localLayoutParams = paramImageView.getLayoutParams();
    int i;
    if (localLayoutParams != null)
    {
      i = localLayoutParams.width;
      localPoint.x = i;
      if (localLayoutParams == null) {
        break label111;
      }
    }
    label111:
    for (int j = localLayoutParams.height;; j = paramImageView.getHeight())
    {
      localPoint.y = j;
      if ((localPoint.x <= 0) || (localPoint.y <= 0))
      {
        DisplayMetrics localDisplayMetrics = paramImageView.getContext().getResources().getDisplayMetrics();
        if (localPoint.x <= 0) {
          localPoint.x = localDisplayMetrics.widthPixels;
        }
        if (localPoint.y <= 0) {
          localPoint.y = localDisplayMetrics.heightPixels;
        }
      }
      return localPoint;
      i = paramImageView.getWidth();
      break;
    }
  }
  
  private static int calcInSampleSize(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
  {
    int i = paramOptions.outHeight;
    int j = paramOptions.outWidth;
    int k = 1;
    int n;
    if ((i > paramInt2) || (j > paramInt1))
    {
      int m = 1;
      if (paramInt2 > 0) {
        m = Math.round(i / paramInt2);
      }
      n = 1;
      if (paramInt1 > 0) {
        n = Math.round(j / paramInt1);
      }
      if (m < n) {
        k = m;
      }
    }
    else
    {
      return k;
    }
    return n;
  }
  
  public static Pair<Bitmap, BitmapFactory.Options> decodeScaled(byte[] paramArrayOfByte, int paramInt1, int paramInt2, Bitmap.Config paramConfig, Bitmap paramBitmap)
    throws Exception
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    int i;
    if ((paramInt1 <= 0) && (paramInt2 <= 0))
    {
      i = 0;
      if (paramConfig == null) {
        break label136;
      }
    }
    Bitmap localBitmap1;
    label136:
    for (int j = 1;; j = 0)
    {
      if ((i != 0) || (j != 0))
      {
        if (j != 0) {
          localOptions.inPreferredConfig = paramConfig;
        }
        if (i != 0)
        {
          localOptions.inJustDecodeBounds = true;
          BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length, localOptions);
          localOptions.inSampleSize = calcInSampleSize(localOptions, paramInt1, paramInt2);
          localOptions.inJustDecodeBounds = false;
        }
        if (inBitmapSupported()) {
          localOptions.inBitmap = paramBitmap;
        }
      }
      try
      {
        Bitmap localBitmap2 = BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length, localOptions);
        localBitmap1 = localBitmap2;
      }
      catch (Throwable localThrowable1)
      {
        for (;;)
        {
          System.gc();
          if ((inBitmapSupported()) && (paramBitmap != null))
          {
            localOptions.inBitmap = null;
            try
            {
              localBitmap1 = BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length, localOptions);
              L.w(localThrowable1);
            }
            catch (Throwable localThrowable2)
            {
              System.gc();
              throw new Exception(localThrowable2);
            }
          }
        }
        throw new Exception(localThrowable1);
      }
      if (localBitmap1 != null) {
        break label208;
      }
      throw new IOException("BitmapFactory returned null.");
      i = 1;
      break;
    }
    label208:
    if ((localBitmap1.getWidth() <= 0) || (localBitmap1.getHeight() <= 0))
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(localBitmap1.getWidth());
      arrayOfObject[1] = Integer.valueOf(localBitmap1.getHeight());
      throw new IOException(String.format("Invalid Bitmap: w:%d, h:%d.", arrayOfObject));
    }
    return Pair.create(localBitmap1, localOptions);
  }
  
  private static boolean inBitmapSupported()
  {
    return Build.VERSION.SDK_INT >= 11;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.BitmapFactoryUtils
 * JD-Core Version:    0.7.0.1
 */