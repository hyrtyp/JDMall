package com.jd.common.images;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class JmagickUtils
{
  private static final Log log = LogFactory.getLog(JmagickUtils.class);
  
  static
  {
    System.setProperty("jmagick.systemclassloader", "no");
  }
  
  public static boolean forceResize(String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    if ((paramInt1 <= 0) || (paramInt2 <= 0)) {
      throw new IllegalArgumentException("Cann't height or width is less than 0");
    }
    return resize(paramString1, paramString2, paramInt1, paramInt2, false);
  }
  
  public static boolean resize(String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    return resize(paramString1, paramString2, paramInt1, paramInt2, true);
  }
  
  /* Error */
  private static boolean resize(String paramString1, String paramString2, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    // Byte code:
    //   0: iload_2
    //   1: ifgt +17 -> 18
    //   4: iload_3
    //   5: ifgt +13 -> 18
    //   8: new 33	java/lang/IllegalArgumentException
    //   11: dup
    //   12: ldc 48
    //   14: invokespecial 38	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   17: athrow
    //   18: aconst_null
    //   19: astore 5
    //   21: aconst_null
    //   22: astore 6
    //   24: new 50	magick/ImageInfo
    //   27: dup
    //   28: aload_0
    //   29: invokespecial 51	magick/ImageInfo:<init>	(Ljava/lang/String;)V
    //   32: astore 7
    //   34: new 53	magick/MagickImage
    //   37: dup
    //   38: aload 7
    //   40: invokespecial 56	magick/MagickImage:<init>	(Lmagick/ImageInfo;)V
    //   43: astore 8
    //   45: aload 8
    //   47: invokevirtual 60	magick/MagickImage:getDimension	()Ljava/awt/Dimension;
    //   50: astore 13
    //   52: iload 4
    //   54: ifeq +23 -> 77
    //   57: iload_2
    //   58: ifgt +66 -> 124
    //   61: iload_3
    //   62: i2d
    //   63: aload 13
    //   65: invokevirtual 66	java/awt/Dimension:getHeight	()D
    //   68: ddiv
    //   69: aload 13
    //   71: invokevirtual 69	java/awt/Dimension:getWidth	()D
    //   74: dmul
    //   75: d2i
    //   76: istore_2
    //   77: aload 8
    //   79: iload_2
    //   80: iload_3
    //   81: invokevirtual 73	magick/MagickImage:scaleImage	(II)Lmagick/MagickImage;
    //   84: astore 6
    //   86: aload 6
    //   88: aload_1
    //   89: invokevirtual 76	magick/MagickImage:setFileName	(Ljava/lang/String;)V
    //   92: aload 6
    //   94: aload 7
    //   96: invokevirtual 80	magick/MagickImage:writeImage	(Lmagick/ImageInfo;)Z
    //   99: istore 14
    //   101: aload 6
    //   103: ifnull +8 -> 111
    //   106: aload 6
    //   108: invokevirtual 83	magick/MagickImage:destroyImages	()V
    //   111: aload 8
    //   113: ifnull +8 -> 121
    //   116: aload 8
    //   118: invokevirtual 83	magick/MagickImage:destroyImages	()V
    //   121: iload 14
    //   123: ireturn
    //   124: iload_3
    //   125: ifgt +26 -> 151
    //   128: iload_2
    //   129: i2d
    //   130: dstore 25
    //   132: dload 25
    //   134: aload 13
    //   136: invokevirtual 69	java/awt/Dimension:getWidth	()D
    //   139: ddiv
    //   140: aload 13
    //   142: invokevirtual 66	java/awt/Dimension:getHeight	()D
    //   145: dmul
    //   146: d2i
    //   147: istore_3
    //   148: goto -71 -> 77
    //   151: iload_2
    //   152: i2d
    //   153: aload 13
    //   155: invokevirtual 69	java/awt/Dimension:getWidth	()D
    //   158: ddiv
    //   159: dstore 17
    //   161: iload_3
    //   162: i2d
    //   163: aload 13
    //   165: invokevirtual 66	java/awt/Dimension:getHeight	()D
    //   168: ddiv
    //   169: dstore 19
    //   171: dload 17
    //   173: dload 19
    //   175: dcmpl
    //   176: istore 21
    //   178: aconst_null
    //   179: astore 6
    //   181: iload 21
    //   183: ifle +16 -> 199
    //   186: dload 19
    //   188: aload 13
    //   190: invokevirtual 69	java/awt/Dimension:getWidth	()D
    //   193: dmul
    //   194: d2i
    //   195: istore_2
    //   196: goto -119 -> 77
    //   199: dload 19
    //   201: dload 17
    //   203: dcmpl
    //   204: istore 22
    //   206: aconst_null
    //   207: astore 6
    //   209: iload 22
    //   211: ifle -134 -> 77
    //   214: aload 13
    //   216: invokevirtual 66	java/awt/Dimension:getHeight	()D
    //   219: dstore 23
    //   221: dload 23
    //   223: dload 17
    //   225: dmul
    //   226: d2i
    //   227: istore_3
    //   228: goto -151 -> 77
    //   231: astore 16
    //   233: getstatic 26	com/jd/common/images/JmagickUtils:log	Lorg/apache/commons/logging/Log;
    //   236: ldc 85
    //   238: aload 16
    //   240: invokeinterface 91 3 0
    //   245: goto -134 -> 111
    //   248: astore 15
    //   250: getstatic 26	com/jd/common/images/JmagickUtils:log	Lorg/apache/commons/logging/Log;
    //   253: ldc 85
    //   255: aload 15
    //   257: invokeinterface 91 3 0
    //   262: iload 14
    //   264: ireturn
    //   265: astore 9
    //   267: new 93	java/lang/RuntimeException
    //   270: dup
    //   271: ldc 95
    //   273: aload 9
    //   275: invokespecial 98	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   278: athrow
    //   279: astore 10
    //   281: aload 6
    //   283: ifnull +8 -> 291
    //   286: aload 6
    //   288: invokevirtual 83	magick/MagickImage:destroyImages	()V
    //   291: aload 5
    //   293: ifnull +8 -> 301
    //   296: aload 5
    //   298: invokevirtual 83	magick/MagickImage:destroyImages	()V
    //   301: aload 10
    //   303: athrow
    //   304: astore 12
    //   306: getstatic 26	com/jd/common/images/JmagickUtils:log	Lorg/apache/commons/logging/Log;
    //   309: ldc 85
    //   311: aload 12
    //   313: invokeinterface 91 3 0
    //   318: goto -27 -> 291
    //   321: astore 11
    //   323: getstatic 26	com/jd/common/images/JmagickUtils:log	Lorg/apache/commons/logging/Log;
    //   326: ldc 85
    //   328: aload 11
    //   330: invokeinterface 91 3 0
    //   335: goto -34 -> 301
    //   338: astore 10
    //   340: aload 8
    //   342: astore 5
    //   344: goto -63 -> 281
    //   347: astore 9
    //   349: aload 8
    //   351: astore 5
    //   353: goto -86 -> 267
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	356	0	paramString1	String
    //   0	356	1	paramString2	String
    //   0	356	2	paramInt1	int
    //   0	356	3	paramInt2	int
    //   0	356	4	paramBoolean	boolean
    //   19	333	5	localObject1	Object
    //   22	265	6	localMagickImage1	magick.MagickImage
    //   32	63	7	localImageInfo	magick.ImageInfo
    //   43	307	8	localMagickImage2	magick.MagickImage
    //   265	9	9	localMagickException1	magick.MagickException
    //   347	1	9	localMagickException2	magick.MagickException
    //   279	23	10	localObject2	Object
    //   338	1	10	localObject3	Object
    //   321	8	11	localException1	java.lang.Exception
    //   304	8	12	localException2	java.lang.Exception
    //   50	165	13	localDimension	java.awt.Dimension
    //   99	164	14	bool1	boolean
    //   248	8	15	localException3	java.lang.Exception
    //   231	8	16	localException4	java.lang.Exception
    //   159	65	17	d1	double
    //   169	31	19	d2	double
    //   176	6	21	bool2	boolean
    //   204	6	22	bool3	boolean
    //   219	3	23	d3	double
    //   130	3	25	d4	double
    // Exception table:
    //   from	to	target	type
    //   106	111	231	java/lang/Exception
    //   116	121	248	java/lang/Exception
    //   24	45	265	magick/MagickException
    //   24	45	279	finally
    //   267	279	279	finally
    //   286	291	304	java/lang/Exception
    //   296	301	321	java/lang/Exception
    //   45	52	338	finally
    //   61	77	338	finally
    //   77	101	338	finally
    //   132	148	338	finally
    //   151	171	338	finally
    //   186	196	338	finally
    //   214	221	338	finally
    //   45	52	347	magick/MagickException
    //   61	77	347	magick/MagickException
    //   77	101	347	magick/MagickException
    //   132	148	347	magick/MagickException
    //   151	171	347	magick/MagickException
    //   186	196	347	magick/MagickException
    //   214	221	347	magick/MagickException
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.images.JmagickUtils
 * JD-Core Version:    0.7.0.1
 */