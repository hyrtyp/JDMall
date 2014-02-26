package com.jingdong.app.mall.personel;

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
import android.widget.TextView;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.SourceEntity;
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
import com.jingdong.common.utils.NewNextPageLoader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class MyCommentDiscussActivity
  extends MyActivity
{
  public static final int COMMENT_REQUEST_CODE = 10;
  public static final int COMMENT_TYPE = 1;
  public static final int DISCUSS_REQUEST_CODE = 11;
  public static final int DISCUSS_TYPE = 2;
  public static final String PRODUCT_EXTRA = "product";
  private final String TAG = "MyCommentDiscussActivity";
  private JSONObject adjustParam;
  private String functionId;
  private LinearLayout loadingLayout;
  Button mInstructionButton;
  Button mNewComment;
  Button mNewDiscuss;
  TextView mTitle;
  NewNextPageLoader nextPageLoader;
  private ListView orderWaresList;
  private JSONObject params;
  
  private void InitComponenet()
  {
    this.orderWaresList = ((ListView)findViewById(2131493263));
    this.orderWaresList.setDivider(null);
    this.loadingLayout = ((LinearLayout)ImageUtil.inflate(2130903175, null));
    this.loadingLayout.setGravity(17);
    this.mInstructionButton = ((Button)findViewById(2131494684));
    this.mInstructionButton.getLayoutParams().width = DPIUtil.dip2px(120.0F);
    this.mInstructionButton.setVisibility(0);
    this.mInstructionButton.setText(getString(2131166416));
    this.mInstructionButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        MyCommentDiscussActivity.this.mInstructionButton.setClickable(false);
        Intent localIntent = new Intent(MyCommentDiscussActivity.this, WebActivity.class);
        localIntent.putExtra("url", "http://m.jd.com/help/app/shaidan.html");
        MyCommentDiscussActivity.this.startActivityInFrame(localIntent);
        MyCommentDiscussActivity.this.mInstructionButton.setClickable(true);
      }
    });
  }
  
  public static void adjustOrder(MyActivity paramMyActivity, final Intent paramIntent, final int paramInt, final Product paramProduct, JSONObject paramJSONObject)
  {
    if (paramMyActivity == null) {
      return;
    }
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("adjustOrder");
    localHttpSetting.setJsonParams(paramJSONObject);
    localHttpSetting.setListener(new HttpGroup.OnAllListener()
    {
      AlertDialog alertDialog = null;
      
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        for (;;)
        {
          try
          {
            String str = localJSONObjectProxy.getString("flag");
            if (!"true".equals(str)) {
              break;
            }
            if ((MyCommentDiscussActivity.this instanceof MyCommentDiscussActivity))
            {
              paramIntent.putExtra("from_which", 1);
              if (paramInt == 1) {
                MyCommentDiscussActivity.this.post(new Runnable()
                {
                  public void run()
                  {
                    this.val$intent.setClass(this.val$myActivity, MakeNewComments.class);
                    this.val$myActivity.startActivityForResult(this.val$intent, 10);
                  }
                });
              }
              if (paramInt == 2) {
                MyCommentDiscussActivity.this.post(new Runnable()
                {
                  public void run()
                  {
                    this.val$intent.setClass(this.val$myActivity, MakeNewDiscuss.class);
                    this.val$intent.putExtra("product", this.val$product);
                    this.val$myActivity.startActivityForResult(this.val$intent, 11);
                  }
                });
              }
              return;
            }
          }
          catch (JSONException localJSONException)
          {
            return;
          }
          paramIntent.putExtra("from_which", 2);
        }
        final AlertDialog.Builder localBuilder = new AlertDialog.Builder(MyCommentDiscussActivity.this);
        if (paramInt == 1)
        {
          localBuilder.setTitle(2131166073);
          localBuilder.setMessage(2131166097);
        }
        if (paramInt == 2)
        {
          localBuilder.setTitle(2131166074);
          localBuilder.setMessage(2131166098);
        }
        localBuilder.setNegativeButton(2131165731, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            MyCommentDiscussActivity.4.this.alertDialog.dismiss();
          }
        });
        MyCommentDiscussActivity.this.post(new Runnable()
        {
          public void run()
          {
            MyCommentDiscussActivity.4.this.alertDialog = localBuilder.show();
          }
        });
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    localHttpSetting.setNotifyUser(true);
    paramMyActivity.getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  public static boolean canCommentOrDiscuss(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    while ((TextUtils.isEmpty(paramString.trim())) || (paramString.trim().equalsIgnoreCase("null"))) {
      return true;
    }
    return false;
  }
  
  private void getCommentDiscussList()
  {
    this.orderWaresList.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousView.setPressed(false);
        Product localProduct = (Product)((Adapter)paramAnonymousAdapterView.getAdapter()).getItem(paramAnonymousInt);
        if (localProduct != null) {
          StartActivityUtils.startProductDetailActivity(MyCommentDiscussActivity.this, localProduct.getId(), localProduct.getName(), new SourceEntity("orderWares", null));
        }
      }
    });
    this.nextPageLoader = new NewNextPageLoader(this, this.orderWaresList, this.loadingLayout, this.functionId, this.params, getString(2131165847))
    {
      protected MySimpleAdapter createAdapter(final IMyActivity paramAnonymousIMyActivity, AdapterView paramAnonymousAdapterView, ArrayList<?> paramAnonymousArrayList)
      {
        new MySimpleAdapter(MyCommentDiscussActivity.this, paramAnonymousArrayList, 2130903106, new String[] { "imageurl" }, new int[] { 2131493290 })
        {
          public View getView(int paramAnonymous2Int, View paramAnonymous2View, ViewGroup paramAnonymous2ViewGroup)
          {
            View localView = super.getView(paramAnonymous2Int, paramAnonymous2View, paramAnonymous2ViewGroup);
            TextView localTextView = (TextView)localView.findViewById(2131493291);
            final Product localProduct = (Product)getItem(paramAnonymous2Int);
            if (localProduct == null) {
              return localView;
            }
            localTextView.setMaxLines(4);
            localTextView.setText(localProduct.getName());
            MyCommentDiscussActivity.this.mNewDiscuss = ((Button)localView.findViewById(2131493294));
            MyCommentDiscussActivity.this.mNewComment = ((Button)localView.findViewById(2131493293));
            View.OnClickListener local1 = new View.OnClickListener()
            {
              public void onClick(View paramAnonymous3View)
              {
                Intent localIntent = new Intent();
                localIntent.putExtra("product", localProduct);
                MyCommentDiscussActivity.this.adjustParam = MyCommentDiscussActivity.3.this.params;
                try
                {
                  MyCommentDiscussActivity.this.adjustParam.put("wareId", String.valueOf(localProduct.getId()));
                  MyCommentDiscussActivity.this.adjustParam.put("orderId", localProduct.getOrderId());
                  switch (paramAnonymous3View.getId())
                  {
                  default: 
                    return;
                  }
                }
                catch (JSONException localJSONException1)
                {
                  for (;;)
                  {
                    localJSONException1.printStackTrace();
                  }
                  try
                  {
                    MyCommentDiscussActivity.this.adjustParam.put("type", "1");
                    MyCommentDiscussActivity.adjustOrder((MyActivity)this.val$myActivity, localIntent, 1, localProduct, MyCommentDiscussActivity.this.adjustParam);
                    return;
                  }
                  catch (JSONException localJSONException3)
                  {
                    for (;;)
                    {
                      localJSONException3.printStackTrace();
                    }
                  }
                }
                try
                {
                  MyCommentDiscussActivity.this.adjustParam.put("type", "2");
                  MyCommentDiscussActivity.adjustOrder((MyActivity)this.val$myActivity, localIntent, 2, localProduct, MyCommentDiscussActivity.this.adjustParam);
                  return;
                }
                catch (JSONException localJSONException2)
                {
                  for (;;)
                  {
                    localJSONException2.printStackTrace();
                  }
                }
              }
            };
            if (!MyCommentDiscussActivity.canCommentOrDiscuss(localProduct.getHasComment()))
            {
              MyCommentDiscussActivity.this.mNewComment.setText(MyCommentDiscussActivity.this.getText(2131166417));
              MyCommentDiscussActivity.this.mNewComment.setTextSize(2, 15.0F);
              MyCommentDiscussActivity.this.mNewComment.setEnabled(false);
            }
            while (!MyCommentDiscussActivity.canCommentOrDiscuss(localProduct.getHasDiscuss()))
            {
              MyCommentDiscussActivity.this.mNewDiscuss.setText(MyCommentDiscussActivity.this.getText(2131166418));
              MyCommentDiscussActivity.this.mNewDiscuss.setTextSize(2, 15.0F);
              MyCommentDiscussActivity.this.mNewDiscuss.setEnabled(false);
              return localView;
              MyCommentDiscussActivity.this.mNewComment.setOnClickListener(local1);
              MyCommentDiscussActivity.this.mNewComment.setEnabled(true);
              MyCommentDiscussActivity.this.mNewComment.setTextSize(2, 19.0F);
              MyCommentDiscussActivity.this.mNewComment.setText(MyCommentDiscussActivity.this.getText(2131166058));
            }
            MyCommentDiscussActivity.this.mNewDiscuss.setOnClickListener(local1);
            MyCommentDiscussActivity.this.mNewDiscuss.setEnabled(true);
            MyCommentDiscussActivity.this.mNewDiscuss.setTextSize(2, 19.0F);
            MyCommentDiscussActivity.this.mNewDiscuss.setText(MyCommentDiscussActivity.this.getText(2131166055));
            return localView;
          }
        };
      }
      
      public void setSelection(int paramAnonymousInt) {}
      
      protected void showError() {}
      
      protected ArrayList<?> toList(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        String str = localJSONObjectProxy.getStringOrNull("totalPage");
        try
        {
          int j = Integer.parseInt(str);
          i = j;
        }
        catch (Exception localException)
        {
          for (;;)
          {
            ArrayList localArrayList;
            int i = 0;
          }
        }
        MyCommentDiscussActivity.this.nextPageLoader.setTotalPageCount(i);
        localArrayList = new ArrayList();
        if (localJSONObjectProxy != null) {
          localArrayList = Product.toList(localJSONObjectProxy.getJSONArrayOrNull("orderWares"), 7);
        }
        return localArrayList;
      }
    };
    this.nextPageLoader.showPageOne(true);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt2 != -1) || (paramIntent.getExtras() != null)) {}
    for (;;)
    {
      try
      {
        Product localProduct1 = (Product)paramIntent.getExtras().get("product");
        localLong = localProduct1.getId();
        str = localProduct1.getOrderId();
        localIterator = this.nextPageLoader.getAllProductList().iterator();
        boolean bool = localIterator.hasNext();
        i = 0;
        if (bool) {
          continue;
        }
        if (i == 0) {
          getCommentDiscussList();
        }
      }
      catch (Exception localException)
      {
        Long localLong;
        String str;
        Iterator localIterator;
        int i;
        Product localProduct2;
        getCommentDiscussList();
        continue;
        localProduct2.setHasComment("comment");
        continue;
        localProduct2.setHasDiscuss("discuss");
        continue;
      }
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      localProduct2 = (Product)localIterator.next();
      if ((localProduct2.getId().equals(localLong)) && (TextUtils.equals(localProduct2.getOrderId(), str)))
      {
        i = 1;
        switch (paramInt1)
        {
        default: 
          this.nextPageLoader.notifyDataSetChanged();
          break;
        case 10: 
        case 11: 
          getCommentDiscussList();
        }
      }
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903194);
    ((TextView)findViewById(2131492990)).setText(2131165758);
    this.functionId = "orderWares";
    this.params = new JSONObject();
    this.adjustParam = new JSONObject();
    InitComponenet();
    getCommentDiscussList();
  }
  
  public void onStart()
  {
    super.onStart();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.personel.MyCommentDiscussActivity
 * JD-Core Version:    0.7.0.1
 */