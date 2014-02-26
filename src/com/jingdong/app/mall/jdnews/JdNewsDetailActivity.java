package com.jingdong.app.mall.jdnews;

import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.entity.JdNews;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class JdNewsDetailActivity
  extends MyActivity
{
  private String jdNewsId;
  private String jdNewsTitle;
  private JSONArrayPoxy jsonArray;
  
  private void showJdNewsDetials()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("jdNewsId", this.jdNewsId);
      label19:
      HttpGroup.OnAllListener local1 = new HttpGroup.OnAllListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          ArrayList localArrayList = JdNews.toList(paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("jdNews"), 1);
          if ((localArrayList != null) && (localArrayList.size() > 0))
          {
            final JdNews localJdNews = (JdNews)localArrayList.get(0);
            final TextView localTextView1 = (TextView)JdNewsDetailActivity.this.findViewById(2131493582);
            final TextView localTextView2 = (TextView)JdNewsDetailActivity.this.findViewById(2131493583);
            final TextView localTextView3 = (TextView)JdNewsDetailActivity.this.findViewById(2131493585);
            JdNewsDetailActivity.this.post(new Runnable()
            {
              public void run()
              {
                localTextView1.setText(localJdNews.getTitle());
                localTextView2.setText(localJdNews.getAddTime());
                localTextView3.setText(localJdNews.getContent());
              }
            });
          }
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
        
        public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
        
        public void onStart() {}
      };
      HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setFunctionId("jdNews");
      localHttpSetting.setJsonParams(localJSONObject);
      localHttpSetting.setListener(local1);
      localHttpSetting.setNotifyUser(true);
      getHttpGroupaAsynPool().add(localHttpSetting);
      return;
    }
    catch (JSONException localJSONException)
    {
      break label19;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903167);
    ((TextView)findViewById(2131492990)).setText(2131165662);
    this.jdNewsId = getIntent().getExtras().getString("jdNewsId");
    showJdNewsDetials();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.jdnews.JdNewsDetailActivity
 * JD-Core Version:    0.7.0.1
 */