package com.jingdong.app.mall.promotion;

import android.content.Intent;
import android.content.res.Resources;
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
import com.jingdong.common.entity.PromotionMessage;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import com.jingdong.common.utils.NextPageLoader;
import com.jingdong.common.utils.SimpleBeanAdapter;
import com.jingdong.common.utils.SimpleBeanAdapter.SubViewHolder;
import com.jingdong.common.utils.SimpleSubViewBinder;
import com.jingdong.common.utils.adapter.SimpleImageProcessor;
import com.jingdong.common.utils.adapter.UIRunnable;
import com.jingdong.common.utils.cache.GlobalImageCache.ImageState;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class PromotionMessageActivity
  extends MyActivity
{
  private static final String TAG = "PromotionMessageActivity";
  private String comeFrom;
  private String functionId;
  private String landPageId;
  private ListView listView;
  private LinearLayout loadingLayout;
  private JSONObject params;
  private String promotionId;
  private TextView title;
  
  private void getPromotionMsgList()
  {
    try
    {
      this.params.put("promotionsID", this.promotionId);
      label14:
      NextPageLoader local2 = new NextPageLoader(this, this.listView, this.loadingLayout, this.functionId, this.params, getResources().getString(2131165802))
      {
        protected MySimpleAdapter createAdapter(IMyActivity paramAnonymousIMyActivity, AdapterView paramAnonymousAdapterView, ArrayList<?> paramAnonymousArrayList)
        {
          MySimpleAdapter local1 = new MySimpleAdapter(PromotionMessageActivity.this, paramAnonymousArrayList, 2130903270, new String[] { "endDate", "imageUrl" }, new int[] { 2131494349, 2131494348 })
          {
            public View getView(int paramAnonymous2Int, View paramAnonymous2View, ViewGroup paramAnonymous2ViewGroup)
            {
              View localView = super.getView(paramAnonymous2Int, paramAnonymous2View, paramAnonymous2ViewGroup);
              TextView localTextView = (TextView)localView.findViewById(2131494349);
              PromotionMessage localPromotionMessage = (PromotionMessage)getItem(paramAnonymous2Int);
              localTextView.setText("截止日期：" + localPromotionMessage.getEndDate());
              return localView;
            }
          };
          local1.setViewBinder(new SimpleSubViewBinder(new PromotionMessageActivity.PromotionMessageImageProcessor(null)));
          return local1;
        }
        
        public void setSelection(int paramAnonymousInt) {}
        
        protected void showError() {}
        
        protected ArrayList<?> toList(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          return PromotionMessage.toList(paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("cmsActivityList"), 0);
        }
      };
      local2.setPageSize(10);
      local2.setEffect(true);
      local2.setHttpNotifyUser(true);
      local2.showPageOne();
      return;
    }
    catch (JSONException localJSONException)
    {
      break label14;
    }
  }
  
  private void setListenter()
  {
    this.listView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousView.setPressed(false);
        PromotionMessage localPromotionMessage = (PromotionMessage)((Adapter)paramAnonymousAdapterView.getAdapter()).getItem(paramAnonymousInt);
        if (localPromotionMessage != null)
        {
          Intent localIntent = new Intent(PromotionMessageActivity.this, PromotionProductListActivity.class);
          Bundle localBundle = new Bundle();
          localBundle.putString("content", localPromotionMessage.getContent());
          localBundle.putString("activityId", localPromotionMessage.getActivityId());
          localBundle.putString("catelogyId", localPromotionMessage.getCategoryId());
          localBundle.putString("title", localPromotionMessage.getTitle());
          localBundle.putString("landPageId", PromotionMessageActivity.this.landPageId);
          localBundle.putString("comeFrom", PromotionMessageActivity.this.comeFrom);
          localIntent.putExtras(localBundle);
          localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
          PromotionMessageActivity.this.startActivityInFrame(localIntent);
        }
      }
    });
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903269);
    Bundle localBundle = getIntent().getExtras();
    this.title = ((TextView)findViewById(2131492990));
    this.title.setText(localBundle.getString("name"));
    this.functionId = "getCmsActivityListByPromotionsID";
    this.promotionId = localBundle.getString("promotion_id");
    this.comeFrom = localBundle.getString("comeFrom");
    this.landPageId = localBundle.getString("landPageId");
    this.listView = ((ListView)findViewById(2131494347));
    this.params = new JSONObject();
    this.loadingLayout = ((LinearLayout)ImageUtil.inflate(2130903175, null));
    this.loadingLayout.setGravity(17);
    setListenter();
    getPromotionMsgList();
  }
  
  private static class PromotionMessageImageProcessor
    extends SimpleImageProcessor
  {
    protected UIRunnable provideUIRunnable(SimpleBeanAdapter.SubViewHolder paramSubViewHolder, GlobalImageCache.ImageState paramImageState)
    {
      return new MyUIRunnable(paramSubViewHolder, paramImageState);
    }
    
    private static class MyUIRunnable
      extends UIRunnable
    {
      public MyUIRunnable(SimpleBeanAdapter.SubViewHolder paramSubViewHolder, GlobalImageCache.ImageState paramImageState)
      {
        super(paramImageState);
      }
      
      protected View getItemView()
      {
        SimpleBeanAdapter.SubViewHolder localSubViewHolder = getSubViewHolder();
        Object localObject = localSubViewHolder.getAdapter().getItem(localSubViewHolder.getPosition());
        if ((localObject != null) && (localSubViewHolder.getSubData().equals(((PromotionMessage)localObject).getImageUrl()))) {
          return super.getItemView();
        }
        return null;
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.promotion.PromotionMessageActivity
 * JD-Core Version:    0.7.0.1
 */