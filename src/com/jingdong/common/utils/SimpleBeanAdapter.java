package com.jingdong.common.utils;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filter.FilterResults;
import android.widget.Filterable;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ListView.FixedViewInfo;
import com.jingdong.common.MyApplication;
import com.jingdong.common.utils.adapter.SimpleImageProcessor;
import com.jingdong.common.utils.adapter.UIRunnable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Vector;

public class SimpleBeanAdapter
  extends BaseAdapter
  implements Filterable
{
  private AdapterHelper adapterHelper = new AdapterHelper();
  private boolean allowNoImage = true;
  private ArrayList<ListView.FixedViewInfo> footerViewInfos;
  private ArrayList<ListView.FixedViewInfo> headerViewInfos;
  private HeaderViewListAdapter headerViewListAdapter;
  private boolean isAssetsCache = false;
  private boolean isForeverCacheImage = false;
  private List<?> mData;
  private int mDropDownResource;
  private SimpleFilter mFilter;
  private String[] mFrom;
  private LayoutInflater mInflater;
  private int mResource;
  private int[] mTo;
  private List<?> mUnfilteredData;
  private SubViewBinder mViewBinder;
  private Vector uiRunnables = new Vector();
  
  public SimpleBeanAdapter(Context paramContext, List<?> paramList, int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    this.mData = paramList;
    this.mDropDownResource = paramInt;
    this.mResource = paramInt;
    this.mFrom = paramArrayOfString;
    this.mTo = paramArrayOfInt;
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }
  
  private void bindView(int paramInt, View paramView)
  {
    Object localObject1 = getItem(paramInt);
    if ((localObject1 == null) || (paramView == null)) {
      return;
    }
    SubViewBinder localSubViewBinder = getViewBinder();
    String[] arrayOfString = this.mFrom;
    int[] arrayOfInt = this.mTo;
    int i = arrayOfInt.length;
    int j = 0;
    label41:
    View localView;
    Object localObject2;
    if (j < i)
    {
      localView = this.adapterHelper.getSubView(paramView, arrayOfInt[j]);
      if (localView != null)
      {
        localObject2 = BeanUtil.getValue(localObject1, arrayOfString[j]);
        if (localObject2 != null) {
          break label171;
        }
      }
    }
    label171:
    for (String str = "";; str = localObject2.toString())
    {
      if ((str != null) || (localSubViewBinder != null))
      {
        SubViewHolder localSubViewHolder = new SubViewHolder();
        localSubViewHolder.setAdapter(this);
        localSubViewHolder.setItemData(localObject1);
        localSubViewHolder.setSubData(localObject2);
        localSubViewHolder.setItemView(paramView);
        localSubViewHolder.setSubView(localView);
        localSubViewHolder.setPosition(paramInt);
        localSubViewHolder.setSubViewId(arrayOfInt[j]);
        localSubViewBinder.bind(localSubViewHolder);
      }
      j++;
      break label41;
      break;
    }
  }
  
  private View createViewFromResource(ViewGroup paramViewGroup, int paramInt)
  {
    View localView = inflateView(paramViewGroup, paramInt);
    int[] arrayOfInt = this.mTo;
    int i = arrayOfInt.length;
    HashMap localHashMap = new HashMap();
    for (int j = 0;; j++)
    {
      if (j >= i)
      {
        this.adapterHelper.putSubViews(localView, localHashMap);
        return localView;
      }
      localHashMap.put(Integer.valueOf(arrayOfInt[j]), localView.findViewById(arrayOfInt[j]));
    }
  }
  
  private View getViewFromResource(int paramInt1, View paramView, ViewGroup paramViewGroup, int paramInt2)
  {
    if (paramView == null) {}
    for (View localView = createViewFromResource(paramViewGroup, paramInt2);; localView = paramView) {
      try
      {
        bindView(paramInt1, localView);
        return localView;
      }
      catch (Exception localException) {}
    }
    return localView;
  }
  
  private void removeFixedViewInfo(View paramView, ArrayList<ListView.FixedViewInfo> paramArrayList)
  {
    int i = paramArrayList.size();
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return;
      }
      if (((ListView.FixedViewInfo)paramArrayList.get(j)).view == paramView)
      {
        paramArrayList.remove(j);
        return;
      }
    }
  }
  
  /* Error */
  public void UIWorkCentralized(UIRunnable paramUIRunnable)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 58	com/jingdong/common/utils/SimpleBeanAdapter:uiRunnables	Ljava/util/Vector;
    //   6: invokevirtual 217	java/util/Vector:size	()I
    //   9: ifgt +36 -> 45
    //   12: aload_0
    //   13: getfield 58	com/jingdong/common/utils/SimpleBeanAdapter:uiRunnables	Ljava/util/Vector;
    //   16: aload_1
    //   17: invokevirtual 221	java/util/Vector:add	(Ljava/lang/Object;)Z
    //   20: pop
    //   21: invokestatic 227	com/jingdong/common/MyApplication:getInstance	()Lcom/jingdong/common/MyApplication;
    //   24: invokevirtual 231	com/jingdong/common/MyApplication:getHandler	()Landroid/os/Handler;
    //   27: new 233	com/jingdong/common/utils/SimpleBeanAdapter$2
    //   30: dup
    //   31: aload_0
    //   32: invokespecial 235	com/jingdong/common/utils/SimpleBeanAdapter$2:<init>	(Lcom/jingdong/common/utils/SimpleBeanAdapter;)V
    //   35: ldc2_w 236
    //   38: invokevirtual 243	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   41: pop
    //   42: aload_0
    //   43: monitorexit
    //   44: return
    //   45: aload_0
    //   46: getfield 58	com/jingdong/common/utils/SimpleBeanAdapter:uiRunnables	Ljava/util/Vector;
    //   49: aload_1
    //   50: invokevirtual 221	java/util/Vector:add	(Ljava/lang/Object;)Z
    //   53: pop
    //   54: goto -12 -> 42
    //   57: astore_2
    //   58: aload_0
    //   59: monitorexit
    //   60: aload_2
    //   61: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	this	SimpleBeanAdapter
    //   0	62	1	paramUIRunnable	UIRunnable
    //   57	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	42	57	finally
    //   45	54	57	finally
  }
  
  public void addAllBean(Collection paramCollection)
  {
    this.mData.addAll(paramCollection);
  }
  
  public void addFooterView(ListView paramListView, View paramView)
  {
    if (MyApplication.getInstance().getUiThread() != Thread.currentThread()) {
      throw new RuntimeException("must run in ui thread");
    }
    if (this.footerViewInfos == null) {
      return;
    }
    paramListView.getClass();
    ListView.FixedViewInfo localFixedViewInfo = new ListView.FixedViewInfo(paramListView);
    localFixedViewInfo.view = paramView;
    localFixedViewInfo.data = null;
    localFixedViewInfo.isSelectable = true;
    this.footerViewInfos.add(localFixedViewInfo);
    notifyDataSetChanged();
  }
  
  public void addHeaderView(ListView paramListView, View paramView)
  {
    if (MyApplication.getInstance().getUiThread() != Thread.currentThread()) {
      throw new RuntimeException("must run in ui thread");
    }
    if (this.headerViewListAdapter == null) {
      return;
    }
    paramListView.getClass();
    ListView.FixedViewInfo localFixedViewInfo = new ListView.FixedViewInfo(paramListView);
    localFixedViewInfo.view = paramView;
    localFixedViewInfo.data = null;
    localFixedViewInfo.isSelectable = true;
    this.headerViewInfos.add(localFixedViewInfo);
    notifyDataSetChanged();
  }
  
  public boolean allowNoImageAndIsNoImage()
  {
    return (this.allowNoImage) && (NoImageUtils.needNoImage());
  }
  
  public void gc()
  {
    this.mViewBinder = null;
    this.mData = null;
    this.mUnfilteredData = null;
  }
  
  public AdapterHelper getAdapterHelper()
  {
    return this.adapterHelper;
  }
  
  public int getCount()
  {
    if (this.mData != null) {
      return this.mData.size();
    }
    return 0;
  }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return getViewFromResource(paramInt, paramView, paramViewGroup, this.mDropDownResource);
  }
  
  public Filter getFilter()
  {
    if (this.mFilter == null) {
      this.mFilter = new SimpleFilter(null);
    }
    return this.mFilter;
  }
  
  public HeaderViewListAdapter getHeaderViewListAdapter()
  {
    if (this.headerViewListAdapter == null)
    {
      this.headerViewInfos = new ArrayList();
      this.footerViewInfos = new ArrayList();
      this.headerViewListAdapter = new HeaderViewListAdapter(this.headerViewInfos, this.footerViewInfos, this)
      {
        public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
        {
          try
          {
            View localView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
            return localView;
          }
          catch (Throwable localThrowable) {}
          return new View(MyApplication.getInstance().getBaseContext());
        }
      };
    }
    return this.headerViewListAdapter;
  }
  
  public Object getItem(int paramInt)
  {
    if ((this.mData != null) && (paramInt >= 0) && (paramInt < this.mData.size())) {
      return this.mData.get(paramInt);
    }
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if ((paramViewGroup instanceof AdapterView)) {
      this.adapterHelper.setAdapterView((AdapterView)paramViewGroup);
    }
    return getViewFromResource(paramInt, paramView, paramViewGroup, this.mResource);
  }
  
  public SubViewBinder getViewBinder()
  {
    if (this.mViewBinder == null) {
      this.mViewBinder = new SimpleSubViewBinder(new SimpleImageProcessor());
    }
    return this.mViewBinder;
  }
  
  protected View inflateView(ViewGroup paramViewGroup, int paramInt)
  {
    return ImageUtil.inflate(paramInt, paramViewGroup, false);
  }
  
  public boolean isAllowNoImage()
  {
    return this.allowNoImage;
  }
  
  public boolean isAssetsCache()
  {
    return this.isAssetsCache;
  }
  
  public boolean isForeverCacheImage()
  {
    return this.isForeverCacheImage;
  }
  
  public void removeAllFooterView()
  {
    if (this.footerViewInfos != null)
    {
      this.footerViewInfos.clear();
      notifyDataSetChanged();
    }
  }
  
  public void removeAllHeaderView()
  {
    if (this.headerViewInfos != null)
    {
      this.headerViewInfos.clear();
      notifyDataSetChanged();
    }
  }
  
  public boolean removeFooterView(View paramView)
  {
    if (MyApplication.getInstance().getUiThread() != Thread.currentThread()) {
      throw new RuntimeException("must run in ui thread");
    }
    if (this.headerViewListAdapter == null) {}
    while (this.footerViewInfos.size() <= 0) {
      return false;
    }
    boolean bool1 = this.headerViewListAdapter.removeFooter(paramView);
    boolean bool2 = false;
    if (bool1)
    {
      notifyDataSetChanged();
      bool2 = true;
    }
    removeFixedViewInfo(paramView, this.footerViewInfos);
    return bool2;
  }
  
  public boolean removeHeaderView(View paramView)
  {
    if (MyApplication.getInstance().getUiThread() != Thread.currentThread()) {
      throw new RuntimeException("must run in ui thread");
    }
    if (this.headerViewListAdapter == null) {}
    while (this.headerViewInfos.size() <= 0) {
      return false;
    }
    boolean bool1 = this.headerViewListAdapter.removeHeader(paramView);
    boolean bool2 = false;
    if (bool1)
    {
      notifyDataSetChanged();
      bool2 = true;
    }
    removeFixedViewInfo(paramView, this.headerViewInfos);
    return bool2;
  }
  
  public void replaceAllBean(Collection paramCollection)
  {
    int i = this.mData.size();
    addAllBean(paramCollection);
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return;
      }
      this.mData.remove(0);
    }
  }
  
  public void setAllowNoImage(boolean paramBoolean)
  {
    this.allowNoImage = paramBoolean;
  }
  
  public void setAssetsCache(boolean paramBoolean)
  {
    this.isAssetsCache = paramBoolean;
  }
  
  public void setData(List<Object> paramList)
  {
    this.mData = paramList;
  }
  
  public void setDropDownViewResource(int paramInt)
  {
    this.mDropDownResource = paramInt;
  }
  
  public void setForeverCacheImage(boolean paramBoolean)
  {
    this.isForeverCacheImage = paramBoolean;
  }
  
  public void setViewBinder(SubViewBinder paramSubViewBinder)
  {
    this.mViewBinder = paramSubViewBinder;
  }
  
  private class SimpleFilter
    extends Filter
  {
    private SimpleFilter() {}
    
    protected Filter.FilterResults performFiltering(CharSequence paramCharSequence)
    {
      Filter.FilterResults localFilterResults = new Filter.FilterResults();
      if (SimpleBeanAdapter.this.mUnfilteredData == null) {
        SimpleBeanAdapter.this.mUnfilteredData = SimpleBeanAdapter.this.mData;
      }
      if ((paramCharSequence == null) || (paramCharSequence.length() == 0))
      {
        List localList1 = SimpleBeanAdapter.this.mUnfilteredData;
        localFilterResults.values = localList1;
        localFilterResults.count = localList1.size();
        return localFilterResults;
      }
      String str = paramCharSequence.toString().toLowerCase();
      List localList2 = SimpleBeanAdapter.this.mUnfilteredData;
      int i = localList2.size();
      LinkedList localLinkedList = new LinkedList();
      Object localObject;
      int m;
      for (int j = 0;; j++)
      {
        if (j >= i)
        {
          localFilterResults.values = localLinkedList;
          localFilterResults.count = localLinkedList.size();
          return localFilterResults;
        }
        localObject = localList2.get(j);
        if (localObject != null)
        {
          int k = SimpleBeanAdapter.this.mTo.length;
          m = 0;
          if (m < k) {
            break;
          }
        }
      }
      String[] arrayOfString = ((String)BeanUtil.getValue(localObject, SimpleBeanAdapter.this.mFrom[m])).split(" ");
      int n = arrayOfString.length;
      label254:
      for (int i1 = 0;; i1++)
      {
        if (i1 >= n) {}
        for (;;)
        {
          m++;
          break;
          if (!arrayOfString[i1].toLowerCase().startsWith(str)) {
            break label254;
          }
          localLinkedList.add(localObject);
        }
      }
    }
    
    protected void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
    {
      SimpleBeanAdapter.this.mData = ((List)paramFilterResults.values);
      if (paramFilterResults.count > 0)
      {
        SimpleBeanAdapter.this.notifyDataSetChanged();
        return;
      }
      SimpleBeanAdapter.this.notifyDataSetInvalidated();
    }
  }
  
  public static class SubViewHolder
  {
    public static final String MORE_PARAMETER_LOADED = "loaded";
    public static final String MORE_PARAMETER_LOCAL_LOAD_IMAGE = "localLoadImage";
    public static final String MORE_PARAMETER_MANUAL_GET_IMAGE = "manualGetImage";
    private SimpleBeanAdapter adapter;
    private Object itemData;
    private View itemView;
    private Map<String, Object> moreParameter;
    private int position = 0;
    private Object subData;
    private View subView;
    private int subViewId = 0;
    
    public SubViewHolder() {}
    
    public SubViewHolder(SubViewHolder paramSubViewHolder)
    {
      setAdapter(paramSubViewHolder.getAdapter());
      setPosition(paramSubViewHolder.getPosition());
      setSubViewId(paramSubViewHolder.getSubViewId());
      setItemData(paramSubViewHolder.getItemData());
      setSubData(paramSubViewHolder.getSubData());
      setItemView(paramSubViewHolder.getItemView());
      setSubView(paramSubViewHolder.getSubView());
    }
    
    public SimpleBeanAdapter getAdapter()
    {
      return this.adapter;
    }
    
    public Object getItemData()
    {
      return this.itemData;
    }
    
    public View getItemView()
    {
      return this.itemView;
    }
    
    public Object getMoreParameter(String paramString)
    {
      if (this.moreParameter == null) {
        return null;
      }
      return this.moreParameter.get(paramString);
    }
    
    public int getPosition()
    {
      return this.position;
    }
    
    public Object getSubData()
    {
      return this.subData;
    }
    
    public View getSubView()
    {
      return this.subView;
    }
    
    public int getSubViewId()
    {
      return this.subViewId;
    }
    
    public void putMoreParameter(String paramString, Object paramObject)
    {
      if (this.moreParameter == null) {
        this.moreParameter = new HashMap();
      }
      this.moreParameter.put(paramString, paramObject);
    }
    
    public void setAdapter(SimpleBeanAdapter paramSimpleBeanAdapter)
    {
      this.adapter = paramSimpleBeanAdapter;
    }
    
    public void setItemData(Object paramObject)
    {
      this.itemData = paramObject;
    }
    
    public void setItemView(View paramView)
    {
      this.itemView = paramView;
    }
    
    public void setPosition(int paramInt)
    {
      this.position = paramInt;
    }
    
    public void setSubData(Object paramObject)
    {
      this.subData = paramObject;
    }
    
    public void setSubView(View paramView)
    {
      this.subView = paramView;
    }
    
    public void setSubViewId(int paramInt)
    {
      this.subViewId = paramInt;
    }
    
    public String toString()
    {
      return "SubViewHolder [adapter=" + this.adapter + ", itemData=" + this.itemData + ", itemView=" + this.itemView + ", position=" + this.position + ", subData=" + this.subData + ", subView=" + this.subView + ", subViewId=" + this.subViewId + "]";
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.SimpleBeanAdapter
 * JD-Core Version:    0.7.0.1
 */