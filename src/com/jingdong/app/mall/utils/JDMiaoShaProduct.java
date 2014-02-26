package com.jingdong.app.mall.utils;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.Typeface;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.home.PanicBuyingReceive;
import com.jingdong.app.mall.utils.ui.CustomDigitalClock;
import com.jingdong.app.mall.utils.ui.CustomDigitalClock.CountDownListener;
import com.jingdong.common.database.table.MS_AlarmTable;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.ImageUtil;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class JDMiaoShaProduct
{
  public static final String TAG = "JDMiaoSha";
  private AlarmManager alarmManager;
  private LinearLayout bottomLayout;
  private ImageView btnMiaoSha;
  private MyActivity context;
  private LinearLayout countdown;
  private boolean isChecked;
  private View item;
  private TextView jdPrice;
  private TextView miaoShaPrice;
  private long millis;
  private TextView name;
  private long productId;
  private TextView rate;
  private int request;
  private View sale;
  private SourceEntity sourceEntity;
  private ImageView tag;
  private long timeMillis;
  
  public JDMiaoShaProduct(MyActivity paramMyActivity)
  {
    this.context = paramMyActivity;
    initView(null);
  }
  
  public JDMiaoShaProduct(MyActivity paramMyActivity, View paramView)
  {
    this.context = paramMyActivity;
    initView(paramView);
  }
  
  private void addButton()
  {
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, DPIUtil.dip2px(35.0F));
    localLayoutParams.weight = 2.5F;
    localLayoutParams.setMargins(DPIUtil.dip2px(2.0F), DPIUtil.dip2px(2.0F), DPIUtil.dip2px(2.0F), 0);
    this.bottomLayout.addView(this.btnMiaoSha, localLayoutParams);
  }
  
  private void addSale()
  {
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, DPIUtil.dip2px(50.0F));
    localLayoutParams.weight = 1.0F;
    this.bottomLayout.addView(this.sale, localLayoutParams);
  }
  
  private View getFinishTextView()
  {
    return getFinishTextView(null);
  }
  
  private View getFinishTextView(String paramString)
  {
    TextView localTextView = new TextView(this.context);
    localTextView.setTypeface(Typeface.MONOSPACE, 1);
    localTextView.setTextSize(18.0F);
    if (TextUtils.isEmpty(paramString))
    {
      localTextView.setText(2131166217);
      return localTextView;
    }
    localTextView.setText(paramString);
    return localTextView;
  }
  
  private boolean getSwitch(long paramLong)
  {
    ArrayList localArrayList = MS_AlarmTable.getList();
    if ((localArrayList != null) && (localArrayList.size() > 0)) {
      return localArrayList.contains(Long.valueOf(paramLong));
    }
    return false;
  }
  
  private void initView(View paramView)
  {
    if (paramView == null) {
      paramView = ImageUtil.inflate(2130903068, null);
    }
    this.item = paramView;
    this.alarmManager = ((AlarmManager)this.context.getSystemService("alarm"));
    this.countdown = ((LinearLayout)paramView.findViewById(2131493065));
    this.name = ((TextView)paramView.findViewById(2131493066));
    this.jdPrice = ((TextView)paramView.findViewById(2131493067));
    this.tag = ((ImageView)paramView.findViewById(2131493064));
    this.bottomLayout = ((LinearLayout)paramView.findViewById(2131493068));
    this.sale = ImageUtil.inflate(2130903069, null);
    this.miaoShaPrice = ((TextView)this.sale.findViewById(2131493071));
    this.rate = ((TextView)this.sale.findViewById(2131493073));
    this.btnMiaoSha = new ImageView(this.context);
  }
  
  private void setButtomStyle(int paramInt)
  {
    setButtomStyle(paramInt, null);
  }
  
  private void setButtomStyle(int paramInt, View.OnClickListener paramOnClickListener)
  {
    switch (paramInt)
    {
    default: 
      this.btnMiaoSha.setVisibility(4);
    }
    for (;;)
    {
      if (paramOnClickListener != null) {
        this.btnMiaoSha.setOnClickListener(paramOnClickListener);
      }
      return;
      this.btnMiaoSha.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
      this.btnMiaoSha.setVisibility(0);
      continue;
      this.btnMiaoSha.setLayoutParams(new LinearLayout.LayoutParams(DPIUtil.dip2px(111.0F), DPIUtil.dip2px(50.0F)));
      this.btnMiaoSha.setImageResource(2130837704);
      this.btnMiaoSha.setVisibility(0);
    }
  }
  
  private void setProductStyle(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      this.tag.setVisibility(4);
      return;
    case 1: 
      this.tag.setVisibility(0);
      this.tag.setImageResource(2130837708);
      return;
    }
    this.tag.setVisibility(0);
    this.tag.setImageResource(2130837700);
  }
  
  private void stop(long paramLong)
  {
    if (this.countdown != null) {}
    try
    {
      CustomDigitalClock localCustomDigitalClock = (CustomDigitalClock)this.countdown.findViewWithTag(Long.valueOf(paramLong));
      if (localCustomDigitalClock != null) {
        localCustomDigitalClock.onStop();
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  public void bindData(Product paramProduct)
  {
    bindData(paramProduct, null);
  }
  
  public void bindData(final Product paramProduct, View.OnClickListener paramOnClickListener)
  {
    this.productId = paramProduct.getId().longValue();
    this.btnMiaoSha.setTag(Long.valueOf(this.productId));
    long l1 = System.currentTimeMillis() - this.timeMillis;
    long l2 = paramProduct.getStartTime().longValue() - l1;
    long l3 = paramProduct.getEndTime().longValue() - l1;
    long l4 = 0L;
    int i;
    if (l2 > 0L) {
      i = 1;
    }
    for (;;)
    {
      CustomDigitalClock.CountDownListener local1 = new CustomDigitalClock.CountDownListener()
      {
        public void changed(CustomDigitalClock paramAnonymousCustomDigitalClock, long paramAnonymousLong, long[] paramAnonymousArrayOfLong, SpannableStringBuilder paramAnonymousSpannableStringBuilder, int paramAnonymousInt)
        {
          JDMiaoShaProduct.this.millis = paramAnonymousLong;
        }
        
        public boolean finish(CustomDigitalClock paramAnonymousCustomDigitalClock, int paramAnonymousInt)
        {
          switch (paramAnonymousInt)
          {
          }
          for (;;)
          {
            return false;
            try
            {
              paramAnonymousCustomDigitalClock.setEndTime(paramProduct.getEndTime().longValue() - (System.currentTimeMillis() - JDMiaoShaProduct.this.timeMillis), 2);
              JDMiaoShaProduct.this.setProductStyle(2);
              JDMiaoShaProduct.this.setButtomStyle(2);
              JDMiaoShaProduct.this.bottomLayout.removeViewAt(1);
              JDMiaoShaProduct.this.addButton();
            }
            catch (Exception localException) {}
            JDMiaoShaProduct.this.setProductStyle(3);
            JDMiaoShaProduct.this.setButtomStyle(3);
            JDMiaoShaProduct.this.countdown.removeAllViews();
            JDMiaoShaProduct.this.countdown.addView(JDMiaoShaProduct.this.getFinishTextView());
            return true;
          }
        }
      };
      CustomDigitalClock localCustomDigitalClock = new CustomDigitalClock(this.context);
      localCustomDigitalClock.setTag(Long.valueOf(this.productId));
      localCustomDigitalClock.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
      localCustomDigitalClock.setScaleTextSize(true);
      localCustomDigitalClock.setTypeface(Typeface.MONOSPACE, 1);
      localCustomDigitalClock.setTextSize(18.0F);
      localCustomDigitalClock.setCountDownListener(local1);
      setProductStyle(i);
      switch (i)
      {
      default: 
        label184:
        this.countdown.removeAllViews();
        if (l4 > 0L)
        {
          localCustomDigitalClock.setEndTime(l4, i);
          this.countdown.addView(localCustomDigitalClock);
        }
        break;
      }
      try
      {
        for (;;)
        {
          String str3 = paramProduct.getName() + " " + paramProduct.getAdWord();
          this.name.setText(highlight(str3, -2415323, paramProduct.getName().length(), str3.length()));
          this.bottomLayout.removeAllViews();
          addSale();
          addButton();
          String str2 = "￥" + paramProduct.getMiaoShaPrice();
          this.miaoShaPrice.setText(highlight(str2, -2415323, 0, str2.length()));
          this.jdPrice.setText(strikethroughToString("原价:", "￥" + paramProduct.getJdPrice()));
          this.rate.setText(paramProduct.getRate());
          if (paramOnClickListener != null) {
            this.item.setOnClickListener(paramOnClickListener);
          }
          return;
          if ((l3 > 0L) && (l2 <= 0L))
          {
            i = 2;
            break;
          }
          boolean bool1 = l3 < 0L;
          i = 0;
          if (bool1) {
            break;
          }
          boolean bool2 = l2 < 0L;
          i = 0;
          if (bool2) {
            break;
          }
          i = 3;
          break;
          l4 = l2;
          localCustomDigitalClock.setSuffixText(this.context.getString(2131166216));
          View.OnClickListener local2 = new View.OnClickListener()
          {
            private PendingIntent sender;
            private long timeInMillis;
            
            public void onClick(View paramAnonymousView)
            {
              long l = System.currentTimeMillis();
              if (this.sender == null)
              {
                Calendar localCalendar = Calendar.getInstance();
                localCalendar.setTimeInMillis(l);
                localCalendar.add(13, (int)(JDMiaoShaProduct.this.millis - 60000L) / 1000);
                this.timeInMillis = localCalendar.getTimeInMillis();
                Intent localIntent = new Intent(JDMiaoShaProduct.this.context, PanicBuyingReceive.class);
                localIntent.setAction("com.jingdong.app.mall.panicbuying");
                localIntent.setFlags(32);
                localIntent.putExtra("msg", paramProduct.getName());
                localIntent.putExtra("id", JDMiaoShaProduct.this.request);
                localIntent.putExtra("millis", this.timeInMillis);
                this.sender = PendingIntent.getBroadcast(JDMiaoShaProduct.this.context, JDMiaoShaProduct.this.request, localIntent, 0);
              }
              if (!JDMiaoShaProduct.this.isChecked) {
                JDMiaoShaProduct.this.alarmManager.set(0, this.timeInMillis, this.sender);
              }
              try
              {
                MS_AlarmTable.insertOrUpdate(JDMiaoShaProduct.this.request, this.timeInMillis, l, paramProduct.getName());
                label206:
                JDMiaoShaProduct.this.setOn();
                Toast.makeText(JDMiaoShaProduct.this.context, "秒杀闹钟已开启，在商品秒杀前1分钟将提示您！", 0).show();
                return;
                JDMiaoShaProduct.this.alarmManager.cancel(this.sender);
                try
                {
                  MS_AlarmTable.delById(JDMiaoShaProduct.this.request);
                  label255:
                  JDMiaoShaProduct.this.setOff();
                  Toast.makeText(JDMiaoShaProduct.this.context, "秒杀闹钟已取消！您可能会抢不到呦~", 0).show();
                  return;
                }
                catch (Exception localException1)
                {
                  break label255;
                }
              }
              catch (Exception localException2)
              {
                break label206;
              }
            }
          };
          setButtomStyle(i, local2);
          boolean bool3 = getSwitch(this.request);
          this.isChecked = bool3;
          if (bool3)
          {
            setOn();
            break label184;
          }
          setOff();
          break label184;
          l4 = l3;
          setButtomStyle(i, paramOnClickListener);
          localCustomDigitalClock.setSuffixText(this.context.getString(2131166215));
          break label184;
          localCustomDigitalClock.setTickerStopped(true);
          setButtomStyle(i);
          break label184;
          this.countdown.addView(getFinishTextView());
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException.printStackTrace();
          String str1 = paramProduct.getName();
          if (!TextUtils.isEmpty(str1)) {
            this.name.setText(str1);
          }
        }
      }
    }
  }
  
  public ImageView getMiaoShaProductButton()
  {
    return this.btnMiaoSha;
  }
  
  public View getProductItem()
  {
    return this.item;
  }
  
  public SpannableStringBuilder highlight(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(paramString);
    localSpannableStringBuilder.setSpan(new ForegroundColorSpan(paramInt1), paramInt2, paramInt3, 33);
    return localSpannableStringBuilder;
  }
  
  public void onStop()
  {
    if (this.countdown != null)
    {
      stop(this.productId);
      this.countdown.removeAllViews();
    }
  }
  
  public void setMillis(long paramLong)
  {
    this.millis = paramLong;
  }
  
  public void setOff()
  {
    this.btnMiaoSha.setBackgroundDrawable(null);
    this.btnMiaoSha.setImageResource(2130837651);
    this.isChecked = false;
  }
  
  public void setOn()
  {
    this.btnMiaoSha.setBackgroundDrawable(null);
    this.btnMiaoSha.setImageResource(2130837652);
    this.isChecked = true;
  }
  
  public void setRequest(int paramInt)
  {
    this.request = paramInt;
  }
  
  public void setSourceEntity(SourceEntity paramSourceEntity)
  {
    this.sourceEntity = paramSourceEntity;
  }
  
  public void setTimeMillis(long paramLong)
  {
    this.timeMillis = paramLong;
  }
  
  public SpannableStringBuilder strikethroughToString(String paramString1, String paramString2)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(paramString1 + paramString2);
    localSpannableStringBuilder.setSpan(new StrikethroughSpan(), paramString1.length(), paramString1.length() + paramString2.length(), 33);
    return localSpannableStringBuilder;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.JDMiaoShaProduct
 * JD-Core Version:    0.7.0.1
 */