package com.jingdong.app.mall.product;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import com.jingdong.app.mall.MainFrameActivity;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.JDMiaoShaProduct;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.common.entity.MiaoSha;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import com.jingdong.common.utils.NewJLogUtil;
import com.jingdong.common.utils.cache.GlobalImageCache;
import com.novoda.imageloader.core.cache.LruBitmapCache;
import java.util.ArrayList;
import java.util.List;

public class LimitBuyListActivity
  extends MyActivity
{
  private final String TAG = "LimitBuyListActivity";
  private int curSelection;
  private boolean isFirst;
  private boolean isGuided;
  private TextView limitBuyTitle;
  private ListView miaoShaListView;
  private MSAdapter msAdapter;
  private View.OnClickListener onClickListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      switch (paramAnonymousView.getId())
      {
      default: 
        return;
      }
      Intent localIntent = new Intent(LimitBuyListActivity.this, WebActivity.class);
      if (TextUtils.isEmpty(LimitBuyListActivity.this.url)) {}
      for (String str = "http://m.jd.com/help/app/miaosha.html";; str = LimitBuyListActivity.this.url)
      {
        localIntent.putExtra("url", str);
        LimitBuyListActivity.this.startActivityInFrame(localIntent);
        return;
      }
    }
  };
  private SourceEntity sourceEntity;
  private String url;
  
  private void doMiaoShaList()
  {
    doMiaoShaList(true);
  }
  
  private void doMiaoShaList(boolean paramBoolean)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("miaoShaAreaList");
    localHttpSetting.setNotifyUser(true);
    if (!paramBoolean) {
      localHttpSetting.setEffect(0);
    }
    localHttpSetting.setListener(new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        try
        {
          final long l = System.currentTimeMillis();
          JSONArrayPoxy localJSONArrayPoxy = paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("miaoShaList");
          final String str = paramAnonymousHttpResponse.getJSONObject().getStringOrNull("message");
          LimitBuyListActivity.this.url = paramAnonymousHttpResponse.getJSONObject().getStringOrNull("url");
          ArrayList localArrayList1 = MiaoSha.toList(localJSONArrayPoxy);
          if ((localArrayList1 != null) && (localArrayList1.size() > 0))
          {
            final ArrayList localArrayList2 = new ArrayList();
            int i = 0;
            if (i >= localArrayList1.size())
            {
              LimitBuyListActivity.this.post(new Runnable()
              {
                public void run()
                {
                  TextView localTextView = LimitBuyListActivity.this.limitBuyTitle;
                  if (TextUtils.isEmpty(str)) {}
                  for (String str = "每日手机专享低价商品,先抢先得!";; str = str)
                  {
                    localTextView.setText(str);
                    LimitBuyListActivity.this.msAdapter = new LimitBuyListActivity.MSAdapter(LimitBuyListActivity.this, LimitBuyListActivity.this, localArrayList2, 2130903068, new String[] { "ImageUrl" }, new int[] { 2131493063 });
                    LimitBuyListActivity.this.msAdapter.setMillis(l);
                    LimitBuyListActivity.this.miaoShaListView.setAdapter(LimitBuyListActivity.this.msAdapter);
                    return;
                  }
                }
              });
              return;
            }
            List localList = ((MiaoSha)localArrayList1.get(i)).getWareInfoList();
            for (int j = 0;; j++)
            {
              if (j >= localList.size())
              {
                i++;
                break;
              }
              Product localProduct = (Product)localList.get(j);
              if ((localProduct != null) && (localProduct.getId() != null)) {
                localArrayList2.add(localProduct);
              }
            }
          }
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void initView()
  {
    TextView localTextView = (TextView)findViewById(2131492990);
    Button localButton = (Button)findViewById(2131494684);
    String str = getIntent().getStringExtra("title");
    this.sourceEntity = new SourceEntity("indexMiaoShaArea", null);
    if (TextUtils.isEmpty(str)) {
      str = "掌上秒杀";
    }
    localTextView.setText(str);
    localButton.setText(2131166214);
    localButton.setVisibility(0);
    localButton.setOnClickListener(this.onClickListener);
    this.limitBuyTitle = ((TextView)findViewById(2131493059));
    this.miaoShaListView = ((ListView)findViewById(2131493060));
    this.miaoShaListView.setOnScrollListener(new AbsListView.OnScrollListener()
    {
      public void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        LimitBuyListActivity.this.curSelection = paramAnonymousInt1;
      }
      
      public void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt) {}
    });
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903067);
    initView();
    this.isFirst = true;
    this.isGuided = CommonUtil.activityIsGuided(getClass().getName());
    if (!this.isGuided) {
      setGuideResId(2130837945);
    }
    try
    {
      localViewGroup = (ViewGroup)MyApplication.getInstance().getMainFrameActivity().getWindow().peekDecorView();
    }
    catch (Exception localException)
    {
      for (;;)
      {
        try
        {
          addGuideImage(localViewGroup, 17, getResources().getDimensionPixelOffset(2131427459), getResources().getDimensionPixelOffset(2131427460));
          return;
        }
        catch (Throwable localThrowable1)
        {
          try
          {
            ViewGroup localViewGroup;
            GlobalImageCache.getLruBitmapCache().cleanMost();
            addGuideImage(localViewGroup, 17, getResources().getDimensionPixelOffset(2131427459), getResources().getDimensionPixelOffset(2131427460));
            return;
          }
          catch (Throwable localThrowable2) {}
        }
        localException = localException;
        localViewGroup = (ViewGroup)getWindow().peekDecorView();
      }
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (this.isFirst)
    {
      doMiaoShaList();
      this.isFirst = false;
    }
    while (this.curSelection <= 0) {
      return;
    }
    this.miaoShaListView.setSelection(this.curSelection);
  }
  
  protected void onStop()
  {
    super.onStop();
    if (this.msAdapter != null)
    {
      this.msAdapter.onStop();
      this.msAdapter = null;
    }
  }
  
  class MSAdapter
    extends MySimpleAdapter
  {
    private int count;
    private List<JDMiaoShaProduct> miaoShaProducts = new ArrayList();
    private int request;
    private long timeMillis;
    
    public MSAdapter(List<?> paramList, int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
    {
      super(paramInt, paramArrayOfString, paramArrayOfInt, arrayOfInt);
    }
    
    public MSAdapter(List<?> paramList, int paramInt1, String[] paramArrayOfString, int[] paramArrayOfInt, int paramInt2, float paramFloat1, float paramFloat2)
    {
      super(paramInt1, paramArrayOfString, paramArrayOfInt, paramInt2, paramFloat1, paramFloat2, localObject);
    }
    
    public MSAdapter(List<?> paramList, int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt, boolean paramBoolean)
    {
      super(paramInt, paramArrayOfString, paramArrayOfInt, paramBoolean, bool);
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      if (paramInt == 0) {}
      for (this.count = (1 + this.count); (this.count > 1) && (paramView != null); this.count = 0) {
        return paramView;
      }
      View localView = super.getView(paramInt, paramView, paramViewGroup);
      final Product localProduct = (Product)getItem(paramInt);
      Long localLong = localProduct.getId();
      long l = 0L;
      if (localLong != null) {
        l = localLong.longValue();
      }
      if (l <= 2147483647L) {}
      for (this.request = ((int)l);; this.request = (2147483647 - this.request))
      {
        JDMiaoShaProduct localJDMiaoShaProduct = new JDMiaoShaProduct(LimitBuyListActivity.this, localView);
        localJDMiaoShaProduct.setTimeMillis(this.timeMillis);
        localJDMiaoShaProduct.setRequest(this.request);
        localJDMiaoShaProduct.setSourceEntity(LimitBuyListActivity.this.sourceEntity);
        localJDMiaoShaProduct.bindData(localProduct, new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            if ((localProduct != null) && (localProduct.getId() != null))
            {
              long l = localProduct.getId().longValue();
              if (NewJLogUtil.isUseNewJLog()) {
                NewJLogUtil.onJMAEvent(LimitBuyListActivity.this, "Click_MiaoShaDetail", l);
              }
              StartActivityUtils.startProductDetailActivity(LimitBuyListActivity.this, Long.valueOf(l), null, LimitBuyListActivity.this.sourceEntity);
            }
          }
        });
        this.miaoShaProducts.add(localJDMiaoShaProduct);
        return localView;
      }
    }
    
    public void onStop()
    {
      for (int i = 0;; i++)
      {
        if ((this.miaoShaProducts == null) || (i >= this.miaoShaProducts.size())) {
          return;
        }
        ((JDMiaoShaProduct)this.miaoShaProducts.get(i)).onStop();
      }
    }
    
    public void setMillis(long paramLong)
    {
      this.timeMillis = paramLong;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.product.LimitBuyListActivity
 * JD-Core Version:    0.7.0.1
 */