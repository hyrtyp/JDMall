package com.jingdong.common.ui;

import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.NinePatch;
import android.graphics.Rect;
import android.widget.ImageView;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.res.StringUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.ImageUtil.ImageLoadListener;
import com.jingdong.common.utils.cache.GlobalImageCache.BitmapDigest;

public class HandlerRecycleBitmapDrawable
  extends ExceptionDrawable
  implements ImageUtil.ImageLoadListener
{
  private Bitmap bitmap = null;
  private Rect bitmapRect = null;
  private HttpGroup group;
  private IMyActivity myActivity = null;
  private boolean needPadding = true;
  private NinePatch np;
  private String url;
  private ImageView view;
  
  public HandlerRecycleBitmapDrawable(Bitmap paramBitmap, IMyActivity paramIMyActivity)
  {
    super(paramIMyActivity.getThisActivity(), StringUtil.app_name);
    setBitmap(paramBitmap);
    this.myActivity = paramIMyActivity;
    this.bitmapRect = new Rect();
  }
  
  /* Error */
  public void draw(android.graphics.Canvas paramCanvas)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: new 61	android/graphics/PaintFlagsDrawFilter
    //   6: dup
    //   7: iconst_0
    //   8: iconst_3
    //   9: invokespecial 64	android/graphics/PaintFlagsDrawFilter:<init>	(II)V
    //   12: invokevirtual 70	android/graphics/Canvas:setDrawFilter	(Landroid/graphics/DrawFilter;)V
    //   15: aload_0
    //   16: getfield 72	com/jingdong/common/ui/HandlerRecycleBitmapDrawable:np	Landroid/graphics/NinePatch;
    //   19: ifnull +15 -> 34
    //   22: aload_0
    //   23: getfield 72	com/jingdong/common/ui/HandlerRecycleBitmapDrawable:np	Landroid/graphics/NinePatch;
    //   26: aload_1
    //   27: aload_0
    //   28: invokevirtual 76	com/jingdong/common/ui/HandlerRecycleBitmapDrawable:getBounds	()Landroid/graphics/Rect;
    //   31: invokevirtual 81	android/graphics/NinePatch:draw	(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    //   34: aload_0
    //   35: getfield 40	com/jingdong/common/ui/HandlerRecycleBitmapDrawable:bitmap	Landroid/graphics/Bitmap;
    //   38: ifnull +151 -> 189
    //   41: aload_0
    //   42: getfield 40	com/jingdong/common/ui/HandlerRecycleBitmapDrawable:bitmap	Landroid/graphics/Bitmap;
    //   45: invokevirtual 87	android/graphics/Bitmap:isRecycled	()Z
    //   48: ifne +141 -> 189
    //   51: aload_0
    //   52: invokevirtual 90	com/jingdong/common/ui/HandlerRecycleBitmapDrawable:copyBounds	()Landroid/graphics/Rect;
    //   55: astore_3
    //   56: aload_0
    //   57: getfield 46	com/jingdong/common/ui/HandlerRecycleBitmapDrawable:needPadding	Z
    //   60: ifeq +85 -> 145
    //   63: aload_3
    //   64: iconst_2
    //   65: aload_3
    //   66: getfield 94	android/graphics/Rect:left	I
    //   69: iadd
    //   70: iconst_2
    //   71: aload_3
    //   72: getfield 97	android/graphics/Rect:top	I
    //   75: iadd
    //   76: bipush 254
    //   78: aload_3
    //   79: getfield 100	android/graphics/Rect:right	I
    //   82: iadd
    //   83: bipush 254
    //   85: aload_3
    //   86: getfield 103	android/graphics/Rect:bottom	I
    //   89: iadd
    //   90: invokevirtual 107	android/graphics/Rect:set	(IIII)V
    //   93: aload_0
    //   94: getfield 44	com/jingdong/common/ui/HandlerRecycleBitmapDrawable:bitmapRect	Landroid/graphics/Rect;
    //   97: iconst_0
    //   98: iconst_0
    //   99: aload_0
    //   100: getfield 40	com/jingdong/common/ui/HandlerRecycleBitmapDrawable:bitmap	Landroid/graphics/Bitmap;
    //   103: invokevirtual 111	android/graphics/Bitmap:getWidth	()I
    //   106: aload_0
    //   107: getfield 40	com/jingdong/common/ui/HandlerRecycleBitmapDrawable:bitmap	Landroid/graphics/Bitmap;
    //   110: invokevirtual 114	android/graphics/Bitmap:getHeight	()I
    //   113: invokevirtual 107	android/graphics/Rect:set	(IIII)V
    //   116: aload_1
    //   117: invokevirtual 117	android/graphics/Canvas:save	()I
    //   120: pop
    //   121: aload_1
    //   122: aload_0
    //   123: getfield 40	com/jingdong/common/ui/HandlerRecycleBitmapDrawable:bitmap	Landroid/graphics/Bitmap;
    //   126: aload_0
    //   127: getfield 44	com/jingdong/common/ui/HandlerRecycleBitmapDrawable:bitmapRect	Landroid/graphics/Rect;
    //   130: aload_3
    //   131: aload_0
    //   132: getfield 121	com/jingdong/common/ui/HandlerRecycleBitmapDrawable:paint	Landroid/graphics/Paint;
    //   135: invokevirtual 125	android/graphics/Canvas:drawBitmap	(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    //   138: aload_1
    //   139: invokevirtual 128	android/graphics/Canvas:restore	()V
    //   142: aload_0
    //   143: monitorexit
    //   144: return
    //   145: aload_3
    //   146: aload_3
    //   147: getfield 94	android/graphics/Rect:left	I
    //   150: aload_3
    //   151: getfield 97	android/graphics/Rect:top	I
    //   154: aload_3
    //   155: getfield 100	android/graphics/Rect:right	I
    //   158: aload_3
    //   159: getfield 103	android/graphics/Rect:bottom	I
    //   162: invokevirtual 107	android/graphics/Rect:set	(IIII)V
    //   165: goto -72 -> 93
    //   168: astore_2
    //   169: aload_0
    //   170: monitorexit
    //   171: aload_2
    //   172: athrow
    //   173: astore 4
    //   175: getstatic 133	com/jingdong/cloud/msg/util/Log:E	Z
    //   178: ifeq -36 -> 142
    //   181: aload 4
    //   183: invokevirtual 136	java/lang/Throwable:printStackTrace	()V
    //   186: goto -44 -> 142
    //   189: aload_0
    //   190: getfield 42	com/jingdong/common/ui/HandlerRecycleBitmapDrawable:myActivity	Lcom/jingdong/common/frame/IMyActivity;
    //   193: aload_0
    //   194: getfield 138	com/jingdong/common/ui/HandlerRecycleBitmapDrawable:view	Landroid/widget/ImageView;
    //   197: aload_0
    //   198: getfield 140	com/jingdong/common/ui/HandlerRecycleBitmapDrawable:group	Lcom/jingdong/common/utils/HttpGroup;
    //   201: aload_0
    //   202: getfield 142	com/jingdong/common/ui/HandlerRecycleBitmapDrawable:url	Ljava/lang/String;
    //   205: aload_0
    //   206: invokestatic 148	com/jingdong/common/utils/ImageUtil:setViewImage	(Lcom/jingdong/common/frame/IMyActivity;Landroid/view/View;Lcom/jingdong/common/utils/HttpGroup;Ljava/lang/String;Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;)V
    //   209: goto -67 -> 142
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	212	0	this	HandlerRecycleBitmapDrawable
    //   0	212	1	paramCanvas	android.graphics.Canvas
    //   168	4	2	localObject	Object
    //   55	104	3	localRect	Rect
    //   173	9	4	localThrowable	java.lang.Throwable
    // Exception table:
    //   from	to	target	type
    //   2	34	168	finally
    //   34	93	168	finally
    //   93	116	168	finally
    //   116	142	168	finally
    //   145	165	168	finally
    //   175	186	168	finally
    //   189	209	168	finally
    //   116	142	173	java/lang/Throwable
  }
  
  public Bitmap getBitmap()
  {
    return this.bitmap;
  }
  
  public int getOpacity()
  {
    return 0;
  }
  
  public void initLoad(ImageView paramImageView, HttpGroup paramHttpGroup, String paramString)
  {
    this.view = paramImageView;
    this.group = paramHttpGroup;
    this.url = paramString;
  }
  
  public void onError(GlobalImageCache.BitmapDigest paramBitmapDigest) {}
  
  public void onProgress(GlobalImageCache.BitmapDigest paramBitmapDigest, int paramInt1, int paramInt2) {}
  
  public void onStart(GlobalImageCache.BitmapDigest paramBitmapDigest) {}
  
  public void onSuccess(GlobalImageCache.BitmapDigest paramBitmapDigest, Bitmap paramBitmap)
  {
    if ((paramBitmap == null) || (this.myActivity == null)) {
      return;
    }
    setBitmap(paramBitmap);
    this.myActivity.post(new Runnable()
    {
      public void run()
      {
        HandlerRecycleBitmapDrawable.this.invalidateSelf();
      }
    });
  }
  
  public void setAlpha(int paramInt) {}
  
  public void setBackGround(Bitmap paramBitmap)
  {
    if ((paramBitmap != null) && (!paramBitmap.isRecycled()))
    {
      this.np = new NinePatch(paramBitmap, paramBitmap.getNinePatchChunk(), null);
      return;
    }
    this.np = null;
  }
  
  public void setBitmap(Bitmap paramBitmap)
  {
    this.bitmap = paramBitmap;
  }
  
  public void setColorFilter(ColorFilter paramColorFilter) {}
  
  public void setNeedPadding(boolean paramBoolean)
  {
    this.needPadding = paramBoolean;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.ui.HandlerRecycleBitmapDrawable
 * JD-Core Version:    0.7.0.1
 */