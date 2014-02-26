package com.jd.common.images;

import java.awt.AlphaComposite;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.Rectangle;
import java.awt.image.BufferedImage;
import java.io.InputStream;
import java.io.PrintStream;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;

public class ImageUtils
{
  public static final int POS_TYPE_CENTER = 5;
  public static final int POS_TYPE_LEFT_BOTTOM = 3;
  public static final int POS_TYPE_LEFT_TOP = 1;
  public static final int POS_TYPE_RIGHT_BOTTOM = 4;
  public static final int POS_TYPE_RIGHT_TOP = 2;
  
  private static BufferedImage bufferedBothMark(Image paramImage, String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramImage.getWidth(null);
    int j = paramImage.getHeight(null);
    BufferedImage localBufferedImage = new BufferedImage(i, j, 1);
    Graphics2D localGraphics2D = localBufferedImage.createGraphics();
    localGraphics2D.setColor(Color.white);
    localGraphics2D.drawImage(paramImage, 0, 0, null);
    localGraphics2D.setComposite(AlphaComposite.getInstance(10, 1.0F));
    int m;
    int n;
    int i1;
    int i2;
    int i3;
    if (paramString1 != null)
    {
      Image localImage = new ImageIcon(paramString1).getImage();
      int k = localImage.getWidth(null);
      m = localImage.getHeight(null);
      n = calcWatermarkPosX(i, k, paramInt1, paramInt3);
      i1 = calcWatermarkPosY(j, m, paramInt2, paramInt3);
      localGraphics2D.drawImage(localImage, n, i1, null);
      if ((paramString2 != null) && (paramString2.trim().length() > 0))
      {
        localGraphics2D.setFont(new Font("宋体", 0, m - 10));
        if ((paramInt3 != 1) && (paramInt3 != 3)) {
          break label218;
        }
        i2 = paramInt1 + (n + k);
        i3 = -10 + (i1 + m);
        localGraphics2D.drawString(paramString2, i2, i3);
      }
    }
    for (;;)
    {
      localGraphics2D.dispose();
      return localBufferedImage;
      label218:
      i2 = n - m * paramString2.length() - paramInt1;
      i3 = i1 + (m - 10);
      break;
      if ((paramString2 != null) && (paramString2.trim().length() > 0)) {
        localGraphics2D.drawString(paramString2, calcWatermarkPosX(i, 15 * paramString2.length(), paramInt1, paramInt3), calcWatermarkPosY(j, 15, paramInt2, paramInt3));
      }
    }
  }
  
  private static int calcWatermarkPosX(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = 0;
    switch (paramInt4)
    {
    }
    while (i >= 0)
    {
      return i;
      i = paramInt3;
      continue;
      i = paramInt1 - (paramInt2 + paramInt3);
      continue;
      i = (paramInt1 - paramInt2) / 2;
    }
    return 0;
  }
  
  private static int calcWatermarkPosY(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = 0;
    switch (paramInt4)
    {
    }
    while (i >= 0)
    {
      return i;
      i = paramInt3;
      continue;
      i = paramInt1 - (paramInt2 + paramInt3);
      continue;
      i = (paramInt1 - paramInt2) / 2;
    }
    return 0;
  }
  
  public static BufferedImage crop(BufferedImage paramBufferedImage, Rectangle paramRectangle)
  {
    return paramBufferedImage.getSubimage(paramRectangle.x, paramRectangle.y, paramRectangle.width, paramRectangle.height);
  }
  
  public static boolean generateMark(String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, int paramInt3)
    throws Exception
  {
    write(bufferedBothMark(new ImageIcon(paramString1).getImage(), paramString2, null, paramInt1, paramInt2, paramInt3), paramString3);
    return true;
  }
  
