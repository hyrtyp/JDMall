package com.jingdong.app.mall.jdnews;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.entity.JdNews;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import com.jingdong.common.utils.NextPageLoader;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;

public class JdNewsListActivity
  extends MyActivity
  implements AdapterView.OnItemClickListener
{
  private ListView jdNewsList;
  private LinearLayout loadingLayout;
  
  private void showJdNewsList()
  {
    new NextPageLoader(this, this.jdNewsList, this.loadingLayout, "jdNews")
    {
      protected MySimpleAdapter createAdapter(IMyActivity paramAnonymousIMyActivity, AdapterView paramAnonymousAdapterView, ArrayList<?> paramAnonymousArrayList)
      {
        new MySimpleAdapter(paramAnonymousIMyActivity, paramAnonymousArrayList, 2130903169, new String[] { "title", "addTime" }, new int[] { 2131493588, 2131493589 })
        {
          public View getView(int paramAnonymous2Int, View paramAnonymous2View, ViewGroup paramAnonymous2ViewGroup)
          {
            View localView = super.getView(paramAnonymous2Int, paramAnonymous2View, paramAnonymous2ViewGroup);
            if (paramAnonymous2Int % 2 == 1)
            {
              localView.setBackgroundResource(2130837792);
              return localView;
            }
            localView.setBackgroundResource(2130837793);
            return localView;
          }
        };
      }
      
      public void setSelection(int paramAnonymousInt) {}
      
      protected void showError() {}
      
      protected ArrayList<?> toList(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        try
        {
          ArrayList localArrayList = JdNews.toList(localJSONObjectProxy.getJSONArray("jdnewsList"), 0);
          return localArrayList;
        }
        catch (JSONException localJSONException) {}
        return null;
      }
    }.showPageOne(true);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903168);
    ((TextView)findViewById(2131492990)).setText(2131165661);
    this.jdNewsList = ((ListView)findViewById(2131493586));
    this.jdNewsList.setOnItemClickListener(this);
    this.loadingLayout = ((LinearLayout)ImageUtil.inflate(2130903175, null));
    this.loadingLayout.setGravity(17);
    showJdNewsList();
  }
  
  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Intent localIntent = new Intent(this, JdNewsDetailActivity.class);
    JdNews localJdNews = (JdNews)paramAdapterView.getItemAtPosition(paramInt);
    if (localJdNews != null)
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("jdNewsId", localJdNews.getJdNewsId());
      localBundle.putString("title", localJdNews.getTitle());
      localIntent.putExtras(localBundle);
      startActivityInFrame(localIntent);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.jdnews.JdNewsListActivity
 * JD-Core Version:    0.7.0.1
 */