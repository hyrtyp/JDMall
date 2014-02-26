package com.jingdong.app.mall.product;

import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.personel.MakeNewBuyAsk;
import com.jingdong.app.mall.utils.LoginUser;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.entity.BuyAsk;
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

public class BuyAskListActivity
  extends MyActivity
{
  private ListView buyAskList;
  private String functionId = "consultation";
  private LinearLayout loadingLayout;
  private String name;
  private JSONObject params;
  private String subName;
  private TextView tetleText;
  private Button titleButton;
  private AlertDialog typeChooseDialog;
  private String wareId;
  
  private void handleButtonClick()
  {
    this.titleButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Runnable local1 = new Runnable()
        {
          public void run()
          {
            Intent localIntent = new Intent(BuyAskListActivity.this, MakeNewBuyAsk.class);
            Bundle localBundle = new Bundle();
            localBundle.putString("id", BuyAskListActivity.this.wareId);
            localBundle.putString("name", BuyAskListActivity.this.name);
            localIntent.putExtras(localBundle);
            BuyAskListActivity.this.startActivityInFrame(localIntent);
          }
        };
        LoginUser.getInstance().executeLoginRunnable(BuyAskListActivity.this, local1);
      }
    });
  }
  
  private void showBuyAskList(String paramString, JSONObject paramJSONObject)
  {
    new NextPageLoader(this, this.buyAskList, this.loadingLayout, paramString, paramJSONObject, getString(2131165677))
    {
      protected MySimpleAdapter createAdapter(IMyActivity paramAnonymousIMyActivity, AdapterView paramAnonymousAdapterView, ArrayList<?> paramAnonymousArrayList)
      {
        new MySimpleAdapter(BuyAskListActivity.this, paramAnonymousArrayList, 2130903091, new String[] { "content", "userId", "creationTime", "replyContent" }, new int[] { 2131493194, 2131493191, 2131493192, 2131493196 })
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
      }
      
      public void setSelection(int paramAnonymousInt) {}
      
      protected void showError()
      {
        BuyAskListActivity.this.post(new Runnable()
        {
          public void run()
          {
            BuyAskListActivity.this.titleButton.setClickable(false);
            Toast.makeText(BuyAskListActivity.this, 2131166100, 0).show();
          }
        });
      }
      
      protected ArrayList<?> toList(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        try
        {
          ArrayList localArrayList = BuyAsk.toList(localJSONObjectProxy.getJSONArray("consultationList"), 0);
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
    setContentView(2130903090);
    this.params = new JSONObject();
    Intent localIntent = getIntent();
    this.wareId = String.valueOf(localIntent.getExtras().getLong("id"));
    try
    {
      this.params.put("wareId", this.wareId);
      this.name = localIntent.getExtras().getString("name");
      if (this.name.length() > 8)
      {
        this.subName = (this.name.substring(0, 8) + "...");
        this.tetleText = ((TextView)findViewById(2131492990));
        TextView localTextView = this.tetleText;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = this.subName;
        localTextView.setText(getString(2131165848, arrayOfObject));
        this.titleButton = ((Button)findViewById(2131494684));
        this.titleButton.setVisibility(0);
        this.titleButton.setText(2131166063);
        this.buyAskList = ((ListView)findViewById(2131493189));
        this.loadingLayout = ((LinearLayout)ImageUtil.inflate(2130903175, null));
        this.loadingLayout.setGravity(17);
        showBuyAskList(this.functionId, this.params);
        handleButtonClick();
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
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.product.BuyAskListActivity
 * JD-Core Version:    0.7.0.1
 */