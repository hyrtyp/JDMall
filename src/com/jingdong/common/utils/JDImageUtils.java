package com.jingdong.common.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.jingdong.common.MyApplication;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.res.StringUtil;
import com.jingdong.common.ui.ExceptionDrawable;
import com.jingdong.common.ui.HandlerRecycleBitmapDrawable;
import com.jingdong.common.utils.cache.GlobalImageCache;
import com.jingdong.common.utils.cache.GlobalImageCache.BitmapDigest;
import com.novoda.imageloader.core.cache.LruBitmapCache;

public class JDImageUtils
{
  private static boolean canRefreshImage(View paramView, String paramString)
  {
    Object localObject = paramView.getTag();
    return (localObject != null) && ((localObject instanceof String)) && (TextUtils.equals((String)localObject, paramString));
  }
  
  public static void drawViewImage(IMyActivity paramIMyActivity, ImageView paramImageView, Bitmap paramBitmap, String paramString)
  {
    drawViewImage(paramIMyActivity, paramImageView, paramBitmap, paramString, -1);
  }
  
  public static void drawViewImage(final IMyActivity paramIMyActivity, ImageView paramImageView, Bitmap paramBitmap, final String paramString, int paramInt)
  {
    localObject1 = null;
    float f1;
    if (paramInt > 0) {
      f1 = paramInt;
    }
    try
    {
      Bitmap localBitmap2 = ImageUtil.getRoundedCornerBitmap(paramBitmap, f1);
      localObject1 = localBitmap2;
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        Thread localThread;
        GlobalImageCache.getLruBitmapCache().clean();
        float f2 = paramInt;
        try
        {
          Bitmap localBitmap1 = ImageUtil.getRoundedCornerBitmap(paramBitmap, f2);
          localObject1 = localBitmap1;
        }
        catch (Exception localException)
        {
          localObject1 = null;
        }
        Object localObject2 = paramBitmap;
        continue;
        paramIMyActivity.post(new Runnable()
        {
          public void run()
          {
            synchronized (JDImageUtils.this)
            {
              JDImageUtils.reallyDraw(paramIMyActivity, JDImageUtils.this, this.val$result, paramString);
              return;
            }
          }
        });
        return;
      }
    }
    if (localObject1 != null)
    {
      localObject2 = localObject1;
      localThread = MyApplication.getInstance().getUiThread();
      if (Thread.currentThread() != localThread) {
        break label93;
      }
      reallyDraw(paramIMyActivity, paramImageView, (Bitmap)localObject2, paramString);
    }
  }
  
  public static Bitmap getBitmapWithJpg(Context paramContext, int paramInt)
  {
    if ((paramContext == null) || (paramInt < 1)) {
      return null;
    }
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = false;
    return BitmapFactory.decodeResource(paramContext.getResources(), paramInt, localOptions);
  }
  
  public static Bitmap getBitmapWithJpg16(Context paramContext, int paramInt)
  {
    if ((paramContext == null) || (paramInt < 1)) {
      return null;
    }
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = false;
    localOptions.inPreferredConfig = Bitmap.Config.RGB_565;
    return BitmapFactory.decodeResource(paramContext.getResources(), paramInt, localOptions);
  }
  
  private static void reallyDraw(IMyActivity paramIMyActivity, ImageView paramImageView, Bitmap paramBitmap, String paramString)
  {
    if (!canRefreshImage(paramImageView, paramString)) {
      return;
    }
    Drawable localDrawable = paramImageView.getDrawable();
    HandlerRecycleBitmapDrawable localHandlerRecycleBitmapDrawable;
    if ((localDrawable != null) && ((localDrawable instanceof HandlerRecycleBitmapDrawable)))
    {
      localHandlerRecycleBitmapDrawable = (HandlerRecycleBitmapDrawable)localDrawable;
      localHandlerRecycleBitmapDrawable.setBitmap(paramBitmap);
      localHandlerRecycleBitmapDrawable.invalidateSelf();
    }
    for (;;)
    {
      localHandlerRecycleBitmapDrawable.initLoad(paramImageView, paramIMyActivity.getHttpGroupaAsynPool(5000), paramString);
      return;
      localHandlerRecycleBitmapDrawable = new HandlerRecycleBitmapDrawable(paramBitmap, paramIMyActivity);
      paramImageView.setImageDrawable(localHandlerRecycleBitmapDrawable);
    }
  }
  
  public static void setViewImage(IMyActivity paramIMyActivity, View paramView, HttpGroup paramHttpGroup, String paramString, ImageUtil.ImageLoadListener paramImageLoadListener)
  {
    if ((paramIMyActivity != null) && (paramView != null) && (paramHttpGroup != null)) {}
    for (;;)
    {
      GlobalImageCache.BitmapDigest localBitmapDigest;
      Bitmap localBitmap;
      try
      {
        boolean bool = TextUtils.isEmpty(paramString);
        if (bool) {
          return;
        }
        localBitmapDigest = new GlobalImageCache.BitmapDigest(paramString);
        localBitmapDigest.setWidth(paramView.getWidth());
        localBitmapDigest.setHeight(paramView.getHeight());
        localBitmap = ImageUtil.loadImageWithCache(localBitmapDigest);
        if (localBitmap == null)
        {
          ImageUtil.loadImageWithUrl(paramHttpGroup, localBitmapDigest, paramImageLoadListener);
          continue;
        }
        if (paramImageLoadListener == null) {
          continue;
        }
      }
      finally {}
      paramImageLoadListener.onSuccess(localBitmapDigest, localBitmap);
    }
  }
  
  public static void setViewImage(IMyActivity paramIMyActivity, ImageView paramImageView, HttpGroup paramHttpGroup, String paramString, int paramInt)
  {
    setViewImage(paramIMyActivity, paramImageView, paramHttpGroup, paramString, true, paramInt, 0);
  }
  
  public static void setViewImage(final IMyActivity paramIMyActivity, ImageView paramImageView, HttpGroup paramHttpGroup, final String paramString, boolean paramBoolean, final int paramInt1, int paramInt2)
  {
    if ((paramIMyActivity != null) && (paramImageView != null) && (paramHttpGroup != null)) {}
    for (;;)
    {
      Bitmap localBitmap;
      try
      {
        boolean bool = TextUtils.isEmpty(paramString);
        if (bool) {
          return;
        }
        paramImageView.setTag(paramString);
        GlobalImageCache.BitmapDigest localBitmapDigest = new GlobalImageCache.BitmapDigest(paramString);
        localBitmapDigest.setWidth(paramImageView.getWidth());
        localBitmapDigest.setHeight(paramImageView.getHeight());
        localBitmap = ImageUtil.loadImageWithCache(localBitmapDigest);
        if (localBitmap != null) {
          break label165;
        }
        if (paramBoolean)
        {
          Thread localThread = MyApplication.getInstance().getUiThread();
          if (Thread.currentThread() == localThread) {
            paramImageView.setImageDrawable(new ExceptionDrawable(paramIMyActivity.getThisActivity(), StringUtil.app_name));
          }
        }
        else
        {
          ImageUtil.loadImageWithUrl(paramHttpGroup, localBitmapDigest, new ImageUtil.ImageLoadListener()
          {
            public void onError(GlobalImageCache.BitmapDigest paramAnonymousBitmapDigest) {}
            
            public void onProgress(GlobalImageCache.BitmapDigest paramAnonymousBitmapDigest, int paramAnonymousInt1, int paramAnonymousInt2) {}
            
            public void onStart(GlobalImageCache.BitmapDigest paramAnonymousBitmapDigest) {}
            
            public void onSuccess(GlobalImageCache.BitmapDigest paramAnonymousBitmapDigest, Bitmap paramAnonymousBitmap)
            {
              if (JDImageUtils.this == null) {}
              while (!JDImageUtils.canRefreshImage(JDImageUtils.this, paramString)) {
                return;
              }
              JDImageUtils.drawViewImage(paramIMyActivity, JDImageUtils.this, paramAnonymousBitmap, paramString, paramInt1);
            }
          }, paramInt2);
          continue;
        }
        paramIMyActivity.post(new Runnable()
        {
          public void run()
          {
            if (JDImageUtils.this == null) {
              return;
            }
            JDImageUtils.this.setImageDrawable(new ExceptionDrawable(paramIMyActivity.getThisActivity(), StringUtil.app_name));
          }
        });
      }
      finally {}
      continue;
      label165:
      drawViewImage(paramIMyActivity, paramImageView, localBitmap, paramString, paramInt1);
    }
  }
  
  public static void setViewImage(IMyActivity paramIMyActivity, ImageView paramImageView, String paramString)
  {
    setViewImage(paramIMyActivity, paramImageView, HttpGroupUtils.getHttpGroupaAsynPool(5000), paramString, -1);
  }
  
  public static void setViewImage(IMyActivity paramIMyActivity, ImageView paramImageView, String paramString, int paramInt)
  {
    setViewImage(paramIMyActivity, paramImageView, HttpGroupUtils.getHttpGroupaAsynPool(5000), paramString, paramInt);
  }
  
  public static void setViewImage(IMyActivity paramIMyActivity, ImageView paramImageView, String paramString, boolean paramBoolean, int paramInt)
  {
    setViewImage(paramIMyActivity, paramImageView, HttpGroupUtils.getHttpGroupaAsynPool(5000), paramString, paramBoolean, paramInt, 0);
  }
  
  public static void setViewImage(IMyActivity paramIMyActivity, ImageView paramImageView, String paramString, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    setViewImage(paramIMyActivity, paramImageView, HttpGroupUtils.getHttpGroupaAsynPool(5000), paramString, paramBoolean, paramInt1, paramInt2);
  }
  
  public static void setViewImageWithPriority(IMyActivity paramIMyActivity, ImageView paramImageView, String paramString, int paramInt)
  {
    setViewImage(paramIMyActivity, paramImageView, HttpGroupUtils.getHttpGroupaAsynPool(5000), paramString, true, -1, paramInt);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.JDImageUtils
 * JD-Core Version:    0.7.0.1
 */