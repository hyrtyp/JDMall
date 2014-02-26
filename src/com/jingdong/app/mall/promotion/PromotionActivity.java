package com.jingdong.app.mall.promotion;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.TextView;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.entity.Promotion;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import java.util.ArrayList;
import java.util.List;

public class PromotionActivity
  extends MyActivity
{
  public static final String COME_FROM = "home";
  private static final String TAG = "PromotionActivity";
  private String functionId;
  private JSONArrayPoxy jsonArrayPoxy;
  private ListView listView;
  private MySimpleAdapter mMainAdapter;
  private ArrayList<Promotion> mMainListData = new ArrayList();
  private TextView noDateTextView;
  private TextView titleTextView;
  
  private void addListeners()
  {
    this.listView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousView.setPressed(false);
        Promotion localPromotion = (Promotion)((Adapter)paramAnonymousAdapterView.getAdapter()).getItem(paramAnonymousInt);
        if (localPromotion != null)
        {
          Intent localIntent = new Intent(PromotionActivity.this, PromotionMessageActivity.class);
          Bundle localBundle = new Bundle();
          localBundle.putString("promotion_id", localPromotion.getPromotionId());
          localBundle.putString("name", localPromotion.getPromotionName());
          localBundle.putString("comeFrom", "home");
          localIntent.putExtras(localBundle);
          localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
          PromotionActivity.this.startActivityInFrame(localIntent);
        }
      }
    });
  }
  
  private void getCmsActivityList()
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId(this.functionId);
    localHttpSetting.setEffect(1);
    localHttpSetting.setNotifyUser(true);
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        if (paramAnonymousHttpResponse.getJSONObject() != null)
        {
          PromotionActivity.this.jsonArrayPoxy = paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("cmsPromotionsAll");
          if ((PromotionActivity.this.jsonArrayPoxy == null) || (PromotionActivity.this.jsonArrayPoxy.length() == 0))
          {
            PromotionActivity.this.post(new Runnable()
            {
              public void run()
              {
                PromotionActivity.this.noDateTextView.setVisibility(0);
                PromotionActivity.this.listView.setVisibility(8);
              }
            });
            return;
          }
          PromotionActivity.this.post(new Runnable()
          {
            public void run()
            {
              PromotionActivity.this.mMainListData.addAll(Promotion.toList(PromotionActivity.this.jsonArrayPoxy, 0));
              PromotionActivity.this.mMainAdapter.notifyDataSetChanged();
            }
          });
          return;
        }
        PromotionActivity.this.showError();
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        PromotionActivity.this.showError();
      }
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    });
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void setAdapter()
  {
    this.mMainAdapter = new MySimpleAdapter(this, this.mMainListData, 2130903268, new String[] { "imageUrl" }, new int[] { 2131494345 })
    {
      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        return super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
      }
    };
    this.listView.setAdapter(this.mMainAdapter);
  }
  
  private void showError() {}
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903266);
    this.functionId = "getCmsPromotionsAll";
    this.titleTextView = ((TextView)findViewById(2131492990));
    this.titleTextView.setText(getResources().getString(2131166350));
    this.listView = ((ListView)findViewById(2131494342));
    this.noDateTextView = ((TextView)findViewById(2131493446));
    setAdapter();
    addListeners();
    getCmsActivityList();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4) {
      return false;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.promotion.PromotionActivity
 * JD-Core Version:    0.7.0.1
 */