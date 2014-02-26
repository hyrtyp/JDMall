package com.jingdong.app.mall.shopping;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RadioButton;
import com.jingdong.common.entity.CommAddr;
import com.jingdong.common.utils.ImageUtil;
import java.util.ArrayList;

public class OrderAdapter
  extends BaseAdapter
{
  ArrayList<CommAddr> addrList;
  private Context mContext = null;
  private LayoutInflater mInflater;
  
  public OrderAdapter(Context paramContext, ArrayList<CommAddr> paramArrayList)
  {
    this.mContext = paramContext;
    this.mInflater = LayoutInflater.from(this.mContext);
    this.addrList = paramArrayList;
  }
  
  public int getCount()
  {
    return this.addrList.size();
  }
  
  public Object getItem(int paramInt)
  {
    return this.addrList.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    LayoutInflater.from(this.mContext);
    ViewHolder localViewHolder;
    if (paramView == null)
    {
      paramView = ImageUtil.inflate(2130903185, null);
      localViewHolder = new ViewHolder();
      localViewHolder.mRadio = ((RadioButton)paramView.findViewById(2131493671));
      paramView.setTag(localViewHolder);
    }
    for (;;)
    {
      localViewHolder.mRadio.setText(((CommAddr)this.addrList.get(paramInt)).sComUsedAddr);
      localViewHolder.mRadio.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView) {}
      });
      return paramView;
      localViewHolder = (ViewHolder)paramView.getTag();
    }
  }
  
  static class ViewHolder
  {
    RadioButton mRadio;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.OrderAdapter
 * JD-Core Version:    0.7.0.1
 */