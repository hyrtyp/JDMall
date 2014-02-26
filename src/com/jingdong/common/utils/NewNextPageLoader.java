package com.jingdong.common.utils;

import android.view.View;
import android.widget.AdapterView;
import com.jingdong.common.frame.IMyActivity;
import java.util.ArrayList;
import org.json.JSONObject;

public abstract class NewNextPageLoader
  extends NextPageLoader
{
  private int totalPageCount = 0;
  
  public NewNextPageLoader(IMyActivity paramIMyActivity, AdapterView paramAdapterView, View paramView, String paramString)
  {
    super(paramIMyActivity, paramAdapterView, paramView, paramString);
  }
  
  public NewNextPageLoader(IMyActivity paramIMyActivity, AdapterView paramAdapterView, View paramView, String paramString, JSONObject paramJSONObject)
  {
    super(paramIMyActivity, paramAdapterView, paramView, paramString, paramJSONObject);
  }
  
  public NewNextPageLoader(IMyActivity paramIMyActivity, AdapterView paramAdapterView, View paramView, String paramString1, JSONObject paramJSONObject, String paramString2)
  {
    super(paramIMyActivity, paramAdapterView, paramView, paramString1, paramJSONObject, paramString2);
  }
  
  public int getTotalPageCount()
  {
    return this.totalPageCount;
  }
  
  protected boolean judgeIsLastPage(ArrayList<?> paramArrayList)
  {
    return ((paramArrayList.size() < this.pageSize.intValue()) || (!this.isPaging)) && ((this.totalPageCount == 0) || (this.pageNum.intValue() == this.totalPageCount));
  }
  
  public void setTotalPageCount(int paramInt)
  {
    this.totalPageCount = paramInt;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.NewNextPageLoader
 * JD-Core Version:    0.7.0.1
 */