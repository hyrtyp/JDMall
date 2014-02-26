package com.jingdong.app.mall.shopping;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.jingdong.common.utils.ImageUtil;
import java.util.ArrayList;
import java.util.Map;

public class EasyAdapter
  extends BaseAdapter
{
  private Context context;
  ArrayList<Map<String, String>> item;
  private RelativeLayout jingLayout;
  private LayoutInflater mInflater = null;
  int[] seleted = new int[0];
  
  public EasyAdapter(Context paramContext, ArrayList<Map<String, String>> paramArrayList, int[] paramArrayOfInt)
  {
    this.context = paramContext;
    this.mInflater = LayoutInflater.from(paramContext);
    this.item = paramArrayList;
    this.seleted = paramArrayOfInt;
  }
  
  public int getCount()
  {
    if ((this.item != null) && (!this.item.isEmpty())) {
      return this.item.size();
    }
    return 0;
  }
  
  public Object getItem(int paramInt)
  {
    return this.item.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    new ViewHolder(null);
    ViewHolder localViewHolder;
    int i;
    if (paramView == null)
    {
      localViewHolder = new ViewHolder(null);
      paramView = ImageUtil.inflate(2130903122, null);
      localViewHolder.mImage = ((RadioButton)paramView.findViewById(2131493364));
      localViewHolder.mImage.setVisibility(0);
      localViewHolder.mImage.setChecked(false);
      if ((this.seleted != null) && (this.seleted.length > 0))
      {
        i = 0;
        if (i < this.seleted.length) {}
      }
      else
      {
        localViewHolder.mName = ((TextView)paramView.findViewById(2131493342));
        paramView.setTag(localViewHolder);
      }
    }
    for (;;)
    {
      Map localMap = (Map)this.item.get(paramInt);
      localViewHolder.mName.setText((CharSequence)localMap.get("name"));
      return paramView;
      if (this.seleted[i] == paramInt)
      {
        localViewHolder.mImage.setChecked(true);
        com.jingdong.common.constant.Constants.oldBtn = localViewHolder.mImage;
      }
      i++;
      break;
      localViewHolder = (ViewHolder)paramView.getTag();
    }
  }
  
  private static class ViewHolder
  {
    Button mDel;
    RadioButton mImage;
    TextView mName;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.EasyAdapter
 * JD-Core Version:    0.7.0.1
 */