package com.jingdong.app.mall.shopping;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.jingdong.common.utils.ImageUtil;
import java.util.ArrayList;
import java.util.Map;

public class YouHuiAdapter
  extends BaseAdapter
{
  private Context context;
  private LayoutInflater mInflater = null;
  ArrayList<Map<String, String>> mYouHui;
  
  public YouHuiAdapter(Context paramContext, ArrayList<Map<String, String>> paramArrayList)
  {
    this.context = paramContext;
    this.mInflater = LayoutInflater.from(paramContext);
    this.mYouHui = paramArrayList;
  }
  
  public int getCount()
  {
    if ((this.mYouHui != null) && (this.mYouHui.size() > 0)) {
      return this.mYouHui.size();
    }
    return 0;
  }
  
  public Object getItem(int paramInt)
  {
    return this.mYouHui.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    new ViewHolder(null);
    ViewHolder localViewHolder;
    String str;
    if (paramView == null)
    {
      localViewHolder = new ViewHolder(null);
      paramView = ImageUtil.inflate(2130903372, null);
      localViewHolder.mName = ((TextView)paramView.findViewById(2131495631));
      paramView.setTag(localViewHolder);
      str = (String)((Map)this.mYouHui.get(paramInt)).get("name");
      if ((((Map)this.mYouHui.get(paramInt)).get("name") != " ") && (str != "") && (str != " ")) {
        break label157;
      }
      localViewHolder.mName.setVisibility(8);
      ((TextView)paramView.findViewById(2131495630)).setVisibility(0);
    }
    for (;;)
    {
      localViewHolder.mName.setText(str);
      return paramView;
      localViewHolder = (ViewHolder)paramView.getTag();
      break;
      label157:
      localViewHolder.mName.setVisibility(0);
      ((TextView)paramView.findViewById(2131495630)).setVisibility(8);
    }
  }
  
  private static class ViewHolder
  {
    TextView mName;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.YouHuiAdapter
 * JD-Core Version:    0.7.0.1
 */