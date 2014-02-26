package com.novoda.imageloader.core.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.cache.GlobalImageCache;
import com.novoda.imageloader.core.cache.LruBitmapCache;
import java.io.Closeable;
import java.io.File;

public class BitmapUtil
{
  private static final int BUFFER_SIZE = 65536;
  
  private void closeSilently(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (Exception localException) {}
  }
  
  /* Error */
  private Bitmap decodeFile(File paramFile, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: aload_1
    //   4: iload_2
    //   5: invokespecial 28	com/novoda/imageloader/core/bitmap/BitmapUtil:evaluateScale	(Ljava/io/File;I)I
    //   8: istore 6
    //   10: new 30	android/graphics/BitmapFactory$Options
    //   13: dup
    //   14: invokespecial 31	android/graphics/BitmapFactory$Options:<init>	()V
    //   17: astore 7
    //   19: aload 7
    //   21: iload 6
    //   23: putfield 34	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   26: aload 7
    //   28: ldc 7
    //   30: newarray byte
    //   32: putfield 38	android/graphics/BitmapFactory$Options:inTempStorage	[B
    //   35: aload 7
    //   37: getstatic 44	android/graphics/Bitmap$Config:RGB_565	Landroid/graphics/Bitmap$Config;
    //   40: putfield 47	android/graphics/BitmapFactory$Options:inPreferredConfig	Landroid/graphics/Bitmap$Config;
    //   43: aload 7
    //   45: iconst_1
    //   46: putfield 51	android/graphics/BitmapFactory$Options:inPurgeable	Z
    //   49: new 53	java/io/FileInputStream
    //   52: dup
    //   53: aload_1
    //   54: invokespecial 56	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   57: astore 8
    //   59: aload 8
    //   61: aconst_null
    //   62: aload 7
    //   64: invokestatic 62	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   67: astore 10
    //   69: aload_0
    //   70: aload 8
    //   72: invokespecial 64	com/novoda/imageloader/core/bitmap/BitmapUtil:closeSilently	(Ljava/io/Closeable;)V
    //   75: aload 10
    //   77: areturn
    //   78: astore 5
    //   80: aload_0
    //   81: aload_3
    //   82: invokespecial 64	com/novoda/imageloader/core/bitmap/BitmapUtil:closeSilently	(Ljava/io/Closeable;)V
    //   85: aconst_null
    //   86: areturn
    //   87: astore 4
    //   89: aload_0
    //   90: aload_3
    //   91: invokespecial 64	com/novoda/imageloader/core/bitmap/BitmapUtil:closeSilently	(Ljava/io/Closeable;)V
    //   94: aload 4
    //   96: athrow
    //   97: astore 4
    //   99: aload 8
    //   101: astore_3
    //   102: goto -13 -> 89
    //   105: astore 9
    //   107: aload 8
    //   109: astore_3
    //   110: goto -30 -> 80
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	113	0	this	BitmapUtil
    //   0	113	1	paramFile	File
    //   0	113	2	paramInt	int
    //   1	109	3	localObject1	Object
    //   87	8	4	localObject2	Object
    //   97	1	4	localObject3	Object
    //   78	1	5	localThrowable1	Throwable
    //   8	14	6	i	int
    //   17	46	7	localOptions	BitmapFactory.Options
    //   57	51	8	localFileInputStream	java.io.FileInputStream
    //   105	1	9	localThrowable2	Throwable
    //   67	9	10	localBitmap	Bitmap
    // Exception table:
    //   from	to	target	type
    //   2	59	78	java/lang/Throwable
    //   2	59	87	finally
    //   59	69	97	finally
    //   59	69	105	java/lang/Throwable
  }
  
  private Bitmap decodeFileAndScale2(File paramFile, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    Bitmap localBitmap1 = decodeFile(paramFile, paramInt1, paramInt2);
    Bitmap localBitmap2;
    if (localBitmap1 == null) {
      localBitmap2 = null;
    }
    int i;
    int j;
    do
    {
      return localBitmap2;
      localBitmap2 = localBitmap1;
      i = localBitmap2.getHeight();
      j = localBitmap2.getWidth();
    } while ((!paramBoolean) && (i <= paramInt2) && (j <= paramInt1));
    float f = 0.0F;
    if (i > 0)
    {
      f = 0.0F;
      if (j > 0) {
        f = Math.min(paramInt2 / i, paramInt1 / j);
      }
    }
    if (f == 0.0F) {
      if (i <= j) {
        break label178;
      }
    }
    label178:
    for (f = paramInt2 / i;; f = paramInt1 / j)
    {
      int k = new Float(f * i).intValue();
      int m = new Float(f * j).intValue();
      try
      {
        Bitmap localBitmap4 = Bitmap.createScaledBitmap(localBitmap2, m, k, true);
        localBitmap3 = localBitmap4;
      }
      catch (Throwable localThrowable)
      {
        for (;;)
        {
          Bitmap localBitmap3 = null;
        }
      }
      if (localBitmap3 != localBitmap2) {
        recycle(localBitmap2);
      }
      return localBitmap3;
    }
  }
  
