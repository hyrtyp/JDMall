package com.jingdong.common.utils;

import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.HeaderViewListAdapter;
import java.util.Map;
import java.util.WeakHashMap;

public class AdapterHelper
{
  private AdapterView<Adapter> adapterView;
  private HttpGroup httpGroup;
  private Map<View, Map<Integer, View>> itemView_subViews_map = new WeakHashMap();
  
  public static Integer getItemViewIndex(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramInt3 - paramInt1;
    if ((i >= 0) && (i < paramInt2)) {
      return Integer.valueOf(i);
    }
    return null;
  }
  
  private Map<Integer, View> getSubViews(View paramView)
  {
    return (Map)this.itemView_subViews_map.get(paramView);
  }
  
  public AdapterView<Adapter> getAdapterView()
  {
    return this.adapterView;
  }
  
  public HttpGroup getImageHttpGroup()
  {
    if (this.httpGroup == null) {
      this.httpGroup = HttpGroupUtils.getHttpGroupaAsynPool(5000);
    }
    return this.httpGroup;
  }
  
  public View getItemView(int paramInt, boolean paramBoolean)
  {
    int i;
    ChildViewInfo localChildViewInfo;
    Integer localInteger1;
    label43:
    Integer localInteger2;
    label61:
    Integer localInteger3;
    if ((paramBoolean) && ((this.adapterView.getAdapter() instanceof HeaderViewListAdapter)))
    {
      i = 1;
      localChildViewInfo = new ChildViewInfo(this.adapterView);
      if (i == 0) {
        break label124;
      }
      localInteger1 = localChildViewInfo.firstVisiblePositionWithOutHeaderViews;
      int j = localInteger1.intValue();
      if (i == 0) {
        break label134;
      }
      localInteger2 = localChildViewInfo.childCountWithOutHeaderViews;
      localInteger3 = getItemViewIndex(j, localInteger2.intValue(), paramInt);
      if (localInteger3 == null) {
        break label154;
      }
      if (i == 0) {
        break label144;
      }
    }
    label134:
    label144:
    for (int k = localInteger3.intValue() + localChildViewInfo.visibleHeaderViewsCount.intValue();; k = localInteger3.intValue())
    {
      Integer localInteger4 = Integer.valueOf(k);
      return this.adapterView.getChildAt(localInteger4.intValue());
      i = 0;
      break;
      label124:
      localInteger1 = localChildViewInfo.firstVisiblePosition;
      break label43;
      localInteger2 = localChildViewInfo.childCount;
      break label61;
    }
    label154:
    return null;
  }
  
  public View getSubView(View paramView, int paramInt)
  {
    return (View)getSubViews(paramView).get(Integer.valueOf(paramInt));
  }
  
  public void putSubViews(View paramView, Map<Integer, View> paramMap)
  {
    this.itemView_subViews_map.put(paramView, paramMap);
  }
  
  public void setAdapterView(AdapterView<Adapter> paramAdapterView)
  {
    this.adapterView = paramAdapterView;
  }
  
  private static class ChildViewInfo
  {
    private Integer childCount = null;
    private Integer childCountWithOutHeaderViews = null;
    private Integer firstVisiblePosition = null;
    private Integer firstVisiblePositionWithOutHeaderViews = null;
    private Integer headerViewsCount = null;
    private Integer visibleHeaderViewsCount = null;
    
    public ChildViewInfo(AdapterView<Adapter> paramAdapterView)
    {
      Adapter localAdapter = paramAdapterView.getAdapter();
      this.firstVisiblePosition = Integer.valueOf(paramAdapterView.getFirstVisiblePosition());
      this.childCount = Integer.valueOf(paramAdapterView.getChildCount());
      if ((localAdapter != null) && ((localAdapter instanceof HeaderViewListAdapter)))
      {
        this.headerViewsCount = Integer.valueOf(((HeaderViewListAdapter)localAdapter).getHeadersCount());
        this.firstVisiblePositionWithOutHeaderViews = Integer.valueOf(this.firstVisiblePosition.intValue() - this.headerViewsCount.intValue());
        if (this.firstVisiblePositionWithOutHeaderViews.intValue() < 0) {
          this.firstVisiblePositionWithOutHeaderViews = Integer.valueOf(0);
        }
        this.visibleHeaderViewsCount = Integer.valueOf(this.headerViewsCount.intValue() - this.firstVisiblePosition.intValue());
        if (this.visibleHeaderViewsCount.intValue() > 0)
        {
          this.visibleHeaderViewsCount = Integer.valueOf(Math.min(this.childCount.intValue(), this.visibleHeaderViewsCount.intValue()));
          this.childCountWithOutHeaderViews = Integer.valueOf(this.childCount.intValue() - this.visibleHeaderViewsCount.intValue());
        }
      }
      else
      {
        return;
      }
      this.visibleHeaderViewsCount = Integer.valueOf(0);
      this.childCountWithOutHeaderViews = this.childCount;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.AdapterHelper
 * JD-Core Version:    0.7.0.1
 */