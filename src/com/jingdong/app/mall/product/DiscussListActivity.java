package com.jingdong.app.mall.product;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.entity.OrderComment;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import com.jingdong.common.utils.NextPageLoader;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class DiscussListActivity
  extends MyActivity
  implements AdapterView.OnItemClickListener
{
  private LinearLayout loadingLayout;
  private String name;
  private ListView orderCommentList;
  private JSONObject params;
  private String subName;
  private long wareId;
  
  private void showOrderCommentList()
  {
    new NextPageLoader(this, this.orderCommentList, this.loadingLayout, "orderComment", this.params)
    {
      protected MySimpleAdapter createAdapter(IMyActivity paramAnonymousIMyActivity, AdapterView paramAnonymousAdapterView, ArrayList<?> paramAnonymousArrayList)
      {
        new MySimpleAdapter(paramAnonymousIMyActivity, paramAnonymousArrayList, 2130903119, new String[] { "title", "creationTime", "replyCount" }, new int[] { 2131493336, 2131493337, 2131493338 })
        {
          public View getView(int paramAnonymous2Int, View paramAnonymous2View, ViewGroup paramAnonymous2ViewGroup)
          {
            View localView = super.getView(paramAnonymous2Int, paramAnonymous2View, paramAnonymous2ViewGroup);
            if (paramAnonymous2Int % 2 == 1)
            {
              localView.setBackgroundResource(2130838108);
              return localView;
            }
            localView.setBackgroundResource(2130838110);
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
          ArrayList localArrayList = OrderComment.toList(localJSONObjectProxy.getJSONArray("orderCommentList"), 0);
          return localArrayList;
        }
        catch (JSONException localJSONException) {}
        return null;
      }
    }.showPageOne(true);
    this.orderCommentList.setOnItemClickListener(this);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903118);
    this.params = new JSONObject();
    Intent localIntent = getIntent();
    this.wareId = localIntent.getExtras().getLong("id");
    this.name = localIntent.getExtras().getString("name");
    try
    {
      this.params.put("wareId", String.valueOf(this.wareId));
      this.orderCommentList = ((ListView)findViewById(2131493335));
      TextView localTextView = (TextView)findViewById(2131492990);
      if (this.name.length() > 14)
      {
        this.subName = (this.name.substring(0, 14) + "...");
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = this.subName;
        localTextView.setText(getString(2131165850, arrayOfObject));
        this.loadingLayout = ((LinearLayout)ImageUtil.inflate(2130903175, null));
        this.loadingLayout.setGravity(17);
        showOrderCommentList();
        return;
      }
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
        continue;
        this.subName = this.name;
      }
    }
  }
  
  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Intent localIntent = new Intent(this, DiscussDetailActivity.class);
    OrderComment localOrderComment = (OrderComment)paramAdapterView.getAdapter().getItem(paramInt);
    if (localOrderComment != null)
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("id", localOrderComment.getId());
      localIntent.putExtras(localBundle);
      startActivity(localIntent);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.product.DiscussListActivity
 * JD-Core Version:    0.7.0.1
 */