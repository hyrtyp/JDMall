package com.jingdong.app.mall.personel;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
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
import org.json.JSONException;
import org.json.JSONObject;

public class MyBackAndExchangeActivity
  extends MyActivity
{
  private static final String TAG = "MyBackAndExchangeActivity";
  private MySimpleAdapter adapter;
  private ArrayList<BackExchange> backList = new ArrayList();
  private View containterView;
  private ListView mListView;
  private TextView titleView;
  
  private void createListView()
  {
    if ((this.backList != null) && (this.backList.size() > 0))
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
      Collections.sort(this.backList, local4);
      post(new Runnable()
      {
        public void run()
        {
          MyBackAndExchangeActivity.this.adapter.notifyDataSetChanged();
          MyBackAndExchangeActivity.this.mListView.setVisibility(0);
        }
      });
    }
  }
  
  private void initListView()
  {
    try
    {
      JSONObjectProxy localJSONObjectProxy1 = new JSONObjectProxy(new JSONObject("{\"JdOrderStat\":[{\"icon\":\"2130837602\",\"functionId\":\"unfinishedOrder\",\"count\":1,\"url\":\"\",\"name\":\"申请返修退换货\"},{\"icon\":\"2130837603\",\"functionId\":\"waite4Payment\",\"count\":0,\"url\":\"\",\"name\":\"查看返修退换货\"}]}"));
      localJSONObjectProxy2 = localJSONObjectProxy1;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        ArrayList localArrayList;
        localJSONException.printStackTrace();
        JSONObjectProxy localJSONObjectProxy2 = null;
      }
    }
    localArrayList = BackExchange.toList(localJSONObjectProxy2.getJSONArrayOrNull("JdOrderStat"));
    if (localArrayList != null) {
      localArrayList.size();
    }
  }
  
  private void queryBackExchange()
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
          if (MyBackAndExchangeActivity.this.backList != null) {
            MyBackAndExchangeActivity.this.backList.clear();
          }
          if (BackExchange.toList(localJSONArrayPoxy) != null)
          {
            MyBackAndExchangeActivity.this.backList.addAll(BackExchange.toList(localJSONArrayPoxy));
            MyBackAndExchangeActivity.this.createListView();
          }
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams)
      {
        paramAnonymousHttpSettingParams.putJsonParam("type", "ReturnBack");
      }
    });
    localHttpSetting.setNotifyUser(true);
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void setAdapter()
  {
    this.adapter = new MySimpleAdapter(this, this.backList, 2130903192, new String[] { "icon", "name" }, new int[] { 2131493716, 2131493717 })
    {
      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        View localView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
        ((ImageView)localView.findViewById(2131493716));
        ((BackExchange)getItem(paramAnonymousInt));
        if (paramAnonymousInt == 0)
        {
          localView.setBackgroundResource(2130838025);
          return localView;
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
            MyBackAndExchangeActivity.this.post(new Runnable()
            {
              public void run()
              {
                Intent localIntent = new Intent(MyBackAndExchangeActivity.this, WebActivity.class);
                localIntent.putExtra("url", paramAnonymous2String);
                MyBackAndExchangeActivity.this.startActivityInFrame(localIntent);
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
    this.titleView.setText(2131165834);
    setAdapter();
    setEvent();
    queryBackExchange();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.personel.MyBackAndExchangeActivity
 * JD-Core Version:    0.7.0.1
 */