package com.jingdong.app.mall.product;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import com.jingdong.app.mall.R.styleable;

public class TabIndicator
  extends View
  implements PageIndicator
{
  private static final Interpolator sInterpolator = new Interpolator()
  {
    public float getInterpolation(float paramAnonymousFloat)
    {
      float f = paramAnonymousFloat - 1.0F;
      return 1.0F + f * (f * (f * (f * f)));
    }
  };
  private float mCurrX;
  private int mHeight = 3;
  View mNewTab;
  private float mOffsetX;
  View mOldTab;
  private final Paint mPaint = new Paint(1);
  private Scroller mScroller;
  private int mWidth = 90;
  
  public TabIndicator(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public TabIndicator(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if (isInEditMode()) {
      return;
    }
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.tabIndicator);
    this.mWidth = localTypedArray.getDimensionPixelSize(0, -1);
    this.mHeight = localTypedArray.getDimensionPixelSize(1, 3);
    this.mPaint.setColor(localTypedArray.getColor(2, -13388315));
    localTypedArray.recycle();
    this.mScroller = new Scroller(paramContext, sInterpolator);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (this.mNewTab == null) {
      return;
    }
    int i = getPaddingLeft();
    float f1 = this.mWidth;
    float f2 = i + this.mCurrX + this.mOffsetX;
    float f3 = f2 + f1;
    paramCanvas.drawRect(f2, getPaddingTop(), f3, getHeight() - getPaddingBottom(), this.mPaint);
    if ((!this.mScroller.isFinished()) && (this.mScroller.computeScrollOffset()))
    {
      this.mCurrX = this.mScroller.getCurrX();
      invalidate();
      return;
    }
    this.mScroller.abortAnimation();
  }
  
  public void onTabSelected(View paramView1, View paramView2)
  {
    if (paramView2 != null)
    {
      if (this.mWidth <= 0) {
        this.mWidth = ((int)(0.7D * paramView2.getWidth()));
      }
      this.mOldTab = paramView1;
      this.mNewTab = paramView2;
      if ((paramView1 == null) || (paramView1 == paramView2)) {
        break label98;
      }
      int i = paramView1.getLeft();
      int j = paramView2.getLeft() - i;
      this.mScroller.startScroll(i, 0, j, 0, 400);
    }
    for (;;)
    {
      this.mOffsetX = ((paramView2.getRight() - paramView2.getLeft() - this.mWidth) / 2);
      invalidate();
      return;
      label98:
      this.mCurrX = paramView2.getLeft();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.product.TabIndicator
 * JD-Core Version:    0.7.0.1
 */