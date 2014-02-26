package com.jd.lottery.lib.ui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.jd.lottery.lib.R.array;
import com.jd.lottery.lib.R.drawable;
import com.jd.lottery.lib.R.id;
import com.jd.lottery.lib.R.layout;
import com.jd.lottery.lib.R.string;
import com.jd.lottery.lib.data.Constants.LotteryType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class RulesDialogFragment
  extends DialogFragment
{
  private static final String LOTTERY_TYPE = "lottery_money";
  private int[] liResId;
  private Constants.LotteryType mLotteryType;
  private ArrayList<RulesItem> rulesItems;
  
  public RulesDialogFragment()
  {
    int[] arrayOfInt = new int[2];
    arrayOfInt[0] = R.drawable.shape_oval_red;
    arrayOfInt[1] = R.drawable.shape_oval_blue;
    this.liResId = arrayOfInt;
  }
  
  public static RulesDialogFragment newInstance(Constants.LotteryType paramLotteryType)
  {
    RulesDialogFragment localRulesDialogFragment = new RulesDialogFragment();
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("lottery_money", paramLotteryType);
    localRulesDialogFragment.setArguments(localBundle);
    return localRulesDialogFragment;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setStyle(1, 0);
    this.mLotteryType = ((Constants.LotteryType)getArguments().getSerializable("lottery_money"));
    this.rulesItems = new ArrayList();
    String[] arrayOfString1 = getResources().getStringArray(R.array.lottery_rules_title);
    String[] arrayOfString3;
    int j;
    if (this.mLotteryType == Constants.LotteryType.DoubleColor)
    {
      arrayOfString3 = getResources().getStringArray(R.array.lottery_rules_content_doublecolor);
      j = 0;
      if (j < arrayOfString1.length) {}
    }
    for (;;)
    {
      return;
      RulesItem localRulesItem2 = new RulesItem(arrayOfString1[j], arrayOfString3[j]);
      this.rulesItems.add(localRulesItem2);
      j++;
      break;
      if (this.mLotteryType == Constants.LotteryType.DaLeTou)
      {
        String[] arrayOfString2 = getResources().getStringArray(R.array.lottery_rules_content_daletou);
        for (int i = 0; i < arrayOfString1.length; i++)
        {
          RulesItem localRulesItem1 = new RulesItem(arrayOfString1[i], arrayOfString2[i]);
          this.rulesItems.add(localRulesItem1);
        }
      }
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    LinearLayout localLinearLayout = (LinearLayout)paramLayoutInflater.inflate(R.layout.fragmentdialog_rules, paramViewGroup, false);
    TextView localTextView = (TextView)localLinearLayout.findViewById(R.id.fragment_rules_title);
    if (this.mLotteryType == Constants.LotteryType.DoubleColor) {
      localTextView.setText(R.string.double_color_rules);
    }
    for (;;)
    {
      ((ListView)localLinearLayout.findViewById(R.id.fragment_rules_list)).setAdapter(new RulesAdapter(getActivity(), this.rulesItems));
      return localLinearLayout;
      if (this.mLotteryType == Constants.LotteryType.DaLeTou) {
        localTextView.setText(R.string.da_le_tou_rules);
      }
    }
  }
  
  class RulesAdapter
    extends ArrayAdapter<RulesDialogFragment.RulesItem>
  {
    HashMap<Integer, Boolean> isSelected;
    ArrayList<RulesDialogFragment.RulesItem> items;
    LayoutInflater layoutInflater;
    
    public RulesAdapter(ArrayList<RulesDialogFragment.RulesItem> paramArrayList)
    {
      super(0, localList);
      this.items = localList;
      this.layoutInflater = LayoutInflater.from(paramArrayList);
    }
    
    public int getCount()
    {
      if (this.items == null) {
        return 0;
      }
      return this.items.size();
    }
    
    public RulesDialogFragment.RulesItem getItem(int paramInt)
    {
      return (RulesDialogFragment.RulesItem)this.items.get(paramInt);
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      String str1 = getItem(paramInt).title;
      String str2 = getItem(paramInt).content;
      RulesDialogFragment.ViewHolder localViewHolder;
      if (paramView == null)
      {
        paramView = this.layoutInflater.inflate(R.layout.widget_fragment_dialog_rules_listview_item, paramViewGroup, false);
        localViewHolder = new RulesDialogFragment.ViewHolder(null);
        localViewHolder.title = ((TextView)paramView.findViewById(R.id.rules_item_title));
        localViewHolder.content = ((TextView)paramView.findViewById(R.id.rules_item_content));
        localViewHolder.li = ((ImageView)paramView.findViewById(R.id.rules_item_li));
        paramView.setTag(localViewHolder);
      }
      for (;;)
      {
        localViewHolder.title.setText(str1);
        localViewHolder.content.setText(str2);
        localViewHolder.li.setImageResource(RulesDialogFragment.this.liResId[(paramInt % 2)]);
        return paramView;
        localViewHolder = (RulesDialogFragment.ViewHolder)paramView.getTag();
      }
    }
    
    public boolean isEnabled(int paramInt)
    {
      return false;
    }
  }
  
  private class RulesItem
  {
    public String content;
    public String title;
    
    public RulesItem() {}
    
    public RulesItem(String paramString1, String paramString2)
    {
      this.title = paramString1;
      this.content = paramString2;
    }
  }
  
  private static class ViewHolder
  {
    TextView content;
    ImageView li;
    TextView title;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.ui.widget.RulesDialogFragment
 * JD-Core Version:    0.7.0.1
 */