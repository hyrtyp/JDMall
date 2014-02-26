package com.jingdong.app.mall.search;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import com.drew.imaging.jpeg.JpegMetadataReader;
import com.drew.metadata.Directory;
import com.drew.metadata.Metadata;
import com.drew.metadata.exif.ExifDirectory;
import java.io.File;
import java.io.FileInputStream;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ImageTools
{
  private static int count = 0;
  
  public static boolean checkFileSizeIsBig(File paramFile)
  {
    return (paramFile.isFile()) && (paramFile.exists()) && (paramFile.length() > 8192000L);
  }
  
  public static int correctOrientation(File paramFile)
  {
    try
    {
      String str1 = JpegMetadataReader.readMetadata(new FileInputStream(paramFile)).getDirectory(ExifDirectory.class).getDescription(274);
      int i = 0;
      if (str1 != null)
      {
        Matcher localMatcher = Pattern.compile("(\\d{1,3})").matcher(str1);
        boolean bool = localMatcher.find();
        i = 0;
        if (bool)
        {
          String str2 = localMatcher.group(1);
          i = 0;
          if (str2 != null)
          {
            int j = Integer.parseInt(str2);
            i = j;
          }
        }
      }
      return i;
    }
    catch (Throwable localThrowable) {}
    return 0;
  }
  
  public static Bitmap reduce(Resources paramResources, int paramInt1, int paramInt2)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inDither = false;
    localOptions.inPurgeable = true;
    localOptions.inInputShareable = true;
    localOptions.inTempStorage = new byte[16384];
    if (paramInt2 <= 0) {
      paramInt2 = 1;
    }
    localOptions.inSampleSize = paramInt2;
    try
    {
      Bitmap localBitmap3 = BitmapFactory.decodeResource(paramResources, paramInt1, localOptions);
      localBitmap1 = localBitmap3;
    }
    catch (Throwable localThrowable1)
    {
      do
      {
        Bitmap localBitmap1 = null;
      } while (0 != 0);
      try
      {
        localOptions.inSampleSize = (1 + localOptions.inSampleSize);
        Bitmap localBitmap2 = BitmapFactory.decodeResource(paramResources, paramInt1, localOptions);
        return localBitmap2;
      }
      catch (Throwable localThrowable2)
      {
        localThrowable2.printStackTrace();
      }
    }
    return localBitmap1;
    return null;
  }
  
  /* Error */
  public static Bitmap reduce(File paramFile)
  {
    // Byte code:
    //   0: new 89	android/graphics/BitmapFactory$Options
    //   3: dup
    //   4: invokespecial 90	android/graphics/BitmapFactory$Options:<init>	()V
    //   7: astore_1
    //   8: aload_1
    //   9: iconst_1
    //   10: putfield 124	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   13: aconst_null
    //   14: astore_2
    //   15: new 36	java/io/FileInputStream
    //   18: dup
    //   19: aload_0
    //   20: invokespecial 39	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   23: astore_3
    //   24: aload_3
    //   25: aconst_null
    //   26: aload_1
    //   27: invokestatic 128	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   30: pop
    //   31: aload_3
    //   32: ifnull +169 -> 201
    //   35: aload_3
    //   36: invokevirtual 131	java/io/FileInputStream:close	()V
    //   39: aload_1
    //   40: getfield 134	android/graphics/BitmapFactory$Options:outWidth	I
    //   43: aload_1
    //   44: getfield 137	android/graphics/BitmapFactory$Options:outHeight	I
    //   47: invokestatic 143	java/lang/Math:min	(II)I
    //   50: sipush 600
    //   53: idiv
    //   54: istore 6
    //   56: iload 6
    //   58: ifgt +6 -> 64
    //   61: iconst_1
    //   62: istore 6
    //   64: new 89	android/graphics/BitmapFactory$Options
    //   67: dup
    //   68: invokespecial 90	android/graphics/BitmapFactory$Options:<init>	()V
    //   71: astore 7
    //   73: aload 7
    //   75: iconst_0
    //   76: putfield 94	android/graphics/BitmapFactory$Options:inDither	Z
    //   79: aload 7
    //   81: iconst_1
    //   82: putfield 97	android/graphics/BitmapFactory$Options:inPurgeable	Z
    //   85: aload 7
    //   87: iconst_1
    //   88: putfield 100	android/graphics/BitmapFactory$Options:inInputShareable	Z
    //   91: aload 7
    //   93: sipush 16384
    //   96: newarray byte
    //   98: putfield 104	android/graphics/BitmapFactory$Options:inTempStorage	[B
    //   101: aload 7
    //   103: iload 6
    //   105: putfield 107	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   108: aconst_null
    //   109: astore 8
    //   111: new 36	java/io/FileInputStream
    //   114: dup
    //   115: aload_0
    //   116: invokespecial 39	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   119: astore 9
    //   121: aload 9
    //   123: aconst_null
    //   124: aload 7
    //   126: invokestatic 128	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   129: astore 17
    //   131: aload 17
    //   133: astore 11
    //   135: aload 9
    //   137: ifnull +170 -> 307
    //   140: aload 9
    //   142: invokevirtual 131	java/io/FileInputStream:close	()V
    //   145: aload 11
    //   147: areturn
    //   148: astore 24
    //   150: aload_2
    //   151: ifnull -112 -> 39
    //   154: aload_2
    //   155: invokevirtual 131	java/io/FileInputStream:close	()V
    //   158: goto -119 -> 39
    //   161: astore 5
    //   163: aload 5
    //   165: invokevirtual 144	java/io/IOException:printStackTrace	()V
    //   168: goto -129 -> 39
    //   171: astore 20
    //   173: aload_2
    //   174: ifnull +7 -> 181
    //   177: aload_2
    //   178: invokevirtual 131	java/io/FileInputStream:close	()V
    //   181: aload 20
    //   183: athrow
    //   184: astore 21
    //   186: aload 21
    //   188: invokevirtual 144	java/io/IOException:printStackTrace	()V
    //   191: goto -10 -> 181
    //   194: astore 23
    //   196: aload 23
    //   198: invokevirtual 144	java/io/IOException:printStackTrace	()V
    //   201: goto -162 -> 39
    //   204: astore 19
    //   206: aconst_null
    //   207: astore 11
    //   209: iconst_0
    //   210: ifne +29 -> 239
    //   213: aload 7
    //   215: iconst_1
    //   216: aload 7
    //   218: getfield 107	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   221: iadd
    //   222: putfield 107	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   225: aload 8
    //   227: aconst_null
    //   228: aload 7
    //   230: invokestatic 128	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   233: astore 16
    //   235: aload 16
    //   237: astore 11
    //   239: aload 8
    //   241: ifnull -96 -> 145
    //   244: aload 8
    //   246: invokevirtual 131	java/io/FileInputStream:close	()V
    //   249: aload 11
    //   251: areturn
    //   252: astore 12
    //   254: aload 12
    //   256: invokevirtual 144	java/io/IOException:printStackTrace	()V
    //   259: aload 11
    //   261: areturn
    //   262: astore 15
    //   264: aload 15
    //   266: invokevirtual 116	java/lang/Throwable:printStackTrace	()V
    //   269: aconst_null
    //   270: astore 11
    //   272: goto -33 -> 239
    //   275: astore 13
    //   277: aload 8
    //   279: ifnull +8 -> 287
    //   282: aload 8
    //   284: invokevirtual 131	java/io/FileInputStream:close	()V
    //   287: aload 13
    //   289: athrow
    //   290: astore 14
    //   292: aload 14
    //   294: invokevirtual 144	java/io/IOException:printStackTrace	()V
    //   297: goto -10 -> 287
    //   300: astore 18
    //   302: aload 18
    //   304: invokevirtual 144	java/io/IOException:printStackTrace	()V
    //   307: aload 11
    //   309: areturn
    //   310: astore 13
    //   312: aload 9
    //   314: astore 8
    //   316: goto -39 -> 277
    //   319: astore 10
    //   321: aload 9
    //   323: astore 8
    //   325: goto -119 -> 206
    //   328: astore 20
    //   330: aload_3
    //   331: astore_2
    //   332: goto -159 -> 173
    //   335: astore 4
    //   337: aload_3
    //   338: astore_2
    //   339: goto -189 -> 150
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	342	0	paramFile	File
    //   7	37	1	localOptions1	BitmapFactory.Options
    //   14	325	2	localObject1	Object
    //   23	315	3	localFileInputStream1	FileInputStream
    //   335	1	4	localFileNotFoundException1	java.io.FileNotFoundException
    //   161	3	5	localIOException1	java.io.IOException
    //   54	50	6	i	int
    //   71	158	7	localOptions2	BitmapFactory.Options
    //   109	215	8	localObject2	Object
    //   119	203	9	localFileInputStream2	FileInputStream
    //   319	1	10	localThrowable1	Throwable
    //   133	175	11	localObject3	Object
    //   252	3	12	localIOException2	java.io.IOException
    //   275	13	13	localObject4	Object
    //   310	1	13	localObject5	Object
    //   290	3	14	localIOException3	java.io.IOException
    //   262	3	15	localThrowable2	Throwable
    //   233	3	16	localBitmap1	Bitmap
    //   129	3	17	localBitmap2	Bitmap
    //   300	3	18	localIOException4	java.io.IOException
    //   204	1	19	localThrowable3	Throwable
    //   171	11	20	localObject6	Object
    //   328	1	20	localObject7	Object
    //   184	3	21	localIOException5	java.io.IOException
    //   194	3	23	localIOException6	java.io.IOException
    //   148	1	24	localFileNotFoundException2	java.io.FileNotFoundException
    // Exception table:
    //   from	to	target	type
    //   15	24	148	java/io/FileNotFoundException
    //   154	158	161	java/io/IOException
    //   15	24	171	finally
    //   177	181	184	java/io/IOException
    //   35	39	194	java/io/IOException
    //   111	121	204	java/lang/Throwable
    //   244	249	252	java/io/IOException
    //   213	235	262	java/lang/Throwable
    //   111	121	275	finally
    //   213	235	275	finally
    //   264	269	275	finally
    //   282	287	290	java/io/IOException
    //   140	145	300	java/io/IOException
    //   121	131	310	finally
    //   121	131	319	java/lang/Throwable
    //   24	31	328	finally
    //   24	31	335	java/io/FileNotFoundException
  }
  
  public static Bitmap zoomImg(File paramFile)
  {
    Object localObject = reduce(paramFile);
    if (localObject == null) {
      return null;
    }
    int i = ((Bitmap)localObject).getWidth();
    int j = ((Bitmap)localObject).getHeight();
    Math.min(i, j);
    Matrix localMatrix = new Matrix();
    int k = correctOrientation(paramFile);
    int m = 0;
    switch (k)
    {
    }
    for (;;)
    {
      if (m != 0) {}
      try
      {
        Bitmap localBitmap = Bitmap.createBitmap((Bitmap)localObject, 0, 0, i, j, localMatrix, true);
        localObject = localBitmap;
      }
      catch (Throwable localThrowable)
      {
        label109:
        break label109;
      }
      return localObject;
      if ((CameraPurchaseActivity.category_selected_index == 0) && (i > j))
      {
        localMatrix.setRotate(90.0F);
        m = 1;
      }
      else
      {
        m = 0;
        if (k == 180)
        {
          localMatrix.setRotate(k);
          m = 1;
          continue;
          localMatrix.setRotate(k);
          m = 1;
        }
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.search.ImageTools
 * JD-Core Version:    0.7.0.1
 */