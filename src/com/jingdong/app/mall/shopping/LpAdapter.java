package com.jingdong.app.mall.shopping;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.jingdong.common.constant.Constants;
import com.jingdong.common.utils.ImageUtil;
import java.util.ArrayList;
import java.util.Map;

public class LpAdapter
  extends BaseAdapter
{
  private Context context;
  ArrayList<Map<String, String>> item;
  private RelativeLayout jingLayout;
  private LayoutInflater mInflater = null;
  int[] seleted = new int[0];
  
  public LpAdapter(Context paramContext, ArrayList<Map<String, String>> paramArrayList, int[] paramArrayOfInt)
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
      paramView = ImageUtil.inflate(2130903174, null);
      if (!Constants.noLi)
      {
        localViewHolder.bCheck = ((CheckBox)paramView.findViewById(2131493609));
        localViewHolder.bCheck.setChecked(false);
        localViewHolder.bCheck.setVisibility(0);
        if ((this.seleted != null) && (this.seleted.length > 0))
        {
          i = 0;
          if (i < this.seleted.length) {}
        }
        else
        {
          ((TextView)paramView.findViewById(2131493606)).setVisibility(0);
          ((TextView)paramView.findViewById(2131493596)).setVisibility(0);
          label122:
          localViewHolder.mName = ((TextView)paramView.findViewById(2131493605));
          localViewHolder.mLeftMoney = ((TextView)paramView.findViewById(2131493607));
          localViewHolder.mEndTime = ((TextView)paramView.findViewById(2131493596));
          paramView.setTag(localViewHolder);
        }
      }
    }
    for (;;)
    {
      Map localMap = (Map)this.item.get(paramInt);
      localViewHolder.mName.setText((CharSequence)localMap.get("name"));
      localViewHolder.mLeftMoney.setText((CharSequence)localMap.get("leftMoney"));
      localViewHolder.mEndTime.setText((CharSequence)localMap.get("time"));
      return paramView;
      if (this.seleted[i] == paramInt) {
        localViewHolder.bCheck.setChecked(true);
      }
      i++;
      break;
      ((TextView)paramView.findViewById(2131493606)).setVisibility(8);
      ((TextView)paramView.findViewById(2131493596)).setVisibility(8);
      localViewHolder.bCheck = ((CheckBox)paramView.findViewById(2131493609));
      localViewHolder.bCheck.setChecked(false);
      localViewHolder.bCheck.setVisibility(8);
      break label122;
      localViewHolder = (ViewHolder)paramView.getTag();
    }
  }
  
  private static class ViewHolder
  {
    CheckBox bCheck;
    TextView mEndTime;
    TextView mLeftMoney;
    TextView mName;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.LpAdapter
 * JD-Core Version:    0.7.0.1
 */