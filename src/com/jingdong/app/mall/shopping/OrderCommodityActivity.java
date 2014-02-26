package com.jingdong.app.mall.shopping;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.entity.LastOrderInfo;
import com.jingdong.common.entity.OrderCommodity;
import com.jingdong.common.entity.UserInfo;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.EditTextUtils;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import com.jingdong.common.utils.StatisticsReportUtil;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public class OrderCommodityActivity
  extends MyActivity
{
  private static final String TAG = "OrderCommodityActivity";
  private MySimpleAdapter adapter;
  private ArrayList<OrderCommodity> listData = new ArrayList();
  private ListView mListView;
  private int nSelAreaId;
  private int nSelCityIndex;
  private int nSelProvinceIndex;
  private int nSelTownId;
  
  private void initDate()
  {
    try
    {
      this.nSelProvinceIndex = 1;
      this.nSelCityIndex = 72;
      if (LastOrderInfo.mUserInfo.getUserAddr() != null)
      {
        JSONObject localJSONObject = LastOrderInfo.mUserInfo.getUserAddr();
        if (!localJSONObject.isNull("IdProvince")) {
          this.nSelProvinceIndex = localJSONObject.getInt("IdProvince");
        }
        if (!localJSONObject.isNull("IdCity")) {
          this.nSelCityIndex = localJSONObject.getInt("IdCity");
        }
        if (!localJSONObject.isNull("IdArea")) {
          this.nSelAreaId = localJSONObject.getInt("IdArea");
        }
        if (!localJSONObject.isNull("IdTown")) {
          this.nSelTownId = localJSONObject.getInt("IdTown");
        }
      }
      HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setFunctionId("commodityList");
      localHttpSetting.setEffect(1);
      localHttpSetting.putJsonParam("syntype", "1");
      localHttpSetting.putJsonParam("provinceId", this.nSelProvinceIndex);
      localHttpSetting.putJsonParam("cityId", this.nSelCityIndex);
      localHttpSetting.putJsonParam("areaId", this.nSelAreaId);
      localHttpSetting.putJsonParam("townId", this.nSelTownId);
      if ((LoginUserBase.hasLogin()) && (!LoginUserBase.isAlreadySyncCart())) {
        localHttpSetting.putJsonParam("noPinOrder", "1");
      }
      localHttpSetting.putJsonParam("cartuuid", StatisticsReportUtil.readCartUUID());
      localHttpSetting.setListener(new HttpGroup.OnCommonListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          if (paramAnonymousHttpResponse != null)
          {
            JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
            String str = localJSONObjectProxy.getStringOrNull("imageDomain");
            JSONArrayPoxy localJSONArrayPoxy = localJSONObjectProxy.getJSONArrayOrNull("commodities");
            if (OrderCommodityActivity.this.listData != null) {
              OrderCommodityActivity.this.listData.clear();
            }
            OrderCommodityActivity.this.listData.addAll(OrderCommodity.toList(localJSONArrayPoxy, str));
            OrderCommodityActivity.this.refreshLayout();
          }
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
        
        public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
      });
      localHttpSetting.setNotifyUser(true);
      getHttpGroupaAsynPool().add(localHttpSetting);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  private void refreshLayout()
  {
    if (this.adapter != null) {
      post(new Runnable()
      {
        public void run()
        {
          OrderCommodityActivity.this.adapter.notifyDataSetChanged();
        }
      });
    }
  }
  
  private void setAdapter()
  {
    this.adapter = new MySimpleAdapter(this, this.listData, 2130903132, new String[] { "imageUrl", "name", "giftDesc", "num", "jdPrice" }, new int[] { 2131493430, 2131493434, 2131493435, 2131493436, 2131493437 })
    {
      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        View localView1 = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
        OrderCommodity localOrderCommodity = (OrderCommodity)getItem(paramAnonymousInt);
        View localView2 = localView1.findViewById(2131493430);
        View localView3 = localView1.findViewById(2131493432);
        TextView localTextView = (TextView)localView1.findViewById(2131493431);
        ImageView localImageView = (ImageView)localView1.findViewById(2131493433);
        View localView4 = localView1.findViewById(2131493435);
        localView2.setVisibility(8);
        localView3.setVisibility(8);
        localTextView.setVisibility(8);
        localImageView.setVisibility(8);
        if (localOrderCommodity.getGifts().size() == 0) {
          localView4.setVisibility(8);
        }
        switch (localOrderCommodity.getType().intValue())
        {
        case 6: 
        case 7: 
        case 9: 
        case 10: 
        case 12: 
        case 14: 
        case 15: 
        default: 
        case 4: 
        case 1: 
        case 11: 
        case 13: 
          do
          {
            do
            {
              return localView1;
              localView4.setVisibility(0);
              break;
              if (TextUtils.equals(localOrderCommodity.getId(), "-"))
              {
                localImageView.setVisibility(0);
                localImageView.setImageResource(2130837914);
                return localView1;
              }
              localView2.setVisibility(0);
            } while (TextUtils.equals(localOrderCommodity.getStockStatus(), "-"));
            if (localOrderCommodity.isNoStock())
            {
              localView3.setVisibility(0);
              localView3.getBackground().setAlpha(100);
              return localView1;
            }
          } while (TextUtils.equals(localOrderCommodity.getStockStatus(), "现货"));
          localTextView.setVisibility(0);
          localTextView.setText(localOrderCommodity.getStockStatus());
          return localView1;
        case 0: 
        case 2: 
        case 3: 
        case 16: 
          localImageView.setVisibility(0);
          localImageView.setImageResource(2130837913);
          return localView1;
        case 8: 
          localImageView.setVisibility(0);
          localImageView.setImageResource(2130837915);
          return localView1;
        }
        localImageView.setVisibility(0);
        localImageView.setImageResource(2130837912);
        return localView1;
      }
    };
    this.mListView.setAdapter(this.adapter);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903131);
    EditTextUtils.setTextViewText((TextView)findViewById(2131492990), getIntent(), getString(2131166440));
    this.mListView = ((ListView)findViewById(2131493428));
    this.mListView.setDivider(new DividerDrawable(2, 2, true, getResources().getColor(2131296310)));
    this.mListView.setDividerHeight(DPIUtil.dip2px(1.0F));
    setAdapter();
    initDate();
  }
  
  class DividerDrawable
    extends Drawable
  {
    private int color = -7829368;
    private boolean horizontal = true;
    private int intervalDoubled = 1;
    private Paint paint;
    private int pointDoubled = 2;
    private int state = 0;
    
    public DividerDrawable(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
    {
      this.pointDoubled = paramInt1;
      this.intervalDoubled = paramInt2;
      this.horizontal = paramBoolean;
      this.color = paramInt3;
    }
    
    public void draw(Canvas paramCanvas)
    {
      switch (this.state)
      {
      default: 
        return;
      }
      Rect localRect = getBounds();
      if (this.paint == null)
      {
        this.paint = new Paint();
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(this.color);
      }
      int i;
      label81:
      int j;
      label94:
      int i1;
      label124:
      int i2;
      label144:
      int i3;
      label157:
      int i4;
      label170:
      int i5;
      int i6;
      int i7;
      label201:
      label208:
      int i8;
      if (this.horizontal)
      {
        i = localRect.width();
        if (!this.horizontal) {
          break label263;
        }
        j = localRect.height();
        int k = j * this.pointDoubled;
        int m = j * this.intervalDoubled;
        int n = i / (k + m);
        i1 = 0;
        if (i1 < n)
        {
          if (!this.horizontal) {
            break label272;
          }
          i2 = localRect.top;
          if (!this.horizontal) {
            break label281;
          }
          i3 = localRect.bottom;
          if (!this.horizontal) {
            break label290;
          }
          i4 = localRect.left;
          i5 = i4 + i1 * (k + m);
          i6 = i5 + k;
          if (!this.horizontal) {
            break label299;
          }
          i7 = i5;
          if (!this.horizontal) {
            break label306;
          }
          if (!this.horizontal) {
            break label313;
          }
          i8 = i6;
          label219:
          if (!this.horizontal) {
            break label320;
          }
        }
      }
      for (;;)
      {
        paramCanvas.drawRect(new Rect(i7, i2, i8, i3), this.paint);
        i1++;
        break label124;
        break;
        i = localRect.height();
        break label81;
        label263:
        j = localRect.width();
        break label94;
        label272:
        i2 = localRect.left;
        break label144;
        label281:
        i3 = localRect.right;
        break label157;
        label290:
        i4 = localRect.top;
        break label170;
        label299:
        i7 = i2;
        break label201;
        label306:
        i2 = i5;
        break label208;
        label313:
        i8 = i3;
        break label219;
        label320:
        i3 = i6;
      }
    }
    
    public int getOpacity()
    {
      return 0;
    }
    
    public void setAlpha(int paramInt) {}
    
    public void setColorFilter(ColorFilter paramColorFilter) {}
    
    public void switchState()
    {
      switch (this.state)
      {
      default: 
        this.state = 0;
        return;
      }
      this.state = 1;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.OrderCommodityActivity
 * JD-Core Version:    0.7.0.1
 */