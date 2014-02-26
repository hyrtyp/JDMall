package com.jingdong.common.utils;

import android.content.Context;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Checkable;
import android.widget.Filter;
import android.widget.Filter.FilterResults;
import android.widget.Filterable;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.WeakHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class SimpleJsonAdapter
  extends BaseAdapter
  implements Filterable
{
  private JSONArray mData;
  private int mDropDownResource;
  private SimpleFilter mFilter;
  private String[] mFrom;
  private final WeakHashMap<View, View[]> mHolders = new WeakHashMap();
  private LayoutInflater mInflater;
  private int mResource;
  private int[] mTo;
  private JSONArray mUnfilteredData;
  private ViewBinder mViewBinder;
  private ArrayList<View> viewList = new ArrayList();
  
  public SimpleJsonAdapter(Context paramContext, JSONArray paramJSONArray, int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    this.mData = paramJSONArray;
    this.mDropDownResource = paramInt;
    this.mResource = paramInt;
    this.mFrom = paramArrayOfString;
    this.mTo = paramArrayOfInt;
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }
  
  private void bindView(int paramInt, View paramView)
  {
    JSONObject localJSONObject;
    ViewBinder localViewBinder;
    View[] arrayOfView;
    String[] arrayOfString;
    int i;
    int j;
    do
    {
      try
      {
        localJSONObject = this.mData.getJSONObject(paramInt);
        if (localJSONObject == null) {
          return;
        }
      }
      catch (JSONException localJSONException1)
      {
        throw new RuntimeException(localJSONException1);
      }
      localViewBinder = this.mViewBinder;
      arrayOfView = (View[])this.mHolders.get(paramView);
      arrayOfString = this.mFrom;
      i = this.mTo.length;
      j = 0;
    } while (j >= i);
    View localView = arrayOfView[j];
    if (localView != null) {}
    for (;;)
    {
      Object localObject;
      try
      {
        localObject = localJSONObject.get(arrayOfString[j]);
        if (localObject == null)
        {
          str = "";
          if (str == null) {
            str = "";
          }
          boolean bool = false;
          if (localViewBinder != null) {
            bool = localViewBinder.setViewValue(localView, localObject, str);
          }
          if (!bool)
          {
            if (!(localView instanceof Checkable)) {
              break label242;
            }
            if (!(localObject instanceof Boolean)) {
              break label200;
            }
            ((Checkable)localView).setChecked(((Boolean)localObject).booleanValue());
          }
          j++;
        }
      }
      catch (JSONException localJSONException2)
      {
        throw new RuntimeException(localJSONException2);
      }
      String str = localObject.toString();
      continue;
      label200:
      throw new IllegalStateException(localView.getClass().getName() + " should be bound to a Boolean, not a " + localObject.getClass());
      label242:
      if ((localView instanceof TextView))
      {
        setViewText((TextView)localView, str);
      }
      else
      {
        if (!(localView instanceof ImageView)) {
          break label314;
        }
        if ((localObject instanceof Integer)) {
          setViewImage((ImageView)localView, ((Integer)localObject).intValue());
        } else {
          setViewImage((ImageView)localView, str);
        }
      }
    }
    label314:
    throw new IllegalStateException(localView.getClass().getName() + " is not a " + " view that can be bounds by this SimpleAdapter");
  }
  
  private View createViewFromResource(int paramInt1, View paramView, ViewGroup paramViewGroup, int paramInt2)
  {
    View localView;
    int[] arrayOfInt;
    View[] arrayOfView;
    int j;
    if (paramView == null)
    {
      localView = ImageUtil.inflate(paramInt2, paramViewGroup, false);
      arrayOfInt = this.mTo;
      int i = arrayOfInt.length;
      arrayOfView = new View[i];
      j = 0;
      if (j >= i)
      {
        this.mHolders.put(localView, arrayOfView);
        this.viewList.add(localView);
      }
    }
    for (;;)
    {
      bindView(paramInt1, localView);
      return localView;
      arrayOfView[j] = localView.findViewById(arrayOfInt[j]);
      j++;
      break;
      localView = paramView;
    }
  }
  
  public int getCount()
  {
    return this.mData.length();
  }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return createViewFromResource(paramInt, paramView, paramViewGroup, this.mDropDownResource);
  }
  
  public Filter getFilter()
  {
    if (this.mFilter == null) {
      this.mFilter = new SimpleFilter(null);
    }
    return this.mFilter;
  }
  
  public Object getItem(int paramInt)
  {
    try
    {
      Object localObject = this.mData.get(paramInt);
      return localObject;
    }
    catch (JSONException localJSONException)
    {
      throw new RuntimeException(localJSONException);
    }
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt)
  {
    return null;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return createViewFromResource(paramInt, paramView, paramViewGroup, this.mResource);
  }
  
  public ViewBinder getViewBinder()
  {
    return this.mViewBinder;
  }
  
  public void setDropDownViewResource(int paramInt)
  {
    this.mDropDownResource = paramInt;
  }
  
  public void setViewBinder(ViewBinder paramViewBinder)
  {
    this.mViewBinder = paramViewBinder;
  }
  
  public void setViewImage(ImageView paramImageView, int paramInt)
  {
    paramImageView.setImageResource(paramInt);
  }
  
  public void setViewImage(ImageView paramImageView, String paramString)
  {
    try
    {
      paramImageView.setImageResource(Integer.parseInt(paramString));
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      paramImageView.setImageURI(Uri.parse(paramString));
    }
  }
  
  public void setViewText(TextView paramTextView, String paramString)
  {
    paramTextView.setText(paramString);
  }
  
  private class SimpleFilter
    extends Filter
  {
    private SimpleFilter() {}
    
    protected Filter.FilterResults performFiltering(CharSequence paramCharSequence)
    {
      Filter.FilterResults localFilterResults = new Filter.FilterResults();
      if (SimpleJsonAdapter.this.mUnfilteredData == null) {
        SimpleJsonAdapter.this.mUnfilteredData = SimpleJsonAdapter.this.mData;
      }
      if ((paramCharSequence == null) || (paramCharSequence.length() == 0))
      {
        JSONArray localJSONArray1 = SimpleJsonAdapter.this.mUnfilteredData;
        localFilterResults.values = localJSONArray1;
        localFilterResults.count = localJSONArray1.length();
        return localFilterResults;
      }
      String str1 = paramCharSequence.toString().toLowerCase();
      JSONArray localJSONArray2 = SimpleJsonAdapter.this.mUnfilteredData;
      int i = localJSONArray2.length();
      JSONArray localJSONArray3 = new JSONArray();
      int j = 0;
      JSONObject localJSONObject;
      int m;
      for (;;)
      {
        if (j >= i)
        {
          localFilterResults.values = localJSONArray3;
          localFilterResults.count = localJSONArray3.length();
          return localFilterResults;
        }
        try
        {
          localJSONObject = localJSONArray2.getJSONObject(j);
          if (localJSONObject != null)
          {
            int k = SimpleJsonAdapter.this.mTo.length;
            m = 0;
            if (m < k) {
              break;
            }
          }
          else
          {
            j++;
          }
        }
        catch (JSONException localJSONException1)
        {
          RuntimeException localRuntimeException1 = new RuntimeException(localJSONException1);
          throw localRuntimeException1;
        }
      }
      for (;;)
      {
        String[] arrayOfString;
        int i1;
        try
        {
          String str2 = localJSONObject.getString(SimpleJsonAdapter.this.mFrom[m]);
          arrayOfString = str2.split(" ");
          int n = arrayOfString.length;
          i1 = 0;
          if (i1 >= n) {
            m++;
          }
        }
        catch (JSONException localJSONException2)
        {
          RuntimeException localRuntimeException2 = new RuntimeException(localJSONException2);
          throw localRuntimeException2;
        }
        if (arrayOfString[i1].toLowerCase().startsWith(str1)) {
          localJSONArray3.put(localJSONObject);
        } else {
          i1++;
        }
      }
    }
    
    protected void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
    {
      SimpleJsonAdapter.this.mData = ((JSONArray)paramFilterResults.values);
      if (paramFilterResults.count > 0)
      {
        SimpleJsonAdapter.this.notifyDataSetChanged();
        return;
      }
      SimpleJsonAdapter.this.notifyDataSetInvalidated();
    }
  }
  
  public static abstract interface ViewBinder
  {
    public abstract boolean setViewValue(View paramView, Object paramObject, String paramString);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.SimpleJsonAdapter
 * JD-Core Version:    0.7.0.1
 */