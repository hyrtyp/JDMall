package com.jingdong.app.mall.utils.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.jingdong.app.mall.product.ProductDetailInfoActivity;

public class ProductInfoRelativeLayout
  extends RelativeLayout
{
  private static int RATE = 5;
  private static final String TAG = "ProductInfoRelativeLayout";
  private ProductDetailInfoActivity activity;
  private boolean canDispatchKeyUp = true;
  private float currentPostionX = 0.0F;
  private float currentPostionY = 0.0F;
  private float firstPointX;
  private float firstPointY;
  private boolean isOpen = true;
  private boolean isPointInRadio = false;
  private float lastOffset = 0.0F;
  private float realOffset;
  private Integer tHeight;
  private LinearLayout titleLayout;
  
  public ProductInfoRelativeLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public ProductInfoRelativeLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ProductInfoRelativeLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void checkPointInRadio()
  {
    int[] arrayOfInt = new int[2];
    this.activity.getScrollView().getLocationOnScreen(arrayOfInt);
    int i = arrayOfInt[0];
    int j = arrayOfInt[1];
    int k = i + this.activity.getScrollView().getWidth();
    int m = j + this.activity.getScrollView().getHeight();
    if ((this.firstPointX >= i) && (this.firstPointX <= k) && (this.firstPointY >= j) && (this.firstPointY <= m))
    {
      this.isPointInRadio = true;
      return;
    }
    this.isPointInRadio = false;
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.tHeight == null) {
      this.tHeight = Integer.valueOf(this.titleLayout.getHeight());
    }
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return super.dispatchTouchEvent(paramMotionEvent);
      this.currentPostionY = paramMotionEvent.getRawY();
      this.currentPostionX = paramMotionEvent.getRawX();
      float f = this.currentPostionY - this.firstPointY;
      if (Math.abs(this.currentPostionX - this.firstPointX) > Math.abs(f)) {
        return super.dispatchTouchEvent(paramMotionEvent);
      }
      ViewGroup localViewGroup = (ViewGroup)this.activity.getNowBranchView();
      RelativeLayout.LayoutParams localLayoutParams;
      for (int i = 0;; i++)
      {
        int j = localViewGroup.getChildCount();
        WebView localWebView = null;
        if (i >= j) {}
        for (;;)
        {
          this.realOffset = (f - this.lastOffset);
          this.lastOffset = f;
          localLayoutParams = (RelativeLayout.LayoutParams)this.titleLayout.getLayoutParams();
          if (this.isPointInRadio) {
            break label253;
          }
          if (((localLayoutParams.topMargin != -this.tHeight.intValue()) || (f >= 0.0F)) && ((f <= 0.0F) || (localWebView == null) || (localWebView.getScrollY() <= 0))) {
            break label274;
          }
          return super.dispatchTouchEvent(paramMotionEvent);
          View localView = localViewGroup.getChildAt(i);
          if (!(localView instanceof WebView)) {
            break;
          }
          localWebView = (WebView)localView;
        }
      }
      label253:
      if (Math.abs(f) <= 50.0F) {
        return super.dispatchTouchEvent(paramMotionEvent);
      }
      this.canDispatchKeyUp = false;
      label274:
      int k = localLayoutParams.topMargin + (int)this.realOffset;
      if (k >= 0) {
        k = 0;
      }
      for (;;)
      {
        localLayoutParams.setMargins(0, k, 0, 0);
        requestLayout();
        return true;
        if (k <= -this.tHeight.intValue()) {
          k = -this.tHeight.intValue();
        }
      }
      this.lastOffset = 0.0F;
      if (!this.canDispatchKeyUp)
      {
        paramMotionEvent.setAction(3);
        return super.dispatchTouchEvent(paramMotionEvent);
        this.firstPointY = paramMotionEvent.getRawY();
        this.firstPointX = paramMotionEvent.getRawX();
        this.canDispatchKeyUp = true;
        checkPointInRadio();
      }
    }
  }
  
  public void init(ProductDetailInfoActivity paramProductDetailInfoActivity)
  {
    this.activity = paramProductDetailInfoActivity;
    this.titleLayout = ((LinearLayout)getChildAt(0));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.ui.ProductInfoRelativeLayout
 * JD-Core Version:    0.7.0.1
 */