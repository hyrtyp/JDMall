package com.jingdong.app.mall.personel;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.jingdong.app.mall.utils.CouponUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.ui.JDListView;
import com.jingdong.common.entity.JDCoupon;
import com.jingdong.common.entity.JdGiftCard;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import com.jingdong.common.utils.NextPageLoader;
import java.util.ArrayList;
import java.util.List;

public class MyCouponAndGiftCardActivity
  extends MyActivity
{
  public static final String COUPON_CARD = "coupon";
  private static final int COUPON_PAGE = 0;
  public static final String GIFT_CARD = "giftCard";
  private static final int GIFT_PAGE = 1;
  private static final String TAG = "CouponAndGiftDialog";
  public static boolean isBindGiftCardBack;
  private Button bindBtn;
  private String cardType;
  private View couponContentView;
  private TextView couponEmpty;
  private ListView couponListView;
  private NextPageLoader couponPageLoader;
  private int currentLoadType;
  private ListView giftCardListView;
  private NextPageLoader giftPageLoader;
  private View giftcardContentView;
  private boolean isCurrentGiftCard = false;
  private boolean isFirstToGiftCard = true;
  private long lastToken = -1L;
  private LinearLayout loadingView;
  private LinearLayout tabHost;
  private TextView titleView;
  
  private void init()
  {
    this.loadingView = ((LinearLayout)ImageUtil.inflate(2130903175, null));
    this.loadingView.setGravity(17);
  }
  
  private void initUI(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 1: 
      this.titleView.setText(getString(2131166008));
      this.giftcardContentView = ImageUtil.inflate(2130903197, this.tabHost);
      this.giftCardListView = ((JDListView)this.giftcardContentView.findViewById(2131493739));
      this.bindBtn = ((Button)this.giftcardContentView.findViewById(2131493738));
      setEvent();
      return;
    }
    this.titleView.setText(getString(2131166006));
    this.couponContentView = ImageUtil.inflate(2130903195, this.tabHost);
    this.couponListView = ((ListView)this.couponContentView.findViewById(2131493721));
    this.couponEmpty = ((TextView)this.couponContentView.findViewById(2131493722));
  }
  
  private void setEvent()
  {
    this.bindBtn.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        CouponUtil.queryTakeCoupon(MyCouponAndGiftCardActivity.this, "giftCard", null, null);
      }
    });
  }
  
  private void showNextPageLoader(int paramInt, long paramLong)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 1: 
      this.giftPageLoader = new GiftNextPageLoader(this, this.giftCardListView, paramLong);
      this.giftPageLoader.showPageOne();
      return;
    }
    this.couponPageLoader = new CouponNextPageLoader(this, this.couponListView, paramLong);
    this.couponPageLoader.showPageOne();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903110);
    this.cardType = getIntent().getStringExtra("type");
    if (TextUtils.equals("giftCard", this.cardType)) {
      this.currentLoadType = 1;
    }
    for (;;)
    {
      isBindGiftCardBack = false;
      this.tabHost = ((LinearLayout)findViewById(2131493313));
      this.titleView = ((TextView)findViewById(2131492990));
      initUI(this.currentLoadType);
      init();
      this.isCurrentGiftCard = false;
      this.lastToken = System.currentTimeMillis();
      showNextPageLoader(this.currentLoadType, this.lastToken);
      return;
      if (TextUtils.equals("coupon", this.cardType)) {
        this.currentLoadType = 0;
      }
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if ((this.isCurrentGiftCard) && (isBindGiftCardBack))
    {
      isBindGiftCardBack = false;
      this.lastToken = System.currentTimeMillis();
      showNextPageLoader(this.currentLoadType, this.lastToken);
    }
  }
  
  private class CouponNextPageLoader
    extends NextPageLoader
  {
    private long token;
    
    public CouponNextPageLoader(MyActivity paramMyActivity, AbsListView paramAbsListView, long paramLong)
    {
      super(paramAbsListView, MyCouponAndGiftCardActivity.this.loadingView, "couponList", null, MyCouponAndGiftCardActivity.this.getString(2131166438));
      this.token = paramLong;
    }
    
    protected MySimpleAdapter createAdapter(IMyActivity paramIMyActivity, AdapterView paramAdapterView, ArrayList<?> paramArrayList)
    {
      new MySimpleAdapter(paramIMyActivity, paramArrayList, 2130903196, new String[] { "typeName", "money", "id", "consumption", "scope" }, new int[] { 2131493723, 2131493725, 2131493728, 2131493730, 2131493734 })
      {
        public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
        {
          View localView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
          JDCoupon localJDCoupon = (JDCoupon)getItem(paramAnonymousInt);
          TextView localTextView1 = (TextView)localView.findViewById(2131493729);
          TextView localTextView2 = (TextView)localView.findViewById(2131493730);
          TextView localTextView3 = (TextView)localView.findViewById(2131493731);
          TextView localTextView4;
          if (Double.valueOf(localJDCoupon.getConsumption()).doubleValue() <= 0.0D)
          {
            localTextView1.setVisibility(8);
            localTextView2.setVisibility(8);
            ((RelativeLayout.LayoutParams)localTextView3.getLayoutParams()).addRule(3, 2131493728);
            localTextView4 = (TextView)localView.findViewById(2131493723);
            if ((localJDCoupon.getTypeName() == null) || (!localJDCoupon.getTypeName().equals(MyCouponAndGiftCardActivity.this.getString(2131165980)))) {
              break label235;
            }
            localTextView4.setBackgroundResource(2130837739);
          }
          for (;;)
          {
            ((TextView)localView.findViewById(2131493732)).setText(localJDCoupon.getStartTime() + MyCouponAndGiftCardActivity.this.getString(2131166429) + localJDCoupon.getEndTime());
            return localView;
            localTextView1.setVisibility(0);
            localTextView2.setVisibility(0);
            ((RelativeLayout.LayoutParams)localTextView3.getLayoutParams()).addRule(3, 2131493730);
            break;
            label235:
            if ((localJDCoupon.getTypeName() != null) && (localJDCoupon.getTypeName().equals(MyCouponAndGiftCardActivity.this.getString(2131165981)))) {
              localTextView4.setBackgroundResource(2130837738);
            } else {
              localTextView4.setBackgroundDrawable(null);
            }
          }
        }
      };
    }
    
    public void onEnd(HttpGroup.HttpResponse paramHttpResponse)
    {
      super.onEnd(paramHttpResponse);
    }
    
    public void onError(HttpGroup.HttpError paramHttpError)
    {
      super.onError(paramHttpError);
      MyCouponAndGiftCardActivity.this.post(new Runnable()
      {
        public void run()
        {
          if (MyCouponAndGiftCardActivity.this.giftCardListView != null) {
            MyCouponAndGiftCardActivity.this.giftCardListView.setVisibility(8);
          }
          if (MyCouponAndGiftCardActivity.this.couponEmpty != null) {
            MyCouponAndGiftCardActivity.this.couponEmpty.setVisibility(0);
          }
        }
      });
    }
    
    public void setSelection(int paramInt) {}
    
    protected void showError() {}
    
    protected ArrayList<?> toList(HttpGroup.HttpResponse paramHttpResponse)
    {
      JSONObjectProxy localJSONObjectProxy = paramHttpResponse.getJSONObject();
      ArrayList localArrayList = new ArrayList();
      if (localJSONObjectProxy != null) {
        localArrayList = JDCoupon.toList(localJSONObjectProxy.getJSONArrayOrNull("couponList"), 0);
      }
      return localArrayList;
    }
  }
  
  private class GiftNextPageLoader
    extends NextPageLoader
  {
    private long token;
    
    public GiftNextPageLoader(MyActivity paramMyActivity, AbsListView paramAbsListView, long paramLong)
    {
      super(paramAbsListView, MyCouponAndGiftCardActivity.this.loadingView, "giftCardList", null, "");
      this.token = paramLong;
    }
    
    protected MySimpleAdapter createAdapter(IMyActivity paramIMyActivity, AdapterView paramAdapterView, ArrayList<?> paramArrayList)
    {
      new MySimpleAdapter(paramIMyActivity, paramArrayList, 2130903198, new String[] { "faceValue", "balance", "id", "scope" }, new int[] { 2131493740, 2131493742, 2131493745, 2131493747 })
      {
        public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
        {
          View localView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
          JdGiftCard localJdGiftCard = (JdGiftCard)getItem(paramAnonymousInt);
          TextView localTextView1 = (TextView)localView.findViewById(2131493740);
          TextView localTextView2 = (TextView)localView.findViewById(2131493742);
          TextView localTextView3 = (TextView)localView.findViewById(2131493747);
          StringBuilder localStringBuilder1 = new StringBuilder();
          localStringBuilder1.append(localJdGiftCard.getFaceValue());
          localStringBuilder1.append(MyCouponAndGiftCardActivity.this.getString(2131166436));
          localTextView1.setText(localStringBuilder1);
          StringBuilder localStringBuilder2 = new StringBuilder();
          localStringBuilder2.append(MyCouponAndGiftCardActivity.this.getString(2131166297));
          String str1;
          String str2;
          label172:
          StringBuilder localStringBuilder3;
          if (TextUtils.isEmpty(localJdGiftCard.getBalance()))
          {
            str1 = "0.00";
            localStringBuilder2.append(str1);
            localTextView2.setText(localStringBuilder2);
            if (!TextUtils.isEmpty(localJdGiftCard.getFromTime())) {
              break label244;
            }
            str2 = "";
            localStringBuilder3 = new StringBuilder(String.valueOf(str2)).append(MyCouponAndGiftCardActivity.this.getString(2131166429));
            if (!TextUtils.isEmpty(localJdGiftCard.getEndTime())) {
              break label254;
            }
          }
          label244:
          label254:
          for (String str3 = "";; str3 = localJdGiftCard.getEndTime())
          {
            localTextView3.setText(str3);
            return localView;
            str1 = localJdGiftCard.getBalance();
            break;
            str2 = localJdGiftCard.getFromTime();
            break label172;
          }
        }
      };
    }
    
    public void onEnd(HttpGroup.HttpResponse paramHttpResponse)
    {
      super.onEnd(paramHttpResponse);
      if (MyCouponAndGiftCardActivity.this.lastToken == this.token)
      {
        MyCouponAndGiftCardActivity.this.post(new Runnable()
        {
          public void run()
          {
            MyCouponAndGiftCardActivity.this.giftCardListView.setVisibility(0);
          }
        });
        return;
      }
      MyCouponAndGiftCardActivity.this.post(new Runnable()
      {
        public void run()
        {
          MyCouponAndGiftCardActivity.this.giftCardListView.setVisibility(8);
        }
      });
    }
    
    public void setSelection(int paramInt) {}
    
    protected void showError() {}
    
    protected ArrayList<?> toList(HttpGroup.HttpResponse paramHttpResponse)
    {
      JSONObjectProxy localJSONObjectProxy = paramHttpResponse.getJSONObject();
      ArrayList localArrayList = new ArrayList();
      if (localJSONObjectProxy != null) {
        localArrayList = JdGiftCard.toList(localJSONObjectProxy.getJSONArrayOrNull("giftCards"), 0);
      }
      return localArrayList;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.personel.MyCouponAndGiftCardActivity
 * JD-Core Version:    0.7.0.1
 */