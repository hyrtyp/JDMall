package com.jingdong.app.mall;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import com.jingdong.app.mall.jdnews.JdNewsDetailActivity;
import com.jingdong.app.mall.jdnews.JdNewsListActivity;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.entity.JdNews;
import com.jingdong.common.entity.Product;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class HomeSharedToPersionActivity
{
  public static ArrayList<Product> crazyBuyProductList = null;
  private JSONArrayPoxy reportJsonArray;
  
  public void showCrazyBuy(MyActivity paramMyActivity, final OnEndListener paramOnEndListener)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("page", "1");
      localJSONObject.put("pagesize", "50");
      label26:
      HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setFunctionId("crazy");
      localHttpSetting.setJsonParams(localJSONObject);
      localHttpSetting.setListener(new HttpGroup.OnAllListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          HomeSharedToPersionActivity.crazyBuyProductList = Product.toList(paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("carzyInfo"), 0);
          paramOnEndListener.onEnd();
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
        
        public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
        
        public void onStart() {}
      });
      localHttpSetting.setNotifyUser(true);
      paramMyActivity.getHttpGroupaAsynPool().add(localHttpSetting);
      return;
    }
    catch (JSONException localJSONException)
    {
      break label26;
    }
  }
  
  public void showReportList(final MyActivity paramMyActivity, final OnEndListener paramOnEndListener)
  {
    HttpGroup.OnAllListener local1 = new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        final ListView localListView = (ListView)paramMyActivity.findViewById(2131493128);
        final ViewGroup.LayoutParams localLayoutParams = localListView.getLayoutParams();
        int i = localLayoutParams.height;
        int j = 0;
        if (i == -2)
        {
          j = -2;
          localLayoutParams.height = localListView.getMeasuredHeight();
        }
        final int k = j;
        HomeSharedToPersionActivity.this.reportJsonArray = paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("jdnewsList");
        if (HomeSharedToPersionActivity.this.reportJsonArray == null) {
          return;
        }
        ArrayList localArrayList = JdNews.toList(HomeSharedToPersionActivity.this.reportJsonArray, 0);
        final MySimpleAdapter local1 = new MySimpleAdapter(paramMyActivity, localArrayList, 2130903153, new String[] { "title" }, new int[] { 2131493530 })
        {
          private boolean one;
          
          public View getView(final int paramAnonymous2Int, View paramAnonymous2View, ViewGroup paramAnonymous2ViewGroup)
          {
            View localView = super.getView(paramAnonymous2Int, paramAnonymous2View, paramAnonymous2ViewGroup);
            int i = localView.getMeasuredHeight();
            int j = localListView.getDividerHeight();
            if ((!this.one) && (i > 0) && (k == -2))
            {
              this.one = true;
              int k = (i + j) * getCount() - j;
              localLayoutParams.height = k;
            }
            localView.setOnClickListener(new View.OnClickListener()
            {
              public void onClick(View paramAnonymous3View)
              {
                try
                {
                  Log.i("test", "++++" + paramAnonymous3View.getId());
                  JSONObject localJSONObject = (JSONObject)HomeSharedToPersionActivity.this.reportJsonArray.get(paramAnonymous2Int);
                  Intent localIntent = new Intent(this.val$myActivity, JdNewsDetailActivity.class);
                  Bundle localBundle = new Bundle();
                  localBundle.putString("jdNewsId", localJSONObject.getString("jdNewsId"));
                  localBundle.putString("title", localJSONObject.getString("title"));
                  localIntent.putExtras(localBundle);
                  this.val$myActivity.startActivityInFrame(localIntent);
                  return;
                }
                catch (JSONException localJSONException) {}
              }
            });
            return localView;
          }
        };
        paramMyActivity.post(new Runnable()
        {
          public void run()
          {
            localListView.setAdapter(local1);
            this.val$listener.onEnd();
            this.val$reportText.setOnClickListener(new View.OnClickListener()
            {
              public void onClick(View paramAnonymous3View)
              {
                Intent localIntent = new Intent(this.val$myActivity, JdNewsListActivity.class);
                this.val$myActivity.startActivityInFrame(localIntent);
              }
            });
            ((MainFrameActivity)this.val$myActivity.getParent()).deleteToken("com.360buy:jdNewsGlobalInitToken");
          }
        });
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    };
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("jdNews");
    localHttpSetting.putJsonParam("page", "1");
    localHttpSetting.putJsonParam("pagesize", "8");
    localHttpSetting.setListener(local1);
    localHttpSetting.setLocalFileCache(true);
    localHttpSetting.setLocalFileCacheTime(300000L);
    localHttpSetting.setNeedGlobalInitialization(false);
    localHttpSetting.setNotifyUser(true);
    paramMyActivity.getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  public static abstract interface OnEndListener
  {
    public abstract void onEnd();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.HomeSharedToPersionActivity
 * JD-Core Version:    0.7.0.1
 */