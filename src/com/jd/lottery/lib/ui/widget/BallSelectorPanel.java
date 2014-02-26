package com.jd.lottery.lib.ui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.jd.lottery.lib.R.color;
import com.jd.lottery.lib.R.drawable;
import com.jd.lottery.lib.R.id;
import com.jd.lottery.lib.R.layout;
import com.jd.lottery.lib.model.Pair;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class BallSelectorPanel
  extends LinearLayout
{
  private Context mContext;
  private BallSelectorAdapter myAdapter;
  private FullSizeGridView myGridView;
  private SelectorChangedListener selectorChangedListener;
  
  public BallSelectorPanel(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public BallSelectorPanel(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    LayoutInflater.from(paramContext).inflate(R.layout.widget_ball_selector_panel_layout, this, true);
    this.myGridView = ((FullSizeGridView)findViewById(R.id.selected_ball_panel_gridview));
  }
  
  public void clean()
  {
    if (this.myAdapter != null) {
      this.myAdapter.clean();
    }
  }
  
  public void cleanOthers(int paramInt)
  {
    if (this.myAdapter != null) {
      this.myAdapter.cleanOthers(paramInt);
    }
  }
  
  public List<Integer> getSelectedNums()
  {
    if (this.myAdapter != null) {
      return this.myAdapter.getSelectedNums();
    }
    return null;
  }
  
  public void init(int paramInt1, int paramInt2, BallColer paramBallColer)
  {
    this.myAdapter = new BallSelectorAdapter(this.mContext, paramInt1, paramInt2, paramBallColer);
    this.myGridView.setAdapter(this.myAdapter);
    this.myGridView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        BallSelectorPanel.this.myAdapter.negationItem(paramAnonymousInt);
        if (BallSelectorPanel.this.selectorChangedListener != null)
        {
          List localList = BallSelectorPanel.this.getSelectedNums();
          BallSelectorPanel.this.selectorChangedListener.onSelectedChanged(paramAnonymousInt, localList);
        }
      }
    });
  }
  
  public boolean isSelected(int paramInt)
  {
    BallSelectorAdapter localBallSelectorAdapter = this.myAdapter;
    boolean bool = false;
    if (localBallSelectorAdapter != null) {
      bool = this.myAdapter.isItemSelected(paramInt);
    }
    return bool;
  }
  
  public void negationItem(int paramInt)
  {
    if (this.myAdapter != null) {
      this.myAdapter.negationItem(paramInt);
    }
  }
  
  public void setOnSelectorChangedListener(SelectorChangedListener paramSelectorChangedListener)
  {
    this.selectorChangedListener = paramSelectorChangedListener;
  }
  
  public void setSelected(List<Integer> paramList)
  {
    if (this.myAdapter != null) {
      this.myAdapter.setSelected(paramList);
    }
  }
  
  public static enum BallColer
  {
    BLUE,  RED;
  }
  
  private class BallSelectorAdapter
    extends BaseAdapter
  {
    public final BallSelectorPanel.BallColer mColer;
    private List<Pair<Integer, Boolean>> mItems;
    private LayoutInflater mLayoutInflater;
    public final int mLength;
    public final int mStartingNum;
    
    public BallSelectorAdapter(Context paramContext, int paramInt1, int paramInt2, BallSelectorPanel.BallColer paramBallColer)
    {
      this.mLayoutInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
      this.mStartingNum = paramInt1;
      this.mLength = paramInt2;
      this.mColer = paramBallColer;
      initItems();
    }
    
    public void clean()
    {
      for (int i = this.mStartingNum;; i++)
      {
        if (i >= this.mLength + this.mStartingNum)
        {
          notifyDataSetChanged();
          return;
        }
        Pair localPair = new Pair(Integer.valueOf(i), Boolean.valueOf(false));
        this.mItems.set(i - this.mStartingNum, localPair);
      }
    }
    
    public void cleanOthers(int paramInt)
    {
      for (int i = this.mStartingNum;; i++)
      {
        if (i >= this.mLength + this.mStartingNum)
        {
          notifyDataSetChanged();
          return;
        }
        if (i != paramInt + this.mStartingNum)
        {
          Pair localPair = new Pair(Integer.valueOf(i), Boolean.valueOf(false));
          this.mItems.set(i - this.mStartingNum, localPair);
        }
      }
    }
    
    public int getCount()
    {
      if (this.mItems == null) {
        return 0;
      }
      return this.mItems.size();
    }
    
    public Object getItem(int paramInt)
    {
      if (this.mItems == null) {
        return null;
      }
      return (Pair)this.mItems.get(paramInt);
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public List<Integer> getSelectedNums()
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = this.mItems.iterator();
      for (;;)
      {
        if (!localIterator.hasNext()) {
          return localArrayList;
        }
        Pair localPair = (Pair)localIterator.next();
        if (((Boolean)localPair.second).booleanValue()) {
          localArrayList.add((Integer)localPair.first);
        }
      }
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      Pair localPair = (Pair)this.mItems.get(paramInt);
      BallSelectorPanel.ViewHolder localViewHolder;
      if (paramView == null)
      {
        paramView = this.mLayoutInflater.inflate(R.layout.widget_ball_selector_item, paramViewGroup, false);
        localViewHolder = new BallSelectorPanel.ViewHolder(null);
        localViewHolder.ballImageView = ((ImageView)paramView.findViewById(R.id.listview_item_imageview));
        localViewHolder.ballNumberTextView = ((TextView)paramView.findViewById(R.id.listview_item_textview));
        paramView.setTag(localViewHolder);
      }
      for (;;)
      {
        localViewHolder.ballNumberTextView.setText(String.valueOf(localPair.first));
        switch (this.mColer)
        {
        default: 
          return paramView;
          localViewHolder = (BallSelectorPanel.ViewHolder)paramView.getTag();
        }
      }
      if (((Boolean)localPair.second).booleanValue()) {
        localViewHolder.ballImageView.setImageResource(R.drawable.red_ball_icon_selector_selected);
      }
      for (;;)
      {
        localViewHolder.ballNumberTextView.setTextColor(BallSelectorPanel.this.mContext.getResources().getColor(R.color.lottery_ball_number_red));
        return paramView;
        localViewHolder.ballImageView.setImageResource(R.drawable.red_ball_icon_selector);
      }
      if (((Boolean)localPair.second).booleanValue()) {
        localViewHolder.ballImageView.setImageResource(R.drawable.blue_ball_icon_selector_selected);
      }
      for (;;)
      {
        localViewHolder.ballNumberTextView.setTextColor(BallSelectorPanel.this.mContext.getResources().getColor(R.color.lottery_ball_number_blue));
        return paramView;
        localViewHolder.ballImageView.setImageResource(R.drawable.blue_ball_icon_selector);
      }
    }
    
    public void initItems()
    {
      this.mItems = new ArrayList();
      for (int i = this.mStartingNum;; i++)
      {
        if (i >= this.mStartingNum + this.mLength) {
          return;
        }
        Pair localPair = new Pair(Integer.valueOf(i), Boolean.valueOf(false));
        this.mItems.add(localPair);
      }
    }
    
    public boolean isItemSelected(int paramInt)
    {
      return ((Boolean)((Pair)this.mItems.get(paramInt)).second).booleanValue();
    }
    
    public void negationItem(int paramInt)
    {
      Pair localPair1 = (Pair)this.mItems.get(paramInt);
      Integer localInteger = (Integer)localPair1.first;
      if (((Boolean)localPair1.second).booleanValue()) {}
      for (boolean bool = false;; bool = true)
      {
        Pair localPair2 = new Pair(localInteger, Boolean.valueOf(bool));
        this.mItems.set(paramInt, localPair2);
        notifyDataSetChanged();
        return;
      }
    }
    
    public void setSelected(List<Integer> paramList)
    {
      this.mItems = new ArrayList();
      int i = this.mStartingNum;
      if (i >= this.mLength + this.mStartingNum)
      {
        notifyDataSetChanged();
        return;
      }
      if (paramList.contains(Integer.valueOf(i))) {}
      for (Pair localPair = new Pair(Integer.valueOf(i), Boolean.valueOf(true));; localPair = new Pair(Integer.valueOf(i), Boolean.valueOf(false)))
      {
        this.mItems.add(localPair);
        i++;
        break;
      }
    }
  }
  
  public static abstract interface SelectorChangedListener
  {
    public abstract void onSelectedChanged(int paramInt, List<Integer> paramList);
  }
  
  private static class ViewHolder
  {
    ImageView ballImageView;
    TextView ballNumberTextView;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.ui.widget.BallSelectorPanel
 * JD-Core Version:    0.7.0.1
 */