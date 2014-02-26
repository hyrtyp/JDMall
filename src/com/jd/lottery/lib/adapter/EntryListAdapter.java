package com.jd.lottery.lib.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.jd.droidlib.adapter.cursor.EntityCursorAdapter;
import com.jd.droidlib.adapter.holder.ViewHolder;
import com.jd.droidlib.annotation.inject.InjectView;
import com.jd.droidlib.persist.sql.stmt.Select;
import com.jd.lottery.lib.R.array;
import com.jd.lottery.lib.R.drawable;
import com.jd.lottery.lib.R.layout;
import com.jd.lottery.lib.R.string;
import com.jd.lottery.lib.model.LotteryEntity;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.SimpleTimeZone;

public class EntryListAdapter
  extends EntityCursorAdapter<LotteryEntity>
{
  private String[] mDrawTime;
  private int[] mThumbnails;
  private String[] mTitleColors;
  private String[] mTitles;
  
  public EntryListAdapter(Context paramContext, Select<LotteryEntity> paramSelect)
  {
    super(LotteryEntity.class, paramContext, paramSelect);
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
    this.mTitles = paramContext.getResources().getStringArray(R.array.lottery_types);
    this.mTitleColors = paramContext.getResources().getStringArray(R.array.lottery_category_color);
    this.mDrawTime = paramContext.getResources().getStringArray(R.array.lottery_category_draw_time);
  }
  
  public void bindView(Context paramContext, View paramView, LotteryEntity paramLotteryEntity)
  {
    LotteryHolder localLotteryHolder = (LotteryHolder)paramView.getTag();
    long l;
    if (paramLotteryEntity != null)
    {
      localLotteryHolder.lottery_category_label.setVisibility(8);
      localLotteryHolder.lottery_category_thumbnail.setImageResource(this.mThumbnails[paramLotteryEntity.lotteryIndex]);
      localLotteryHolder.lottery_category_title.setText(this.mTitles[paramLotteryEntity.lotteryIndex]);
      localLotteryHolder.lottery_category_title.setTextColor(Color.parseColor(this.mTitleColors[paramLotteryEntity.lotteryIndex]));
      localLotteryHolder.lottery_category_dates.setText(this.mDrawTime[paramLotteryEntity.lotteryIndex]);
      l = paramLotteryEntity.getEndTime().getTime() - System.currentTimeMillis();
      if (l >= 0L) {
        break label201;
      }
      localLotteryHolder.lottery_category_deadline.setText(R.string.time_counter_default);
      if (System.currentTimeMillis() > 300000L + paramLotteryEntity.getAwardTime().getTime()) {
        localLotteryHolder.lottery_category_deadline.setText(R.string.time_set_error);
      }
      if (!paramLotteryEntity.isToday) {
        break label392;
      }
      localLotteryHolder.lottery_category_label.setImageResource(R.drawable.shouye_today_lottery_icon);
      localLotteryHolder.lottery_category_label.setVisibility(0);
    }
    for (;;)
    {
      if (paramLotteryEntity.awardpool >= 1.0D) {
        break label422;
      }
      localLotteryHolder.awardPoolContainer.setVisibility(8);
      return;
      label201:
      Calendar localCalendar = Calendar.getInstance(new SimpleTimeZone(0, "GMT"));
      localCalendar.setTimeInMillis(l);
      String str;
      if (-1 + localCalendar.get(6) > 0) {
        str = -1 + localCalendar.get(6) + "天" + localCalendar.get(11) + "小时";
      }
      for (;;)
      {
        localLotteryHolder.lottery_category_deadline.setText(str);
        break;
        if (localCalendar.get(11) > 0) {
          str = localCalendar.get(11) + "小时" + localCalendar.get(12) + "分";
        } else {
          str = localCalendar.get(12) + "分" + localCalendar.get(13) + "秒";
        }
      }
      label392:
      if (paramLotteryEntity.isBillion)
      {
        localLotteryHolder.lottery_category_label.setImageResource(R.drawable.shouye_jiangchiguoyi_icon);
        localLotteryHolder.lottery_category_label.setVisibility(0);
      }
    }
    label422:
    DecimalFormat localDecimalFormat = new DecimalFormat("#,###");
    localLotteryHolder.lottery_category_totalMoney.setText(localDecimalFormat.format(paramLotteryEntity.awardpool));
    localLotteryHolder.awardPoolContainer.setVisibility(0);
  }
  
  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    View localView = this.layoutInflater.inflate(R.layout.lottery_category_grid_item_layout, null);
    localView.setTag(new LotteryHolder(localView));
    return localView;
  }
  
  private class LotteryHolder
    extends ViewHolder
  {
    @InjectView
    View awardPoolContainer;
    @InjectView
    TextView lottery_category_dates;
    @InjectView
    TextView lottery_category_deadline;
    @InjectView
    ImageView lottery_category_label;
    @InjectView
    RelativeLayout lottery_category_layout;
    @InjectView
    ImageView lottery_category_thumbnail;
    @InjectView
    TextView lottery_category_title;
    @InjectView
    TextView lottery_category_totalMoney;
    
    public LotteryHolder(View paramView)
    {
      super();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.adapter.EntryListAdapter
 * JD-Core Version:    0.7.0.1
 */