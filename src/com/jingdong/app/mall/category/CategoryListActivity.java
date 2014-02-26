package com.jingdong.app.mall.category;

import android.content.Intent;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.Gallery;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.jingdong.app.mall.product.ProductListActivity;
import com.jingdong.app.mall.utils.CirculationGalleryAdapter;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.common.entity.Catelogy;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import com.jingdong.common.utils.NewJLogUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CategoryListActivity
  extends MyActivity
{
  private static final String TAG = "CategoryActivity";
  private Bundle bundle;
  private String cId;
  private int cLevel;
  private String cName;
  private TextView categoryText;
  private ArrayList<Catelogy> dataList = new ArrayList();
  private Button errorLoadingbut = null;
  private View errorView;
  private String functionId = "catelogy";
  private ArrayList<Product> goodsList = new ArrayList();
  private String lId;
  private String levelFirst;
  private String levelSecond;
  private MySimpleAdapter listAdapter;
  private ViewGroup listEmptyView;
  private LinearLayout listHeadContainer;
  private ListView listView;
  private View loadingView;
  private Gallery productImageGallery;
  
  private void getCategory(String paramString, int paramInt)
  {
    this.loadingView.setVisibility(0);
    this.errorView.setVisibility(8);
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId(this.functionId);
    localHttpSetting.putJsonParam("catelogyId", paramString);
    localHttpSetting.putJsonParam("level", String.valueOf(paramInt));
    localHttpSetting.putJsonParam("isIcon", Boolean.valueOf(false));
    localHttpSetting.putJsonParam("isDescription", Boolean.valueOf(false));
    localHttpSetting.setListener(new loadListener());
    localHttpSetting.setLocalFileCache(true);
    localHttpSetting.setLocalFileCacheTime(3600000L);
    localHttpSetting.setEffect(0);
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void getGoodsCategory(String paramString)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("goodsCategory");
    localHttpSetting.putJsonParam("cid", paramString);
    localHttpSetting.setListener(new goodsListener());
    localHttpSetting.setEffect(0);
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void hideHeadView()
  {
    if ((this.listHeadContainer != null) && (this.listHeadContainer.getParent() != null)) {
      post(new Runnable()
      {
        public void run()
        {
          CategoryListActivity.this.listAdapter.removeHeaderView(CategoryListActivity.this.listHeadContainer);
        }
      });
    }
  }
  
  private void setAdapter()
  {
    this.listAdapter = new MySimpleAdapter(this, this.dataList, 2130903097, new String[] { "name" }, new int[] { 2131493225 })
    {
      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        return super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
      }
    };
    this.listAdapter.registerDataSetObserver(new DataSetObserver()
    {
      public void onChanged()
      {
        if (CategoryListActivity.this.dataList.size() > 0)
        {
          CategoryListActivity.this.listEmptyView.setVisibility(8);
          return;
        }
        CategoryListActivity.this.listEmptyView.setVisibility(0);
      }
    });
    this.listView.setAdapter(this.listAdapter.getHeaderViewListAdapter());
  }
  
  private void setEvents()
  {
    this.listView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        Catelogy localCatelogy = (Catelogy)((Adapter)paramAnonymousAdapterView.getAdapter()).getItem(paramAnonymousInt);
        if (localCatelogy == null) {
          return;
        }
        CategoryListActivity.this.lId = localCatelogy.getcId();
        CategoryListActivity.this.cName = localCatelogy.getName();
        NewJLogUtil.onJMAEvent(CategoryListActivity.this.getBaseContext(), getClass().getName(), CategoryListActivity.this.getSecondCategoryParams(CategoryListActivity.this.lId).toString());
        Intent localIntent = new Intent(CategoryListActivity.this, ProductListActivity.class);
        Bundle localBundle = new Bundle();
        localBundle.putString("name", CategoryListActivity.this.cName);
        localBundle.putString("cid", CategoryListActivity.this.lId);
        localBundle.putString("levelFirst", CategoryListActivity.this.levelFirst);
        localBundle.putString("levelSecond", CategoryListActivity.this.levelSecond);
        localBundle.putBoolean("firstToList", true);
        localIntent.putExtras(localBundle);
        localIntent.putExtra("source", new SourceEntity("catelogy", CategoryListActivity.this.lId));
        StartActivityUtils.startProductListActivity(CategoryListActivity.this, localIntent);
      }
    });
    this.productImageGallery.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        Product localProduct = (Product)((Adapter)paramAnonymousAdapterView.getAdapter()).getItem(paramAnonymousInt);
        if (localProduct != null) {
          StartActivityUtils.startProductDetailActivity(CategoryListActivity.this, localProduct.getId(), localProduct.getName(), new SourceEntity("recommend_cate", null));
        }
      }
    });
    this.errorLoadingbut.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        CategoryListActivity.this.loadingView.setVisibility(0);
        CategoryListActivity.this.errorView.setVisibility(8);
        CategoryListActivity.this.getCategory(CategoryListActivity.this.cId, CategoryListActivity.this.cLevel);
      }
    });
  }
  
  private void showHeadView()
  {
    this.listHeadContainer.setPadding(0, 20, 0, 0);
    if (this.listHeadContainer.getParent() == null) {
      this.listAdapter.addHeaderView(this.listView, this.listHeadContainer);
    }
  }
  
  public Map<String, String> getParams()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("categoryId", this.cId);
    return localHashMap;
  }
  
  public Map<String, String> getSecondCategoryParams(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("categoryId", paramString);
    return localHashMap;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903096);
    this.bundle = getIntent().getExtras();
    this.cId = this.bundle.getString("cid");
    this.cName = this.bundle.getString("name");
    this.levelFirst = this.bundle.getString("levelFirst");
    this.cLevel = this.bundle.getInt("cLevel");
    this.levelSecond = this.cId;
    this.categoryText = ((TextView)findViewById(2131492990));
    this.categoryText.setText(this.cName);
    this.listView = ((ListView)findViewById(2131493220));
    this.listView.setDivider(new DividerDrawable(2, 2, true, getResources().getColor(2131296310)));
    this.listView.setDividerHeight(DPIUtil.dip2px(1.0F));
    this.listEmptyView = ((ViewGroup)findViewById(2131493222));
    this.loadingView = findViewById(2131493223);
    this.errorView = findViewById(2131493224);
    this.errorLoadingbut = ((Button)this.errorView.findViewById(2131493613));
    this.listHeadContainer = ((LinearLayout)ImageUtil.inflate(2130903077, null));
    this.productImageGallery = ((Gallery)this.listHeadContainer.findViewById(2131493136));
    this.productImageGallery.setCallbackDuringFling(false);
    getGoodsCategory(this.cId);
    setAdapter();
    setEvents();
    getCategory(this.cId, this.cLevel);
  }
  
  class DividerDrawable
    extends Drawable
  {
    private int color = -7829368;
    private boolean horizontal = true;
    private int intervalDoubled = 1;
    private Paint paint;
    private int pointDoubled = 2;
    private int state = 0;
    
    public DividerDrawable(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
    {
      this.pointDoubled = paramInt1;
      this.intervalDoubled = paramInt2;
      this.horizontal = paramBoolean;
      this.color = paramInt3;
    }
    
    public void draw(Canvas paramCanvas)
    {
      switch (this.state)
      {
      default: 
        return;
      }
      Rect localRect = getBounds();
      if (this.paint == null)
      {
        this.paint = new Paint();
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(this.color);
      }
      int i;
      label81:
      int j;
      label94:
      int i1;
      label124:
      int i2;
      label144:
      int i3;
      label157:
      int i4;
      label170:
      int i5;
      int i6;
      int i7;
      label201:
      label208:
      int i8;
      if (this.horizontal)
      {
        i = localRect.width();
        if (!this.horizontal) {
          break label263;
        }
        j = localRect.height();
        int k = j * this.pointDoubled;
        int m = j * this.intervalDoubled;
        int n = i / (k + m);
        i1 = 0;
        if (i1 < n)
        {
          if (!this.horizontal) {
            break label272;
          }
          i2 = localRect.top;
          if (!this.horizontal) {
            break label281;
          }
          i3 = localRect.bottom;
          if (!this.horizontal) {
            break label290;
          }
          i4 = localRect.left;
          i5 = i4 + i1 * (k + m);
          i6 = i5 + k;
          if (!this.horizontal) {
            break label299;
          }
          i7 = i5;
          if (!this.horizontal) {
            break label306;
          }
          if (!this.horizontal) {
            break label313;
          }
          i8 = i6;
          label219:
          if (!this.horizontal) {
            break label320;
          }
        }
      }
      for (;;)
      {
        paramCanvas.drawRect(new Rect(i7, i2, i8, i3), this.paint);
        i1++;
        break label124;
        break;
        i = localRect.height();
        break label81;
        label263:
        j = localRect.width();
        break label94;
        label272:
        i2 = localRect.left;
        break label144;
        label281:
        i3 = localRect.right;
        break label157;
        label290:
        i4 = localRect.top;
        break label170;
        label299:
        i7 = i2;
        break label201;
        label306:
        i2 = i5;
        break label208;
        label313:
        i8 = i3;
        break label219;
        label320:
        i3 = i6;
      }
    }
    
    public int getOpacity()
    {
      return 0;
    }
    
    public void setAlpha(int paramInt) {}
    
    public void setColorFilter(ColorFilter paramColorFilter) {}
    
    public void switchState()
    {
      switch (this.state)
      {
      default: 
        this.state = 0;
        return;
      }
      this.state = 1;
    }
  }
  
  class goodsListener
    implements HttpGroup.OnCommonListener
  {
    goodsListener() {}
    
    public void onEnd(HttpGroup.HttpResponse paramHttpResponse)
    {
      JSONArrayPoxy localJSONArrayPoxy = paramHttpResponse.getJSONObject().getJSONArrayOrNull("wareInfoList");
      if ((localJSONArrayPoxy != null) && (localJSONArrayPoxy.length() != 0))
      {
        CategoryListActivity.this.goodsList = Product.toList(localJSONArrayPoxy, 16);
        final CirculationGalleryAdapter local1 = new CirculationGalleryAdapter(CategoryListActivity.this, CategoryListActivity.this.goodsList, 2130903098, new String[] { "imageurl", "name", "jdPrice" }, new int[] { 2131493226, 2131493227, 2131493228 }, true)
        {
          public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
          {
            View localView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
            Product localProduct = (Product)getItem(paramAnonymousInt);
            TextView localTextView = (TextView)localView.findViewById(2131493228);
            ForegroundColorSpan localForegroundColorSpan = new ForegroundColorSpan(CategoryListActivity.this.getResources().getColor(2131296296));
            CharSequence localCharSequence = CategoryListActivity.this.getResources().getText(2131165665);
            SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(localCharSequence + localProduct.getJdPrice());
            int i = -1 + localCharSequence.length();
            int j = localSpannableStringBuilder.length();
            localSpannableStringBuilder.setSpan(new RelativeSizeSpan(1.2F), 0, j, 33);
            localSpannableStringBuilder.setSpan(localForegroundColorSpan, i, j, 33);
            localTextView.setText(localSpannableStringBuilder);
            return localView;
          }
        };
        CategoryListActivity.this.post(new Runnable()
        {
          public void run()
          {
            CategoryListActivity.this.productImageGallery.setAdapter(local1);
            local1.init(CategoryListActivity.this.productImageGallery);
            CategoryListActivity.this.showHeadView();
          }
        });
      }
    }
    
    public void onError(HttpGroup.HttpError paramHttpError) {}
    
    public void onReady(HttpGroup.HttpSettingParams paramHttpSettingParams) {}
  }
  
  class loadListener
    implements HttpGroup.OnCommonListener
  {
    public loadListener() {}
    
    private void showError()
    {
      CategoryListActivity.this.post(new Runnable()
      {
        public void run()
        {
          CategoryListActivity.this.loadingView.setVisibility(8);
          CategoryListActivity.this.errorView.setVisibility(0);
        }
      });
    }
    
    public void onEnd(HttpGroup.HttpResponse paramHttpResponse)
    {
      JSONArrayPoxy localJSONArrayPoxy = paramHttpResponse.getJSONObject().getJSONArrayOrNull("catelogyList");
      if ((localJSONArrayPoxy == null) || (localJSONArrayPoxy.length() == 0))
      {
        showError();
        return;
      }
      CategoryListActivity.this.dataList.addAll(Catelogy.toList(localJSONArrayPoxy, 0));
      CategoryListActivity.this.post(new Runnable()
      {
        public void run()
        {
          CategoryListActivity.this.listAdapter.notifyDataSetChanged();
        }
      });
    }
    
    public void onError(HttpGroup.HttpError paramHttpError)
    {
      showError();
    }
    
    public void onReady(HttpGroup.HttpSettingParams paramHttpSettingParams) {}
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.category.CategoryListActivity
 * JD-Core Version:    0.7.0.1
 */