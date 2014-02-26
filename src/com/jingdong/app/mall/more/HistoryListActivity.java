package com.jingdong.app.mall.more;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RatingBar;
import android.widget.TextView;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.ProductShow;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.DBHelperUtil;
import com.jingdong.common.utils.EditTextUtils;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import com.jingdong.common.utils.NextPageLoader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class HistoryListActivity
  extends MyActivity
  implements AdapterView.OnItemClickListener
{
  private DBHelperUtil dbService;
  private String functionId;
  private LinearLayout loadingLayout;
  private NextPageLoader nextPageLoader;
  private JSONObject params;
  private ListView wareInfoList;
  
  private void getWareInfoList(String paramString, JSONObject paramJSONObject)
  {
    this.nextPageLoader = new NextPageLoader(this, this.wareInfoList, this.loadingLayout, paramString, paramJSONObject)
    {
      protected MySimpleAdapter createAdapter(IMyActivity paramAnonymousIMyActivity, AdapterView paramAnonymousAdapterView, ArrayList<?> paramAnonymousArrayList)
      {
        new MySimpleAdapter(HistoryListActivity.this, paramAnonymousArrayList, 2130903264, new String[] { "imageurl", "name", "adword" }, new int[] { 2131493041, 2131493046, 2131493236 })
        {
          public View getView(int paramAnonymous2Int, View paramAnonymous2View, ViewGroup paramAnonymous2ViewGroup)
          {
            View localView = super.getView(paramAnonymous2Int, paramAnonymous2View, paramAnonymous2ViewGroup);
            Product localProduct;
            ProductShow localProductShow;
            TextView localTextView1;
            TextView localTextView2;
            if (paramAnonymous2Int % 2 == 1)
            {
              localView.setBackgroundResource(2130838108);
              localProduct = (Product)getItem(paramAnonymous2Int);
              localProductShow = new ProductShow(HistoryListActivity.this, localProduct);
              localTextView1 = (TextView)localView.findViewById(2131493237);
              localTextView2 = (TextView)localView.findViewById(2131493048);
              if (!TextUtils.isEmpty(localProduct.getJdPrice())) {
                break label158;
              }
            }
            label158:
            HistoryListActivity localHistoryListActivity;
            Object[] arrayOfObject;
            for (String str = "";; str = localHistoryListActivity.getString(2131165822, arrayOfObject))
            {
              localTextView1.setText(str);
              localTextView2.setText(localProductShow.getMarketPrice());
              RatingBar localRatingBar = (RatingBar)localView.findViewById(2131493240);
              TextView localTextView3 = (TextView)localView.findViewById(2131493241);
              localRatingBar.setVisibility(8);
              localTextView3.setVisibility(8);
              return localView;
              localView.setBackgroundResource(2130838110);
              break;
              localHistoryListActivity = HistoryListActivity.this;
              arrayOfObject = new Object[1];
              arrayOfObject[0] = localProduct.getJdPrice();
            }
          }
        };
      }
      
      protected void handleParamsBeforeLoading()
      {
        try
        {
          this.params.put("wareId", HistoryListActivity.this.getProductIdArrayStr(this.pageNum.intValue(), this.pageSize.intValue()));
          return;
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
        }
      }
      
      public void setSelection(int paramAnonymousInt) {}
      
      protected void showError() {}
      
      protected ArrayList<?> toList(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        try
        {
          ArrayList localArrayList = Product.toList(localJSONObjectProxy.getJSONArray("wareInfoList"), 1);
          return localArrayList;
        }
        catch (JSONException localJSONException) {}
        return null;
      }
    };
    this.nextPageLoader.showPageOne(true);
  }
  
  public String getProductIdArrayStr(int paramInt1, int paramInt2)
  {
    ArrayList localArrayList = this.dbService.getHistoryByPage(paramInt1, paramInt2);
    StringBuffer localStringBuffer = new StringBuffer();
    Iterator localIterator;
    if ((localArrayList != null) && (localArrayList.size() != 0)) {
      localIterator = localArrayList.iterator();
    }
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        if (localStringBuffer.length() > 0) {
          localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
        }
        return localStringBuffer.toString();
      }
      localStringBuffer.append(((Product)localIterator.next()).getId()).append(",");
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903193);
    this.dbService = new DBHelperUtil(this);
    EditTextUtils.setTextViewText((TextView)findViewById(2131492990), getIntent(), getString(2131165653));
    Button localButton = (Button)findViewById(2131494684);
    localButton.setVisibility(0);
    localButton.setText(2131165809);
    localButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        AlertDialog localAlertDialog = new AlertDialog.Builder(HistoryListActivity.this).create();
        localAlertDialog.setMessage(HistoryListActivity.this.getText(2131165810));
        localAlertDialog.setTitle(2131165809);
        localAlertDialog.setButton(HistoryListActivity.this.getText(2131165731), new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            HistoryListActivity.this.dbService.delAllHistory();
            paramAnonymous2DialogInterface.dismiss();
            HistoryListActivity.this.finish();
          }
        });
        localAlertDialog.setButton2(HistoryListActivity.this.getText(2131165601), new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            paramAnonymous2DialogInterface.dismiss();
          }
        });
        localAlertDialog.show();
      }
    });
    this.params = new JSONObject();
    this.functionId = "wareHistory";
    this.wareInfoList = ((ListView)findViewById(2131493719));
    this.wareInfoList.setOnItemClickListener(this);
    this.loadingLayout = ((LinearLayout)ImageUtil.inflate(2130903175, null));
    this.loadingLayout.setGravity(17);
    getWareInfoList(this.functionId, this.params);
  }
  
  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Product localProduct = (Product)paramAdapterView.getAdapter().getItem(paramInt);
    if (getIntent().getBooleanExtra("isFromHome", false)) {}
    for (String str = "homeHistory";; str = "history")
    {
      if (localProduct != null) {
        StartActivityUtils.startProductDetailActivity(this, localProduct.getId(), localProduct.getName(), new SourceEntity(str, null));
      }
      return;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.more.HistoryListActivity
 * JD-Core Version:    0.7.0.1
 */