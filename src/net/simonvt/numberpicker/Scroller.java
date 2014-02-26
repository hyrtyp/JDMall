package net.simonvt.numberpicker;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.FloatMath;
import android.view.ViewConfiguration;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

public class Scroller
{
  private static float ALPHA = 0.0F;
  private static float DECELERATION_RATE = (float)(Math.log(0.75D) / Math.log(0.9D));
  private static final int DEFAULT_DURATION = 250;
  private static float END_TENSION = 0.0F;
  private static final int FLING_MODE = 1;
  private static final int NB_SAMPLES = 100;
  private static final int SCROLL_MODE;
  private static final float[] SPLINE;
  private static float START_TENSION;
  private static float sViscousFluidNormalize;
  private static float sViscousFluidScale;
  private int mCurrX;
  private int mCurrY;
  private float mDeceleration;
  private float mDeltaX;
  private float mDeltaY;
  private int mDuration;
  private float mDurationReciprocal;
  private int mFinalX;
  private int mFinalY;
  private boolean mFinished = true;
  private boolean mFlywheel;
  private Interpolator mInterpolator;
  private int mMaxX;
  private int mMaxY;
  private int mMinX;
  private int mMinY;
  private int mMode;
  private final float mPpi;
  private long mStartTime;
  private int mStartX;
  private int mStartY;
  private float mVelocity;
  
  static
  {
    ALPHA = 800.0F;
    START_TENSION = 0.4F;
    END_TENSION = 1.0F - START_TENSION;
    SPLINE = new float[101];
    float f1 = 0.0F;
    int i = 0;
    if (i > 100)
    {
      SPLINE[100] = 1.0F;
      sViscousFluidScale = 8.0F;
      sViscousFluidNormalize = 1.0F;
      sViscousFluidNormalize = 1.0F / viscousFluid(1.0F);
      return;
    }
    float f2 = i / 100.0F;
    float f3 = 1.0F;
    for (;;)
    {
      float f4 = f1 + (f3 - f1) / 2.0F;
      float f5 = 3.0F * f4 * (1.0F - f4);
      float f6 = f5 * ((1.0F - f4) * START_TENSION + f4 * END_TENSION) + f4 * (f4 * f4);
      if (Math.abs(f6 - f2) < 1.E-005D)
      {
        float f7 = f5 + f4 * (f4 * f4);
        SPLINE[i] = f7;
        i++;
        break;
      }
      if (f6 > f2) {
        f3 = f4;
      } else {
        f1 = f4;
      }
    }
  }
  