  /* Error */
  private void decodeFileToPopulateOptions(File paramFile, BitmapFactory.Options paramOptions)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 53	java/io/FileInputStream
    //   5: dup
    //   6: aload_1
    //   7: invokespecial 56	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   10: astore 4
    //   12: aload 4
    //   14: aconst_null
    //   15: aload_2
    //   16: invokestatic 62	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   19: pop
    //   20: aload_0
    //   21: aload 4
    //   23: invokespecial 64	com/novoda/imageloader/core/bitmap/BitmapUtil:closeSilently	(Ljava/io/Closeable;)V
    //   26: aload_0
    //   27: aload 4
    //   29: invokespecial 64	com/novoda/imageloader/core/bitmap/BitmapUtil:closeSilently	(Ljava/io/Closeable;)V
    //   32: return
    //   33: astore 8
    //   35: aload_0
    //   36: aload_3
    //   37: invokespecial 64	com/novoda/imageloader/core/bitmap/BitmapUtil:closeSilently	(Ljava/io/Closeable;)V
    //   40: return
    //   41: astore 6
    //   43: aload_0
    //   44: aload_3
    //   45: invokespecial 64	com/novoda/imageloader/core/bitmap/BitmapUtil:closeSilently	(Ljava/io/Closeable;)V
    //   48: aload 6
    //   50: athrow
    //   51: astore 6
    //   53: aload 4
    //   55: astore_3
    //   56: goto -13 -> 43
    //   59: astore 5
    //   61: aload 4
    //   63: astore_3
    //   64: goto -29 -> 35
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	67	0	this	BitmapUtil
    //   0	67	1	paramFile	File
    //   0	67	2	paramOptions	BitmapFactory.Options
    //   1	63	3	localObject1	Object
    //   10	52	4	localFileInputStream	java.io.FileInputStream
    //   59	1	5	localThrowable1	Throwable
    //   41	8	6	localObject2	Object
    //   51	1	6	localObject3	Object
    //   33	1	8	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   2	12	33	java/lang/Throwable
    //   2	12	41	finally
    //   12	26	51	finally
    //   12	26	59	java/lang/Throwable
  }
  
  private int evaluateScale(File paramFile, int paramInt)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = true;
    decodeFileToPopulateOptions(paramFile, localOptions);
    return calculateScale(paramInt, localOptions.outWidth, localOptions.outHeight);
  }
  
  private void recycle(Bitmap paramBitmap)
  {
    try
    {
      paramBitmap.recycle();
      return;
    }
    catch (Exception localException) {}
  }
  
  private void updateLastModifiedForCache(File paramFile)
  {
    paramFile.setLastModified(System.currentTimeMillis());
  }
  
  int calculateScale(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = 1;
    for (;;)
    {
      if ((paramInt2 / 2 < paramInt1) || (paramInt3 / 2 < paramInt1)) {
        return i;
      }
      paramInt2 /= 2;
      paramInt3 /= 2;
      i *= 2;
    }
  }
  
  public Bitmap createBitmapWithClean(File paramFile, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    Bitmap localBitmap = null;
    for (int i = 0;; i++)
    {
      if (i >= 2) {}
      do
      {
        return localBitmap;
        localBitmap = decodeFileAndScale2(paramFile, paramInt1, paramInt2, paramBoolean);
      } while ((localBitmap != null) && (!localBitmap.isRecycled()));
      GlobalImageCache.getLruBitmapCache().cleanMost();
    }
  }
  
  public Bitmap decodeFile(File paramFile, int paramInt1, int paramInt2)
  {
    updateLastModifiedForCache(paramFile);
    int i = paramInt2;
    if (paramInt1 > paramInt2) {
      i = paramInt1;
    }
    Bitmap localBitmap = decodeFile(paramFile, i);
    if (localBitmap == null) {
      localBitmap = null;
    }
    return localBitmap;
  }
  
  @Deprecated
  public Bitmap decodeFileAndScale(File paramFile, int paramInt1, int paramInt2)
  {
    return decodeFileAndScale(paramFile, paramInt1, paramInt2, false);
  }
  
  public Bitmap decodeFileAndScale(File paramFile, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    Bitmap localBitmap = decodeFile(paramFile, paramInt1, paramInt2);
    if (localBitmap == null) {
      return null;
    }
    return scaleBitmap(localBitmap, paramInt1, paramInt2, paramBoolean);
  }
  
  /* Error */
  public Bitmap decodeInputStream(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: aload_1
    //   1: aconst_null
    //   2: aconst_null
    //   3: invokestatic 62	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   6: astore 4
    //   8: aload_0
    //   9: aload_1
    //   10: invokespecial 64	com/novoda/imageloader/core/bitmap/BitmapUtil:closeSilently	(Ljava/io/Closeable;)V
    //   13: aload 4
    //   15: areturn
    //   16: astore_3
    //   17: aload_0
    //   18: aload_1
    //   19: invokespecial 64	com/novoda/imageloader/core/bitmap/BitmapUtil:closeSilently	(Ljava/io/Closeable;)V
    //   22: aconst_null
    //   23: areturn
    //   24: astore_2
    //   25: aload_0
    //   26: aload_1
    //   27: invokespecial 64	com/novoda/imageloader/core/bitmap/BitmapUtil:closeSilently	(Ljava/io/Closeable;)V
    //   30: aload_2
    //   31: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	32	0	this	BitmapUtil
    //   0	32	1	paramInputStream	java.io.InputStream
    //   24	7	2	localObject	Object
    //   16	1	3	localThrowable	Throwable
    //   6	8	4	localBitmap	Bitmap
    // Exception table:
    //   from	to	target	type
    //   0	8	16	java/lang/Throwable
    //   0	8	24	finally
  }
  
  public Bitmap decodeResourceBitmap(Context paramContext, int paramInt1, int paramInt2, int paramInt3)
  {
    try
    {
      Bitmap localBitmap = BitmapFactory.decodeResource(paramContext.getResources(), paramInt3);
      return localBitmap;
    }
    catch (Throwable localThrowable) {}
    return null;
  }
  
  public Bitmap decodeResourceBitmapAndScale(Context paramContext, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    try
    {
      Bitmap localBitmap = scaleBitmap(BitmapFactory.decodeResource(paramContext.getResources(), paramInt3), paramInt1, paramInt2, paramBoolean);
      return localBitmap;
    }
    catch (Throwable localThrowable) {}
    return null;
  }
  
  public Bitmap scaleBitmap(Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    return scaleBitmap(paramBitmap, paramInt1, paramInt2, false);
  }
  
  public Bitmap scaleBitmap(Bitmap paramBitmap, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i = 1;
    int j = paramBitmap.getHeight();
    int k = paramBitmap.getWidth();
    if (((k > DPIUtil.dip2px(666.0F)) || (j > DPIUtil.dip2px(666.0F))) && (paramInt1 == 0) && (paramInt2 == 0))
    {
      paramInt1 = DPIUtil.dip2px(666.0F);
      paramInt2 = DPIUtil.dip2px(666.0F);
    }
    if (((paramInt1 == 0) && (paramInt2 == 0)) || ((!paramBoolean) && (j <= paramInt2) && (k <= paramInt1))) {}
    label209:
    label218:
    for (;;)
    {
      return paramBitmap;
      if (paramInt2 == 0)
      {
        i = 0;
        if (i == 0) {
          break label209;
        }
      }
      for (float f = paramInt2 / j;; f = paramInt1 / k)
      {
        if ((!paramBoolean) && (f > 1.0F)) {
          break label218;
        }
        int m = new Float(f * j).intValue();
        int n = new Float(f * k).intValue();
        try
        {
          Bitmap localBitmap2 = Bitmap.createScaledBitmap(paramBitmap, n, m, true);
          localBitmap1 = localBitmap2;
        }
        catch (Throwable localThrowable)
        {
          for (;;)
          {
            Bitmap localBitmap1 = null;
          }
        }
        if (paramBitmap != localBitmap1) {
          recycle(paramBitmap);
        }
        return localBitmap1;
        if (paramInt1 == 0)
        {
          i = 1;
          break;
        }
        if (j > k) {
          break;
        }
        for (;;)
        {
          i = 0;
        }
      }
    }
  }
  
  @Deprecated
  public Bitmap scaleResourceBitmap(Context paramContext, int paramInt1, int paramInt2, int paramInt3)
  {
    return decodeResourceBitmapAndScale(paramContext, paramInt1, paramInt2, paramInt3, false);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.novoda.imageloader.core.bitmap.BitmapUtil
 * JD-Core Version:    0.7.0.1
 */