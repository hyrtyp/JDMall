package com.jingdong.app.mall.utils.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.Scroller;
import com.jingdong.app.mall.R.styleable;

public class PullRefreshLayout
  extends FrameLayout
{
  private static final float ACTIONVIEW_ONTOUCH_PREF = 0.6F;
  private static final int ANIMATED_SCROLL_GAP = 250;
  private static final int SCROLL_MIN_DISTANCE_Y = 50;
  private static final String TAG = PullRefreshLayout.class.getSimpleName();
  private static final float TOOLVIEW_SPLIT_PREF = 0.6F;
  private static final int TOP_IN_ACTION = 2;
  private static final int TOP_IN_TOOL = 1;
  private static final int TOP_OUT_VIEWS = 4;
  private View mActionView;
  private int mActionViewHeight = 0;
  private final int mActionViewId;
  private OnPullListener mActionViewPullListener;
  private boolean mCancelSended = false;
  private boolean mEnableStopInAction = false;
  private boolean mInTouch = false;
  private boolean mIsMotioned = false;
  private float mLastMotionY;
  private long mLastScroll;
  private int mMotionScrollY;
  private OnPullStateListener mPullStateListener;
  private View mScrollbarStoreTarget;
  private final Scroller mScroller;
  private AdapterView<?> mTargetAdapterView;
  private boolean mTargetScrollbarEnable;
  private View mTargetView;
  private final Rect mTempRect = new Rect();
  private View mToolView;
  private int mToolViewHeight = 0;
  private final int mToolViewId;
  private OnPullListener mToolViewPullListener;
  private int mTopState;
  private final int mTouchSlop;
  
  public PullRefreshLayout(Context paramContext)
  {
    super(paramContext);
    this.mActionViewId = 2131493505;
    this.mToolViewId = 2131493506;
    this.mScroller = new Scroller(paramContext);
    this.mTouchSlop = ViewConfiguration.get(paramContext).getScaledTouchSlop();
  }
  
  public PullRefreshLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public PullRefreshLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.pullrefresh, paramInt, 0);
    this.mActionViewId = localTypedArray.getResourceId(0, 2131493505);
    this.mToolViewId = localTypedArray.getResourceId(1, 2131493506);
    this.mScroller = new Scroller(paramContext);
    this.mTouchSlop = ViewConfiguration.get(paramContext).getScaledTouchSlop();
  }
  
  private void checkViewId(View paramView)
  {
    if (paramView == null) {}
    do
    {
      return;
      if ((this.mActionView == null) && (paramView.getId() == this.mActionViewId)) {
        this.mActionView = paramView;
      }
    } while ((this.mToolView != null) || (paramView.getId() != this.mToolViewId));
    this.mToolView = paramView;
  }
  
  private void completeTouch()
  {
    this.mInTouch = false;
    int i = getScrollY();
    int j = -this.mToolViewHeight;
    int k = j - this.mActionViewHeight;
    if (i >= 0) {}
    do
    {
      return;
      if (i < k)
      {
        snapToActionViewTop();
        return;
      }
      if ((!this.mEnableStopInAction) && (i < j) && (i >= k))
      {
        hideActionView();
        return;
      }
      if ((i <= 0.6F * j) && (i > j))
      {
        snapToToolViewTop();
        return;
      }
    } while (i <= 0.6F * j);
    snapToToolViewBottom();
  }
  
  private View findTargetView(ViewGroup paramViewGroup, MotionEvent paramMotionEvent)
  {
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    float f3 = f1 + paramViewGroup.getScrollX();
    float f4 = f2 + paramViewGroup.getScrollY();
    Rect localRect = this.mTempRect;
    int i = paramMotionEvent.getAction();
    paramMotionEvent.setAction(0);
    int j = (int)f3;
    int k = (int)f4;
    View localView;
    for (int m = -1 + paramViewGroup.getChildCount();; m--)
    {
      if (m < 0)
      {
        paramMotionEvent.setAction(i);
        paramMotionEvent.setLocation(f1, f2);
        return null;
      }
      localView = paramViewGroup.getChildAt(m);
      if ((localView.getVisibility() == 0) || (localView.getAnimation() != null))
      {
        localView.getHitRect(localRect);
        if (localRect.contains(j, k)) {
          break;
        }
      }
    }
    paramMotionEvent.setLocation(f3 - localView.getLeft(), f4 - localView.getTop());
    paramMotionEvent.setAction(3);
    localView.dispatchTouchEvent(paramMotionEvent);
    paramMotionEvent.setAction(i);
    paramMotionEvent.setLocation(f1, f2);
    return localView;
  }
  
  private boolean isOnTargetTop()
  {
    if (this.mTargetView != null) {
      if (this.mTargetView.getScrollY() > 0) {}
    }
    View localView;
    do
    {
      do
      {
        return true;
        return false;
      } while (this.mTargetAdapterView == null);
      if (this.mTargetAdapterView.getFirstVisiblePosition() != 0) {
        break;
      }
      localView = this.mTargetAdapterView.getChildAt(0);
      if (localView == null) {
        break;
      }
    } while (localView.getTop() >= 0);
    return false;
    return false;
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    checkViewId(paramView);
    super.addView(paramView, paramInt, paramLayoutParams);
  }
  
  protected boolean addViewInLayout(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams, boolean paramBoolean)
  {
    checkViewId(paramView);
    return super.addViewInLayout(paramView, paramInt, paramLayoutParams, paramBoolean);
  }
  
  protected void attachViewToParent(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    checkViewId(paramView);
    super.attachViewToParent(paramView, paramInt, paramLayoutParams);
  }
  
  public void computeScroll()
  {
    if (this.mScroller.computeScrollOffset())
    {
      int i = getScrollY();
      int j = this.mScroller.getCurrY();
      scrollTo(0, j);
      if (i != j) {
        onScrollChanged(0, j, 0, i);
      }
      if (j > 0) {
        this.mScroller.abortAnimation();
      }
      postInvalidate();
    }
  }
  
  protected int computeVerticalScrollOffset()
  {
    return Math.max(0, super.computeVerticalScrollOffset());
  }
  
  protected int computeVerticalScrollRange()
  {
    int i = getHeight();
    if (this.mTargetView != null) {
      i = Math.max(i, this.mTargetView.getHeight());
    }
    if (this.mTargetAdapterView != null) {
      i = Math.max(i, Math.max(1, this.mTargetAdapterView.getCount() - this.mTargetAdapterView.getChildCount()) * getHeight());
    }
    int j = getScrollY();
    if (j < 0) {
      i = (int)(i - 0.1D * (j * getHeight()));
    }
    return i;
  }
  
  protected void detachAllViewsFromParent()
  {
    this.mActionView = null;
    this.mToolView = null;
    super.detachAllViewsFromParent();
  }
  
  protected void detachViewFromParent(int paramInt)
  {
    View localView = getChildAt(paramInt);
    if (this.mActionView == localView) {
      this.mActionView = null;
    }
    if (this.mToolView == localView) {
      this.mToolView = null;
    }
    super.detachViewFromParent(paramInt);
  }
  
  protected void detachViewFromParent(View paramView)
  {
    if (this.mActionView == paramView) {
      this.mActionView = null;
    }
    if (this.mToolView == paramView) {
      this.mToolView = null;
    }
    super.detachViewFromParent(paramView);
  }
  
  protected void detachViewsFromParent(int paramInt1, int paramInt2)
  {
    for (int i = paramInt1;; i++)
    {
      if (i >= paramInt1 + paramInt2)
      {
        super.detachViewsFromParent(paramInt1, paramInt2);
        return;
      }
      View localView = getChildAt(i);
      if (this.mActionView == localView) {
        this.mActionView = null;
      }
      if (this.mToolView == localView) {
        this.mToolView = null;
      }
    }
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    float f = paramMotionEvent.getY();
    boolean bool = isOnTargetTop();
    int i = getScrollY();
    int j = paramMotionEvent.getAction();
    View localView;
    if (j == 0)
    {
      this.mCancelSended = false;
      this.mInTouch = true;
      this.mIsMotioned = false;
      this.mLastMotionY = f;
      this.mTargetView = null;
      this.mTargetAdapterView = null;
      localView = findTargetView(this, paramMotionEvent);
      if ((localView instanceof AdapterView)) {
        this.mTargetAdapterView = ((AdapterView)localView);
      }
    }
    else
    {
      switch (j)
      {
      default: 
        label116:
        if ((i >= 0) || (!bool) || (j != 2)) {
          if ((this.mCancelSended) && (j != 1) && (j != 3))
          {
            this.mCancelSended = false;
            paramMotionEvent.setAction(0);
          }
        }
        break;
      }
    }
    for (;;)
    {
      if (!this.mCancelSended) {
        super.dispatchTouchEvent(paramMotionEvent);
      }
      if (!this.mIsMotioned) {
        this.mLastMotionY = f;
      }
      return true;
      this.mTargetView = localView;
      break;
      this.mMotionScrollY = getScrollY();
      if ((Math.abs(this.mLastMotionY - f) < 50.0F) && (getScrollY() >= 0)) {
        return super.dispatchTouchEvent(paramMotionEvent);
      }
      if ((!this.mIsMotioned) && (i <= 0) && (bool))
      {
        this.mIsMotioned = true;
        this.mLastMotionY = f;
        if (getScrollY() < 0) {
          break label316;
        }
      }
      label316:
      for (this.mMotionScrollY = (i + 50);; this.mMotionScrollY = (i - 50))
      {
        if (!bool) {
          this.mIsMotioned = false;
        }
        if ((!this.mIsMotioned) || (!bool)) {
          break;
        }
        scrollTo(0, (int)(this.mMotionScrollY - f + this.mLastMotionY));
        break;
      }
      completeTouch();
      break label116;
      if ((!this.mCancelSended) && (j == 2) && (Math.abs(this.mMotionScrollY - i) > this.mTouchSlop))
      {
        this.mCancelSended = true;
        paramMotionEvent.setAction(3);
        super.dispatchTouchEvent(paramMotionEvent);
      }
    }
  }
  
  public void hideActionView()
  {
    int i = getScrollY();
    int j = -this.mToolViewHeight;
    if ((i >= j) || (this.mInTouch)) {
      return;
    }
    smoothScrollTo(j);
  }
  
  public boolean isPullOut()
  {
    return getScrollY() < -this.mActionViewHeight - this.mToolViewHeight;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    View localView1 = this.mToolView;
    int i = 0;
    int n;
    if (localView1 != null)
    {
      View localView3 = this.mToolView;
      n = 0 - (localView3.getBottom() - localView3.getTop());
      localView3.layout(localView3.getLeft(), n, localView3.getRight(), 0);
      if (localView3.getVisibility() != 0) {
        break label165;
      }
    }
    label165:
    for (int i1 = 0 - n;; i1 = 0)
    {
      this.mToolViewHeight = i1;
      i = n;
      if (this.mActionView != null)
      {
        View localView2 = this.mActionView;
        int j = i - (localView2.getBottom() - localView2.getTop());
        localView2.layout(localView2.getLeft(), j, localView2.getRight(), i);
        int k = localView2.getVisibility();
        int m = 0;
        if (k == 0) {
          m = i - j;
        }
        this.mActionViewHeight = m;
      }
      return;
    }
  }
  
  public void removeAllViews()
  {
    this.mActionView = null;
    this.mToolView = null;
    super.removeAllViews();
  }
  
  public void removeAllViewsInLayout()
  {
    this.mActionView = null;
    this.mToolView = null;
    super.removeAllViewsInLayout();
  }
  
  public void removeView(View paramView)
  {
    if (this.mActionView == paramView) {
      this.mActionView = null;
    }
    if (this.mToolView == paramView) {
      this.mToolView = null;
    }
    super.removeView(paramView);
  }
  
  public void removeViewAt(int paramInt)
  {
    View localView = getChildAt(paramInt);
    if (this.mActionView == localView) {
      this.mActionView = null;
    }
    if (this.mToolView == localView) {
      this.mToolView = null;
    }
    super.removeViewAt(paramInt);
  }
  
  public void removeViewInLayout(View paramView)
  {
    if (this.mActionView == paramView) {
      this.mActionView = null;
    }
    if (this.mToolView == paramView) {
      this.mToolView = null;
    }
    super.removeViewInLayout(paramView);
  }
  
  public void removeViews(int paramInt1, int paramInt2)
  {
    for (int i = paramInt1;; i++)
    {
      if (i >= paramInt1 + paramInt2)
      {
        super.removeViews(paramInt1, paramInt2);
        return;
      }
      View localView = getChildAt(i);
      if (this.mActionView == localView) {
        this.mActionView = null;
      }
      if (this.mToolView == localView) {
        this.mToolView = null;
      }
    }
  }
  
  public void removeViewsInLayout(int paramInt1, int paramInt2)
  {
    for (int i = paramInt1;; i++)
    {
      if (i >= paramInt1 + paramInt2)
      {
        super.removeViewsInLayout(paramInt1, paramInt2);
        return;
      }
      View localView = getChildAt(i);
      if (this.mActionView == localView) {
        this.mActionView = null;
      }
      if (this.mToolView == localView) {
        this.mToolView = null;
      }
    }
  }
  
  public void scrollTo(int paramInt1, int paramInt2)
  {
    int i = Math.min(paramInt2, 0);
    if (this.mInTouch) {
      i = (int)(0.6F * i);
    }
    int j = 0;
    if (i < 0)
    {
      int k = this.mToolViewHeight;
      j = 0;
      if (k > 0) {
        j = 0x0 | 0x1;
      }
    }
    if ((i < this.mToolViewHeight) && (this.mActionViewHeight > 0)) {
      j |= 0x2;
    }
    if (i < -this.mActionViewHeight - this.mToolViewHeight) {
      j |= 0x4;
    }
    if (j != this.mTopState)
    {
      if (this.mPullStateListener != null)
      {
        if (((0x4 & this.mTopState) == 0) && ((j & 0x4) != 0)) {
          this.mPullStateListener.onPullOut();
        }
      }
      else
      {
        if (this.mActionViewPullListener != null)
        {
          if (((0x2 & this.mTopState) != 0) || ((j & 0x2) == 0)) {
            break label357;
          }
          this.mActionViewPullListener.onShow();
        }
        label160:
        if (this.mToolViewPullListener != null)
        {
          if (((0x1 & this.mTopState) != 0) || ((j & 0x1) == 0)) {
            break label385;
          }
          this.mToolViewPullListener.onShow();
        }
        label192:
        this.mTopState = j;
      }
    }
    else {
      if (i >= 0) {
        break label413;
      }
    }
    label385:
    label413:
    for (boolean bool = true;; bool = false)
    {
      setVerticalScrollBarEnabled(bool);
      if ((i < 0) && (this.mScrollbarStoreTarget == null))
      {
        if (this.mTargetView != null)
        {
          this.mScrollbarStoreTarget = this.mTargetView;
          this.mTargetScrollbarEnable = this.mTargetView.isVerticalScrollBarEnabled();
          this.mTargetView.setVerticalScrollBarEnabled(false);
        }
        if (this.mTargetAdapterView != null)
        {
          this.mScrollbarStoreTarget = this.mTargetAdapterView;
          this.mTargetScrollbarEnable = this.mTargetAdapterView.isVerticalScrollBarEnabled();
          this.mTargetAdapterView.setVerticalScrollBarEnabled(false);
        }
      }
      if ((i >= 0) && (this.mScrollbarStoreTarget != null))
      {
        this.mScrollbarStoreTarget.setVerticalScrollBarEnabled(this.mTargetScrollbarEnable);
        this.mScrollbarStoreTarget = null;
        setVerticalScrollBarEnabled(false);
      }
      super.scrollTo(paramInt1, i);
      return;
      if (((0x4 & this.mTopState) == 0) || ((j & 0x4) != 0)) {
        break;
      }
      this.mPullStateListener.onPullIn();
      break;
      label357:
      if (((0x2 & this.mTopState) == 0) || ((j & 0x2) != 0)) {
        break label160;
      }
      this.mActionViewPullListener.onHide();
      break label160;
      if (((0x1 & this.mTopState) == 0) || ((j & 0x1) != 0)) {
        break label192;
      }
      this.mToolViewPullListener.onHide();
      break label192;
    }
  }
  
  public void setActionView(View paramView)
  {
    if (paramView != null)
    {
      paramView.setId(this.mActionViewId);
      addView(paramView);
      return;
    }
    this.mActionView = null;
  }
  
  public void setEnableStopInActionView(boolean paramBoolean)
  {
    this.mEnableStopInAction = paramBoolean;
  }
  
  public void setOnActionPullListener(OnPullListener paramOnPullListener)
  {
    this.mActionViewPullListener = paramOnPullListener;
  }
  
  public void setOnPullStateChangeListener(OnPullStateListener paramOnPullStateListener)
  {
    this.mPullStateListener = paramOnPullStateListener;
  }
  
  public void setOnToolPullListener(OnPullListener paramOnPullListener)
  {
    this.mToolViewPullListener = paramOnPullListener;
  }
  
  public void setToolView(View paramView)
  {
    if (paramView != null)
    {
      paramView.setId(this.mToolViewId);
      addView(paramView);
      return;
    }
    this.mToolView = null;
  }
  
  public final void smoothScrollBy(int paramInt)
  {
    if (AnimationUtils.currentAnimationTimeMillis() - this.mLastScroll > 250L)
    {
      this.mScroller.startScroll(0, getScrollY(), 0, paramInt);
      invalidate();
    }
    for (;;)
    {
      this.mLastScroll = AnimationUtils.currentAnimationTimeMillis();
      return;
      if (!this.mScroller.isFinished()) {
        this.mScroller.abortAnimation();
      }
      scrollBy(0, paramInt);
    }
  }
  
  public final void smoothScrollTo(int paramInt)
  {
    smoothScrollBy(paramInt - getScrollY());
  }
  
  public void snapToActionViewTop()
  {
    int i = getScrollY();
    int j = -this.mToolViewHeight - this.mActionViewHeight;
    if ((i >= j) || (this.mInTouch)) {}
    do
    {
      return;
      smoothScrollTo(j);
    } while (this.mActionViewPullListener == null);
    this.mActionViewPullListener.onSnapToTop();
  }
  
  public void snapToToolViewBottom()
  {
    if ((getScrollY() >= 0) || (this.mInTouch)) {
      return;
    }
    smoothScrollTo(0);
  }
  
  public void snapToToolViewTop()
  {
    int i = getScrollY();
    int j = -this.mToolViewHeight;
    if ((i >= 0) || (this.mInTouch)) {}
    do
    {
      return;
      smoothScrollTo(j);
    } while (this.mToolViewPullListener == null);
    this.mToolViewPullListener.onSnapToTop();
  }
  
  public static abstract interface OnPullListener
  {
    public abstract void onHide();
    
    public abstract void onShow();
    
    public abstract void onSnapToTop();
  }
  
  public static abstract interface OnPullStateListener
  {
    public abstract void onPullIn();
    
    public abstract void onPullOut();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.ui.PullRefreshLayout
 * JD-Core Version:    0.7.0.1
 */