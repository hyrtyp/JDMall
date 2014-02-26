package com.jingdong.app.mall.personel;

import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.TextView;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.entity.BackExchange;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.CommonBase.BrowserUrlListener;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import com.jingdong.common.utils.URLParamMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class MyAccountSecurityActivity
  extends MyActivity
{
  private static final String TAG = "MyAccountSecurityActivity";
  private ArrayList<BackExchange> accountSecurityList = new ArrayList();
  private MySimpleAdapter adapter;
  private View containterView;
  private ListView mListView;
  private TextView titleView;
  
  private void createListView()
  {
    if ((this.accountSecurityList != null) && (this.accountSecurityList.size() > 0))
    {
      Comparator local4 = new Comparator()
      {
        public int compare(BackExchange paramAnonymousBackExchange1, BackExchange paramAnonymousBackExchange2)
        {
          Integer localInteger1 = paramAnonymousBackExchange1.getGroup();
          int i = 0;
          if (localInteger1 != null)
          {
            Integer localInteger2 = paramAnonymousBackExchange2.getGroup();
            i = 0;
            if (localInteger2 != null)
            {
              if (paramAnonymousBackExchange1.getGroup().intValue() <= paramAnonymousBackExchange2.getGroup().intValue()) {
                break label49;
              }
              i = 1;
            }
          }
          label49:
          int j;
          int k;
          do
          {
            Integer localInteger3;
            Integer localInteger4;
            do
            {
              return i;
              localInteger3 = paramAnonymousBackExchange1.getGroup();
              localInteger4 = paramAnonymousBackExchange2.getGroup();
              i = 0;
            } while (localInteger3 == localInteger4);
            j = paramAnonymousBackExchange1.getGroup().intValue();
            k = paramAnonymousBackExchange2.getGroup().intValue();
            i = 0;
          } while (j >= k);
          return -1;
        }
      };
      Collections.sort(this.accountSecurityList, local4);
      post(new Runnable()
      {
        public void run()
        {
          MyAccountSecurityActivity.this.adapter.notifyDataSetChanged();
        }
      });
    }
  }
  
  private void queryAccountSecurity()
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("jdHomeShowItem");
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        if (localJSONObjectProxy != null)
        {
          JSONArrayPoxy localJSONArrayPoxy = localJSONObjectProxy.getJSONArrayOrNull("subItemList");
          if (MyAccountSecurityActivity.this.accountSecurityList != null) {
            MyAccountSecurityActivity.this.accountSecurityList.clear();
          }
          ArrayList localArrayList = BackExchange.toList(localJSONArrayPoxy);
          if (localArrayList != null)
          {
            MyAccountSecurityActivity.this.accountSecurityList.addAll(localArrayList);
            MyAccountSecurityActivity.this.createListView();
          }
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams)
      {
        paramAnonymousHttpSettingParams.putJsonParam("type", "AccountSecurity");
      }
    });
    localHttpSetting.setNotifyUser(true);
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void setAdapter()
  {
    this.adapter = new MySimpleAdapter(this, this.accountSecurityList, 2130903190, new String[] { "icon", "name" }, new int[] { 2131493710, 2131493712 })
    {
      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        View localView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
        TextView localTextView = (TextView)localView.findViewById(2131493713);
        BackExchange localBackExchange = (BackExchange)getItem(paramAnonymousInt);
        if (!TextUtils.isEmpty(localBackExchange.getDescription()))
        {
          localTextView.setVisibility(0);
          localTextView.setText(Html.fromHtml(localBackExchange.getDescription()));
        }
        while (paramAnonymousInt == 0)
        {
          localView.setBackgroundResource(2130838025);
          return localView;
          localTextView.setVisibility(8);
        }
        if (paramAnonymousInt == -1 + getCount())
        {
          localView.setBackgroundResource(2130838026);
          return localView;
        }
        localView.setBackgroundResource(2130838027);
        return localView;
      }
    };
    this.mListView.setAdapter(this.adapter);
  }
  
  private void setEvent()
  {
    this.mListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        BackExchange localBackExchange = (BackExchange)((Adapter)paramAnonymousAdapterView.getAdapter()).getItem(paramAnonymousInt);
        URLParamMap localURLParamMap = new URLParamMap();
        localURLParamMap.put("to", localBackExchange.getUrl());
        CommonUtil.queryBrowserUrl(localBackExchange.getAction(), localURLParamMap, new CommonBase.BrowserUrlListener()
        {
          public void onComplete(final String paramAnonymous2String)
          {
            MyAccountSecurityActivity.this.post(new Runnable()
            {
              public void run()
              {
                Intent localIntent = new Intent(MyAccountSecurityActivity.this, WebActivity.class);
                localIntent.putExtra("url", paramAnonymous2String);
                MyAccountSecurityActivity.this.startActivityInFrame(localIntent);
              }
            });
          }
        });
      }
    });
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903191);
    this.mListView = ((ListView)findViewById(2131493715));
    this.titleView = ((TextView)findViewById(2131492990));
    this.titleView.setText(2131165835);
    setAdapter();
    setEvent();
    queryAccountSecurity();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.personel.MyAccountSecurityActivity
 * JD-Core Version:    0.7.0.1
 */