  public Scroller(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public Scroller(Context paramContext, Interpolator paramInterpolator)
  {
    this(paramContext, paramInterpolator, true);
  }
  
  public Scroller(Context paramContext, Interpolator paramInterpolator, boolean paramBoolean)
  {
    this.mInterpolator = paramInterpolator;
    this.mPpi = (160.0F * paramContext.getResources().getDisplayMetrics().density);
    this.mDeceleration = computeDeceleration(ViewConfiguration.getScrollFriction());
    this.mFlywheel = paramBoolean;
  }
  
  private float computeDeceleration(float paramFloat)
  {
    return paramFloat * (386.0878F * this.mPpi);
  }
  
  static float viscousFluid(float paramFloat)
  {
    float f1 = paramFloat * sViscousFluidScale;
    if (f1 < 1.0F) {}
    for (float f2 = f1 - (1.0F - (float)Math.exp(-f1));; f2 = 0.3678795F + (1.0F - (float)Math.exp(1.0F - f1)) * (1.0F - 0.3678795F)) {
      return f2 * sViscousFluidNormalize;
    }
  }
  
  public void abortAnimation()
  {
    this.mCurrX = this.mFinalX;
    this.mCurrY = this.mFinalY;
    this.mFinished = true;
  }
  
  public boolean computeScrollOffset()
  {
    boolean bool = true;
    if (this.mFinished) {
      bool = false;
    }
    do
    {
      return bool;
      int i = (int)(AnimationUtils.currentAnimationTimeMillis() - this.mStartTime);
      if (i >= this.mDuration) {
        break;
      }
      switch (this.mMode)
      {
      default: 
        return bool;
      case 0: 
        float f7 = i * this.mDurationReciprocal;
        if (this.mInterpolator == null) {}
        for (float f8 = viscousFluid(f7);; f8 = this.mInterpolator.getInterpolation(f7))
        {
          this.mCurrX = (this.mStartX + Math.round(f8 * this.mDeltaX));
          this.mCurrY = (this.mStartY + Math.round(f8 * this.mDeltaY));
          return bool;
        }
      }
      float f1 = i / this.mDuration;
      int j = (int)(100.0F * f1);
      float f2 = j / 100.0F;
      float f3 = (j + 1) / 100.0F;
      float f4 = SPLINE[j];
      float f5 = SPLINE[(j + 1)];
      float f6 = f4 + (f1 - f2) / (f3 - f2) * (f5 - f4);
      this.mCurrX = (this.mStartX + Math.round(f6 * (this.mFinalX - this.mStartX)));
      this.mCurrX = Math.min(this.mCurrX, this.mMaxX);
      this.mCurrX = Math.max(this.mCurrX, this.mMinX);
      this.mCurrY = (this.mStartY + Math.round(f6 * (this.mFinalY - this.mStartY)));
      this.mCurrY = Math.min(this.mCurrY, this.mMaxY);
      this.mCurrY = Math.max(this.mCurrY, this.mMinY);
    } while ((this.mCurrX != this.mFinalX) || (this.mCurrY != this.mFinalY));
    this.mFinished = bool;
    return bool;
    this.mCurrX = this.mFinalX;
    this.mCurrY = this.mFinalY;
    this.mFinished = bool;
    return bool;
  }
  
  public void extendDuration(int paramInt)
  {
    this.mDuration = (paramInt + timePassed());
    this.mDurationReciprocal = (1.0F / this.mDuration);
    this.mFinished = false;
  }
  
  public void fling(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    if ((this.mFlywheel) && (!this.mFinished))
    {
      float f4 = getCurrVelocity();
      float f5 = this.mFinalX - this.mStartX;
      float f6 = this.mFinalY - this.mStartY;
      float f7 = FloatMath.sqrt(f5 * f5 + f6 * f6);
      float f8 = f5 / f7;
      float f9 = f6 / f7;
      float f10 = f8 * f4;
      float f11 = f9 * f4;
      if ((Math.signum(paramInt3) == Math.signum(f10)) && (Math.signum(paramInt4) == Math.signum(f11)))
      {
        paramInt3 = (int)(f10 + paramInt3);
        paramInt4 = (int)(f11 + paramInt4);
      }
    }
    this.mMode = 1;
    this.mFinished = false;
    float f1 = FloatMath.sqrt(paramInt3 * paramInt3 + paramInt4 * paramInt4);
    this.mVelocity = f1;
    double d = Math.log(f1 * START_TENSION / ALPHA);
    this.mDuration = ((int)(1000.0D * Math.exp(d / (DECELERATION_RATE - 1.0D))));
    this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
    this.mStartX = paramInt1;
    this.mStartY = paramInt2;
    float f2;
    if (f1 == 0.0F)
    {
      f2 = 1.0F;
      if (f1 != 0.0F) {
        break label388;
      }
    }
    label388:
    for (float f3 = 1.0F;; f3 = paramInt4 / f1)
    {
      int i = (int)(ALPHA * Math.exp(d * (DECELERATION_RATE / (DECELERATION_RATE - 1.0D))));
      this.mMinX = paramInt5;
      this.mMaxX = paramInt6;
      this.mMinY = paramInt7;
      this.mMaxY = paramInt8;
      this.mFinalX = (paramInt1 + Math.round(f2 * i));
      this.mFinalX = Math.min(this.mFinalX, this.mMaxX);
      this.mFinalX = Math.max(this.mFinalX, this.mMinX);
      this.mFinalY = (paramInt2 + Math.round(f3 * i));
      this.mFinalY = Math.min(this.mFinalY, this.mMaxY);
      this.mFinalY = Math.max(this.mFinalY, this.mMinY);
      return;
      f2 = paramInt3 / f1;
      break;
    }
  }
  
  public final void forceFinished(boolean paramBoolean)
  {
    this.mFinished = paramBoolean;
  }
  
  public float getCurrVelocity()
  {
    return this.mVelocity - this.mDeceleration * timePassed() / 2000.0F;
  }
  
  public final int getCurrX()
  {
    return this.mCurrX;
  }
  
  public final int getCurrY()
  {
    return this.mCurrY;
  }
  
  public final int getDuration()
  {
    return this.mDuration;
  }
  
  public final int getFinalX()
  {
    return this.mFinalX;
  }
  
  public final int getFinalY()
  {
    return this.mFinalY;
  }
  
  public final int getStartX()
  {
    return this.mStartX;
  }
  
  public final int getStartY()
  {
    return this.mStartY;
  }
  
  public final boolean isFinished()
  {
    return this.mFinished;
  }
  
  public boolean isScrollingInDirection(float paramFloat1, float paramFloat2)
  {
    return (!this.mFinished) && (Math.signum(paramFloat1) == Math.signum(this.mFinalX - this.mStartX)) && (Math.signum(paramFloat2) == Math.signum(this.mFinalY - this.mStartY));
  }
  
  public void setFinalX(int paramInt)
  {
    this.mFinalX = paramInt;
    this.mDeltaX = (this.mFinalX - this.mStartX);
    this.mFinished = false;
  }
  
  public void setFinalY(int paramInt)
  {
    this.mFinalY = paramInt;
    this.mDeltaY = (this.mFinalY - this.mStartY);
    this.mFinished = false;
  }
  
  public final void setFriction(float paramFloat)
  {
    this.mDeceleration = computeDeceleration(paramFloat);
  }
  
  public void startScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    startScroll(paramInt1, paramInt2, paramInt3, paramInt4, 250);
  }
  
  public void startScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    this.mMode = 0;
    this.mFinished = false;
    this.mDuration = paramInt5;
    this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
    this.mStartX = paramInt1;
    this.mStartY = paramInt2;
    this.mFinalX = (paramInt1 + paramInt3);
    this.mFinalY = (paramInt2 + paramInt4);
    this.mDeltaX = paramInt3;
    this.mDeltaY = paramInt4;
    this.mDurationReciprocal = (1.0F / this.mDuration);
  }
  
  public int timePassed()
  {
    return (int)(AnimationUtils.currentAnimationTimeMillis() - this.mStartTime);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     net.simonvt.numberpicker.Scroller
 * JD-Core Version:    0.7.0.1
 */