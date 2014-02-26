package com.jingdong.app.mall.personel;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RatingBar;
import android.widget.TextView;
import com.jingdong.app.mall.product.ProductDetailNewActivity;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.ProductShow;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.DBHelperUtil;
import com.jingdong.common.utils.EditTextUtils;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import com.jingdong.common.utils.NextPageLoader;
import com.jingdong.common.utils.NextPageLoader.ModifyDataRunnable;
import com.jingdong.common.utils.ToastUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class MyCollectActivity
  extends MyActivity
  implements AdapterView.OnItemClickListener
{
  DBHelperUtil dbHelper;
  private String functionId;
  private LinearLayout loadingLayout;
  TextView mTitle;
  NextPageLoader nextPageLoader;
  private JSONObject params;
  private Product product;
  private ListView wareInfoList;
  
  private void InitComponenet()
  {
    TextView localTextView = (TextView)findViewById(2131492990);
    localTextView.setText(getIntent().getStringExtra("title"));
    EditTextUtils.setTextViewText(localTextView, getIntent(), getString(2131166346));
    this.wareInfoList = ((ListView)findViewById(2131493719));
    this.wareInfoList.setOnItemClickListener(this);
    this.loadingLayout = ((LinearLayout)ImageUtil.inflate(2130903175, null));
    this.loadingLayout.setGravity(17);
  }
  
  public static void cancelFavorites(MyActivity paramMyActivity, Product paramProduct)
  {
    cancelFavorites(paramMyActivity, null, paramProduct);
  }
  
  private static void cancelFavorites(final MyActivity paramMyActivity, NextPageLoader paramNextPageLoader, final Product paramProduct)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("fid", paramProduct.getFid());
      HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setFunctionId("cancelFavorite");
      localHttpSetting.setJsonParams(localJSONObject);
      localHttpSetting.setListener(new HttpGroup.OnAllListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          if (paramAnonymousHttpResponse.getJSONObject() != null)
          {
            JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
            try
            {
              if (localJSONObjectProxy.getBoolean("flag"))
              {
                if (MyCollectActivity.this != null) {
                  paramMyActivity.post(new Runnable()
                  {
                    public void run()
                    {
                      this.val$nextPageLoader.modifyData(new NextPageLoader.ModifyDataRunnable()
                      {
                        public void modifyData(ArrayList<Object> paramAnonymous3ArrayList)
                        {
                          if ((paramAnonymous3ArrayList != null) && (this.val$product != null)) {
                            paramAnonymous3ArrayList.remove(this.val$product);
                          }
                        }
                      });
                    }
                  });
                }
                ToastUtils.showToast(paramMyActivity, localJSONObjectProxy.getString("message"));
                return;
              }
              ToastUtils.showToast(paramMyActivity, localJSONObjectProxy.getString("message"));
              return;
            }
            catch (JSONException localJSONException) {}
          }
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError)
        {
          ToastUtils.showToast(paramMyActivity, "取消关注失败");
        }
        
        public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
        
        public void onStart() {}
      });
      paramMyActivity.getHttpGroupaAsynPool().add(localHttpSetting);
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  private void getMyCollect()
  {
    this.nextPageLoader = new NextPageLoader(this, this.wareInfoList, this.loadingLayout, this.functionId, this.params, getString(2131165749))
    {
      protected MySimpleAdapter createAdapter(IMyActivity paramAnonymousIMyActivity, AdapterView paramAnonymousAdapterView, ArrayList<?> paramAnonymousArrayList)
      {
        new MySimpleAdapter(MyCollectActivity.this, paramAnonymousArrayList, 2130903264, new String[] { "imageurl", "name", "adword" }, new int[] { 2131493041, 2131493046, 2131493236 })
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
              localProductShow = new ProductShow(MyCollectActivity.this, localProduct);
              localTextView1 = (TextView)localView.findViewById(2131493237);
              localTextView2 = (TextView)localView.findViewById(2131493048);
              if (!TextUtils.isEmpty(localProduct.getJdPrice())) {
                break label158;
              }
            }
            label158:
            MyCollectActivity localMyCollectActivity;
            Object[] arrayOfObject;
            for (String str = "";; str = localMyCollectActivity.getString(2131165822, arrayOfObject))
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
              localMyCollectActivity = MyCollectActivity.this;
              arrayOfObject = new Object[1];
              arrayOfObject[0] = localProduct.getJdPrice();
            }
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
          ArrayList localArrayList = Product.toList(localJSONObjectProxy.getJSONArray("favoriteList"), 7);
          return localArrayList;
        }
        catch (JSONException localJSONException) {}
        return null;
      }
    };
    this.nextPageLoader.showPageOne(true);
  }
  
  private void handleLongClickEvent()
  {
    this.wareInfoList.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener()
    {
      String[] items = { "取消关注" };
      
      public boolean onItemLongClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        final Product localProduct = (Product)paramAnonymousAdapterView.getItemAtPosition(paramAnonymousInt);
        if (localProduct == null) {
          return false;
        }
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(MyCollectActivity.this);
        localBuilder.setTitle("操作");
        localBuilder.setItems(this.items, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            if (paramAnonymous2Int == 0)
            {
              paramAnonymous2DialogInterface.dismiss();
              AlertDialog.Builder localBuilder = new AlertDialog.Builder(MyCollectActivity.this);
              localBuilder.setTitle(2131165765);
              localBuilder.setMessage(2131165766);
              localBuilder.setPositiveButton(2131165517, new DialogInterface.OnClickListener()
              {
                public void onClick(DialogInterface paramAnonymous3DialogInterface, int paramAnonymous3Int)
                {
                  MyCollectActivity.cancelFavorites(MyCollectActivity.this, MyCollectActivity.this.nextPageLoader, this.val$product);
                  paramAnonymous3DialogInterface.dismiss();
                }
              });
              localBuilder.setNegativeButton(2131165601, new DialogInterface.OnClickListener()
              {
                public void onClick(DialogInterface paramAnonymous3DialogInterface, int paramAnonymous3Int)
                {
                  paramAnonymous3DialogInterface.dismiss();
                }
              });
              localBuilder.show();
            }
          }
        });
        localBuilder.show();
        return true;
      }
    });
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903193);
    this.dbHelper = new DBHelperUtil(this);
    Intent localIntent = getIntent();
    this.functionId = "favoriteList";
    this.params = new JSONObject();
    try
    {
      this.params.put("pin", localIntent.getStringExtra("pin"));
      this.params.put("pagesize", "10");
      this.params.put("page", "1");
      InitComponenet();
      handleLongClickEvent();
      getMyCollect();
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Product localProduct = (Product)((Adapter)paramAdapterView.getAdapter()).getItem(paramInt);
    if (localProduct != null) {
      if (!getIntent().getBooleanExtra("isFromHome", false)) {
        break label71;
      }
    }
    label71:
    for (String str = "homeFavoriteList";; str = "favoriteList")
    {
      this.product = localProduct;
      StartActivityUtils.startProductDetailActivity(this, localProduct.getId(), localProduct.getName(), new SourceEntity(str, null));
      return;
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    post(new Runnable()
    {
      public void run()
      {
        if ((ProductDetailNewActivity.hasCacelFavorite) && (MyCollectActivity.this.product != null) && (MyCollectActivity.this.nextPageLoader != null))
        {
          MyCollectActivity.this.nextPageLoader.modifyData(new NextPageLoader.ModifyDataRunnable()
          {
            public void modifyData(ArrayList<Object> paramAnonymous2ArrayList)
            {
              if ((paramAnonymous2ArrayList != null) && (MyCollectActivity.this.product != null)) {
                paramAnonymous2ArrayList.remove(MyCollectActivity.this.product);
              }
              MyCollectActivity.this.product = null;
            }
          });
          return;
        }
        MyCollectActivity.this.product = null;
        MyCollectActivity.this.nextPageLoader.notifyDataSetChanged();
      }
    });
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.personel.MyCollectActivity
 * JD-Core Version:    0.7.0.1
 */