package com.jingdong.common.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import android.widget.Scroller;

public class TouchImageView
  extends View
  implements MultiTouchController.MultiTouchObjectCanvas<Img>
{
  private static final int ANIMATION_DURATION = 600;
  public static final String TAG = "TouchImageView";
  private static final int UI_MODE_ANISOTROPIC_SCALE = 2;
  private static final int UI_MODE_ROTATE = 1;
  private static final Interpolator sInterpolator = new Interpolator()
  {
    public float getInterpolation(float paramAnonymousFloat)
    {
      float f = paramAnonymousFloat - 1.0F;
      return 1.0F + f * (f * (f * (f * f)));
    }
  };
  private MultiTouchController.PointInfo currTouchPoint = new MultiTouchController.PointInfo();
  private Img img = null;
  private boolean isFling = false;
  private boolean isScaling = false;
  ControllListener mControllListener;
  private final GesDetector mGesDetector = new GesDetector(paramContext, new MyGesListener(null));
  private ScaleAnimation mScaleAnimation = new ScaleAnimation();
  private Scroller mScroller;
  private boolean mShowDebugInfo = false;
  private int mUIMode = 1;
  private MultiTouchController<Img> multiTouchController = new MultiTouchController(this);
  
  public TouchImageView(Context paramContext)
  {
    this(paramContext, null);
    initView();
  }
  
  public TouchImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
    initView();
  }
  
  public TouchImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.mScroller = new Scroller(paramContext, sInterpolator);
    initView();
  }
  
  private void computeAnimation()
  {
    float f1 = this.img.getCenterX();
    float f2 = this.img.getCenterY();
    float f3 = this.img.getScaleX();
    float f4 = this.img.getScaleY();
    boolean bool = this.mScaleAnimation.calculate(SystemClock.uptimeMillis());
    int i = 0;
    if (bool)
    {
      i = 0x0 | 0x1;
      f4 = this.mScaleAnimation.getScale();
      f3 = f4;
    }
    if ((!this.mScroller.isFinished()) && (this.mScroller.computeScrollOffset()))
    {
      i |= 0x1;
      f1 = this.mScroller.getCurrX();
      f2 = this.mScroller.getCurrY();
    }
    if (i != 0)
    {
      if (!this.isFling)
      {
        this.img.scrollTo(f1, f2, f3, f4);
        ViewCompat.postInvalidateOnAnimation(this);
        return;
      }
      if (this.img.flingTo(f1, f2))
      {
        ViewCompat.postInvalidateOnAnimation(this);
        return;
      }
      this.isFling = false;
      this.mScroller.abortAnimation();
      return;
    }
    this.isFling = false;
    this.mScroller.abortAnimation();
    this.mScaleAnimation.forceStop();
  }
  
  private void drawMultitouchDebugMarks(Canvas paramCanvas) {}
  
  private boolean endDrag()
  {
    int i = (int)this.img.getCenterX();
    int j = (int)this.img.getCenterY();
    int k = i;
    int m = j;
    int n;
    int i1;
    label106:
    int i2;
    int i3;
    boolean bool3;
    Scroller localScroller;
    if (this.img.getMaxX() - this.img.getMinX() < this.img.getDisplayWidth())
    {
      n = 0x0 | 0x1;
      k = this.img.getDisplayWidth() / 2;
      if (this.img.getMaxY() - this.img.getMinY() >= this.img.getDisplayHeight()) {
        break label293;
      }
      i1 = 1;
      m = this.img.getDisplayHeight() / 2;
      i2 = k - i;
      i3 = m - j;
      if (((n == 0) && (i1 == 0)) || (i2 == 0))
      {
        bool3 = false;
        if (i3 == 0) {}
      }
      else
      {
        this.mScroller.forceFinished(true);
        localScroller = this.mScroller;
        if (n == 0) {
          break label393;
        }
      }
    }
    label393:
    for (int i4 = i2;; i4 = 0)
    {
      int i5 = 0;
      if (i1 != 0) {
        i5 = i3;
      }
      localScroller.startScroll(i, j, i4, i5, 600);
      bool3 = true;
      return bool3;
      if (this.img.getMaxX() < this.img.getDisplayWidth())
      {
        n = 0x0 | 0x1;
        k = (int)(this.img.getCenterX() + (this.img.getDisplayWidth() - this.img.getMaxX()));
        break;
      }
      boolean bool1 = this.img.getMinX() < 0.0F;
      n = 0;
      if (!bool1) {
        break;
      }
      n = 0x0 | 0x1;
      k = (int)(this.img.getCenterX() + -this.img.getMinX());
      break;
      label293:
      if (this.img.getMaxY() < this.img.getDisplayHeight())
      {
        i1 = 0x0 | 0x1;
        m = (int)(this.img.getCenterY() + (this.img.getDisplayHeight() - this.img.getMaxY()));
        break label106;
      }
      boolean bool2 = this.img.getMinY() < 0.0F;
      i1 = 0;
      if (!bool2) {
        break label106;
      }
      i1 = 0x0 | 0x1;
      m = (int)(this.img.getCenterY() + -this.img.getMinY());
      break label106;
    }
  }
  
  private void initView()
  {
    setBackgroundColor(-1);
  }
  
  private void scaleTo(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (this.img == null) {
      return;
    }
    if (!this.img.containsPoint(paramFloat1, paramFloat2))
    {
      paramFloat1 = Math.max(this.img.getMinX(), Math.min(paramFloat1, this.img.getMaxX()));
      paramFloat2 = Math.max(this.img.getMinY(), Math.min(paramFloat2, this.img.getMaxY()));
    }
    this.mScaleAnimation.init(this.img.getScaleX(), paramFloat3);
    this.mScaleAnimation.setDuration(300);
    this.mScaleAnimation.start();
    int i = (int)this.img.getCenterX();
    int j = (int)this.img.getCenterY();
    int k = (int)paramFloat1 - i;
    int m = (int)paramFloat2 - j;
    if ((k != 0) || (m != 0))
    {
      this.mScroller.forceFinished(true);
      this.mScroller.startScroll(i, j, k, m, 300);
    }
    ViewCompat.postInvalidateOnAnimation(this);
  }
  
  public Img getDraggableObjectAtPoint(MultiTouchController.PointInfo paramPointInfo)
  {
    return this.img;
  }
  
  public Img getImg()
  {
    return this.img;
  }
  
  public void getPositionAndScale(Img paramImg, MultiTouchController.PositionAndScale paramPositionAndScale)
  {
    float f1 = paramImg.getCenterX();
    float f2 = paramImg.getCenterY();
    boolean bool1;
    float f3;
    if ((0x2 & this.mUIMode) == 0)
    {
      bool1 = true;
      f3 = (paramImg.getScaleX() + paramImg.getScaleY()) / 2.0F;
      if ((0x2 & this.mUIMode) == 0) {
        break label105;
      }
    }
    label105:
    for (boolean bool2 = true;; bool2 = false)
    {
      float f4 = paramImg.getScaleX();
      float f5 = paramImg.getScaleY();
      int i = 0x1 & this.mUIMode;
      boolean bool3 = false;
      if (i != 0) {
        bool3 = true;
      }
      paramPositionAndScale.set(f1, f2, bool1, f3, bool2, f4, f5, bool3);
      return;
      bool1 = false;
      break;
    }
  }
  
  public ControllListener getTapListener()
  {
    return this.mControllListener;
  }
  
  public void load()
  {
    if (this.img != null) {
      this.img.load();
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (this.img == null) {
      return;
    }
    this.img.load();
    this.img.draw(paramCanvas);
    if (this.mShowDebugInfo) {
      drawMultitouchDebugMarks(paramCanvas);
    }
    computeAnimation();
  }
  
  protected void onImgRecycled() {}
  
  public boolean onScale(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (this.img == null) {}
    while (!this.img.scale(paramFloat1, paramFloat2, paramFloat3, paramFloat3)) {
      return true;
    }
    ViewCompat.postInvalidateOnAnimation(this);
    return true;
  }
  
  public boolean onScaleBegin(float paramFloat1, float paramFloat2)
  {
    this.isScaling = true;
    return true;
  }
  
  public void onScaleEnd()
  {
    this.isScaling = false;
    snapback();
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    this.mGesDetector.onTouchEvent(paramMotionEvent);
    this.multiTouchController.onTouchEvent(paramMotionEvent);
    return true;
  }
  
  public void selectObject(Img paramImg, MultiTouchController.PointInfo paramPointInfo)
  {
    this.currTouchPoint.set(paramPointInfo);
    invalidate();
  }
  
  public void setImageBitmap(Bitmap paramBitmap)
  {
    this.img = new Img(paramBitmap);
    invalidate();
  }
  
  public void setTapListener(ControllListener paramControllListener)
  {
    this.mControllListener = paramControllListener;
  }
  
  void snapback()
  {
    if (this.img == null) {}
    for (;;)
    {
      return;
      boolean bool = endDrag();
      if (this.img.getScaleX() > 3.0F)
      {
        bool |= true;
        this.mScaleAnimation.init(this.img.getScaleX(), 3.0F);
        this.mScaleAnimation.start();
      }
      while (bool)
      {
        ViewCompat.postInvalidateOnAnimation(this);
        return;
        if (this.img.getScaleX() < 1.0F)
        {
          bool |= true;
          this.mScaleAnimation.init(this.img.getScaleX(), 1.0F);
          this.mScaleAnimation.start();
        }
      }
    }
  }
  
  public void trackballClicked()
  {
    this.mUIMode = ((1 + this.mUIMode) % 3);
    invalidate();
  }
  
  public static abstract interface ControllListener
  {
    public abstract void onSingleTapUp();
  }
  
  class GesDetector
  {
    private final DownDetector mDownDetector;
    private final GestureDetector mGestureDetector;
    private final TouchImageView.Listener mListener;
    
    public GesDetector(Context paramContext, TouchImageView.Listener paramListener)
    {
      this.mListener = paramListener;
      this.mGestureDetector = new GestureDetector(paramContext, new MyGesListener(null));
      this.mDownDetector = new DownDetector(null);
    }
    
    public void onTouchEvent(MotionEvent paramMotionEvent)
    {
      this.mGestureDetector.onTouchEvent(paramMotionEvent);
      this.mDownDetector.onTouchEvent(paramMotionEvent);
    }
    
    private class DownDetector
    {
      private boolean isDown;
      
      private DownDetector() {}
      
      public void onTouchEvent(MotionEvent paramMotionEvent)
      {
        switch (MotionEventCompat.getActionMasked(paramMotionEvent))
        {
        }
        do
        {
          do
          {
            return;
          } while (this.isDown);
          this.isDown = true;
          TouchImageView.GesDetector.this.mListener.onDown(paramMotionEvent.getX(), paramMotionEvent.getY());
          return;
        } while (!this.isDown);
        this.isDown = false;
        TouchImageView.GesDetector.this.mListener.onUp();
      }
    }
    
    private class MyGesListener
      extends GestureDetector.SimpleOnGestureListener
    {
      private MyGesListener() {}
      
      public boolean onDoubleTap(MotionEvent paramMotionEvent)
      {
        return TouchImageView.GesDetector.this.mListener.onDoubleTap(paramMotionEvent.getX(), paramMotionEvent.getY());
      }
      
      public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
      {
        return TouchImageView.GesDetector.this.mListener.onFling(paramFloat1, paramFloat2);
      }
      
      public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
      {
        return TouchImageView.GesDetector.this.mListener.onScroll(paramFloat1, paramFloat2, paramMotionEvent2.getX() - paramMotionEvent1.getX(), paramMotionEvent2.getY() - paramMotionEvent1.getY());
      }
      
      public boolean onSingleTapUp(MotionEvent paramMotionEvent)
      {
        return TouchImageView.GesDetector.this.mListener.onSingleTapUp(paramMotionEvent.getX(), paramMotionEvent.getY());
      }
    }
  }
  
  public class Img
  {
    public static final float MAX_SCALE_FACTOR = 3.0F;
    public static final float MIN_SCALE_FACTOR = 1.0F;
    private Bitmap bitmap;
    private float centerX;
    private float centerY;
    private int displayHeight;
    private int displayWidth;
    private Drawable drawable;
    private int height;
    boolean isOnError = false;
    private float maxX;
    private float maxY;
    private float minX;
    private float minY;
    private float scaleX;
    private float scaleY;
    private int width;
    
    public Img(Bitmap paramBitmap)
    {
      this.bitmap = paramBitmap;
      this.drawable = new BitmapDrawable(paramBitmap);
      load();
    }
    
    private void checkImg()
    {
      if ((this.drawable != null) && ((this.drawable instanceof BitmapDrawable)))
      {
        localBitmap = ((BitmapDrawable)this.drawable).getBitmap();
        if ((localBitmap == null) || (localBitmap.isRecycled())) {
          if (!this.isOnError)
          {
            TouchImageView.this.onImgRecycled();
            this.isOnError = true;
          }
        }
      }
      while (this.isOnError)
      {
        Bitmap localBitmap;
        return;
        this.isOnError = false;
        return;
      }
      TouchImageView.this.onImgRecycled();
      this.isOnError = true;
    }
    
    private boolean computeFling()
    {
      float f1 = this.width / 2 * this.scaleX;
      float f2 = this.height / 2 * this.scaleY;
      boolean bool1 = f1 * 2.0F < this.displayWidth;
      boolean bool2 = false;
      if (bool1)
      {
        boolean bool3 = this.centerX - f1 < 0.0F;
        bool2 = false;
        if (!bool3)
        {
          boolean bool4 = f1 + this.centerX < this.displayWidth;
          bool2 = false;
          if (!bool4) {
            bool2 = true;
          }
        }
      }
      if ((f2 * 2.0F > this.displayHeight) && (this.centerY - f2 <= 0.0F) && (f2 + this.centerY >= this.displayHeight)) {
        bool2 = true;
      }
      return bool2;
    }
    
    private boolean flingTo(float paramFloat1, float paramFloat2)
    {
      float f1 = this.width / 2 * this.scaleX;
      float f2 = this.height / 2 * this.scaleY;
      boolean bool1 = f1 * 2.0F < this.displayWidth;
      boolean bool2 = false;
      if (bool1)
      {
        boolean bool3 = paramFloat1 - f1 < 0.0F;
        bool2 = false;
        if (!bool3)
        {
          boolean bool4 = paramFloat1 + f1 < this.displayWidth;
          bool2 = false;
          if (!bool4)
          {
            this.centerX = paramFloat1;
            this.minX = (paramFloat1 - f1);
            this.maxX = (paramFloat1 + f1);
            bool2 = true;
          }
        }
      }
      if ((f2 * 2.0F > this.displayHeight) && (paramFloat2 - f2 <= 0.0F) && (paramFloat2 + f2 >= this.displayHeight))
      {
        this.centerY = paramFloat2;
        this.minY = (paramFloat2 - f2);
        this.maxY = (paramFloat2 + f2);
        bool2 = true;
      }
      return bool2;
    }
    
    private boolean scale(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
    {
      float f1 = Math.max(0.5F, Math.min(3.3F, paramFloat4));
      float f2 = Math.max(0.5F, Math.min(3.3F, paramFloat3));
      if (f2 != f1) {
        f2 = f1;
      }
      float f3 = f2 * (this.width / 2);
      float f4 = f1 * (this.height / 2);
      (f2 * this.width);
      (f1 * this.height);
      float f5 = paramFloat1 - f3;
      float f6 = paramFloat2 - f4;
      float f7 = paramFloat1 + f3;
      float f8 = paramFloat2 + f4;
      this.centerX = paramFloat1;
      this.scaleX = f2;
      this.minX = f5;
      this.maxX = f7;
      this.centerY = paramFloat2;
      this.scaleY = f1;
      this.minY = f6;
      this.maxY = f8;
      return true;
    }
    
    private boolean scrollTo(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
    {
      float f1 = Math.max(0.5F, Math.min(3.3F, paramFloat4));
      float f2 = Math.max(0.5F, Math.min(3.3F, paramFloat3));
      if ((f2 != paramFloat3) || (f1 != paramFloat4)) {
        return false;
      }
      if (f2 != f1) {
        f2 = f1;
      }
      float f3 = f2 * (this.width / 2);
      float f4 = f1 * (this.height / 2);
      float f5 = paramFloat1 - f3;
      float f6 = paramFloat2 - f4;
      float f7 = paramFloat1 + f3;
      float f8 = paramFloat2 + f4;
      this.centerX = paramFloat1;
      this.scaleX = f2;
      this.minX = f5;
      this.maxX = f7;
      this.centerY = paramFloat2;
      this.scaleY = f1;
      this.minY = f6;
      this.maxY = f8;
      return true;
    }
    
    private boolean setPos(float paramFloat1, float paramFloat2)
    {
      float f1 = this.width / 2 * this.scaleX;
      float f2 = this.height / 2 * this.scaleY;
      boolean bool1 = f1 * 2.0F < this.displayWidth;
      boolean bool2 = false;
      if (bool1)
      {
        boolean bool3 = paramFloat1 - f1 < 0.0F;
        bool2 = false;
        if (!bool3)
        {
          boolean bool4 = paramFloat1 + f1 < this.displayWidth;
          bool2 = false;
          if (!bool4)
          {
            this.centerX = paramFloat1;
            this.minX = (paramFloat1 - f1);
            this.maxX = (paramFloat1 + f1);
            bool2 = true;
          }
        }
      }
      if ((bool2) && (f2 * 2.0F > this.displayHeight) && (paramFloat2 - f2 <= 0.0F) && (paramFloat2 + f2 >= this.displayHeight))
      {
        this.centerY = paramFloat2;
        this.minY = (paramFloat2 - f2);
        this.maxY = (paramFloat2 + f2);
      }
      return bool2;
    }
    
    private boolean setPos(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
    {
      float f1 = Math.max(0.5F, Math.min(3.3F, paramFloat4));
      float f2 = Math.max(0.5F, Math.min(3.3F, paramFloat3));
      if ((f2 != paramFloat3) || (f1 != paramFloat4)) {
        return false;
      }
      if (f2 != f1) {
        f2 = f1;
      }
      float f3 = f2 * (this.width / 2);
      float f4 = f1 * (this.height / 2);
      float f5 = f2 * this.width;
      float f6 = f1 * this.height;
      if (f5 <= this.displayWidth) {
        paramFloat1 = this.displayWidth / 2;
      }
      if (f6 <= this.displayHeight) {
        paramFloat2 = this.displayHeight / 2;
      }
      if (f5 <= this.displayWidth)
      {
        paramFloat1 = this.displayWidth / 2;
        if (f6 > this.displayHeight) {
          break label288;
        }
        paramFloat2 = this.displayHeight / 2;
      }
      for (;;)
      {
        float f7 = paramFloat1 - f3;
        float f8 = paramFloat2 - f4;
        float f9 = paramFloat1 + f3;
        float f10 = paramFloat2 + f4;
        this.centerX = paramFloat1;
        this.scaleX = f2;
        this.minX = f7;
        this.maxX = f9;
        this.centerY = paramFloat2;
        this.scaleY = f1;
        this.minY = f8;
        this.maxY = f10;
        return true;
        if (paramFloat1 - f3 > 0.0F)
        {
          paramFloat1 = f3;
          break;
        }
        if (paramFloat1 + f3 >= this.displayWidth) {
          break;
        }
        paramFloat1 = this.displayWidth - f3;
        break;
        label288:
        if (paramFloat2 - f4 > 0.0F) {
          paramFloat2 = f4;
        } else if (paramFloat2 + f4 < this.displayHeight) {
          paramFloat2 = this.displayHeight - f4;
        }
      }
    }
    
    public boolean containsPoint(float paramFloat1, float paramFloat2)
    {
      return (paramFloat1 >= this.minX) && (paramFloat1 <= this.maxX) && (paramFloat2 >= this.minY) && (paramFloat2 <= this.maxY);
    }
    
    public void draw(Canvas paramCanvas)
    {
      checkImg();
      if (this.isOnError) {
        return;
      }
      paramCanvas.save();
      this.drawable.setBounds((int)this.minX, (int)this.minY, (int)this.maxX, (int)this.maxY);
      this.drawable.draw(paramCanvas);
      paramCanvas.restore();
    }
    
    public float getCenterX()
    {
      return this.centerX;
    }
    
    public float getCenterY()
    {
      return this.centerY;
    }
    
    public int getDisplayHeight()
    {
      return this.displayHeight;
    }
    
    public int getDisplayWidth()
    {
      return this.displayWidth;
    }
    
    public Drawable getDrawable()
    {
      return this.drawable;
    }
    
    public int getHeight()
    {
      return this.height;
    }
    
    public float getMaxX()
    {
      return this.maxX;
    }
    
    public float getMaxY()
    {
      return this.maxY;
    }
    
    public float getMinX()
    {
      return this.minX;
    }
    
    public float getMinY()
    {
      return this.minY;
    }
    
    public float getScaleX()
    {
      return this.scaleX;
    }
    
    public float getScaleY()
    {
      return this.scaleY;
    }
    
    public int getWidth()
    {
      return this.width;
    }
    
    public void load()
    {
      if ((this.displayWidth > 0) && (this.displayHeight > 0)) {
        return;
      }
      this.displayWidth = TouchImageView.this.getWidth();
      this.displayHeight = TouchImageView.this.getHeight();
      this.width = this.bitmap.getWidth();
      this.height = this.bitmap.getHeight();
      float f1 = this.displayWidth / 2;
      float f2 = this.displayHeight / 2;
      float f3 = Math.max(0.5F, Math.min(3.3F, 1.0F));
      float f4 = Math.max(0.5F, Math.min(3.3F, 1.0F));
      if (f4 != f3) {
        f4 = f3;
      }
      float f5 = f4 * (this.width / 2);
      float f6 = f3 * (this.height / 2);
      float f7 = f1 - f5;
      float f8 = f2 - f6;
      float f9 = f1 + f5;
      float f10 = f2 + f6;
      this.centerX = f1;
      this.scaleX = f4;
      this.minX = f7;
      this.maxX = f9;
      this.centerY = f2;
      this.scaleY = f3;
      this.minY = f8;
      this.maxY = f10;
    }
    
    public void setDisplayHeight(int paramInt)
    {
      this.displayHeight = paramInt;
    }
    
    public void setDisplayWidth(int paramInt)
    {
      this.displayWidth = paramInt;
    }
    
    public boolean setPos(MultiTouchController.PositionAndScale paramPositionAndScale)
    {
      float f1 = paramPositionAndScale.getXOff();
      float f2 = paramPositionAndScale.getYOff();
      float f3;
      if ((0x2 & TouchImageView.this.mUIMode) != 0)
      {
        f3 = paramPositionAndScale.getScaleX();
        if ((0x2 & TouchImageView.this.mUIMode) == 0) {
          break label66;
        }
      }
      label66:
      for (float f4 = paramPositionAndScale.getScaleY();; f4 = paramPositionAndScale.getScale())
      {
        return setPos(f1, f2, f3, f4);
        f3 = paramPositionAndScale.getScale();
        break;
      }
    }
    
    public void unload()
    {
      this.drawable = null;
    }
    
    public void zoomIn()
    {
      if (setPos(this.centerX, this.centerY, this.scaleX - 0.8F, this.scaleY - 0.8F)) {
        TouchImageView.this.invalidate();
      }
    }
    
    public void zoomOut()
    {
      if (setPos(this.centerX, this.centerY, 0.8F + this.scaleX, 0.8F + this.scaleY)) {
        TouchImageView.this.invalidate();
      }
    }
  }
  
  static abstract interface Listener
  {
    public abstract boolean onDoubleTap(float paramFloat1, float paramFloat2);
    
    public abstract void onDown(float paramFloat1, float paramFloat2);
    
    public abstract boolean onFling(float paramFloat1, float paramFloat2);
    
    public abstract boolean onScroll(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4);
    
    public abstract boolean onSingleTapUp(float paramFloat1, float paramFloat2);
    
    public abstract void onUp();
  }
  
  private class MyGesListener
    implements TouchImageView.Listener
  {
    private boolean mNoUp = false;
    
    private MyGesListener() {}
    
    public boolean onDoubleTap(float paramFloat1, float paramFloat2)
    {
      return true;
    }
    
    public void onDown(float paramFloat1, float paramFloat2)
    {
      TouchImageView.this.getParent().requestDisallowInterceptTouchEvent(true);
    }
    
    public boolean onFling(float paramFloat1, float paramFloat2)
    {
      if (TouchImageView.this.isScaling) {}
      while ((TouchImageView.this.img == null) || (!TouchImageView.this.img.computeFling())) {
        return true;
      }
      TouchImageView.this.mScroller.forceFinished(true);
      TouchImageView.this.mScroller.fling((int)TouchImageView.this.img.getCenterX(), (int)TouchImageView.this.img.getCenterY(), (int)paramFloat1 / 2, (int)paramFloat2 / 2, -2147483648, 2147483647, -2147483648, 2147483647);
      TouchImageView.this.isFling = true;
      ViewCompat.postInvalidateOnAnimation(TouchImageView.this);
      return true;
    }
    
    public boolean onScroll(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
    {
      if (TouchImageView.this.isScaling) {}
      while (TouchImageView.this.img == null) {
        return true;
      }
      if (TouchImageView.this.img.setPos(TouchImageView.this.img.getCenterX() + (0.5F + -paramFloat1), TouchImageView.this.img.getCenterY() + (0.5F + -paramFloat2)))
      {
        ViewCompat.postInvalidateOnAnimation(TouchImageView.this);
        return true;
      }
      TouchImageView.this.scaleTo(TouchImageView.this.img.getDisplayWidth() / 2, TouchImageView.this.img.getDisplayHeight() / 2, 1.0F);
      TouchImageView.this.getParent().requestDisallowInterceptTouchEvent(false);
      return true;
    }
    
    public boolean onSingleTapUp(float paramFloat1, float paramFloat2)
    {
      this.mNoUp = true;
      if (TouchImageView.this.mControllListener != null) {
        TouchImageView.this.mControllListener.onSingleTapUp();
      }
      return true;
    }
    
    public void onUp()
    {
      TouchImageView.this.getParent().requestDisallowInterceptTouchEvent(false);
      if (this.mNoUp) {
        this.mNoUp = false;
      }
      while ((TouchImageView.this.img == null) || (!TouchImageView.this.endDrag())) {
        return;
      }
      ViewCompat.postInvalidateOnAnimation(TouchImageView.this);
    }
  }
  
  class ScaleAnimation
  {
    private static final long ANIMATION_START = -1L;
    private static final long NO_ANIMATION = -2L;
    private float mCurrentScale;
    private int mDuration;
    private float mEndScale;
    private Interpolator mInterpolator;
    private float mStartScale;
    private long mStartTime = -2L;
    
    public ScaleAnimation()
    {
      setDuration(600);
      setInterpolator(TouchImageView.sInterpolator);
    }
    
    public boolean calculate(long paramLong)
    {
      if (this.mStartTime == -2L) {
        return false;
      }
      if (this.mStartTime == -1L) {
        this.mStartTime = paramLong;
      }
      int i = (int)(paramLong - this.mStartTime);
      float f1 = clamp(i / this.mDuration, 0.0F, 1.0F);
      Interpolator localInterpolator = this.mInterpolator;
      float f2 = this.mStartScale;
      float f3 = this.mEndScale - this.mStartScale;
      if (localInterpolator != null) {
        f1 = localInterpolator.getInterpolation(f1);
      }
      float f4 = f2 + f3 * f1;
      float f5;
      if (this.mStartScale > this.mEndScale)
      {
        f5 = this.mEndScale;
        if (this.mStartScale <= this.mEndScale) {
          break label189;
        }
      }
      label189:
      for (float f6 = this.mStartScale;; f6 = this.mEndScale)
      {
        this.mCurrentScale = clamp(f4, f5, f6);
        if (i >= this.mDuration) {
          this.mStartTime = -2L;
        }
        if (this.mStartTime == -2L) {
          break label198;
        }
        return true;
        f5 = this.mStartScale;
        break;
      }
      label198:
      return false;
    }
    
    float clamp(float paramFloat1, float paramFloat2, float paramFloat3)
    {
      if (paramFloat1 > paramFloat3) {
        return paramFloat3;
      }
      if (paramFloat1 < paramFloat2) {
        return paramFloat2;
      }
      return paramFloat1;
    }
    
    public void forceStop()
    {
      this.mStartTime = -2L;
    }
    
    public float getScale()
    {
      return this.mCurrentScale;
    }
    
    public void init(float paramFloat1, float paramFloat2)
    {
      this.mStartScale = paramFloat1;
      this.mEndScale = paramFloat2;
      this.mCurrentScale = paramFloat1;
      this.mStartTime = -2L;
    }
    
    public boolean isActive()
    {
      return this.mStartTime != -2L;
    }
    
    public void setDuration(int paramInt)
    {
      this.mDuration = paramInt;
    }
    
    public void setInterpolator(Interpolator paramInterpolator)
    {
      this.mInterpolator = paramInterpolator;
    }
    
    public void setStartTime(long paramLong)
    {
      this.mStartTime = paramLong;
    }
    
    public void start()
    {
      this.mStartTime = -1L;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.TouchImageView
 * JD-Core Version:    0.7.0.1
 */