  /* Error */
  public static BufferedImage getBufferedImage(String paramString)
    throws java.io.IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 144	java/io/FileInputStream
    //   5: dup
    //   6: aload_0
    //   7: invokespecial 145	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   10: astore_2
    //   11: aload_2
    //   12: invokestatic 151	javax/imageio/ImageIO:read	(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;
    //   15: astore 5
    //   17: aload_2
    //   18: ifnull +7 -> 25
    //   21: aload_2
    //   22: invokevirtual 156	java/io/InputStream:close	()V
    //   25: aload 5
    //   27: areturn
    //   28: astore_3
    //   29: aload_1
    //   30: ifnull +7 -> 37
    //   33: aload_1
    //   34: invokevirtual 156	java/io/InputStream:close	()V
    //   37: aload_3
    //   38: athrow
    //   39: astore 4
    //   41: goto -4 -> 37
    //   44: astore 6
    //   46: aload 5
    //   48: areturn
    //   49: astore_3
    //   50: aload_2
    //   51: astore_1
    //   52: goto -23 -> 29
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	55	0	paramString	String
    //   1	51	1	localObject1	Object
    //   10	41	2	localFileInputStream	java.io.FileInputStream
    //   28	10	3	localObject2	Object
    //   49	1	3	localObject3	Object
    //   39	1	4	localIOException1	java.io.IOException
    //   15	32	5	localBufferedImage	BufferedImage
    //   44	1	6	localIOException2	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   2	11	28	finally
    //   33	37	39	java/io/IOException
    //   21	25	44	java/io/IOException
    //   11	17	49	finally
  }
  
  public static void main(String[] paramArrayOfString)
    throws Exception
  {
    long l1 = System.currentTimeMillis();
    resizeMaxAndMarkCenter("F:\\test-pic\\ccc.png", "F:\\test-pic\\reccc.jpg", "F:\\test-pic\\ware.png", 743, 800);
    long l2 = System.currentTimeMillis() - l1;
    System.out.println("used = " + l2);
  }
  
  public static boolean resize(InputStream paramInputStream, String paramString, int paramInt1, int paramInt2)
    throws Exception
  {
    BufferedImage localBufferedImage = ImageIO.read(paramInputStream);
    if (localBufferedImage == null) {
      return false;
    }
    write(resizeBuffered(localBufferedImage, paramInt1, paramInt2, false), paramString);
    return true;
  }
  
  /* Error */
  public static boolean resize(String paramString1, String paramString2, int paramInt1, int paramInt2)
    throws Exception
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: new 144	java/io/FileInputStream
    //   6: dup
    //   7: aload_0
    //   8: invokespecial 145	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   11: astore 5
    //   13: aload 5
    //   15: aload_1
    //   16: iload_2
    //   17: iload_3
    //   18: invokestatic 204	com/jd/common/images/ImageUtils:resize	(Ljava/io/InputStream;Ljava/lang/String;II)Z
    //   21: istore 8
    //   23: aload 5
    //   25: ifnull +8 -> 33
    //   28: aload 5
    //   30: invokevirtual 205	java/io/FileInputStream:close	()V
    //   33: iload 8
    //   35: ireturn
    //   36: astore 6
    //   38: aload 4
    //   40: ifnull +8 -> 48
    //   43: aload 4
    //   45: invokevirtual 205	java/io/FileInputStream:close	()V
    //   48: aload 6
    //   50: athrow
    //   51: astore 9
    //   53: iload 8
    //   55: ireturn
    //   56: astore 7
    //   58: goto -10 -> 48
    //   61: astore 6
    //   63: aload 5
    //   65: astore 4
    //   67: goto -29 -> 38
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	70	0	paramString1	String
    //   0	70	1	paramString2	String
    //   0	70	2	paramInt1	int
    //   0	70	3	paramInt2	int
    //   1	65	4	localObject1	Object
    //   11	53	5	localFileInputStream	java.io.FileInputStream
    //   36	13	6	localObject2	Object
    //   61	1	6	localObject3	Object
    //   56	1	7	localIOException1	java.io.IOException
    //   21	33	8	bool	boolean
    //   51	1	9	localIOException2	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   3	13	36	finally
    //   28	33	51	java/io/IOException
    //   43	48	56	java/io/IOException
    //   13	23	61	finally
  }
  
  public static boolean resizeAndBothMark(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt1, int paramInt2)
    throws Exception
  {
    BufferedImage localBufferedImage = getBufferedImage(paramString1);
    if (localBufferedImage == null) {
      return false;
    }
    write(bufferedBothMark(resizeBuffered(localBufferedImage, paramInt1, paramInt2, false), paramString3, paramString4, 5, 5, 4), paramString2);
    return true;
  }
  
  public static boolean resizeAndMark(String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2)
    throws Exception
  {
    BufferedImage localBufferedImage = getBufferedImage(paramString1);
    if (localBufferedImage == null) {
      return false;
    }
    write(bufferedBothMark(resizeBuffered(localBufferedImage, paramInt1, paramInt2, false), paramString3, null, 5, 5, 4), paramString2);
    return true;
  }
  
  public static boolean resizeAndTextMark(String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2)
    throws Exception
  {
    BufferedImage localBufferedImage = getBufferedImage(paramString1);
    if (localBufferedImage == null) {
      return false;
    }
    write(bufferedBothMark(resizeBuffered(localBufferedImage, paramInt1, paramInt2, false), null, paramString3, 5, 5, 4), paramString2);
    return true;
  }
  
  public static BufferedImage resizeBuffered(BufferedImage paramBufferedImage, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    float f1 = paramBufferedImage.getWidth();
    float f2 = paramBufferedImage.getHeight();
    float f3 = paramInt1 / paramInt2;
    float f4 = f1 / f2;
    if ((int)(f4 * 100.0F) != (int)(f3 * 100.0F))
    {
      if (f4 <= f3) {
        break label115;
      }
      if (!paramBoolean) {
        break label102;
      }
      float f6 = f2 * f3;
      paramBufferedImage = crop(paramBufferedImage, new Rectangle((int)(f1 - f6) / 2, 0, (int)f6, (int)f2));
    }
    for (;;)
    {
      return toBufferedImage(paramBufferedImage.getScaledInstance(paramInt1, paramInt2, 4), paramInt1, paramInt2);
      label102:
      paramInt2 = (int)(f2 / (f1 / paramInt1));
      continue;
      label115:
      if (paramBoolean)
      {
        float f5 = f1 / f3;
        paramBufferedImage = crop(paramBufferedImage, new Rectangle(0, (int)(f2 - f5) / 2, (int)f1, (int)f5));
      }
      else
      {
        paramInt1 = (int)(f1 / (f2 / paramInt2));
      }
    }
  }
  
  public static boolean resizeMaxAndMarkCenter(BufferedImage paramBufferedImage, String paramString1, String paramString2, int paramInt1, int paramInt2)
    throws Exception
  {
    if (paramBufferedImage == null) {
      return false;
    }
    float f1 = paramBufferedImage.getWidth();
    float f2 = paramBufferedImage.getHeight();
    if ((f1 > paramInt1) || (f2 > paramInt2)) {
      paramBufferedImage = resizeBuffered(paramBufferedImage, paramInt1, paramInt2, false);
    }
    write(bufferedBothMark(paramBufferedImage, paramString2, null, 5, 5, 5), paramString1);
    return true;
  }
  
  public static boolean resizeMaxAndMarkCenter(String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2)
    throws Exception
  {
    BufferedImage localBufferedImage = getBufferedImage(paramString1);
    if (localBufferedImage == null) {
      return false;
    }
    float f1 = localBufferedImage.getWidth();
    float f2 = localBufferedImage.getHeight();
    if ((f1 > paramInt1) || (f2 > paramInt2)) {
      localBufferedImage = resizeBuffered(localBufferedImage, paramInt1, paramInt2, false);
    }
    write(bufferedBothMark(localBufferedImage, paramString3, null, 5, 5, 5), paramString2);
    return true;
  }
  
  public static BufferedImage toBufferedImage(Image paramImage, int paramInt1, int paramInt2)
  {
    if ((paramImage instanceof BufferedImage)) {
      return (BufferedImage)paramImage;
    }
    BufferedImage localBufferedImage = new BufferedImage(paramInt1, paramInt2, 1);
    localBufferedImage.getGraphics().drawImage(paramImage, 0, 0, null);
    return localBufferedImage;
  }
  
  /* Error */
  public static void write(BufferedImage paramBufferedImage, String paramString)
    throws Exception
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore_3
    //   4: new 239	java/io/File
    //   7: dup
    //   8: aload_1
    //   9: invokespecial 240	java/io/File:<init>	(Ljava/lang/String;)V
    //   12: invokestatic 244	javax/imageio/ImageIO:createImageOutputStream	(Ljava/lang/Object;)Ljavax/imageio/stream/ImageOutputStream;
    //   15: astore_2
    //   16: ldc 246
    //   18: invokestatic 250	javax/imageio/ImageIO:getImageWritersBySuffix	(Ljava/lang/String;)Ljava/util/Iterator;
    //   21: invokeinterface 256 1 0
    //   26: checkcast 258	com/sun/imageio/plugins/jpeg/JPEGImageWriter
    //   29: astore_3
    //   30: aload_3
    //   31: aload_2
    //   32: invokevirtual 262	com/sun/imageio/plugins/jpeg/JPEGImageWriter:setOutput	(Ljava/lang/Object;)V
    //   35: aload_3
    //   36: invokevirtual 266	com/sun/imageio/plugins/jpeg/JPEGImageWriter:getDefaultWriteParam	()Ljavax/imageio/ImageWriteParam;
    //   39: checkcast 268	javax/imageio/plugins/jpeg/JPEGImageWriteParam
    //   42: astore 6
    //   44: aload 6
    //   46: iconst_1
    //   47: invokevirtual 272	javax/imageio/plugins/jpeg/JPEGImageWriteParam:setOptimizeHuffmanTables	(Z)V
    //   50: aload 6
    //   52: iconst_2
    //   53: invokevirtual 276	javax/imageio/plugins/jpeg/JPEGImageWriteParam:setCompressionMode	(I)V
    //   56: aload 6
    //   58: ldc_w 277
    //   61: invokevirtual 281	javax/imageio/plugins/jpeg/JPEGImageWriteParam:setCompressionQuality	(F)V
    //   64: aload_3
    //   65: aconst_null
    //   66: new 283	javax/imageio/IIOImage
    //   69: dup
    //   70: aload_0
    //   71: aconst_null
    //   72: aconst_null
    //   73: invokespecial 286	javax/imageio/IIOImage:<init>	(Ljava/awt/image/RenderedImage;Ljava/util/List;Ljavax/imageio/metadata/IIOMetadata;)V
    //   76: aload 6
    //   78: invokevirtual 289	com/sun/imageio/plugins/jpeg/JPEGImageWriter:write	(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V
    //   81: aload_2
    //   82: ifnull +9 -> 91
    //   85: aload_2
    //   86: invokeinterface 292 1 0
    //   91: aload_3
    //   92: ifnull +7 -> 99
    //   95: aload_3
    //   96: invokevirtual 293	com/sun/imageio/plugins/jpeg/JPEGImageWriter:dispose	()V
    //   99: return
    //   100: astore 4
    //   102: aload_2
    //   103: ifnull +9 -> 112
    //   106: aload_2
    //   107: invokeinterface 292 1 0
    //   112: aload_3
    //   113: ifnull +7 -> 120
    //   116: aload_3
    //   117: invokevirtual 293	com/sun/imageio/plugins/jpeg/JPEGImageWriter:dispose	()V
    //   120: aload 4
    //   122: athrow
    //   123: astore 5
    //   125: goto -13 -> 112
    //   128: astore 7
    //   130: goto -39 -> 91
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	133	0	paramBufferedImage	BufferedImage
    //   0	133	1	paramString	String
    //   1	106	2	localImageOutputStream	javax.imageio.stream.ImageOutputStream
    //   3	114	3	localJPEGImageWriter	com.sun.imageio.plugins.jpeg.JPEGImageWriter
    //   100	21	4	localObject	Object
    //   123	1	5	localIOException1	java.io.IOException
    //   42	35	6	localJPEGImageWriteParam	javax.imageio.plugins.jpeg.JPEGImageWriteParam
    //   128	1	7	localIOException2	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   4	81	100	finally
    //   106	112	123	java/io/IOException
    //   85	91	128	java/io/IOException
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.images.ImageUtils
 * JD-Core Version:    0.7.0.1
 */