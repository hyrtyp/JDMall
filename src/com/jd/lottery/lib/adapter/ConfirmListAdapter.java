package com.jd.lottery.lib.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.jd.lottery.lib.R.id;
import com.jd.lottery.lib.R.layout;
import com.jd.lottery.lib.R.string;
import com.jd.lottery.lib.formatter.Formatter;
import com.jd.lottery.lib.formatter.LotteryBasket.LotteryItem;
import com.jd.lottery.lib.utils.LotteryNumberDecor;
import java.util.List;

public class ConfirmListAdapter
  extends BaseAdapter
{
  private Context mContext;
  private Formatter mFormatter;
  private List<LotteryBasket.LotteryItem> mList;
  private View.OnLongClickListener mListener;
  
  public ConfirmListAdapter(Context paramContext)
  {
    this.mContext = paramContext;
  }
  
  public void addLottery(LotteryBasket.LotteryItem paramLotteryItem)
  {
    this.mList.add(paramLotteryItem);
    notifyDataSetChanged();
  }
  
  public void deleteItem(int paramInt)
  {
    this.mList.remove(paramInt);
    notifyDataSetChanged();
  }
  
  public int getCount()
  {
    return this.mList.size();
  }
  
  public Object getItem(int paramInt)
  {
    return this.mList.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public List<LotteryBasket.LotteryItem> getLotterys()
  {
    return this.mList;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {}
    for (View localView1 = LayoutInflater.from(this.mContext).inflate(R.layout.confirm_list_item, null);; localView1 = paramView)
    {
      LotteryBasket.LotteryItem localLotteryItem = (LotteryBasket.LotteryItem)this.mList.get(paramInt);
      ((TextView)localView1.findViewById(R.id.lottery)).setText(LotteryNumberDecor.decorLotteryNumber(localLotteryItem.mLottery.replace("|", " | ")));
      ((TextView)localView1.findViewById(R.id.type)).setText(Formatter.getFormatter(localLotteryItem.mKind, localLotteryItem.mType).typeName(this.mContext, localLotteryItem.mType));
      TextView localTextView = (TextView)localView1.findViewById(R.id.money);
      View localView2 = localView1.findViewById(R.id.delete);
      localView2.setVisibility(8);
      localView2.setTag(Integer.valueOf(paramInt));
      localView1.setOnLongClickListener(this.mListener);
      List localList = this.mFormatter.data_formatter(localLotteryItem.mLottery);
      long l = this.mFormatter.calculate(localList);
      localTextView.setText(l + this.mContext.getString(R.string.zhu) + 2L * l + this.mContext.getString(R.string.yuan));
      return localView1;
    }
  }
  
  public void setFormatter(Formatter paramFormatter)
  {
    this.mFormatter = paramFormatter;
  }
  
  public void setLotterys(List<LotteryBasket.LotteryItem> paramList)
  {
    this.mList = paramList;
  }
  
  public void setOnItemLongClickListener(View.OnLongClickListener paramOnLongClickListener)
  {
    this.mListener = paramOnLongClickListener;
  }
  
  public int total()
  {
    int i = 0;
    for (int j = 0;; j++)
    {
      if (j >= this.mList.size()) {
        return i * 2;
      }
      List localList = this.mFormatter.data_formatter(((LotteryBasket.LotteryItem)this.mList.get(j)).mLottery);
      i = (int)(i + this.mFormatter.calculate(localList));
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.adapter.ConfirmListAdapter
 * JD-Core Version:    0.7.0.1
 */