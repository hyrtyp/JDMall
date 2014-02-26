package com.jingdong.common.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.jingdong.common.MyApplication;
import com.jingdong.common.frame.IMainActivity;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.cache.GlobalImageCache;
import com.jingdong.common.utils.cache.GlobalImageCache.BitmapDigest;
import com.novoda.imageloader.core.bitmap.BitmapUtil;
import com.novoda.imageloader.core.cache.LruBitmapCache;
import java.io.File;
import java.io.InputStream;

public class ImageUtil
{
  public static final int DEFAULT_ROUND = 6;
  public static final int IMAGE_MAX_HEIGHT = 666;
  public static final int IMAGE_MAX_WIDTH = 666;
  
  public static Bitmap createBitmap(InputWay paramInputWay, int paramInt1, int paramInt2)
  {
    if (paramInt1 > DPIUtil.dip2px(666.0F)) {
      paramInt1 = DPIUtil.dip2px(666.0F);
    }
    if (paramInt2 > DPIUtil.dip2px(666.0F)) {
      paramInt2 = DPIUtil.dip2px(666.0F);
    }
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      paramInt1 = DPIUtil.dip2px(666.0F);
      paramInt2 = DPIUtil.dip2px(666.0F);
    }
    BitmapUtil localBitmapUtil = new BitmapUtil();
    Bitmap localBitmap1 = null;
    int i = 0;
    if (i >= 2) {}
    label200:
    for (;;)
    {
      return localBitmap1;
      if (paramInputWay.getResourceId() != 0)
      {
        MyApplication localMyApplication = MyApplication.getInstance();
        int j = paramInputWay.getResourceId();
        localBitmap1 = localBitmapUtil.decodeResourceBitmapAndScale(localMyApplication, paramInt1, paramInt2, j, false);
      }
      for (;;)
      {
        if (localBitmap1 != null) {
          break label200;
        }
        GlobalImageCache.getLruBitmapCache().clean();
        i++;
        break;
        if (paramInputWay.getFile() != null) {
          localBitmap1 = localBitmapUtil.decodeFileAndScale(paramInputWay.getFile(), paramInt1, paramInt2, false);
        } else if ((paramInputWay.getInputStream() != null) || (paramInputWay.getByteArray() == null)) {}
        try
        {
          Bitmap localBitmap3 = BitmapFactory.decodeByteArray(paramInputWay.getByteArray(), 0, paramInputWay.getByteArray().length);
          localBitmap2 = localBitmap3;
        }
        catch (Throwable localThrowable)
        {
          for (;;)
          {
            Bitmap localBitmap2 = null;
          }
        }
        if (localBitmap2 == null) {
          localBitmap1 = null;
        } else {
          localBitmap1 = localBitmapUtil.scaleBitmap(localBitmap2, paramInt1, paramInt2, false);
        }
      }
    }
  }
  
  public static Bitmap createBitmap(InputWay paramInputWay, GlobalImageCache.BitmapDigest paramBitmapDigest)
  {
    if (paramBitmapDigest.isLarge()) {
      GlobalImageCache.getLruBitmapCache().cleanMost();
    }
    Bitmap localBitmap = createBitmap(paramInputWay, paramBitmapDigest.getWidth(), paramBitmapDigest.getHeight());
    if (localBitmap == null) {
      return null;
    }
    if (paramBitmapDigest.getRound() != 0) {
      localBitmap = toRoundCorner(localBitmap, paramBitmapDigest.getRound());
    }
    return localBitmap;
  }
  
  private static Bitmap drawableToBitmap(Drawable paramDrawable)
  {
    int i = paramDrawable.getIntrinsicWidth();
    int j = paramDrawable.getIntrinsicHeight();
    if (paramDrawable.getOpacity() != -1) {}
    for (Bitmap.Config localConfig = Bitmap.Config.ARGB_8888;; localConfig = Bitmap.Config.RGB_565)
    {
      Bitmap localBitmap = Bitmap.createBitmap(i, j, localConfig);
      Canvas localCanvas = new Canvas(localBitmap);
      paramDrawable.setBounds(0, 0, i, j);
      paramDrawable.draw(localCanvas);
      return localBitmap;
    }
  }
  
  public static Drawable drawableToDrawable16(Drawable paramDrawable)
  {
    int i = paramDrawable.getIntrinsicWidth();
    int j = paramDrawable.getIntrinsicHeight();
    Bitmap localBitmap = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_4444);
    Canvas localCanvas = new Canvas(localBitmap);
    paramDrawable.setBounds(0, 0, i, j);
    paramDrawable.draw(localCanvas);
    return new BitmapDrawable(localBitmap);
  }
  
  private static LayoutInflater getLayoutInflater()
  {
    IMyActivity localIMyActivity = MyApplication.getInstance().getCurrentMyActivity();
    IMainActivity localIMainActivity = MyApplication.getInstance().getMainFrameActivity();
    if (localIMyActivity != null) {
      return getLayoutInflater(localIMyActivity.getThisActivity());
    }
    if (localIMainActivity != null) {
      return getLayoutInflater(localIMainActivity.getThisActivity());
    }
    return getLayoutInflater(MyApplication.getInstance());
  }
  
  private static LayoutInflater getLayoutInflater(Context paramContext)
  {
    return (LayoutInflater)paramContext.getSystemService("layout_inflater");
  }
  
  public static Bitmap getRoundedCornerBitmap(Bitmap paramBitmap, float paramFloat)
  {
    Bitmap localBitmap = Bitmap.createBitmap(paramBitmap.getWidth(), paramBitmap.getHeight(), Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    Paint localPaint = new Paint();
    Rect localRect = new Rect(0, 0, paramBitmap.getWidth(), paramBitmap.getHeight());
    RectF localRectF = new RectF(localRect);
    localPaint.setAntiAlias(true);
    localCanvas.drawARGB(0, 0, 0, 0);
    localPaint.setColor(-12434878);
    localCanvas.drawRoundRect(localRectF, paramFloat, paramFloat, localPaint);
    localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    localCanvas.drawBitmap(paramBitmap, localRect, localRect, localPaint);
    return localBitmap;
  }
  
  public static Bitmap getRoundedCornerBitmap(Drawable paramDrawable, float paramFloat)
  {
    return getRoundedCornerBitmap(drawableToBitmap(paramDrawable), paramFloat);
  }
  
  public static View inflate(int paramInt, ViewGroup paramViewGroup)
  {
    try
    {
      View localView = getLayoutInflater().inflate(paramInt, paramViewGroup);
      return localView;
    }
    catch (Throwable localThrowable)
    {
      GlobalImageCache.getLruBitmapCache().clean();
    }
    return getLayoutInflater().inflate(paramInt, paramViewGroup);
  }
  
  public static View inflate(int paramInt, ViewGroup paramViewGroup, boolean paramBoolean)
  {
    try
    {
      View localView = getLayoutInflater().inflate(paramInt, paramViewGroup, paramBoolean);
      return localView;
    }
    catch (Throwable localThrowable)
    {
      GlobalImageCache.getLruBitmapCache().clean();
    }
    return getLayoutInflater().inflate(paramInt, paramViewGroup, paramBoolean);
  }
  
  public static View inflate(Context paramContext, int paramInt, ViewGroup paramViewGroup)
  {
    try
    {
      View localView = getLayoutInflater(paramContext).inflate(paramInt, paramViewGroup);
      return localView;
    }
    catch (Throwable localThrowable)
    {
      GlobalImageCache.getLruBitmapCache().clean();
    }
    return getLayoutInflater(paramContext).inflate(paramInt, paramViewGroup);
  }
  
  public static boolean isBitmapCanUse(Bitmap paramBitmap)
  {
    return (paramBitmap != null) && (!paramBitmap.isRecycled());
  }
  
  public static Bitmap loadImageWithCache(GlobalImageCache.BitmapDigest paramBitmapDigest)
  {
    Bitmap localBitmap = GlobalImageCache.getLruBitmapCache().get(paramBitmapDigest);
    if ((localBitmap != null) && (!localBitmap.isRecycled())) {
      return localBitmap;
    }
    return null;
  }
  
  public static void loadImageWithUrl(HttpGroup paramHttpGroup, GlobalImageCache.BitmapDigest paramBitmapDigest, ImageLoadListener paramImageLoadListener)
  {
    loadImageWithUrl(paramHttpGroup, paramBitmapDigest, false, paramImageLoadListener);
  }
  
  public static void loadImageWithUrl(HttpGroup paramHttpGroup, GlobalImageCache.BitmapDigest paramBitmapDigest, ImageLoadListener paramImageLoadListener, int paramInt)
  {
    loadImageWithUrl(paramHttpGroup, paramBitmapDigest, false, paramImageLoadListener, paramInt);
  }
  
  public static void loadImageWithUrl(HttpGroup paramHttpGroup, GlobalImageCache.BitmapDigest paramBitmapDigest, boolean paramBoolean, ImageLoadListener paramImageLoadListener)
  {
    loadImageWithUrl(paramHttpGroup, paramBitmapDigest, paramBoolean, paramImageLoadListener, 0);
  }
  
  public static void loadImageWithUrl(HttpGroup paramHttpGroup, final GlobalImageCache.BitmapDigest paramBitmapDigest, boolean paramBoolean, ImageLoadListener paramImageLoadListener, int paramInt)
  {
    if (paramBitmapDigest == null) {}
    do
    {
      Bitmap localBitmap;
      do
      {
        return;
        localBitmap = loadImageWithCache(paramBitmapDigest);
        if ((localBitmap == null) || (localBitmap.isRecycled())) {
          break;
        }
      } while (paramImageLoadListener == null);
      paramImageLoadListener.onSuccess(paramBitmapDigest, localBitmap);
      return;
    } while (paramHttpGroup == null);
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setEffect(0);
    localHttpSetting.setUrl(paramBitmapDigest.getUrl());
    if (paramInt != 0) {
      localHttpSetting.setPriority(paramInt);
    }
    localHttpSetting.setType(5000);
    if (paramBoolean) {
      localHttpSetting.setCacheMode(1);
    }
    localHttpSetting.setListener(new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        if (ImageUtil.this != null)
        {
          Bitmap localBitmap = ImageUtil.createBitmap(ImageUtil.InputWay.createInputWay(paramAnonymousHttpResponse), 0, 0);
          if ((localBitmap != null) && (!localBitmap.isRecycled()))
          {
            GlobalImageCache.getLruBitmapCache().put(paramBitmapDigest, localBitmap);
            ImageUtil.this.onSuccess(paramBitmapDigest, localBitmap);
          }
        }
        else
        {
          return;
        }
        ImageUtil.this.onError(paramBitmapDigest);
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        if (ImageUtil.this != null) {
          ImageUtil.this.onError(paramBitmapDigest);
        }
      }
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2)
      {
        if (ImageUtil.this != null) {
          ImageUtil.this.onProgress(paramBitmapDigest, paramAnonymousInt1, paramAnonymousInt2);
        }
      }
      
      public void onStart()
      {
        if (ImageUtil.this != null) {
          ImageUtil.this.onStart(paramBitmapDigest);
        }
      }
    });
    paramHttpGroup.add(localHttpSetting);
  }
  
  public static void loadImageWithUrlJugeNoImage(HttpGroup paramHttpGroup, GlobalImageCache.BitmapDigest paramBitmapDigest, ImageLoadListener paramImageLoadListener)
  {
    loadImageWithUrl(paramHttpGroup, paramBitmapDigest, NoImageUtils.needNoImage(), paramImageLoadListener);
  }
  
  public static Drawable scaleDrawable(Drawable paramDrawable, float paramFloat1, float paramFloat2)
  {
    try
    {
      Bitmap localBitmap = drawableToBitmap(paramDrawable);
      int i = localBitmap.getWidth();
      int j = localBitmap.getHeight();
      Matrix localMatrix = new Matrix();
      localMatrix.postScale(DPIUtil.getDefaultDisplay().getWidth() / paramFloat1, DPIUtil.getDefaultDisplay().getHeight() / paramFloat2);
      BitmapDrawable localBitmapDrawable = new BitmapDrawable(Bitmap.createBitmap(localBitmap, 0, 0, i, j, localMatrix, true));
      return localBitmapDrawable;
    }
    catch (Exception localException) {}
    return paramDrawable;
  }
  
  public static void setViewImage(IMyActivity paramIMyActivity, View paramView, HttpGroup paramHttpGroup, String paramString, ImageLoadListener paramImageLoadListener)
  {
    if ((paramIMyActivity == null) || (paramView == null) || (paramHttpGroup == null) || (TextUtils.isEmpty(paramString))) {}
    GlobalImageCache.BitmapDigest localBitmapDigest;
    Bitmap localBitmap;
    do
    {
      return;
      localBitmapDigest = new GlobalImageCache.BitmapDigest(paramString);
      localBitmapDigest.setWidth(paramView.getWidth());
      localBitmapDigest.setHeight(paramView.getHeight());
      localBitmap = loadImageWithCache(localBitmapDigest);
      if (localBitmap == null)
      {
        loadImageWithUrl(paramHttpGroup, localBitmapDigest, paramImageLoadListener);
        return;
      }
    } while (paramImageLoadListener == null);
    paramImageLoadListener.onSuccess(localBitmapDigest, localBitmap);
  }
  
  public static Bitmap toRoundBitmap(Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    i = paramBitmap.getWidth();
    j = paramBitmap.getHeight();
    int k;
    int m;
    if (i > j)
    {
      k = j;
      m = j;
      localObject = paramBitmap;
      if ((m < i) || (k < j)) {
        if (m >= k) {
          break label289;
        }
      }
    }
    for (n = m;; n = k)
    {
      try
      {
        Bitmap localBitmap3 = Bitmap.createScaledBitmap(paramBitmap, n, n, true);
        localObject = localBitmap3;
      }
      catch (Throwable localThrowable1)
      {
        for (;;)
        {
          Bitmap.Config localConfig;
          Bitmap localBitmap1;
          Canvas localCanvas;
          Paint localPaint;
          Rect localRect1;
          Rect localRect2;
          RectF localRectF;
          label289:
          GlobalImageCache.getLruBitmapCache().clean();
          try
          {
            Bitmap localBitmap2 = Bitmap.createScaledBitmap(paramBitmap, n, n, true);
            localObject = localBitmap2;
          }
          catch (Throwable localThrowable2) {}
          int i1 = i;
          continue;
          int i2 = j;
          continue;
          float f1 = i2 / 2;
          float f2 = (i1 - i2) / 2;
          float f3 = f2;
          float f4 = i1 - f2;
          float f5 = i2;
          float f6 = i2;
          float f7 = i2;
        }
      }
      if (i <= m) {
        break label322;
      }
      i1 = m;
      if (j <= k) {
        break label328;
      }
      i2 = k;
      if (i > j) {
        break label335;
      }
      f1 = i1 / 2;
      f5 = i1;
      f3 = 0.0F;
      f4 = i1;
      f6 = i1;
      f7 = i1;
      localConfig = Bitmap.Config.ARGB_8888;
      localBitmap1 = Bitmap.createBitmap(i1, i2, localConfig);
      localCanvas = new Canvas(localBitmap1);
      localPaint = new Paint();
      localRect1 = new Rect((int)f3, (int)0.0F, (int)f4, (int)f5);
      localRect2 = new Rect((int)0.0F, (int)0.0F, (int)f6, (int)f7);
      localRectF = new RectF(localRect2);
      localPaint.setAntiAlias(true);
      localCanvas.drawARGB(0, 0, 0, 0);
      localPaint.setColor(-12434878);
      localCanvas.drawRoundRect(localRectF, f1, f1, localPaint);
      localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
      localCanvas.drawBitmap((Bitmap)localObject, localRect1, localRect2, localPaint);
      return localBitmap1;
      k = i;
      m = i;
      break;
    }
  }
  
  public static Bitmap toRoundCorner(Bitmap paramBitmap, int paramInt)
  {
    float f = DPIUtil.dip2px(paramInt);
    Bitmap localBitmap = Bitmap.createBitmap(paramBitmap.getWidth(), paramBitmap.getHeight(), Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    Paint localPaint = new Paint();
    Rect localRect = new Rect(0, 0, paramBitmap.getWidth(), paramBitmap.getHeight());
    RectF localRectF = new RectF(localRect);
    localPaint.setAntiAlias(true);
    localCanvas.drawARGB(0, 0, 0, 0);
    localPaint.setColor(-12434878);
    localCanvas.drawRoundRect(localRectF, f, f, localPaint);
    localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    localCanvas.drawBitmap(paramBitmap, localRect, localRect, localPaint);
    paramBitmap.recycle();
    return localBitmap;
  }
  
  public static Drawable zoomDrawable(Drawable paramDrawable)
  {
    Bitmap localBitmap = drawableToBitmap(paramDrawable);
    return new BitmapDrawable(Bitmap.createBitmap(localBitmap, 0, 0, localBitmap.getWidth(), (int)(0.65D * localBitmap.getHeight())));
  }
  
  public static abstract interface ImageLoadListener
  {
    public abstract void onError(GlobalImageCache.BitmapDigest paramBitmapDigest);
    
    public abstract void onProgress(GlobalImageCache.BitmapDigest paramBitmapDigest, int paramInt1, int paramInt2);
    
    public abstract void onStart(GlobalImageCache.BitmapDigest paramBitmapDigest);
    
    public abstract void onSuccess(GlobalImageCache.BitmapDigest paramBitmapDigest, Bitmap paramBitmap);
  }
  
  public static class InputWay
  {
    private byte[] byteArray;
    private File file;
    private InputStream inputStream;
    private int resourceId;
    
    public static InputWay createInputWay(HttpGroup.HttpResponse paramHttpResponse)
    {
      InputWay localInputWay = new InputWay();
      if (paramHttpResponse != null)
      {
        localInputWay.setByteArray(paramHttpResponse.getInputData());
        localInputWay.setFile(paramHttpResponse.getSaveFile());
      }
      return localInputWay;
    }
    
    public byte[] getByteArray()
    {
      return this.byteArray;
    }
    
    public File getFile()
    {
      return this.file;
    }
    
    public InputStream getInputStream()
    {
      return this.inputStream;
    }
    
    public int getResourceId()
    {
      return this.resourceId;
    }
    
    public void setByteArray(byte[] paramArrayOfByte)
    {
      this.byteArray = paramArrayOfByte;
    }
    
    public void setFile(File paramFile)
    {
      this.file = paramFile;
    }
    
    public void setInputStream(InputStream paramInputStream)
    {
      this.inputStream = paramInputStream;
    }
    
    public void setResourceId(int paramInt)
    {
      this.resourceId = paramInt;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.ImageUtil
 * JD-Core Version:    0.7.0.1
 */