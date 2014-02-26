package com.jingdong.app.mall.product;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Gallery;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.entity.Image;
import com.jingdong.common.entity.OrderComment;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class DiscussDetailActivity
  extends MyActivity
{
  private TextView commentDetailContent;
  private TextView commentDetailTitle;
  private TextView creationTime;
  private RelativeLayout detailHeadContainer;
  private String id;
  private JSONObjectProxy jsonObject = null;
  private JSONObject params;
  private Gallery productImageGallery;
  private TextView title;
  private TextView userId;
  
  private void showOrderCommentDetail()
  {
    this.params = new JSONObject();
    try
    {
      this.params.put("commentId", this.id);
      label25:
      HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setFunctionId("commentDetail");
      localHttpSetting.setJsonParams(this.params);
      localHttpSetting.setListener(new HttpGroup.OnAllListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          DiscussDetailActivity.this.jsonObject = paramAnonymousHttpResponse.getJSONObject();
          try
          {
            final OrderComment localOrderComment = new OrderComment(DiscussDetailActivity.this.jsonObject.getJSONObject("orderCommentInfo"), DiscussDetailActivity.this.jsonObject.getJSONArray("imagPath"), 1);
            DiscussDetailActivity.this.post(new Runnable()
            {
              public void run()
              {
                DiscussDetailActivity.this.commentDetailTitle.setText(localOrderComment.getTitle());
                TextView localTextView1 = DiscussDetailActivity.this.userId;
                DiscussDetailActivity localDiscussDetailActivity1 = DiscussDetailActivity.this;
                Object[] arrayOfObject1 = new Object[1];
                arrayOfObject1[0] = localOrderComment.getUserId();
                localTextView1.setText(localDiscussDetailActivity1.getString(2131166059, arrayOfObject1));
                TextView localTextView2 = DiscussDetailActivity.this.creationTime;
                DiscussDetailActivity localDiscussDetailActivity2 = DiscussDetailActivity.this;
                Object[] arrayOfObject2 = new Object[1];
                arrayOfObject2[0] = localOrderComment.getCreationTime();
                localTextView2.setText(localDiscussDetailActivity2.getString(2131166060, arrayOfObject2));
                DiscussDetailActivity.this.commentDetailContent.setText(localOrderComment.getContent());
                MySimpleAdapter local1 = new MySimpleAdapter(DiscussDetailActivity.this, localOrderComment.getImageList(), 2130903115, new String[] { "small" }, new int[] { 2131493329 }, 1, DPIUtil.dip2px(245.0F), DPIUtil.dip2px(245.0F))
                {
                  int mGalleryItemBackground;
                  
                  public View getView(int paramAnonymous3Int, View paramAnonymous3View, ViewGroup paramAnonymous3ViewGroup)
                  {
                    return super.getView(paramAnonymous3Int, paramAnonymous3View, paramAnonymous3ViewGroup);
                  }
                };
                DiscussDetailActivity.this.productImageGallery.setAdapter(local1);
                DiscussDetailActivity.this.productImageGallery.setOnItemClickListener(new AdapterView.OnItemClickListener()
                {
                  public void onItemClick(AdapterView<?> paramAnonymous3AdapterView, View paramAnonymous3View, int paramAnonymous3Int, long paramAnonymous3Long)
                  {
                    String str = ((Image)((Adapter)paramAnonymous3AdapterView.getAdapter()).getItem(paramAnonymous3Int)).getBig();
                    Bundle localBundle = new Bundle();
                    localBundle.putString("url", str);
                    localBundle.putInt("position", paramAnonymous3Int);
                    localBundle.putSerializable("orderComment", this.val$orderComment);
                    Intent localIntent = new Intent(DiscussDetailActivity.this, ImageActivity.class);
                    localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
                    localIntent.putExtras(localBundle);
                    DiscussDetailActivity.this.startActivity(localIntent);
                  }
                });
              }
            });
            final ListView localListView = (ListView)DiscussDetailActivity.this.findViewById(2131493321);
            ArrayList localArrayList = OrderComment.toList(DiscussDetailActivity.this.jsonObject.getJSONArray("replyList"), 2);
            final MySimpleAdapter local2 = new MySimpleAdapter(DiscussDetailActivity.this, localArrayList, 2130903116, new String[] { "userId", "creationTime", "content" }, new int[] { 2131493330, 2131493331, 2131493332 })
            {
              public View getView(int paramAnonymous2Int, View paramAnonymous2View, ViewGroup paramAnonymous2ViewGroup)
              {
                View localView = super.getView(paramAnonymous2Int, paramAnonymous2View, paramAnonymous2ViewGroup);
                if (paramAnonymous2Int % 2 == 1)
                {
                  localView.setBackgroundResource(2131296289);
                  return localView;
                }
                localView.setBackgroundResource(2131296290);
                return localView;
              }
            };
            DiscussDetailActivity.this.post(new Runnable()
            {
              public void run()
              {
                DiscussDetailActivity.this.detailHeadContainer.setPadding(10, 10, 10, 10);
                localListView.addHeaderView(DiscussDetailActivity.this.detailHeadContainer);
                localListView.setAdapter(local2);
              }
            });
            return;
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
            return;
          }
          catch (JSONException localJSONException) {}
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
        
        public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
        
        public void onStart() {}
      });
      localHttpSetting.setNotifyUser(true);
      getHttpGroupaAsynPool().add(localHttpSetting);
      return;
    }
    catch (JSONException localJSONException)
    {
      break label25;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903113);
    this.id = getIntent().getExtras().getString("id");
    this.title = ((TextView)findViewById(2131492990));
    this.title.setText(2131166062);
    this.detailHeadContainer = ((RelativeLayout)ImageUtil.inflate(2130903114, null));
    this.commentDetailTitle = ((TextView)this.detailHeadContainer.findViewById(2131493322));
    this.userId = ((TextView)this.detailHeadContainer.findViewById(2131493324));
    this.creationTime = ((TextView)this.detailHeadContainer.findViewById(2131493325));
    this.commentDetailContent = ((TextView)this.detailHeadContainer.findViewById(2131493328));
    this.productImageGallery = ((Gallery)this.detailHeadContainer.findViewById(2131493327));
    showOrderCommentDetail();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.product.DiscussDetailActivity
 * JD-Core Version:    0.7.0.1
 */