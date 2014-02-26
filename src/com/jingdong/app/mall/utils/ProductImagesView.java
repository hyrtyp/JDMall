package com.jingdong.app.mall.utils;

import android.content.Context;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ListAdapter;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.product.ProductDetailActivity;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.MySimpleAdapter;

public class ProductImagesView
  extends AdapterView<ListAdapter>
  implements GestureDetector.OnGestureListener
{
  private static final String TAG = "ProductImagesView";
  private boolean alreadyMeasureChild;
  private AnimationDelegate animationDelegate = new AnimationDelegate(null);
  private int area = 0;
  private Border border = new Border();
  private BorderListener borderListener;
  private int childCount;
  private int childHeightWithPadding;
  private int childWidthWithPadding;
  private DataSetObserver dataSetObserver = new DataSetObserver()
  {
    public void onChanged()
    {
      MyActivity localMyActivity = MyApplication.getInstance().getCurrentMyActivity();
      if ((localMyActivity instanceof ProductDetailActivity)) {
        localMyActivity.post(new Runnable()
        {
          public void run()
          {
            if (ProductImagesView.this.mAdapter.getCount() < 1)
            {
              ProductImagesView.this.border.left = 0;
              ProductImagesView.this.border.right = 0;
              ProductImagesView.this.borderChange();
            }
            int j;
            if (ProductImagesView.this.mAdapter.getCount() != ProductImagesView.this.oldCount)
            {
              ProductImagesView.this.oldCount = ProductImagesView.this.mAdapter.getCount();
              ProductImagesView.this.alreadyMeasureChild = false;
              ProductImagesView.this.detachAllViewsFromParent();
              j = 0;
              if (j < ProductImagesView.this.mAdapter.getCount()) {}
            }
            for (;;)
            {
              return;
              View localView = ProductImagesView.this.mAdapter.getView(j, null, ProductImagesView.this);
              ProductImagesView.this.addViewInLayout(localView, j, localView.getLayoutParams());
              j++;
              break;
              for (int i = 0; i < ProductImagesView.this.mAdapter.getCount(); i++) {
                ProductImagesView.this.mAdapter.getView(i, ProductImagesView.this.getChildAt(i), ProductImagesView.this);
              }
            }
          }
        });
      }
    }
  };
  private int flingFlag;
  private int lastPageArea;
  private MySimpleAdapter mAdapter;
  private GestureDetector mGestureDetector;
  private int minPaddingLeft;
  private int minPaddingRight;
  private int offset;
  private int oldCount;
  private int pageSize;
  private int targetOffset;
  private Thread thread;
  private int unitWidth;
  
  public ProductImagesView(Context paramContext)
  {
    super(paramContext);
    initProductImagesView();
  }
  
  public ProductImagesView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initProductImagesView();
  }
  
  public ProductImagesView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    initProductImagesView();
  }
  
  private void borderChange()
  {
    if (this.borderListener != null) {
      this.borderListener.onChange(this.border);
    }
  }
  
  private void initProductImagesView()
  {
    this.mGestureDetector = new GestureDetector(getContext(), this);
    this.mGestureDetector.setIsLongpressEnabled(true);
  }
  
  private void measureChild(View paramView)
  {
    if (this.alreadyMeasureChild) {
      return;
    }
    if (this.minPaddingLeft == 0) {
      this.minPaddingLeft = getPaddingLeft();
    }
    if (this.minPaddingRight == 0) {
      this.minPaddingRight = getPaddingRight();
    }
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    this.childWidthWithPadding = (localLayoutParams.width + paramView.getPaddingLeft() + paramView.getPaddingRight());
    this.childHeightWithPadding = (localLayoutParams.height + paramView.getPaddingTop() + paramView.getPaddingBottom());
    int i = getMeasuredWidth() - this.minPaddingLeft - this.minPaddingRight;
    this.pageSize = (i / (DPIUtil.dip2px(10.0F) + this.childWidthWithPadding));
    if (this.pageSize > this.childCount) {
      this.pageSize = this.childCount;
    }
    int j = i - this.pageSize * this.childWidthWithPadding;
    int k;
    if (-1 + this.pageSize == 0)
    {
      k = 0;
      setPadding(this.minPaddingLeft + j / 2, getPaddingTop(), this.minPaddingRight + j / 2, getPaddingBottom());
    }
    for (;;)
    {
      int m = this.minPaddingLeft + this.minPaddingRight;
      if (k > m)
      {
        k = (m + j) / (1 + this.pageSize);
        setPadding(k, getPaddingTop(), k, getPaddingBottom());
      }
      this.unitWidth = (k + this.childWidthWithPadding);
      this.lastPageArea = (this.childCount - this.pageSize);
      if (this.area <= -this.lastPageArea)
      {
        this.area = (-this.lastPageArea);
        this.animationDelegate.adjust(-1);
      }
      this.alreadyMeasureChild = true;
      return;
      k = j / (-1 + this.pageSize);
      setPadding(this.minPaddingLeft, getPaddingTop(), this.minPaddingRight, getPaddingBottom());
    }
  }
  
  private boolean performItemLongClick(View paramView, int paramInt, long paramLong)
  {
    AdapterView.OnItemLongClickListener localOnItemLongClickListener = getOnItemLongClickListener();
    boolean bool = false;
    if (localOnItemLongClickListener != null) {
      bool = localOnItemLongClickListener.onItemLongClick(this, paramView, paramInt, paramLong);
    }
    if (bool) {
      performHapticFeedback(0);
    }
    return bool;
  }
  
  public ListAdapter getAdapter()
  {
    return this.mAdapter;
  }
  
  public View getSelectedView()
  {
    return null;
  }
  
  void onCancel()
  {
    onUp();
  }
  
  public boolean onDown(MotionEvent paramMotionEvent)
  {
    this.flingFlag = 0;
    return true;
  }
  
  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if (paramFloat1 > 300.0F)
    {
      this.flingFlag = 1;
      return true;
    }
    if (paramFloat1 < -300.0F)
    {
      this.flingFlag = 2;
      return true;
    }
    this.flingFlag = 0;
    return true;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.childCount = getChildCount();
    for (int i = 0;; i++)
    {
      if (i >= this.childCount) {
        return;
      }
      View localView = getChildAt(i);
      measureChild(localView);
      if (this.childCount != this.pageSize) {
        break;
      }
      this.border.left = 0;
      this.border.right = 0;
      borderChange();
      int j = getPaddingLeft() + this.offset + i * this.unitWidth;
      int k = getPaddingTop();
      localView.layout(j, k, j + this.childWidthWithPadding, k + this.childHeightWithPadding);
    }
    if (this.area >= 0)
    {
      this.border.left = 0;
      label135:
      if (this.area > -this.lastPageArea) {
        break label173;
      }
    }
    label173:
    for (this.border.right = 0;; this.border.right = 1)
    {
      borderChange();
      break;
      this.border.left = 1;
      break label135;
    }
  }
  
  public void onLongPress(MotionEvent paramMotionEvent)
  {
    int i = -1 + -Math.round((this.offset - paramMotionEvent.getX()) / this.unitWidth - 0.5F);
    if (i > -1 + getChildCount()) {
      i = -1 + getChildCount();
    }
    for (;;)
    {
      View localView = getChildAt(i);
      performItemLongClick(localView, i, localView.getId());
      return;
      if (i < 0) {
        i = 0;
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(getDefaultSize(getSuggestedMinimumWidth(), paramInt1), getDefaultSize(getSuggestedMinimumHeight(), paramInt2) + getPaddingTop() + getPaddingBottom());
  }
  
  public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if (this.childCount == this.pageSize) {
      return true;
    }
    getParent().requestDisallowInterceptTouchEvent(true);
    int i = this.offset + Math.round(-paramFloat1);
    if (i > 0) {
      this.offset = 0;
    }
    for (;;)
    {
      requestLayout();
      this.flingFlag = 0;
      return true;
      if (i < -1 * (this.lastPageArea * this.unitWidth)) {
        this.offset = (-1 * (this.lastPageArea * this.unitWidth));
      } else {
        this.offset = i;
      }
    }
  }
  
  public void onShowPress(MotionEvent paramMotionEvent) {}
  
  public boolean onSingleTapUp(MotionEvent paramMotionEvent)
  {
    int i = -1 + -Math.round((this.offset - paramMotionEvent.getX()) / this.unitWidth - 0.5F);
    if (i > -1 + getChildCount()) {
      i = -1 + getChildCount();
    }
    for (;;)
    {
      View localView = getChildAt(i);
      if (localView != null) {
        performItemClick(localView, i, localView.getId());
      }
      return false;
      if (i < 0) {
        i = 0;
      }
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool;
    if ((this.mAdapter == null) || (this.mAdapter.getCount() < 1)) {
      bool = true;
    }
    int i;
    do
    {
      return bool;
      if (this.thread == null)
      {
        this.thread = new Thread(this.animationDelegate);
        this.thread.start();
      }
      bool = this.mGestureDetector.onTouchEvent(paramMotionEvent);
      i = paramMotionEvent.getAction();
      if (i == 1)
      {
        onUp();
        return bool;
      }
    } while (i != 3);
    onCancel();
    return bool;
  }
  
  void onUp()
  {
    this.animationDelegate.adjust(this.flingFlag);
  }
  
  public void setAdapter(ListAdapter paramListAdapter)
  {
    this.mAdapter = ((MySimpleAdapter)paramListAdapter);
    this.mAdapter.registerDataSetObserver(this.dataSetObserver);
    this.mAdapter.notifyDataSetChanged();
  }
  
  public void setOnBorderListener(BorderListener paramBorderListener)
  {
    this.borderListener = paramBorderListener;
  }
  
  public void setSelection(int paramInt) {}
  
  private class AnimationDelegate
    implements Runnable
  {
    private static final int LEFT = 1;
    private static final int NONE = 0;
    private static final int RIGHT = 2;
    private boolean fit = true;
    
    private AnimationDelegate() {}
    
    /* Error */
    private void isFit()
    {
      // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: aload_0
      //   3: getfield 26	com/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate:fit	Z
      //   6: istore_2
      //   7: iload_2
      //   8: ifeq +7 -> 15
      //   11: aload_0
      //   12: invokevirtual 37	java/lang/Object:wait	()V
      //   15: aload_0
      //   16: monitorexit
      //   17: return
      //   18: astore_3
      //   19: aload_0
      //   20: invokespecial 39	com/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate:isFit	()V
      //   23: goto -8 -> 15
      //   26: astore_1
      //   27: aload_0
      //   28: monitorexit
      //   29: aload_1
      //   30: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	31	0	this	AnimationDelegate
      //   26	4	1	localObject	Object
      //   6	2	2	bool	boolean
      //   18	1	3	localInterruptedException	InterruptedException
      // Exception table:
      //   from	to	target	type
      //   11	15	18	java/lang/InterruptedException
      //   2	7	26	finally
      //   11	15	26	finally
      //   19	23	26	finally
    }
    
    public void adjust(int paramInt)
    {
      switch (paramInt)
      {
      }
      for (;;)
      {
        try
        {
          if (ProductImagesView.this.childCount != ProductImagesView.this.pageSize) {
            break label197;
          }
          ProductImagesView.this.targetOffset = 0;
          notify();
          return;
        }
        finally {}
        ProductImagesView localProductImagesView2 = ProductImagesView.this;
        localProductImagesView2.area -= ProductImagesView.this.pageSize;
        if (ProductImagesView.this.area <= -ProductImagesView.this.lastPageArea)
        {
          ProductImagesView.this.area = (-ProductImagesView.this.lastPageArea);
          continue;
          ProductImagesView localProductImagesView1 = ProductImagesView.this;
          localProductImagesView1.area += ProductImagesView.this.pageSize;
          if (ProductImagesView.this.area >= 0)
          {
            ProductImagesView.this.area = 0;
            continue;
            ProductImagesView.this.area = Math.round(ProductImagesView.this.offset / ProductImagesView.this.unitWidth);
            continue;
            label197:
            ProductImagesView.this.targetOffset = (ProductImagesView.this.area * ProductImagesView.this.unitWidth);
          }
        }
      }
    }
    
    public void run()
    {
      int i = 0;
      isFit();
      int j = (int)(i + 0.4F * (ProductImagesView.this.targetOffset - ProductImagesView.this.offset));
      ProductImagesView localProductImagesView = ProductImagesView.this;
      int k = localProductImagesView.offset;
      i = (int)(0.3F * j);
      localProductImagesView.offset = (k + i);
      if (Math.abs(ProductImagesView.this.targetOffset - ProductImagesView.this.offset) < 9)
      {
        ProductImagesView.this.offset = ProductImagesView.this.targetOffset;
        i = 0;
      }
      if (ProductImagesView.this.offset == ProductImagesView.this.targetOffset) {}
      for (boolean bool = true;; bool = false)
      {
        for (;;)
        {
          this.fit = bool;
          ((MyActivity)ProductImagesView.this.getContext()).post(new Runnable()
          {
            public void run()
            {
              ProductImagesView.this.requestLayout();
            }
          });
          try
          {
            Thread.sleep(30L);
          }
          catch (InterruptedException localInterruptedException) {}
        }
        break;
      }
    }
  }
  
  public static class Border
  {
    public int left;
    public int right;
  }
  
  public static abstract interface BorderListener
  {
    public abstract void onChange(ProductImagesView.Border paramBorder);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.ProductImagesView
 * JD-Core Version:    0.7.0.1
 */