package com.jd.droidlib.util.ui;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ListAdapter;
import android.widget.ListView;

public class ListViewSynchronizer
  implements View.OnTouchListener, AbsListView.OnScrollListener
{
  private boolean dispatched = false;
  private final ListView leftListView;
  private int[] leftViewsHeights;
  private final ListView rightListView;
  private int[] rightViewsHeights;
  
  public ListViewSynchronizer(ListView paramListView1, ListView paramListView2)
  {
    this.leftListView = paramListView1;
    this.rightListView = paramListView2;
  }
  
  public void desynchronize()
  {
    this.leftListView.setOnTouchListener(null);
    this.rightListView.setOnTouchListener(null);
    this.leftListView.setOnScrollListener(null);
    this.rightListView.setOnScrollListener(null);
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramAbsListView.getChildAt(0) != null)
    {
      if (paramAbsListView != this.leftListView) {
        break label138;
      }
      this.leftViewsHeights[paramAbsListView.getFirstVisiblePosition()] = paramAbsListView.getChildAt(0).getHeight();
      i1 = 0;
      i2 = 0;
      if (i2 < this.rightListView.getFirstVisiblePosition()) {
        break label102;
      }
      i3 = 0;
      i4 = 0;
      if (i4 < this.leftListView.getFirstVisiblePosition()) {
        break label120;
      }
      i5 = i1 - i3 + paramAbsListView.getChildAt(0).getTop();
      this.rightListView.setSelectionFromTop(this.rightListView.getFirstVisiblePosition(), i5);
    }
    label102:
    label120:
    while (paramAbsListView != this.rightListView) {
      for (;;)
      {
        int i1;
        int i2;
        int i3;
        int i4;
        int i5;
        return;
        i1 += this.rightViewsHeights[i2];
        i2++;
        continue;
        i3 += this.leftViewsHeights[i4];
        i4++;
      }
    }
    label138:
    this.rightViewsHeights[paramAbsListView.getFirstVisiblePosition()] = paramAbsListView.getChildAt(0).getHeight();
    int i = 0;
    int j = 0;
    int k;
    if (j >= this.leftListView.getFirstVisiblePosition()) {
      k = 0;
    }
    for (int m = 0;; m++)
    {
      if (m >= this.rightListView.getFirstVisiblePosition())
      {
        int n = i - k + paramAbsListView.getChildAt(0).getTop();
        this.leftListView.setSelectionFromTop(this.leftListView.getFirstVisiblePosition(), n);
        return;
        i += this.leftViewsHeights[j];
        j++;
        break;
      }
      k += this.rightViewsHeights[m];
    }
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((paramView == this.leftListView) && (!this.dispatched))
    {
      this.dispatched = true;
      this.rightListView.dispatchTouchEvent(paramMotionEvent);
    }
    for (;;)
    {
      this.dispatched = false;
      return false;
      if ((paramView == this.rightListView) && (!this.dispatched))
      {
        this.dispatched = true;
        this.leftListView.dispatchTouchEvent(paramMotionEvent);
      }
    }
  }
  
  public void synchronize()
  {
    ListAdapter localListAdapter1 = this.leftListView.getAdapter();
    ListAdapter localListAdapter2 = this.rightListView.getAdapter();
    if ((localListAdapter1 == null) || (localListAdapter2 == null)) {
      throw new IllegalStateException("List adapters must be set.");
    }
    this.leftViewsHeights = new int[localListAdapter1.getCount()];
    this.rightViewsHeights = new int[localListAdapter2.getCount()];
    this.leftListView.setAdapter(localListAdapter1);
    this.rightListView.setAdapter(localListAdapter2);
    this.leftListView.setOnTouchListener(this);
    this.rightListView.setOnTouchListener(this);
    this.leftListView.setOnScrollListener(this);
    this.rightListView.setOnScrollListener(this);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.util.ui.ListViewSynchronizer
 * JD-Core Version:    0.7.0.1
 */