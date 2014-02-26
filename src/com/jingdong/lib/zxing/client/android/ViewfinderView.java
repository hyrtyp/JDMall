package com.jingdong.lib.zxing.client.android;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import com.google.zxing.ResultPoint;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.lib.zxing.client.android.camera.CameraManager;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;

public final class ViewfinderView
  extends View
{
  private static final long ANIMATION_DELAY = 10L;
  private static final int CORNER_WIDTH = 10;
  private static int MIDDLE_LINE_HEIGHT = DPIUtil.dip2px(55.0F);
  private static final int MIDDLE_LINE_PADDING = 1;
  private static final int OPAQUE = 255;
  private static final int SPEEN_DISTANCE = 15;
  private static final String TAG = "log";
  private static final int TEXT_PADDING_TOP = 30;
  private static final int TEXT_SIZE = 16;
  private static float density;
  private final int ScreenRate;
  private Bitmap arrowBmp;
  private Bitmap bgBmp;
  private int bgPadding = DPIUtil.dip2px(10.0F);
  boolean isFirst;
  boolean isLine = false;
  boolean isReverse;
  private Collection<ResultPoint> lastPossibleResultPoints;
  private final int maskColor;
  private Bitmap middleBmp;
  private Bitmap middleLineBmp;
  private final Paint paint;
  private Collection<ResultPoint> possibleResultPoints;
  private Bitmap resultBitmap;
  private final int resultColor;
  private final int resultPointColor;
  private int slideBottom;
  private int slideTop;
  
  public ViewfinderView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    density = paramContext.getResources().getDisplayMetrics().density;
    this.ScreenRate = ((int)(20.0F * density));
    this.paint = new Paint();
    Resources localResources = getResources();
    this.maskColor = localResources.getColor(2131296441);
    this.resultColor = localResources.getColor(2131296438);
    this.resultPointColor = localResources.getColor(2131296434);
    this.possibleResultPoints = new HashSet(5);
    this.middleBmp = ((BitmapDrawable)localResources.getDrawable(2130837719)).getBitmap();
    this.middleLineBmp = ((BitmapDrawable)localResources.getDrawable(2130837720)).getBitmap();
    this.arrowBmp = ((BitmapDrawable)localResources.getDrawable(2130837682)).getBitmap();
    this.bgBmp = ((BitmapDrawable)localResources.getDrawable(2130837683)).getBitmap();
  }
  
  public void addPossibleResultPoint(ResultPoint paramResultPoint)
  {
    synchronized (this.possibleResultPoints)
    {
      this.possibleResultPoints.add(paramResultPoint);
      return;
    }
  }
  
  public void drawResultBitmap(Bitmap paramBitmap)
  {
    this.resultBitmap = paramBitmap;
    invalidate();
  }
  
  public void drawViewfinder()
  {
    this.resultBitmap = null;
    invalidate();
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    Rect localRect1 = CameraManager.get().getFramingRect();
    if (localRect1 == null) {
      return;
    }
    if (!this.isFirst)
    {
      this.isFirst = true;
      this.slideTop = (localRect1.top + this.bgPadding - MIDDLE_LINE_HEIGHT);
      this.slideBottom = (localRect1.bottom - this.bgPadding);
    }
    int i = paramCanvas.getWidth();
    int j = paramCanvas.getHeight();
    int k = DPIUtil.dip2px(25.0F);
    this.paint.setColor(this.resultColor);
    paramCanvas.drawRect(new RectF(0.0F, 0.0F, i + k, localRect1.top - k), this.paint);
    paramCanvas.drawRect(new RectF(0.0F, localRect1.top - k, localRect1.left - k, 1 + (k + localRect1.bottom)), this.paint);
    paramCanvas.drawRect(new RectF(k + (1 + localRect1.right), localRect1.top - k, i + k, 1 + (k + localRect1.bottom)), this.paint);
    paramCanvas.drawRect(new RectF(0.0F, 1 + (k + localRect1.bottom), i + k, j + k), this.paint);
    Paint localPaint1 = this.paint;
    if (this.resultBitmap != null) {}
    for (int m = this.resultColor;; m = this.maskColor)
    {
      localPaint1.setColor(m);
      if (this.resultBitmap == null) {
        break;
      }
      this.paint.setAlpha(255);
      paramCanvas.drawBitmap(this.resultBitmap, localRect1.left, localRect1.top, this.paint);
      return;
    }
    this.paint.setColor(-16711936);
    Matrix localMatrix = new Matrix();
    paramCanvas.drawBitmap(this.arrowBmp, localRect1.left, localRect1.top, this.paint);
    int n = this.arrowBmp.getWidth();
    int i1 = this.arrowBmp.getHeight();
    localMatrix.setRotate(90.0F);
    paramCanvas.drawBitmap(Bitmap.createBitmap(this.arrowBmp, 0, 0, this.arrowBmp.getWidth(), this.arrowBmp.getHeight(), localMatrix, true), localRect1.right - n, localRect1.top, this.paint);
    localMatrix.setRotate(180.0F);
    paramCanvas.drawBitmap(Bitmap.createBitmap(this.arrowBmp, 0, 0, this.arrowBmp.getWidth(), this.arrowBmp.getHeight(), localMatrix, true), localRect1.right - n, localRect1.bottom - i1, this.paint);
    localMatrix.setRotate(270.0F);
    paramCanvas.drawBitmap(Bitmap.createBitmap(this.arrowBmp, 0, 0, this.arrowBmp.getWidth(), this.arrowBmp.getHeight(), localMatrix, true), localRect1.left, localRect1.bottom - i1, this.paint);
    paramCanvas.drawBitmap(this.bgBmp, new Rect(0, 0, this.bgBmp.getWidth(), this.bgBmp.getHeight()), new Rect(localRect1.left + this.bgPadding, localRect1.top + this.bgPadding, localRect1.right - this.bgPadding, localRect1.bottom - this.bgPadding), this.paint);
    Bitmap localBitmap;
    if (this.isLine)
    {
      localBitmap = this.middleLineBmp;
      MIDDLE_LINE_HEIGHT = DPIUtil.dip2px(2.5F);
    }
    for (;;)
    {
      label655:
      label702:
      Rect localRect2;
      label797:
      Collection localCollection1;
      Collection localCollection2;
      if (this.isReverse)
      {
        this.slideTop = (-15 + this.slideTop);
        if (this.slideTop <= localRect1.bottom - this.bgPadding - MIDDLE_LINE_HEIGHT) {
          break label1040;
        }
        this.isLine = true;
        this.isReverse = true;
        this.slideTop = (localRect1.bottom - this.bgPadding - MIDDLE_LINE_HEIGHT);
        localRect2 = new Rect(1 + localRect1.left + this.bgPadding, this.slideTop, -1 + localRect1.right - this.bgPadding, this.slideTop + MIDDLE_LINE_HEIGHT);
        if ((localBitmap == null) || (localBitmap.isRecycled())) {
          break label1081;
        }
        Rect localRect3 = new Rect(0, 0, localBitmap.getWidth(), localBitmap.getHeight());
        Paint localPaint2 = this.paint;
        paramCanvas.drawBitmap(localBitmap, localRect3, localRect2, localPaint2);
        this.paint.setColor(-12301747);
        this.paint.setTextSize(16.0F * density);
        this.paint.setTypeface(Typeface.create("System", 1));
        String str = getResources().getString(2131166578);
        float f = this.paint.measureText(str);
        paramCanvas.drawText(str, (int)((localRect1.left + localRect1.right) / 2 - f / 2.0F), k + localRect1.bottom + 30.0F * density, this.paint);
        localCollection1 = this.possibleResultPoints;
        localCollection2 = this.lastPossibleResultPoints;
        if (!localCollection1.isEmpty()) {
          break label1094;
        }
        this.lastPossibleResultPoints = null;
        if (localCollection2 == null) {}
      }
      synchronized (this.possibleResultPoints)
      {
        this.paint.setAlpha(127);
        this.paint.setColor(this.resultPointColor);
        Iterator localIterator2 = localCollection2.iterator();
        if (!localIterator2.hasNext())
        {
          postInvalidateDelayed(10L, localRect1.left, localRect1.top, localRect1.right, localRect1.bottom);
          return;
          localBitmap = this.middleBmp;
          MIDDLE_LINE_HEIGHT = DPIUtil.dip2px(55.0F);
          continue;
          this.slideTop = (15 + this.slideTop);
          break label655;
          label1040:
          if (this.slideTop >= localRect1.top + this.bgPadding) {
            break label702;
          }
          this.isReverse = false;
          this.slideTop = (localRect1.top + this.bgPadding + MIDDLE_LINE_HEIGHT);
          break label702;
          label1081:
          paramCanvas.drawRect(localRect2, this.paint);
          break label797;
          label1094:
          this.possibleResultPoints = new HashSet(5);
          for (;;)
          {
            Iterator localIterator1;
            synchronized (this.possibleResultPoints)
            {
              this.lastPossibleResultPoints = localCollection1;
              this.paint.setAlpha(255);
              this.paint.setColor(this.resultPointColor);
              localIterator1 = localCollection1.iterator();
              if (localIterator1.hasNext()) {}
            }
            ResultPoint localResultPoint1 = (ResultPoint)localIterator1.next();
            paramCanvas.drawCircle(localRect1.left + localResultPoint1.getX(), localRect1.top + localResultPoint1.getY(), 6.0F, this.paint);
          }
        }
        ResultPoint localResultPoint2 = (ResultPoint)localIterator2.next();
        paramCanvas.drawCircle(localRect1.left + localResultPoint2.getX(), localRect1.top + localResultPoint2.getY(), 3.0F, this.paint);
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.ViewfinderView
 * JD-Core Version:    0.7.0.1
 */