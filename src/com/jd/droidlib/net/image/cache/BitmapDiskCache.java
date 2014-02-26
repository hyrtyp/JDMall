package com.jd.droidlib.net.image.cache;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.util.Pair;
import com.jd.droidlib.util.IOUtils;
import com.jd.droidlib.util.L;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

public class BitmapDiskCache
{
  private static final String DEFAULT_DIR = "img";
  private static BitmapDiskCache instance;
  private final File cacheDir;
  
  public BitmapDiskCache(File paramFile)
  {
    this.cacheDir = paramFile;
    paramFile.mkdirs();
  }
  
  private File getCachedFile(String paramString)
  {
    return new File(this.cacheDir, String.valueOf(paramString.hashCode()));
  }
  
  public static BitmapDiskCache getDefaultInstance(Context paramContext)
  {
    if (instance == null)
    {
      File localFile = paramContext.getExternalCacheDir();
      if (localFile == null) {
        break label39;
      }
      instance = new BitmapDiskCache(new File(localFile, "img"));
    }
    for (;;)
    {
      return instance;
      label39:
      L.w("External cache dir null. Lacking 'android.permission.WRITE_EXTERNAL_STORAGE' permission?");
    }
  }
  
  /* Error */
  public Pair<Bitmap, android.graphics.BitmapFactory.Options> get(String paramString, int paramInt1, int paramInt2, android.graphics.Bitmap.Config paramConfig, Bitmap paramBitmap)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 66	com/jd/droidlib/net/image/cache/BitmapDiskCache:getCachedFile	(Ljava/lang/String;)Ljava/io/File;
    //   5: astore 6
    //   7: aload 6
    //   9: invokevirtual 69	java/io/File:exists	()Z
    //   12: istore 7
    //   14: aconst_null
    //   15: astore 8
    //   17: iload 7
    //   19: ifeq +54 -> 73
    //   22: aconst_null
    //   23: astore 11
    //   25: new 71	java/io/FileInputStream
    //   28: dup
    //   29: aload 6
    //   31: invokespecial 72	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   34: astore 12
    //   36: aload 12
    //   38: invokestatic 78	com/jd/droidlib/util/IOUtils:readToByteArray	(Ljava/io/InputStream;)[B
    //   41: iload_2
    //   42: iload_3
    //   43: aload 4
    //   45: aload 5
    //   47: invokestatic 84	com/jd/droidlib/inner/BitmapFactoryUtils:decodeScaled	([BIILandroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)Landroid/util/Pair;
    //   50: astore 8
    //   52: aload 6
    //   54: invokestatic 90	java/lang/System:currentTimeMillis	()J
    //   57: invokevirtual 94	java/io/File:setLastModified	(J)Z
    //   60: pop
    //   61: iconst_1
    //   62: anewarray 96	java/io/Closeable
    //   65: dup
    //   66: iconst_0
    //   67: aload 12
    //   69: aastore
    //   70: invokestatic 100	com/jd/droidlib/util/IOUtils:silentlyClose	([Ljava/io/Closeable;)V
    //   73: new 102	java/lang/StringBuilder
    //   76: dup
    //   77: ldc 104
    //   79: invokespecial 107	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   82: astore 9
    //   84: aload 8
    //   86: ifnonnull +75 -> 161
    //   89: ldc 109
    //   91: astore 10
    //   93: aload 9
    //   95: aload 10
    //   97: invokevirtual 113	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: ldc 115
    //   102: invokevirtual 113	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   108: iconst_1
    //   109: anewarray 4	java/lang/Object
    //   112: dup
    //   113: iconst_0
    //   114: aload_1
    //   115: aastore
    //   116: invokestatic 123	com/jd/droidlib/util/L:v	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   119: aload 8
    //   121: areturn
    //   122: astore 13
    //   124: aload 13
    //   126: invokestatic 60	com/jd/droidlib/util/L:w	(Ljava/lang/Object;)V
    //   129: iconst_1
    //   130: anewarray 96	java/io/Closeable
    //   133: dup
    //   134: iconst_0
    //   135: aload 11
    //   137: aastore
    //   138: invokestatic 100	com/jd/droidlib/util/IOUtils:silentlyClose	([Ljava/io/Closeable;)V
    //   141: goto -68 -> 73
    //   144: astore 14
    //   146: iconst_1
    //   147: anewarray 96	java/io/Closeable
    //   150: dup
    //   151: iconst_0
    //   152: aload 11
    //   154: aastore
    //   155: invokestatic 100	com/jd/droidlib/util/IOUtils:silentlyClose	([Ljava/io/Closeable;)V
    //   158: aload 14
    //   160: athrow
    //   161: ldc 125
    //   163: astore 10
    //   165: goto -72 -> 93
    //   168: astore 14
    //   170: aload 12
    //   172: astore 11
    //   174: goto -28 -> 146
    //   177: astore 13
    //   179: aload 12
    //   181: astore 11
    //   183: goto -59 -> 124
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	186	0	this	BitmapDiskCache
    //   0	186	1	paramString	String
    //   0	186	2	paramInt1	int
    //   0	186	3	paramInt2	int
    //   0	186	4	paramConfig	android.graphics.Bitmap.Config
    //   0	186	5	paramBitmap	Bitmap
    //   5	48	6	localFile	File
    //   12	6	7	bool	boolean
    //   15	105	8	localPair	Pair
    //   82	12	9	localStringBuilder	java.lang.StringBuilder
    //   91	73	10	str	String
    //   23	159	11	localObject1	Object
    //   34	146	12	localFileInputStream	java.io.FileInputStream
    //   122	3	13	localException1	Exception
    //   177	1	13	localException2	Exception
    //   144	15	14	localObject2	Object
    //   168	1	14	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   25	36	122	java/lang/Exception
    //   25	36	144	finally
    //   124	129	144	finally
    //   36	61	168	finally
    //   36	61	177	java/lang/Exception
  }
  
  public void purgeFilesAccessedBefore(long paramLong)
  {
    Iterator localIterator = IOUtils.getFileList(this.cacheDir, new String[0]).iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      File localFile = (File)localIterator.next();
      if (localFile.lastModified() < paramLong) {
        localFile.delete();
      }
    }
  }
  
  public boolean put(String paramString, Bitmap paramBitmap, Pair<Bitmap.CompressFormat, Integer> paramPair)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    try
    {
      paramBitmap.compress((Bitmap.CompressFormat)paramPair.first, ((Integer)paramPair.second).intValue(), localByteArrayOutputStream);
      boolean bool = put(paramString, localByteArrayOutputStream.toByteArray());
      return bool;
    }
    catch (Exception localException)
    {
      L.w(localException);
      return false;
    }
    finally
    {
      IOUtils.silentlyClose(new Closeable[] { localByteArrayOutputStream });
    }
  }
  
  /* Error */
  public boolean put(String paramString, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 66	com/jd/droidlib/net/image/cache/BitmapDiskCache:getCachedFile	(Ljava/lang/String;)Ljava/io/File;
    //   5: astore_3
    //   6: aconst_null
    //   7: astore 4
    //   9: new 188	java/io/BufferedOutputStream
    //   12: dup
    //   13: new 190	java/io/FileOutputStream
    //   16: dup
    //   17: aload_3
    //   18: invokespecial 191	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   21: sipush 8192
    //   24: invokespecial 194	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;I)V
    //   27: astore 5
    //   29: aload 5
    //   31: aload_2
    //   32: invokevirtual 198	java/io/BufferedOutputStream:write	([B)V
    //   35: iconst_1
    //   36: anewarray 96	java/io/Closeable
    //   39: dup
    //   40: iconst_0
    //   41: aload 5
    //   43: aastore
    //   44: invokestatic 100	com/jd/droidlib/util/IOUtils:silentlyClose	([Ljava/io/Closeable;)V
    //   47: iconst_1
    //   48: ireturn
    //   49: astore 6
    //   51: aload 6
    //   53: invokestatic 60	com/jd/droidlib/util/L:w	(Ljava/lang/Object;)V
    //   56: iconst_1
    //   57: anewarray 96	java/io/Closeable
    //   60: dup
    //   61: iconst_0
    //   62: aload 4
    //   64: aastore
    //   65: invokestatic 100	com/jd/droidlib/util/IOUtils:silentlyClose	([Ljava/io/Closeable;)V
    //   68: iconst_0
    //   69: ireturn
    //   70: astore 7
    //   72: iconst_1
    //   73: anewarray 96	java/io/Closeable
    //   76: dup
    //   77: iconst_0
    //   78: aload 4
    //   80: aastore
    //   81: invokestatic 100	com/jd/droidlib/util/IOUtils:silentlyClose	([Ljava/io/Closeable;)V
    //   84: aload 7
    //   86: athrow
    //   87: astore 7
    //   89: aload 5
    //   91: astore 4
    //   93: goto -21 -> 72
    //   96: astore 6
    //   98: aload 5
    //   100: astore 4
    //   102: goto -51 -> 51
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	105	0	this	BitmapDiskCache
    //   0	105	1	paramString	String
    //   0	105	2	paramArrayOfByte	byte[]
    //   5	13	3	localFile	File
    //   7	94	4	localObject1	Object
    //   27	72	5	localBufferedOutputStream	java.io.BufferedOutputStream
    //   49	3	6	localException1	Exception
    //   96	1	6	localException2	Exception
    //   70	15	7	localObject2	Object
    //   87	1	7	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   9	29	49	java/lang/Exception
    //   9	29	70	finally
    //   51	56	70	finally
    //   29	35	87	finally
    //   29	35	96	java/lang/Exception
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.net.image.cache.BitmapDiskCache
 * JD-Core Version:    0.7.0.1
 */