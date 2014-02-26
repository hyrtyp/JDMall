package com.jingdong.app.mall.utils.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.Transformation;
import android.widget.Adapter;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

public class FlingGallery
  extends FrameLayout
{
  private Adapter mAdapter;
  private FlingGalleryAnimation mAnimation;
  private int mAnimationDuration = 250;
  private Context mContext;
  private float mCurrentOffset = 0.0F;
  private int mCurrentPosition = 0;
  private int mCurrentViewNumber = 0;
  private Interpolator mDecelerateInterpolater;
  private int mFlingDirection = 0;
  private int mGalleryWidth = 0;
  private GestureDetector mGestureDetector;
  private boolean mIsDragging = false;
  private boolean mIsGalleryCircular = true;
  private boolean mIsTouched = false;
  private long mScrollTimestamp = 0L;
  private float mSnapBorderRatio = 0.5F;
  private int mViewPaddingWidth = 0;
  private FlingGalleryView[] mViews;
  private final int swipe_max_off_path = 250;
  private final int swipe_min_distance = 120;
  private final int swipe_threshold_veloicty = 400;
  
  public FlingGallery(Context paramContext)
  {
    super(paramContext);
    init(paramContext);
  }
  
  public FlingGallery(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init(paramContext);
  }
  
  public FlingGallery(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init(paramContext);
  }
  
  private int getNextPosition(int paramInt)
  {
    int i = paramInt + 1;
    if (i > getLastPosition())
    {
      i = 1 + getLastPosition();
      if (this.mIsGalleryCircular) {
        i = getFirstPosition();
      }
    }
    return i;
  }
  
  private int getNextViewNumber(int paramInt)
  {
    if (paramInt == 2) {
      return 0;
    }
    return paramInt + 1;
  }
  
  private int getPrevPosition(int paramInt)
  {
    int i = paramInt - 1;
    if (i < getFirstPosition())
    {
      i = -1 + getFirstPosition();
      if (this.mIsGalleryCircular) {
        i = getLastPosition();
      }
    }
    return i;
  }
  
  private int getPrevViewNumber(int paramInt)
  {
    if (paramInt == 0) {
      return 2;
    }
    return paramInt - 1;
  }
  
  private int getViewOffset(int paramInt1, int paramInt2)
  {
    int i = this.mGalleryWidth + this.mViewPaddingWidth;
    if (paramInt1 == getPrevViewNumber(paramInt2)) {
      return i;
    }
    if (paramInt1 == getNextViewNumber(paramInt2)) {
      return i * -1;
    }
    return 0;
  }
  
  private void init(Context paramContext)
  {
    this.mContext = paramContext;
    this.mAdapter = null;
    this.mViews = new FlingGalleryView[3];
    this.mViews[0] = new FlingGalleryView(0, this);
    this.mViews[1] = new FlingGalleryView(1, this);
    this.mViews[2] = new FlingGalleryView(2, this);
    this.mAnimation = new FlingGalleryAnimation();
    this.mGestureDetector = new GestureDetector(new FlingGestureDetector(null));
    this.mGestureDetector.setIsLongpressEnabled(true);
    this.mDecelerateInterpolater = AnimationUtils.loadInterpolator(this.mContext, 17432582);
    setStaticTransformationsEnabled(true);
  }
  
  public int getFirstPosition()
  {
    return 0;
  }
  
  public int getGalleryCount()
  {
    if (this.mAdapter == null) {
      return 0;
    }
    return this.mAdapter.getCount();
  }
  
  public int getLastPosition()
  {
    if (getGalleryCount() == 0) {
      return 0;
    }
    return -1 + getGalleryCount();
  }
  
  void moveNext()
  {
    this.mFlingDirection = -1;
    processGesture();
  }
  
  void movePrevious()
  {
    this.mFlingDirection = 1;
    processGesture();
  }
  
  public boolean onGalleryTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = this.mGestureDetector.onTouchEvent(paramMotionEvent);
    if ((paramMotionEvent.getAction() == 1) && ((this.mIsTouched) || (this.mIsDragging)))
    {
      processScrollSnap();
      processGesture();
    }
    return bool;
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    switch (paramInt)
    {
    default: 
      return super.onKeyDown(paramInt, paramKeyEvent);
    case 21: 
      movePrevious();
      return true;
    }
    moveNext();
    return true;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    this.mGalleryWidth = (paramInt3 - paramInt1);
    if (paramBoolean)
    {
      this.mViews[0].setOffset(0, 0, this.mCurrentViewNumber);
      this.mViews[1].setOffset(0, 0, this.mCurrentViewNumber);
      this.mViews[2].setOffset(0, 0, this.mCurrentViewNumber);
    }
  }
  
  void processGesture()
  {
    int i = this.mCurrentViewNumber;
    this.mIsTouched = false;
    this.mIsDragging = false;
    int j = this.mFlingDirection;
    int k = 0;
    int m = 0;
    if (j > 0) {
      if (this.mCurrentPosition <= getFirstPosition())
      {
        boolean bool = this.mIsGalleryCircular;
        k = 0;
        m = 0;
        if (!bool) {}
      }
      else
      {
        i = getPrevViewNumber(this.mCurrentViewNumber);
        this.mCurrentPosition = getPrevPosition(this.mCurrentPosition);
        m = getNextViewNumber(this.mCurrentViewNumber);
        k = getPrevPosition(this.mCurrentPosition);
      }
    }
    if ((this.mFlingDirection < 0) && ((this.mCurrentPosition < getLastPosition()) || (this.mIsGalleryCircular)))
    {
      i = getNextViewNumber(this.mCurrentViewNumber);
      this.mCurrentPosition = getNextPosition(this.mCurrentPosition);
      m = getPrevViewNumber(this.mCurrentViewNumber);
      k = getNextPosition(this.mCurrentPosition);
    }
    if (i != this.mCurrentViewNumber)
    {
      this.mCurrentViewNumber = i;
      this.mViews[m].recycleView(k);
    }
    this.mViews[this.mCurrentViewNumber].requestFocus();
    this.mAnimation.prepareAnimation(this.mCurrentViewNumber);
    startAnimation(this.mAnimation);
    this.mFlingDirection = 0;
  }
  
  void processScrollSnap()
  {
    float f = this.mGalleryWidth * this.mSnapBorderRatio;
    int i = this.mGalleryWidth - (int)f;
    int j = this.mViews[this.mCurrentViewNumber].getCurrentOffset();
    if (j <= i * -1) {
      this.mFlingDirection = 1;
    }
    if (j >= i) {
      this.mFlingDirection = -1;
    }
  }
  
  public void setAdapter(Adapter paramAdapter)
  {
    this.mAdapter = paramAdapter;
    this.mCurrentPosition = 0;
    this.mCurrentViewNumber = 0;
    this.mViews[0].recycleView(this.mCurrentPosition);
    this.mViews[1].recycleView(getNextPosition(this.mCurrentPosition));
    this.mViews[2].recycleView(getPrevPosition(this.mCurrentPosition));
    this.mViews[0].setOffset(0, 0, this.mCurrentViewNumber);
    this.mViews[1].setOffset(0, 0, this.mCurrentViewNumber);
    this.mViews[2].setOffset(0, 0, this.mCurrentViewNumber);
  }
  
  public void setAnimationDuration(int paramInt)
  {
    this.mAnimationDuration = paramInt;
  }
  
  public void setIsGalleryCircular(boolean paramBoolean)
  {
    if (this.mIsGalleryCircular != paramBoolean)
    {
      this.mIsGalleryCircular = paramBoolean;
      if (this.mCurrentPosition == getFirstPosition()) {
        this.mViews[getPrevViewNumber(this.mCurrentViewNumber)].recycleView(getPrevPosition(this.mCurrentPosition));
      }
      if (this.mCurrentPosition == getLastPosition()) {
        this.mViews[getNextViewNumber(this.mCurrentViewNumber)].recycleView(getNextPosition(this.mCurrentPosition));
      }
    }
  }
  
  public void setPaddingWidth(int paramInt)
  {
    this.mViewPaddingWidth = paramInt;
  }
  
  public void setSnapBorderRatio(float paramFloat)
  {
    this.mSnapBorderRatio = paramFloat;
  }
  
  private class FlingGalleryAnimation
    extends Animation
  {
    private int mInitialOffset = 0;
    private boolean mIsAnimationInProgres = false;
    private int mRelativeViewNumber = 0;
    private int mTargetDistance = 0;
    private int mTargetOffset = 0;
    
    public FlingGalleryAnimation() {}
    
    protected void applyTransformation(float paramFloat, Transformation paramTransformation)
    {
      if (paramFloat > 1.0F) {
        paramFloat = 1.0F;
      }
      int i = this.mInitialOffset + (int)(paramFloat * this.mTargetDistance);
      for (int j = 0;; j++)
      {
        if (j >= 3) {
          return;
        }
        if (((this.mTargetDistance > 0) && (j != FlingGallery.this.getNextViewNumber(this.mRelativeViewNumber))) || ((this.mTargetDistance < 0) && (j != FlingGallery.this.getPrevViewNumber(this.mRelativeViewNumber)))) {
          FlingGallery.this.mViews[j].setOffset(i, 0, this.mRelativeViewNumber);
        }
      }
    }
    
    public boolean getTransformation(long paramLong, Transformation paramTransformation)
    {
      if (!super.getTransformation(paramLong, paramTransformation))
      {
        FlingGallery.this.mViews[0].setOffset(this.mTargetOffset, 0, this.mRelativeViewNumber);
        FlingGallery.this.mViews[1].setOffset(this.mTargetOffset, 0, this.mRelativeViewNumber);
        FlingGallery.this.mViews[2].setOffset(this.mTargetOffset, 0, this.mRelativeViewNumber);
        this.mIsAnimationInProgres = false;
      }
      while ((FlingGallery.this.mIsTouched) || (FlingGallery.this.mIsDragging)) {
        return false;
      }
      return true;
    }
    
    public void prepareAnimation(int paramInt)
    {
      int i;
      if (this.mRelativeViewNumber != paramInt) {
        if (this.mIsAnimationInProgres)
        {
          if (paramInt != FlingGallery.this.getPrevViewNumber(this.mRelativeViewNumber)) {
            break label194;
          }
          i = 1;
          if (this.mTargetDistance >= 0) {
            break label199;
          }
        }
      }
      label194:
      label199:
      for (int j = 1;; j = -1)
      {
        if (j == i)
        {
          FlingGallery.this.mViews[0].setOffset(this.mTargetOffset, 0, this.mRelativeViewNumber);
          FlingGallery.this.mViews[1].setOffset(this.mTargetOffset, 0, this.mRelativeViewNumber);
          FlingGallery.this.mViews[2].setOffset(this.mTargetOffset, 0, this.mRelativeViewNumber);
        }
        this.mRelativeViewNumber = paramInt;
        this.mInitialOffset = FlingGallery.this.mViews[this.mRelativeViewNumber].getCurrentOffset();
        this.mTargetOffset = FlingGallery.this.getViewOffset(this.mRelativeViewNumber, this.mRelativeViewNumber);
        this.mTargetDistance = (this.mTargetOffset - this.mInitialOffset);
        setDuration(FlingGallery.this.mAnimationDuration);
        setInterpolator(FlingGallery.this.mDecelerateInterpolater);
        this.mIsAnimationInProgres = true;
        return;
        i = -1;
        break;
      }
    }
  }
  
  private class FlingGalleryView
  {
    private View mExternalView = null;
    private LinearLayout mInternalLayout = null;
    private FrameLayout mInvalidLayout = null;
    private FrameLayout mParentLayout;
    private int mViewNumber;
    
    public FlingGalleryView(int paramInt, FrameLayout paramFrameLayout)
    {
      this.mViewNumber = paramInt;
      this.mParentLayout = paramFrameLayout;
      this.mInvalidLayout = new FrameLayout(FlingGallery.this.mContext);
      this.mInvalidLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
      this.mInternalLayout = new LinearLayout(FlingGallery.this.mContext);
      this.mInternalLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
      this.mParentLayout.addView(this.mInternalLayout);
    }
    
    public int getCurrentOffset()
    {
      return this.mInternalLayout.getScrollX();
    }
    
    public void recycleView(int paramInt)
    {
      if (this.mExternalView != null) {
        this.mInternalLayout.removeView(this.mExternalView);
      }
      if (FlingGallery.this.mAdapter != null) {
        if ((paramInt < FlingGallery.this.getFirstPosition()) || (paramInt > FlingGallery.this.getLastPosition())) {
          break label103;
        }
      }
      label103:
      for (this.mExternalView = FlingGallery.this.mAdapter.getView(paramInt, this.mExternalView, this.mInternalLayout);; this.mExternalView = this.mInvalidLayout)
      {
        if (this.mExternalView != null) {
          this.mInternalLayout.addView(this.mExternalView, new LinearLayout.LayoutParams(-1, -1));
        }
        return;
      }
    }
    
    public void requestFocus()
    {
      this.mInternalLayout.requestFocus();
    }
    
    public void setOffset(int paramInt1, int paramInt2, int paramInt3)
    {
      this.mInternalLayout.scrollTo(paramInt1 + FlingGallery.this.getViewOffset(this.mViewNumber, paramInt3), paramInt2);
    }
  }
  
  private class FlingGestureDetector
    implements GestureDetector.OnGestureListener
  {
    private FlingGestureDetector() {}
    
    public boolean onDown(MotionEvent paramMotionEvent)
    {
      FlingGallery.this.mIsTouched = true;
      FlingGallery.this.mFlingDirection = 0;
      return true;
    }
    
    public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
    {
      if (Math.abs(paramMotionEvent1.getY() - paramMotionEvent2.getY()) <= 250.0F)
      {
        if ((paramMotionEvent2.getX() - paramMotionEvent1.getX() > 120.0F) && (Math.abs(paramFloat1) > 400.0F)) {
          FlingGallery.this.movePrevious();
        }
        if ((paramMotionEvent1.getX() - paramMotionEvent2.getX() > 120.0F) && (Math.abs(paramFloat1) > 400.0F)) {
          FlingGallery.this.moveNext();
        }
      }
      return false;
    }
    
    public void onLongPress(MotionEvent paramMotionEvent)
    {
      FlingGallery.this.mFlingDirection = 0;
      FlingGallery.this.processGesture();
    }
    
    public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
    {
      FlingGallery.this.getParent().requestDisallowInterceptTouchEvent(true);
      if (paramMotionEvent2.getAction() == 2)
      {
        if (!FlingGallery.this.mIsDragging)
        {
          FlingGallery.this.mIsTouched = true;
          FlingGallery.this.mIsDragging = true;
          FlingGallery.this.mFlingDirection = 0;
          FlingGallery.this.mScrollTimestamp = System.currentTimeMillis();
          FlingGallery.this.mCurrentOffset = FlingGallery.this.mViews[FlingGallery.this.mCurrentViewNumber].getCurrentOffset();
        }
        float f1 = FlingGallery.this.mGalleryWidth / (FlingGallery.this.mAnimationDuration / 1000.0F) * ((float)(System.currentTimeMillis() - FlingGallery.this.mScrollTimestamp) / 1000.0F);
        float f2 = paramMotionEvent1.getX() - paramMotionEvent2.getX();
        if (f2 < -1.0F * f1) {
          f2 = f1 * -1.0F;
        }
        if (f2 > f1) {
          f2 = f1;
        }
        int i = Math.round(f2 + FlingGallery.this.mCurrentOffset);
        if (i >= FlingGallery.this.mGalleryWidth) {
          i = FlingGallery.this.mGalleryWidth;
        }
        if (i <= -1 * FlingGallery.this.mGalleryWidth) {
          i = -1 * FlingGallery.this.mGalleryWidth;
        }
        FlingGallery.this.mViews[0].setOffset(i, 0, FlingGallery.this.mCurrentViewNumber);
        FlingGallery.this.mViews[1].setOffset(i, 0, FlingGallery.this.mCurrentViewNumber);
        FlingGallery.this.mViews[2].setOffset(i, 0, FlingGallery.this.mCurrentViewNumber);
      }
      return false;
    }
    
    public void onShowPress(MotionEvent paramMotionEvent) {}
    
    public boolean onSingleTapUp(MotionEvent paramMotionEvent)
    {
      FlingGallery.this.mFlingDirection = 0;
      return false;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.ui.FlingGallery
 * JD-Core Version:    0.7.0.1
 */