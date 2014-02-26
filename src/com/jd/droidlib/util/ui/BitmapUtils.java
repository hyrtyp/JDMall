package com.jd.droidlib.util.ui;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.View.MeasureSpec;

public final class BitmapUtils
{
  public static Bitmap getRounded(Bitmap paramBitmap, int paramInt)
  {
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    Bitmap localBitmap = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    Paint localPaint = new Paint();
    localPaint.setAntiAlias(true);
    localPaint.setColor(-12434878);
    Rect localRect = new Rect(0, 0, i, j);
    RectF localRectF = new RectF(localRect);
    localCanvas.drawARGB(0, 0, 0, 0);
    localCanvas.drawRoundRect(localRectF, paramInt, paramInt, localPaint);
    localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    localCanvas.drawBitmap(paramBitmap, localRect, localRect, localPaint);
    return localBitmap;
  }
  
  public static Bitmap getScaled(Bitmap paramBitmap, int paramInt, boolean paramBoolean)
  {
    float f1 = paramBitmap.getWidth();
    float f2 = paramBitmap.getHeight();
    float f3 = paramInt / f1;
    float f4 = paramInt / f2;
    if (paramBoolean) {}
    for (float f5 = Math.min(f3, f4);; f5 = Math.max(f3, f4))
    {
      float f6 = f1 * f5;
      float f7 = f2 * f5;
      return Bitmap.createScaledBitmap(paramBitmap, (int)f6, (int)f7, true);
    }
  }
  
  public static int getSize(Bitmap paramBitmap)
  {
    return paramBitmap.getRowBytes() * paramBitmap.getHeight();
  }
  
  public static Bitmap getSquare(Bitmap paramBitmap)
  {
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    if (i > j) {}
    for (int k = j;; k = i) {
      return Bitmap.createBitmap(paramBitmap, 0, 0, k, k);
    }
  }
  
  public static Bitmap getViewBitmap(View paramView)
  {
    paramView.setDrawingCacheEnabled(true);
    paramView.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
    paramView.layout(0, 0, paramView.getMeasuredWidth(), paramView.getMeasuredHeight());
    paramView.buildDrawingCache(true);
    Bitmap localBitmap = Bitmap.createBitmap(paramView.getDrawingCache());
    paramView.setDrawingCacheEnabled(false);
    return localBitmap;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.util.ui.BitmapUtils
 * JD-Core Version:    0.7.0.1
 */