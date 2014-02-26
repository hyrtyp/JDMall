package com.jd.lottery.lib.ui.widget;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.jd.lottery.lib.R.id;
import com.jd.lottery.lib.R.layout;
import com.jd.lottery.lib.R.string;
import com.jd.lottery.lib.activity.LotteryActivity;
import com.jd.lottery.lib.data.Constants.LotteryType;
import com.jd.lottery.lib.formatter.Formatter;
import com.jd.lottery.lib.formatter.LotteryBasket;
import com.jd.lottery.lib.utils.LotteryNumberDecor;
import java.util.ArrayList;
import java.util.List;

public class RandomListDialogFragment
  extends DialogFragment
{
  private static final String LOTTERY_TYPE = "lottery_type";
  private static final String RANDOM_SIZE = "random_size";
  private TextView addToLotteryBasketTextView;
  private TextView cancleTextView;
  private int currentPosition = -1;
  private Formatter formatter;
  private Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      if ((paramAnonymousMessage.what == 1) && (RandomListDialogFragment.this.mListAdapter != null))
      {
        RandomListDialogFragment.this.mListAdapter.notifyDataSetChanged();
        RandomListDialogFragment.this.updateMessage();
      }
    }
  };
  private Constants.LotteryType lotteryType;
  private CategoryAdapter mListAdapter;
  private ListView mListView;
  private ArrayList<String> mLotteriesShow;
  private List<List<List<Integer>>> mLotteriesSource;
  private TextView messageTextView;
  private int randomSize;
  private TextView resetTextView;
  
  private void initRandomLotteryList()
  {
    this.mLotteriesSource.clear();
    this.mLotteriesShow.clear();
    this.mLotteriesSource = this.formatter.random(this.randomSize);
    for (int i = 0;; i++)
    {
      if (i >= this.randomSize)
      {
        this.mListAdapter.notifyDataSetChanged();
        updateMessage();
        return;
      }
      this.mLotteriesShow.add(this.formatter.show_formatter((List)this.mLotteriesSource.get(i)));
    }
  }
  
  public static RandomListDialogFragment newInstance(int paramInt, Constants.LotteryType paramLotteryType)
  {
    RandomListDialogFragment localRandomListDialogFragment = new RandomListDialogFragment();
    Bundle localBundle = new Bundle();
    localBundle.putInt("random_size", paramInt);
    localBundle.putSerializable("lottery_type", paramLotteryType);
    localRandomListDialogFragment.setArguments(localBundle);
    return localRandomListDialogFragment;
  }
  
  private void updateMessage()
  {
    int i = this.mLotteriesShow.size();
    TextView localTextView = this.messageTextView;
    Resources localResources = getActivity().getResources();
    int j = R.string.basic_bet_info;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(i);
    arrayOfObject[1] = Integer.valueOf(i * 2);
    localTextView.setText(localResources.getString(j, arrayOfObject));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.randomSize = getArguments().getInt("random_size");
    this.lotteryType = ((Constants.LotteryType)getArguments().getSerializable("lottery_type"));
    if (this.lotteryType == Constants.LotteryType.DoubleColor) {
      this.formatter = Formatter.getFormatter(Formatter.SSQ, 0);
    }
    for (;;)
    {
      this.mLotteriesSource = new ArrayList();
      this.mLotteriesShow = new ArrayList();
      this.mListAdapter = new CategoryAdapter(getActivity(), this.mLotteriesShow);
      return;
      if (this.lotteryType == Constants.LotteryType.DaLeTou) {
        this.formatter = Formatter.getFormatter(Formatter.DLT, 0);
      }
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    getDialog().getWindow().requestFeature(1);
    LinearLayout localLinearLayout = (LinearLayout)paramLayoutInflater.inflate(R.layout.fragmentdialog_random, paramViewGroup, false);
    this.resetTextView = ((TextView)localLinearLayout.findViewById(R.id.random_reset_btn));
    this.resetTextView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        RandomListDialogFragment.this.initRandomLotteryList();
      }
    });
    this.messageTextView = ((TextView)localLinearLayout.findViewById(R.id.random_message));
    this.cancleTextView = ((TextView)localLinearLayout.findViewById(R.id.fragment_dialog_cancle));
    this.cancleTextView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        RandomListDialogFragment.this.dismiss();
      }
    });
    this.addToLotteryBasketTextView = ((TextView)localLinearLayout.findViewById(R.id.fragment_dialog_ok));
    this.addToLotteryBasketTextView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (RandomListDialogFragment.this.lotteryType == Constants.LotteryType.DoubleColor)
        {
          j = -1 + RandomListDialogFragment.this.mLotteriesSource.size();
          if (j < 0) {
            ((LotteryActivity)RandomListDialogFragment.this.getActivity()).countInCart.setText(String.valueOf(LotteryBasket.getInstance().getLotterys(Formatter.SSQ)));
          }
        }
        while (RandomListDialogFragment.this.lotteryType != Constants.LotteryType.DaLeTou) {
          for (;;)
          {
            int j;
            RandomListDialogFragment.this.dismiss();
            return;
            ArrayList localArrayList2 = new ArrayList();
            localArrayList2.add((List)((List)RandomListDialogFragment.this.mLotteriesSource.get(j)).get(0));
            localArrayList2.add((List)((List)RandomListDialogFragment.this.mLotteriesSource.get(j)).get(1));
            LotteryBasket.getInstance().addLottery(Formatter.SSQ, 0, localArrayList2);
            j--;
          }
        }
        for (int i = -1 + RandomListDialogFragment.this.mLotteriesSource.size();; i--)
        {
          if (i < 0)
          {
            ((LotteryActivity)RandomListDialogFragment.this.getActivity()).countInCart.setText(String.valueOf(LotteryBasket.getInstance().getLotterys(Formatter.DLT)));
            break;
          }
          ArrayList localArrayList1 = new ArrayList();
          localArrayList1.add((List)((List)RandomListDialogFragment.this.mLotteriesSource.get(i)).get(0));
          localArrayList1.add((List)((List)RandomListDialogFragment.this.mLotteriesSource.get(i)).get(1));
          LotteryBasket.getInstance().addLottery(Formatter.DLT, 0, localArrayList1);
        }
      }
    });
    this.mListView = ((ListView)localLinearLayout.findViewById(R.id.random_list));
    this.mListView.setAdapter(this.mListAdapter);
    initRandomLotteryList();
    return localLinearLayout;
  }
  
  class CategoryAdapter
    extends ArrayAdapter<String>
  {
    ArrayList<String> items;
    LayoutInflater layoutInflater;
    
    public CategoryAdapter(ArrayList<String> paramArrayList)
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
    
    public String getItem(int paramInt)
    {
      return (String)this.items.get(paramInt);
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public View getView(final int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      String str = getItem(paramInt);
      RandomListDialogFragment.ViewHolder localViewHolder;
      if (paramView == null)
      {
        paramView = this.layoutInflater.inflate(R.layout.widget_fragment_dialog_random_listview_item, paramViewGroup, false);
        localViewHolder = new RandomListDialogFragment.ViewHolder();
        localViewHolder.layout = ((RelativeLayout)paramView.findViewById(R.id.random_item_layout));
        localViewHolder.textView = ((TextView)paramView.findViewById(R.id.random_item_text));
        localViewHolder.imageView = ((ImageView)paramView.findViewById(R.id.random_item_imageview));
        paramView.setTag(localViewHolder);
      }
      for (;;)
      {
        localViewHolder.layout.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            if (RandomListDialogFragment.this.currentPosition != paramInt) {}
            for (RandomListDialogFragment.this.currentPosition = paramInt;; RandomListDialogFragment.this.currentPosition = -1)
            {
              RandomListDialogFragment.this.handler.sendEmptyMessage(1);
              return;
            }
          }
        });
        localViewHolder.textView.setText(LotteryNumberDecor.decorLotteryNumber(str));
        if (paramInt != RandomListDialogFragment.this.currentPosition) {
          break;
        }
        localViewHolder.imageView.setVisibility(0);
        localViewHolder.imageView.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            RandomListDialogFragment.this.mLotteriesSource.remove(paramInt);
            RandomListDialogFragment.this.mLotteriesShow.remove(paramInt);
            RandomListDialogFragment.this.currentPosition = -1;
            RandomListDialogFragment.this.handler.sendEmptyMessage(1);
          }
        });
        return paramView;
        localViewHolder = (RandomListDialogFragment.ViewHolder)paramView.getTag();
      }
      localViewHolder.imageView.setVisibility(8);
      return paramView;
    }
    
    public boolean isEnabled(int paramInt)
    {
      return false;
    }
  }
  
  static class ViewHolder
  {
    ImageView imageView;
    RelativeLayout layout;
    TextView textView;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.ui.widget.RandomListDialogFragment
 * JD-Core Version:    0.7.0.1
 */