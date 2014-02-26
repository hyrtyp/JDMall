package com.jd.lottery.lib.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.jd.lottery.lib.R.array;
import com.jd.lottery.lib.R.color;
import com.jd.lottery.lib.R.drawable;
import com.jd.lottery.lib.R.id;
import com.jd.lottery.lib.R.layout;
import com.jd.lottery.lib.R.string;
import com.jd.lottery.lib.model.LotteryEntity;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.SimpleTimeZone;

public class LotteryCategoryAdapter
  extends BaseAdapter
{
  private LayoutInflater inflater;
  private Context mContext;
  private String[] mDrawTime;
  private List<LotteryEntity> mLotteryCategories;
  int[] mThumbnails;
  String[] mTitleColors;
  String[] mTitles;
  
  public LotteryCategoryAdapter(Context paramContext, List<LotteryEntity> paramList)
  {
    int[] arrayOfInt = new int[8];
    arrayOfInt[0] = R.drawable.shouye_shuangseqiu_icon;
    arrayOfInt[1] = R.drawable.shouye_daletou_icon;
    arrayOfInt[2] = R.drawable.shouye_7xingcai_icon;
    arrayOfInt[3] = R.drawable.shouye_shishicai_icon;
    arrayOfInt[4] = R.drawable.shouye_3d_icon;
    arrayOfInt[5] = R.drawable.shouye_rank_3;
    arrayOfInt[6] = R.drawable.shouye_rank_5;
    arrayOfInt[7] = R.drawable.qidaizhong_icon;
    this.mThumbnails = arrayOfInt;
    this.mContext = paramContext;
    this.mLotteryCategories = paramList;
    this.inflater = LayoutInflater.from(paramContext);
    this.mTitles = paramContext.getResources().getStringArray(R.array.lottery_types);
    this.mTitleColors = paramContext.getResources().getStringArray(R.array.lottery_category_color);
    this.mDrawTime = paramContext.getResources().getStringArray(R.array.lottery_category_draw_time);
  }
  
  private void initViewHolder(ViewHolder paramViewHolder, View paramView)
  {
    paramViewHolder.layout = ((RelativeLayout)paramView.findViewById(R.id.lottery_category_layout));
    paramViewHolder.thumbnail = ((ImageView)paramView.findViewById(R.id.lottery_category_thumbnail));
    paramViewHolder.label = ((ImageView)paramView.findViewById(R.id.lottery_category_label));
    paramViewHolder.title = ((TextView)paramView.findViewById(R.id.lottery_category_title));
    paramViewHolder.dates = ((TextView)paramView.findViewById(R.id.lottery_category_dates));
    paramViewHolder.deadline = ((TextView)paramView.findViewById(R.id.lottery_category_deadline));
    paramViewHolder.totalMoney = ((TextView)paramView.findViewById(R.id.lottery_category_totalMoney));
    paramViewHolder.awardPoolContainer = paramView.findViewById(R.id.awardPoolContainer);
    paramViewHolder.deadlineTitle = ((TextView)paramView.findViewById(R.id.lottery_category_deadline_title));
  }
  
  public int getCount()
  {
    if (this.mLotteryCategories == null) {
      return 0;
    }
    return this.mLotteryCategories.size();
  }
  
  public Object getItem(int paramInt)
  {
    if (this.mLotteryCategories == null) {
      return null;
    }
    return (LotteryEntity)this.mLotteryCategories.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ViewHolder localViewHolder;
    LotteryEntity localLotteryEntity;
    long l;
    if ((paramView == null) || (!(paramView.getTag() instanceof ViewHolder)))
    {
      localViewHolder = new ViewHolder(null);
      paramView = this.inflater.inflate(R.layout.lottery_category_grid_item_layout, null);
      initViewHolder(localViewHolder, paramView);
      paramView.setTag(localViewHolder);
      localLotteryEntity = (LotteryEntity)this.mLotteryCategories.get(paramInt);
      if (localLotteryEntity != null)
      {
        if (paramInt == -1 + getCount()) {
          break label588;
        }
        localViewHolder.label.setVisibility(8);
        localViewHolder.deadlineTitle.setVisibility(0);
        localViewHolder.thumbnail.setImageResource(this.mThumbnails[localLotteryEntity.lotteryIndex]);
        localViewHolder.title.setText(this.mTitles[localLotteryEntity.lotteryIndex]);
        localViewHolder.title.setTextColor(Color.parseColor(this.mTitleColors[localLotteryEntity.lotteryIndex]));
        localViewHolder.dates.setTextColor(this.mContext.getResources().getColor(R.color.text_black));
        localViewHolder.dates.setText(this.mDrawTime[localLotteryEntity.lotteryIndex]);
        l = localLotteryEntity.getEndTime().getTime() - System.currentTimeMillis();
        if (l >= 0L) {
          break label318;
        }
        localViewHolder.deadline.setText(R.string.time_counter_default);
        if (System.currentTimeMillis() > 300000L + localLotteryEntity.getAwardTime().getTime()) {
          localViewHolder.deadline.setText(R.string.time_set_error);
        }
        if (!localLotteryEntity.isToday) {
          break label516;
        }
        localViewHolder.label.setImageResource(R.drawable.shouye_today_lottery_icon);
        localViewHolder.label.setVisibility(0);
      }
    }
    for (;;)
    {
      if (localLotteryEntity.awardpool >= 1.0D) {
        break label547;
      }
      localViewHolder.awardPoolContainer.setVisibility(8);
      return paramView;
      localViewHolder = (ViewHolder)paramView.getTag();
      break;
      label318:
      Calendar localCalendar = Calendar.getInstance(new SimpleTimeZone(0, "GMT"));
      localCalendar.setTimeInMillis(l);
      String str;
      if (-1 + localCalendar.get(6) > 0) {
        str = -1 + localCalendar.get(6) + "天" + localCalendar.get(11) + "小时";
      }
      for (;;)
      {
        localViewHolder.deadline.setText(str);
        break;
        if (localCalendar.get(11) > 0) {
          str = localCalendar.get(11) + "小时" + localCalendar.get(12) + "分";
        } else {
          str = localCalendar.get(12) + "分" + localCalendar.get(13) + "秒";
        }
      }
      label516:
      if (localLotteryEntity.isBillion)
      {
        localViewHolder.label.setImageResource(R.drawable.shouye_jiangchiguoyi_icon);
        localViewHolder.label.setVisibility(0);
      }
    }
    label547:
    DecimalFormat localDecimalFormat = new DecimalFormat("#,###");
    localViewHolder.totalMoney.setText(localDecimalFormat.format(localLotteryEntity.awardpool));
    localViewHolder.awardPoolContainer.setVisibility(0);
    return paramView;
    label588:
    localViewHolder.label.setVisibility(8);
    localViewHolder.thumbnail.setImageResource(this.mThumbnails[localLotteryEntity.lotteryIndex]);
    localViewHolder.title.setText(this.mTitles[localLotteryEntity.lotteryIndex]);
    localViewHolder.title.setTextColor(Color.parseColor(this.mTitleColors[localLotteryEntity.lotteryIndex]));
    localViewHolder.dates.setTextColor(this.mContext.getResources().getColor(R.color.text_gray_light));
    localViewHolder.dates.setText(R.string.more_lottery);
    localViewHolder.deadlineTitle.setVisibility(8);
    localViewHolder.deadline.setVisibility(8);
    localViewHolder.totalMoney.setVisibility(8);
    return paramView;
  }
  
  private static class ViewHolder
  {
    View awardPoolContainer;
    TextView dates;
    TextView deadline;
    TextView deadlineTitle;
    ImageView label;
    RelativeLayout layout;
    ImageView thumbnail;
    TextView title;
    TextView totalMoney;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.adapter.LotteryCategoryAdapter
 * JD-Core Version:    0.7.0.1
 */