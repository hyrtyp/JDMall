package com.jingdong.common.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.FloatMath;
import android.view.MotionEvent;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;

public class NoTouchImageView
  extends ImageView
{
  private static final int DRAG = 1;
  private static final int NONE = 0;
  private static final String TAG = "TouchImageView";
  private Matrix currentMatrix = new Matrix();
  private float currentScale;
  private Rect globalRect = new Rect();
  private float imageBotttom;
  private PointF imageCenterPoint = new PointF();
  private float imageLeft;
  private float imageRight;
  private float imageTop;
  private boolean isInitStandardMatrix;
  private PointF midPoint = new PointF();
  private int mode = 0;
  private float referenceDistance = 1.0F;
  private PointF referenceImageCenterPoint = new PointF();
  private Matrix referenceMatrix = new Matrix();
  private PointF referencePoint = new PointF();
  private float referenceScale;
  private int srcHeight;
  private int srcWidth;
  private Matrix standardMatrix = new Matrix();
  private float standardScale;
  
  public NoTouchImageView(Context paramContext)
  {
    super(paramContext);
    init();
  }
  
  public NoTouchImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }
  
  public NoTouchImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }
  
  private void correctZoom()
  {
    if (this.currentScale <= this.standardScale)
    {
      this.currentScale = this.standardScale;
      this.imageCenterPoint.set(this.midPoint);
      this.currentMatrix.set(this.standardMatrix);
    }
    if (this.currentScale >= 4.0F)
    {
      this.currentScale = 4.0F;
      Matrix localMatrix = new Matrix();
      localMatrix.set(this.standardMatrix);
      localMatrix.postScale(4.0F, 4.0F, this.midPoint.x, this.midPoint.y);
      this.currentMatrix.set(localMatrix);
    }
    setImageMatrix(this.currentMatrix);
  }
  
  private float getCurHeight()
  {
    return this.srcHeight * this.currentScale;
  }
  
  private float getCurWidth()
  {
    return this.srcWidth * this.currentScale;
  }
  
  private void init() {}
  
  private void zoom(float paramFloat)
  {
    this.currentMatrix.postScale(paramFloat, paramFloat, this.midPoint.x, this.midPoint.y);
    this.currentScale = (paramFloat * this.currentScale);
    float f1 = this.referenceImageCenterPoint.x - this.midPoint.x;
    float f2 = this.referenceImageCenterPoint.y - this.midPoint.y;
    if (f1 < 0.0F)
    {
      this.imageCenterPoint.x = (this.referenceImageCenterPoint.x - FloatMath.sqrt(paramFloat * Math.abs(f1)));
      if (f1 >= 0.0F) {
        break label164;
      }
    }
    label164:
    for (this.imageCenterPoint.y = (this.referenceImageCenterPoint.y - FloatMath.sqrt(paramFloat * Math.abs(f2)));; this.imageCenterPoint.y = (this.referenceImageCenterPoint.y + FloatMath.sqrt(paramFloat * Math.abs(f2))))
    {
      setImageMatrix(this.currentMatrix);
      return;
      this.imageCenterPoint.x = (this.referenceImageCenterPoint.x + FloatMath.sqrt(paramFloat * Math.abs(f1)));
      break;
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (!this.isInitStandardMatrix)
    {
      this.standardMatrix.set(getImageMatrix());
      this.referenceMatrix.set(getImageMatrix());
      this.currentMatrix.set(getImageMatrix());
      this.isInitStandardMatrix = true;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default: 
    case 0: 
    case 2: 
      do
      {
        return true;
        this.referencePoint.set(paramMotionEvent.getX(), paramMotionEvent.getY());
        this.referenceMatrix.set(getImageMatrix());
        this.mode = 1;
        return true;
      } while (this.mode != 1);
      this.currentMatrix.set(this.referenceMatrix);
      float f1 = paramMotionEvent.getX() - this.referencePoint.x;
      float f2 = paramMotionEvent.getY() - this.referencePoint.y;
      this.currentMatrix.postTranslate(f1, f2);
      setImageMatrix(this.currentMatrix);
      return true;
    }
    this.mode = 0;
    return true;
  }
  
  protected boolean setFrame(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool = super.setFrame(paramInt1, paramInt2, paramInt3, paramInt4);
    if (getScaleType() != ImageView.ScaleType.MATRIX) {
      setScaleType(ImageView.ScaleType.MATRIX);
    }
    this.srcHeight = getDrawable().getIntrinsicHeight();
    this.srcWidth = getDrawable().getIntrinsicWidth();
    getLocalVisibleRect(this.globalRect);
    if ((this.midPoint.x == 0.0F) && (this.midPoint.y == 0.0F)) {
      this.midPoint.set(this.globalRect.centerX(), this.globalRect.centerY());
    }
    this.standardScale = Math.min(this.globalRect.height() / this.srcHeight, this.globalRect.width() / this.srcWidth);
    this.imageCenterPoint.set(this.globalRect.centerX(), this.globalRect.centerY());
    return bool;
  }
  
  public void setImageBitmap(Bitmap paramBitmap)
  {
    super.setImageBitmap(paramBitmap);
    this.currentMatrix.set(getImageMatrix());
  }
  
  public void zoomIn()
  {
    zoom(0.8F);
  }
  
  public void zoomOut()
  {
    zoom(1.25F);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.NoTouchImageView
 * JD-Core Version:    0.7.0.1
 */