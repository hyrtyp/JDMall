package com.jingdong.common.entity;

import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import java.io.File;

public class DiscussImage
{
  static final long LIMIT_IMAGE_SIZE = 51200L;
  private static final String TAG = DiscussImage.class.getSimpleName();
  private Uri path;
  private BitmapDrawable picture;
  private int rotate;
  
  /* Error */
  public static DiscussImage createDiscussImage(android.content.Context paramContext, Uri paramUri)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: aload_0
    //   7: invokevirtual 43	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   10: astore_2
    //   11: new 45	android/graphics/BitmapFactory$Options
    //   14: dup
    //   15: invokespecial 46	android/graphics/BitmapFactory$Options:<init>	()V
    //   18: astore_3
    //   19: aload_3
    //   20: aload_1
    //   21: invokevirtual 51	android/net/Uri:getPath	()Ljava/lang/String;
    //   24: invokestatic 55	com/jingdong/common/entity/DiscussImage:getFileSampleSize	(Ljava/lang/String;)I
    //   27: putfield 58	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   30: aconst_null
    //   31: astore 4
    //   33: aconst_null
    //   34: astore 5
    //   36: aconst_null
    //   37: astore 6
    //   39: iconst_0
    //   40: istore 7
    //   42: aload_2
    //   43: aload_1
    //   44: invokevirtual 64	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   47: astore 18
    //   49: aload 18
    //   51: astore 5
    //   53: aload 5
    //   55: aconst_null
    //   56: aload_3
    //   57: invokestatic 70	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   60: ldc 71
    //   62: invokestatic 77	com/jingdong/common/utils/DPIUtil:dip2px	(F)I
    //   65: ldc 71
    //   67: invokestatic 77	com/jingdong/common/utils/DPIUtil:dip2px	(F)I
    //   70: iconst_0
    //   71: invokestatic 83	android/graphics/Bitmap:createScaledBitmap	(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    //   74: astore 30
    //   76: aload 30
    //   78: astore 4
    //   80: aload_2
    //   81: aload_1
    //   82: invokevirtual 64	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   85: astore 6
    //   87: aload 6
    //   89: invokestatic 89	com/drew/imaging/jpeg/JpegMetadataReader:readMetadata	(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;
    //   92: ldc 91
    //   94: invokevirtual 97	com/drew/metadata/Metadata:getDirectory	(Ljava/lang/Class;)Lcom/drew/metadata/Directory;
    //   97: sipush 274
    //   100: invokevirtual 103	com/drew/metadata/Directory:getDescription	(I)Ljava/lang/String;
    //   103: astore 20
    //   105: iconst_0
    //   106: istore 7
    //   108: aload 20
    //   110: ifnull +53 -> 163
    //   113: ldc 105
    //   115: invokestatic 111	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   118: aload 20
    //   120: invokevirtual 115	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   123: astore 21
    //   125: aload 21
    //   127: invokevirtual 121	java/util/regex/Matcher:find	()Z
    //   130: istore 22
    //   132: iconst_0
    //   133: istore 7
    //   135: iload 22
    //   137: ifeq +26 -> 163
    //   140: aload 21
    //   142: iconst_1
    //   143: invokevirtual 124	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   146: astore 23
    //   148: iconst_0
    //   149: istore 7
    //   151: aload 23
    //   153: ifnull +10 -> 163
    //   156: aload 23
    //   158: invokestatic 129	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   161: istore 7
    //   163: iload 7
    //   165: ifeq +46 -> 211
    //   168: new 131	android/graphics/Matrix
    //   171: dup
    //   172: invokespecial 132	android/graphics/Matrix:<init>	()V
    //   175: astore 24
    //   177: aload 24
    //   179: iload 7
    //   181: i2f
    //   182: invokevirtual 136	android/graphics/Matrix:setRotate	(F)V
    //   185: aload 4
    //   187: iconst_0
    //   188: iconst_0
    //   189: aload 4
    //   191: invokevirtual 140	android/graphics/Bitmap:getWidth	()I
    //   194: aload 4
    //   196: invokevirtual 143	android/graphics/Bitmap:getHeight	()I
    //   199: aload 24
    //   201: iconst_1
    //   202: invokestatic 147	android/graphics/Bitmap:createBitmap	(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    //   205: astore 29
    //   207: aload 29
    //   209: astore 4
    //   211: aload 5
    //   213: ifnull +8 -> 221
    //   216: aload 5
    //   218: invokevirtual 152	java/io/InputStream:close	()V
    //   221: aload 6
    //   223: ifnull +8 -> 231
    //   226: aload 6
    //   228: invokevirtual 152	java/io/InputStream:close	()V
    //   231: new 2	com/jingdong/common/entity/DiscussImage
    //   234: dup
    //   235: invokespecial 153	com/jingdong/common/entity/DiscussImage:<init>	()V
    //   238: astore 16
    //   240: aload 16
    //   242: new 155	android/graphics/drawable/BitmapDrawable
    //   245: dup
    //   246: aload 4
    //   248: invokespecial 158	android/graphics/drawable/BitmapDrawable:<init>	(Landroid/graphics/Bitmap;)V
    //   251: invokevirtual 162	com/jingdong/common/entity/DiscussImage:setPicture	(Landroid/graphics/drawable/BitmapDrawable;)V
    //   254: aload 16
    //   256: aload_1
    //   257: invokevirtual 166	com/jingdong/common/entity/DiscussImage:setPath	(Landroid/net/Uri;)V
    //   260: aload 16
    //   262: iload 7
    //   264: invokevirtual 169	com/jingdong/common/entity/DiscussImage:setRotate	(I)V
    //   267: aload 16
    //   269: areturn
    //   270: astore 19
    //   272: invokestatic 175	com/jingdong/common/utils/cache/GlobalImageCache:getLruBitmapCache	()Lcom/novoda/imageloader/core/cache/LruBitmapCache;
    //   275: invokevirtual 180	com/novoda/imageloader/core/cache/LruBitmapCache:cleanMost	()V
    //   278: aload 5
    //   280: aconst_null
    //   281: aload_3
    //   282: invokestatic 70	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   285: ldc 71
    //   287: invokestatic 77	com/jingdong/common/utils/DPIUtil:dip2px	(F)I
    //   290: ldc 71
    //   292: invokestatic 77	com/jingdong/common/utils/DPIUtil:dip2px	(F)I
    //   295: iconst_0
    //   296: invokestatic 83	android/graphics/Bitmap:createScaledBitmap	(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    //   299: astore 4
    //   301: goto -221 -> 80
    //   304: astore 25
    //   306: invokestatic 175	com/jingdong/common/utils/cache/GlobalImageCache:getLruBitmapCache	()Lcom/novoda/imageloader/core/cache/LruBitmapCache;
    //   309: invokevirtual 180	com/novoda/imageloader/core/cache/LruBitmapCache:cleanMost	()V
    //   312: aload 4
    //   314: iconst_0
    //   315: iconst_0
    //   316: aload 4
    //   318: invokevirtual 140	android/graphics/Bitmap:getWidth	()I
    //   321: aload 4
    //   323: invokevirtual 143	android/graphics/Bitmap:getHeight	()I
    //   326: aload 24
    //   328: iconst_1
    //   329: invokestatic 147	android/graphics/Bitmap:createBitmap	(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    //   332: astore 26
    //   334: aload 26
    //   336: astore 4
    //   338: goto -127 -> 211
    //   341: astore 14
    //   343: aload 5
    //   345: ifnull +8 -> 353
    //   348: aload 5
    //   350: invokevirtual 152	java/io/InputStream:close	()V
    //   353: aload 6
    //   355: ifnull -124 -> 231
    //   358: aload 6
    //   360: invokevirtual 152	java/io/InputStream:close	()V
    //   363: goto -132 -> 231
    //   366: astore 15
    //   368: aload 15
    //   370: invokevirtual 183	java/io/IOException:printStackTrace	()V
    //   373: goto -142 -> 231
    //   376: astore 17
    //   378: aload 17
    //   380: invokevirtual 183	java/io/IOException:printStackTrace	()V
    //   383: goto -30 -> 353
    //   386: astore 11
    //   388: aload 5
    //   390: ifnull +8 -> 398
    //   393: aload 5
    //   395: invokevirtual 152	java/io/InputStream:close	()V
    //   398: aload 6
    //   400: ifnull +8 -> 408
    //   403: aload 6
    //   405: invokevirtual 152	java/io/InputStream:close	()V
    //   408: aconst_null
    //   409: areturn
    //   410: astore 13
    //   412: aload 13
    //   414: invokevirtual 183	java/io/IOException:printStackTrace	()V
    //   417: goto -19 -> 398
    //   420: astore 12
    //   422: aload 12
    //   424: invokevirtual 183	java/io/IOException:printStackTrace	()V
    //   427: goto -19 -> 408
    //   430: astore 8
    //   432: aload 5
    //   434: ifnull +8 -> 442
    //   437: aload 5
    //   439: invokevirtual 152	java/io/InputStream:close	()V
    //   442: aload 6
    //   444: ifnull +8 -> 452
    //   447: aload 6
    //   449: invokevirtual 152	java/io/InputStream:close	()V
    //   452: aload 8
    //   454: athrow
    //   455: astore 10
    //   457: aload 10
    //   459: invokevirtual 183	java/io/IOException:printStackTrace	()V
    //   462: goto -20 -> 442
    //   465: astore 9
    //   467: aload 9
    //   469: invokevirtual 183	java/io/IOException:printStackTrace	()V
    //   472: goto -20 -> 452
    //   475: astore 28
    //   477: aload 28
    //   479: invokevirtual 183	java/io/IOException:printStackTrace	()V
    //   482: goto -261 -> 221
    //   485: astore 27
    //   487: aload 27
    //   489: invokevirtual 183	java/io/IOException:printStackTrace	()V
    //   492: goto -261 -> 231
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	495	0	paramContext	android.content.Context
    //   0	495	1	paramUri	Uri
    //   10	71	2	localContentResolver	android.content.ContentResolver
    //   18	264	3	localOptions	android.graphics.BitmapFactory.Options
    //   31	306	4	localObject1	Object
    //   34	404	5	localObject2	Object
    //   37	411	6	localInputStream1	java.io.InputStream
    //   40	223	7	i	int
    //   430	23	8	localObject3	Object
    //   465	3	9	localIOException1	java.io.IOException
    //   455	3	10	localIOException2	java.io.IOException
    //   386	1	11	localThrowable1	java.lang.Throwable
    //   420	3	12	localIOException3	java.io.IOException
    //   410	3	13	localIOException4	java.io.IOException
    //   341	1	14	localJpegProcessingException	com.drew.imaging.jpeg.JpegProcessingException
    //   366	3	15	localIOException5	java.io.IOException
    //   238	30	16	localDiscussImage	DiscussImage
    //   376	3	17	localIOException6	java.io.IOException
    //   47	3	18	localInputStream2	java.io.InputStream
    //   270	1	19	localThrowable2	java.lang.Throwable
    //   103	16	20	str1	String
    //   123	18	21	localMatcher	java.util.regex.Matcher
    //   130	6	22	bool	boolean
    //   146	11	23	str2	String
    //   175	152	24	localMatrix	android.graphics.Matrix
    //   304	1	25	localThrowable3	java.lang.Throwable
    //   332	3	26	localBitmap1	android.graphics.Bitmap
    //   485	3	27	localIOException7	java.io.IOException
    //   475	3	28	localIOException8	java.io.IOException
    //   205	3	29	localBitmap2	android.graphics.Bitmap
    //   74	3	30	localBitmap3	android.graphics.Bitmap
    // Exception table:
    //   from	to	target	type
    //   53	76	270	java/lang/Throwable
    //   185	207	304	java/lang/Throwable
    //   42	49	341	com/drew/imaging/jpeg/JpegProcessingException
    //   53	76	341	com/drew/imaging/jpeg/JpegProcessingException
    //   80	105	341	com/drew/imaging/jpeg/JpegProcessingException
    //   113	132	341	com/drew/imaging/jpeg/JpegProcessingException
    //   140	148	341	com/drew/imaging/jpeg/JpegProcessingException
    //   156	163	341	com/drew/imaging/jpeg/JpegProcessingException
    //   168	185	341	com/drew/imaging/jpeg/JpegProcessingException
    //   185	207	341	com/drew/imaging/jpeg/JpegProcessingException
    //   272	301	341	com/drew/imaging/jpeg/JpegProcessingException
    //   306	334	341	com/drew/imaging/jpeg/JpegProcessingException
    //   358	363	366	java/io/IOException
    //   348	353	376	java/io/IOException
    //   42	49	386	java/lang/Throwable
    //   80	105	386	java/lang/Throwable
    //   113	132	386	java/lang/Throwable
    //   140	148	386	java/lang/Throwable
    //   156	163	386	java/lang/Throwable
    //   168	185	386	java/lang/Throwable
    //   272	301	386	java/lang/Throwable
    //   306	334	386	java/lang/Throwable
    //   393	398	410	java/io/IOException
    //   403	408	420	java/io/IOException
    //   42	49	430	finally
    //   53	76	430	finally
    //   80	105	430	finally
    //   113	132	430	finally
    //   140	148	430	finally
    //   156	163	430	finally
    //   168	185	430	finally
    //   185	207	430	finally
    //   272	301	430	finally
    //   306	334	430	finally
    //   437	442	455	java/io/IOException
    //   447	452	465	java/io/IOException
    //   216	221	475	java/io/IOException
    //   226	231	485	java/io/IOException
  }
  
  private static int getFileSampleSize(String paramString)
  {
    File localFile = new File(paramString);
    if ((localFile.isFile()) && (localFile.exists())) {
      return (int)(localFile.length() / 51200L);
    }
    return 4;
  }
  
  public Uri getPath()
  {
    return this.path;
  }
  
  public BitmapDrawable getPicture()
  {
    return this.picture;
  }
  
  public int getRotate()
  {
    return this.rotate;
  }
  
  public void setPath(Uri paramUri)
  {
    this.path = paramUri;
  }
  
  public void setPicture(BitmapDrawable paramBitmapDrawable)
  {
    this.picture = paramBitmapDrawable;
  }
  
  public void setRotate(int paramInt)
  {
    this.rotate = paramInt;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.DiscussImage
 * JD-Core Version:    0.7.0.1
 */