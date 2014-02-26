package com.jingdong.app.mall.product;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.StyleSpan;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnKeyListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.CouponUtil;
import com.jingdong.app.mall.utils.LoginUser;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.ProductShow;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.common.database.table.SearchHistoryTable;
import com.jingdong.common.entity.Commercial;
import com.jingdong.common.entity.Keyword;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.SearchFilter;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.Log;
import com.jingdong.common.utils.MySimpleAdapter;
import com.jingdong.common.utils.VoiceUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class ProductListActivity
  extends MyActivity
  implements AdapterView.OnItemClickListener, View.OnClickListener
{
  public static final String COUPON = "coupon";
  public static final String FIRST_TO_LIST = "firstToList";
  public static final String FROM_CATEGORY = "category";
  public static final String FROM_COMMERCIAL = "commercial";
  public static final String FROM_SEARCH = "search";
  public static final String KEY_SORT_KEY = "sortKey";
  public static final int PRODUCT_FILTER_RCODE = 100;
  public static final int SEARCH_FILTER_RCODE = 101;
  public static final int SORT_COMMENT_COUNT = 6;
  public static final int SORT_COMMENT_GOOD = 4;
  public static final int SORT_PRICE_DOWN = 2;
  public static final int SORT_PRICE_UP = 3;
  public static final int SORT_QUANTITY = 1;
  public static final int SORT_TIME = 5;
  private static final String TAG = "ProductListActivity";
  private int CURR_STATE = 1;
  private final int STATE_FILTER = 1;
  private final int STATE_SEARCH = 0;
  private AlertDialog alertDialog = null;
  private AutoCompleteTextView autoCompleteEt = null;
  private AlertDialog.Builder catelogyFilterDialog;
  private String catelogyId;
  private String catelogyStock;
  private View cleanSearchTextView;
  private Commercial commercial;
  private Long commercialId;
  private String commercialTitle;
  private TextView countNumTv = null;
  private AlertDialog.Builder dialogBuilder;
  private String distribution;
  private Button errorLoadingBut;
  private View errorView;
  private HashMap<String, Integer> expandNameIdMap;
  private HashMap<String, String> expandNameMap;
  private String expandSortId;
  private HashMap<String, Integer> expressionKeyIdMap;
  private HashMap<String, String> expressionKeyMap;
  private String field;
  private Button filterButton;
  private String filterName;
  private String fromWhich = "";
  private String functionId;
  private boolean hasShowSearchFloat = false;
  private ListView historyList;
  private boolean isFirstToList = false;
  private boolean isFromShortcuts;
  boolean isFromSwitch;
  private boolean isGrid;
  private boolean isListViewTop = true;
  private String keyWord;
  private String levelFirst;
  private String levelSecond;
  private ArrayList<Keyword> list;
  private AlertDialog listDialog;
  private ButtonClickListener listener;
  private LinearLayout loadingLayout;
  private ProgressBar loadingViewPb = null;
  private SearchFilter mCategorySearchFilter;
  private MyGridAdapter mGridAdapter;
  private GridView mGridView;
  private MyListAdapter mListAdapter;
  private ListView mListView;
  NextPageLoader4ProductList mNextPageLoader = null;
  private TextView mNoDataView;
  PageIndicator mPageIndicator;
  RelativeLayout mPreSelectedSortButton;
  RelativeLayout mSelectedSortButton;
  ImageButton mSwitchButton;
  private String name;
  private boolean needShowBottomTip = false;
  private JSONObject params;
  private String price;
  private int priceId;
  private View productListSearchAutoSeachLayout;
  private Button productListSearchFilterBut;
  private View productListSearchFloatLayout;
  private int productSize = 0;
  private String promotionDetail;
  private String region;
  private boolean regionIsTrue = false;
  private TextView searchCateText;
  private String searchOldId;
  private String searchWay;
  private View searchWithVoice;
  private boolean selfIsTrue = false;
  private RelativeLayout sortButtonAddTime;
  private RelativeLayout sortButtonComment;
  private RelativeLayout sortButtonLayout;
  private RelativeLayout sortButtonPrice;
  private RelativeLayout sortButtonSales;
  private int sortKey = -1;
  private SourceEntity sourceEntity;
  private RelativeLayout takeCouponLayout;
  private AdapterView<?> wareInfoList;
  
  private void checkSortView(int paramInt)
  {
    this.mPreSelectedSortButton = this.mSelectedSortButton;
    this.sortButtonPrice.findViewById(2131494317).setBackgroundResource(2130838383);
    if (paramInt == 3)
    {
      this.sortButtonPrice.findViewById(2131494317).setBackgroundResource(2130838384);
      this.mSelectedSortButton = this.sortButtonPrice;
    }
    for (;;)
    {
      this.sortButtonPrice.setSelected(false);
      this.sortButtonSales.setSelected(false);
      this.sortButtonComment.setSelected(false);
      this.sortButtonAddTime.setSelected(false);
      this.mSelectedSortButton.setSelected(true);
      tabSelected(this.mPreSelectedSortButton, this.mSelectedSortButton);
      return;
      if (paramInt == 2)
      {
        this.sortButtonPrice.findViewById(2131494317).setBackgroundResource(2130838382);
        this.mSelectedSortButton = this.sortButtonPrice;
      }
      else if (paramInt == 1)
      {
        this.mSelectedSortButton = this.sortButtonSales;
      }
      else if (paramInt == 5)
      {
        this.mSelectedSortButton = this.sortButtonAddTime;
      }
      else if (paramInt == 6)
      {
        this.mSelectedSortButton = this.sortButtonComment;
      }
    }
  }
  
  private void cleanSearchText()
  {
    this.autoCompleteEt.setText("");
    this.cleanSearchTextView.setVisibility(8);
    this.searchWithVoice.setVisibility(0);
  }
  
  private void clearSavedFilterContent()
  {
    this.mCategorySearchFilter = null;
    this.searchOldId = null;
    this.priceId = 0;
    this.expressionKeyMap = null;
    this.expandNameMap = null;
    this.expressionKeyIdMap = null;
    this.expandNameIdMap = null;
    this.expandSortId = null;
    this.productSize = 0;
  }
  
  private String getRegionNameSharedPreferences()
  {
    return CommonUtil.getJdSharedPreferences().getString("regionName", "");
  }
  
  private String getRegionSharedPreferences()
  {
    return CommonUtil.getJdSharedPreferences().getString("region", "0");
  }
  
  private Boolean getRememberStateSharedPreferences()
  {
    return Boolean.valueOf(CommonUtil.getJdSharedPreferences().getBoolean("rememberRegion", false));
  }
  
  private void getWareInfoList(final String paramString, final JSONObject paramJSONObject)
  {
    removeAllHeaderViews();
    this.autoCompleteEt.setFocusableInTouchMode(false);
    this.wareInfoList.setAdapter(null);
    this.autoCompleteEt.setFocusableInTouchMode(true);
    this.mNextPageLoader = new NextPageLoader4ProductList(this, this.wareInfoList, this.loadingLayout, paramString, paramJSONObject)
    {
      protected MySimpleAdapter createAdapter(MyActivity paramAnonymousMyActivity, AdapterView paramAnonymousAdapterView, ArrayList<?> paramAnonymousArrayList)
      {
        ProductListActivity.this.loadingViewPb.setVisibility(8);
        if (ProductListActivity.this.isGrid)
        {
          if (ProductListActivity.this.mGridAdapter != null) {
            ProductListActivity.this.mGridAdapter.setData(paramAnonymousArrayList);
          }
          for (;;)
          {
            return ProductListActivity.this.mGridAdapter;
            ProductListActivity.this.mGridAdapter = new ProductListActivity.MyGridAdapter(ProductListActivity.this, ProductListActivity.this, paramAnonymousArrayList, 2130903262, new String[] { "imageurl" }, new int[] { 2131493041 });
          }
        }
        if (ProductListActivity.this.mListAdapter != null) {
          ProductListActivity.this.mListAdapter.setData(paramAnonymousArrayList);
        }
        for (;;)
        {
          return ProductListActivity.this.mListAdapter;
          ProductListActivity.this.mListAdapter = new ProductListActivity.MyListAdapter(ProductListActivity.this, ProductListActivity.this, paramAnonymousArrayList, 2130903265, new String[] { "imageurl", "name", "adWord" }, new int[] { 2131493041, 2131493046, 2131493236 });
        }
      }
      
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        super.onEnd(paramAnonymousHttpResponse);
        try
        {
          ProductListActivity.this.keyWord = paramJSONObject.getString("keyword");
          label21:
          ProductListActivity.this.functionId = paramString;
          JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
          final Integer localInteger1;
          final Integer localInteger2;
          String str1;
          final String str2;
          final String str3;
          if (localJSONObjectProxy != null)
          {
            localInteger1 = localJSONObjectProxy.getIntOrNull("wareCount");
            localInteger2 = localJSONObjectProxy.getIntOrNull("totalCount");
            str1 = localJSONObjectProxy.getStringOrNull("couponStatus");
            str2 = localJSONObjectProxy.getStringOrNull("roleIds");
            str3 = localJSONObjectProxy.getStringOrNull("couponURL");
            ProductListActivity.this.promotionDetail = paramAnonymousHttpResponse.getJSONObject().getStringOrNull("promotionDetail");
            ProductListActivity.this.commercialTitle = paramAnonymousHttpResponse.getJSONObject().getStringOrNull("title");
            if ((localInteger1 != null) && (localInteger1.intValue() > 0)) {
              ProductListActivity.this.productSize = localInteger1.intValue();
            }
            if ((!TextUtils.isEmpty(ProductListActivity.this.region)) && (!TextUtils.equals(ProductListActivity.this.region, "0")))
            {
              CommonUtil.setProvinceIDToSharedPreferences(ProductListActivity.this.region);
              CommonUtil.setCityIDToSharedPreferences(null);
              CommonUtil.setDistrictIdToSharedPreferences(null);
              CommonUtil.setTownIdToSharedPreferences(null);
            }
            if (!"search".equals(this.functionId)) {
              break label218;
            }
            ProductListActivity.this.post(new Runnable()
            {
              public void run()
              {
                if (localInteger1 == null)
                {
                  ProductListActivity.this.searchCateText.setText(ProductListActivity.this.name);
                  return;
                }
                ProductListActivity.this.searchCateText.setText(ProductListActivity.this.name + "(" + localInteger1 + ")");
              }
            });
          }
          label218:
          do
          {
            return;
            if (ProductListActivity.this.isFromShortcuts)
            {
              ProductListActivity.this.post(new Runnable()
              {
                public void run()
                {
                  if (localInteger1 == null)
                  {
                    ProductListActivity.this.searchCateText.setText(ProductListActivity.this.name);
                    return;
                  }
                  ProductListActivity.this.searchCateText.setText(ProductListActivity.this.name + "(" + localInteger1 + ")");
                }
              });
              return;
            }
            if ("searchCatelogy".equals(this.functionId))
            {
              ProductListActivity.this.post(new Runnable()
              {
                public void run()
                {
                  if (localInteger1 == null)
                  {
                    ProductListActivity.this.searchCateText.setText(ProductListActivity.this.name);
                    return;
                  }
                  TextView localTextView = ProductListActivity.this.searchCateText;
                  ProductListActivity localProductListActivity = ProductListActivity.this;
                  Object[] arrayOfObject = new Object[2];
                  arrayOfObject[0] = ProductListActivity.this.name;
                  arrayOfObject[1] = localInteger1;
                  localTextView.setText(localProductListActivity.getString(2131165853, arrayOfObject));
                }
              });
              return;
            }
          } while (!"newViewActivity".equals(this.functionId));
          if (!TextUtils.isEmpty(ProductListActivity.this.promotionDetail)) {
            ProductListActivity.this.post(new Runnable()
            {
              public void run()
              {
                ProductListActivity.this.filterButton.setVisibility(0);
              }
            });
          }
          if (!TextUtils.isEmpty(str1))
          {
            if (!"1".equals(str1)) {
              break label398;
            }
            ProductListActivity.this.post(new Runnable()
            {
              public void run()
              {
                if (ProductListActivity.this.takeCouponLayout == null) {
                  return;
                }
                ProductListActivity.this.takeCouponLayout.setVisibility(0);
                ProductListActivity.this.takeCouponLayout.setOnClickListener(new View.OnClickListener()
                {
                  public void onClick(View paramAnonymous3View)
                  {
                    Runnable local1 = new Runnable()
                    {
                      public void run()
                      {
                        CouponUtil.queryTakeCoupon(ProductListActivity.this, "coupon", this.val$roleIds, this.val$couponURL);
                      }
                    };
                    LoginUser.getInstance().executeLoginRunnable(ProductListActivity.this, local1, null, false);
                  }
                });
              }
            });
          }
          for (;;)
          {
            if (TextUtils.isEmpty(ProductListActivity.this.commercialTitle)) {
              ProductListActivity.this.commercialTitle = ProductListActivity.this.name;
            }
            ProductListActivity.this.post(new Runnable()
            {
              public void run()
              {
                if (localInteger2 == null)
                {
                  ProductListActivity.this.searchCateText.setText(ProductListActivity.this.commercialTitle);
                  return;
                }
                ProductListActivity.this.searchCateText.setText(ProductListActivity.this.commercialTitle + "(" + localInteger2 + ")");
              }
            });
            return;
            label398:
            ProductListActivity.this.post(new Runnable()
            {
              public void run()
              {
                ProductListActivity.this.takeCouponLayout.setVisibility(8);
              }
            });
          }
        }
        catch (JSONException localJSONException)
        {
          break label21;
        }
      }
      
      protected void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        int i;
        if ((ProductListActivity.this.mNextPageLoader != null) && (!ProductListActivity.this.isFromSwitch))
        {
          i = paramAnonymousInt1 + paramAnonymousInt2;
          if (ProductListActivity.this.productSize < 1) {
            ProductListActivity.this.countNumTv.setText(i);
          }
        }
        else
        {
          return;
        }
        if ((i - paramAnonymousInt3 == 0) && (!ProductListActivity.this.mNextPageLoader.isLoadedLastPage())) {
          i--;
        }
        ProductListActivity.this.countNumTv.setText(i + " / " + ProductListActivity.this.productSize);
      }
      
      protected void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt)
      {
        if (!ProductListActivity.this.needShowBottomTip) {
          return;
        }
        switch (paramAnonymousInt)
        {
        case 2: 
        default: 
          return;
        case 0: 
          ProductListActivity.this.fadeInSwitchButton();
          ProductListActivity.this.fadeOutCountNumTv();
          ProductListActivity.this.isFromSwitch = false;
          return;
        }
        ProductListActivity.this.fadeOutSwitchButton();
        ProductListActivity.this.fadeInCountNumTv();
      }
      
      public void setSelection(int paramAnonymousInt) {}
      
      protected void showEmpty(final boolean paramAnonymousBoolean)
      {
        ProductListActivity.this.post(new Runnable()
        {
          public void run()
          {
            if (ProductListActivity.this.loadingViewPb != null) {
              ProductListActivity.this.loadingViewPb.setVisibility(8);
            }
            if (paramAnonymousBoolean)
            {
              if (ProductListActivity.this.mNoDataView != null) {
                ProductListActivity.this.mNoDataView.setVisibility(0);
              }
              if (ProductListActivity.this.wareInfoList != null) {
                ProductListActivity.this.wareInfoList.setVisibility(8);
              }
              ProductListActivity.this.fadeOutSwitchButton();
              return;
            }
            if (ProductListActivity.this.mNoDataView != null) {
              ProductListActivity.this.mNoDataView.setVisibility(8);
            }
            if (ProductListActivity.this.wareInfoList != null) {
              ProductListActivity.this.wareInfoList.setVisibility(0);
            }
            ProductListActivity.this.fadeInSwitchButton();
          }
        });
      }
      
      protected void showError()
      {
        ProductListActivity.this.post(new Runnable()
        {
          public void run()
          {
            ProductListActivity.this.sortButtonPrice.setClickable(false);
            ProductListActivity.this.sortButtonSales.setClickable(false);
            ProductListActivity.this.sortButtonAddTime.setClickable(false);
            ProductListActivity.this.sortButtonComment.setClickable(false);
            ProductListActivity.this.searchCateText.setText(ProductListActivity.this.name + "(" + 0 + ")");
            ProductListActivity.this.loadingViewPb.setVisibility(8);
            ProductListActivity.this.filterButton.setVisibility(8);
            if (ProductListActivity.10.this.showItemList.size() <= 0)
            {
              ProductListActivity.this.fadeOutSwitchButton();
              if (ProductListActivity.this.wareInfoList != null) {
                ProductListActivity.this.wareInfoList.setVisibility(8);
              }
              ProductListActivity.this.errorView.setVisibility(0);
              ProductListActivity.this.errorLoadingBut.setOnClickListener(new View.OnClickListener()
              {
                public void onClick(View paramAnonymous3View)
                {
                  if (ProductListActivity.this.mNextPageLoader != null)
                  {
                    ProductListActivity.this.mNextPageLoader.showPageOne(true);
                    ProductListActivity.this.loadingViewPb.setVisibility(0);
                    ProductListActivity.this.errorView.setVisibility(8);
                    ProductListActivity.this.sortButtonPrice.setClickable(true);
                    ProductListActivity.this.sortButtonSales.setClickable(true);
                    ProductListActivity.this.sortButtonAddTime.setClickable(true);
                    ProductListActivity.this.sortButtonComment.setClickable(true);
                  }
                }
              });
            }
            do
            {
              return;
              ProductListActivity.this.fadeInSwitchButton();
            } while (ProductListActivity.this.wareInfoList == null);
            ProductListActivity.this.wareInfoList.setVisibility(0);
          }
        });
      }
      
      protected ArrayList<?> toList(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        if (localJSONObjectProxy == null)
        {
          localObject = null;
          return localObject;
        }
        if (ProductListActivity.this.isFromShortcuts) {}
        for (Object localObject = Product.toList(localJSONObjectProxy.getJSONArrayOrNull("wareInfoList"), 0);; localObject = Product.toList(localJSONObjectProxy.getJSONArrayOrNull("activityProducts"), 1))
        {
          if (ProductListActivity.this.errorView.getVisibility() == 0) {
            ProductListActivity.this.post(new Runnable()
            {
              public void run()
              {
                ProductListActivity.this.errorView.setVisibility(8);
              }
            });
          }
          if ((!ProductListActivity.this.isFirstToList) || (ProductListActivity.this.mNextPageLoader.getPageNum().intValue() != 1) || ((localObject != null) && (((ArrayList)localObject).size() > 1))) {
            break;
          }
          ProductListActivity.this.post(new Runnable()
          {
            public void run()
            {
              ProductListActivity.this.filterButton.setVisibility(8);
            }
          });
          return localObject;
          if (ProductListActivity.this.commercialId == null) {
            break label144;
          }
        }
        label144:
        localObject = Product.toList(localJSONObjectProxy.getJSONArrayOrNull("wareInfo"), 1);
        ProductListActivity localProductListActivity1 = ProductListActivity.this;
        if (localJSONObjectProxy.getBooleanOrNull("regionIsTrue") != null) {}
        for (boolean bool1 = localJSONObjectProxy.getBooleanOrNull("regionIsTrue").booleanValue();; bool1 = false)
        {
          localProductListActivity1.regionIsTrue = bool1;
          ProductListActivity localProductListActivity2 = ProductListActivity.this;
          Boolean localBoolean = localJSONObjectProxy.getBooleanOrNull("selfIsTrue");
          boolean bool2 = false;
          if (localBoolean != null) {
            bool2 = localJSONObjectProxy.getBooleanOrNull("selfIsTrue").booleanValue();
          }
          localProductListActivity2.selfIsTrue = bool2;
          break;
        }
      }
    };
    if (paramString.equals("crazyIndex")) {
      this.mNextPageLoader.setPaging(false);
    }
    if ("searchCatelogy".equals(paramString)) {
      this.mNextPageLoader.setHttpNotifyUser(false);
    }
    this.mNextPageLoader.setPageSize(10);
    this.mNextPageLoader.showPageOne(true);
    post(new Runnable()
    {
      public void run()
      {
        ProductListActivity.this.searchCateText.setText(ProductListActivity.this.name);
      }
    });
    this.sortButtonPrice.setOnClickListener(this.listener);
    this.sortButtonSales.setOnClickListener(this.listener);
    this.sortButtonAddTime.setOnClickListener(this.listener);
    this.sortButtonComment.setOnClickListener(this.listener);
    this.filterButton.setOnClickListener(this.listener);
    this.productListSearchFilterBut.setOnClickListener(this.listener);
    this.wareInfoList.setOnItemClickListener(this);
  }
  
  /* Error */
  private void handleSearchFilter()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 531	com/jingdong/app/mall/product/ProductListActivity:price	Ljava/lang/String;
    //   4: ifnull +94 -> 98
    //   7: aload_0
    //   8: getfield 531	com/jingdong/app/mall/product/ProductListActivity:price	Ljava/lang/String;
    //   11: ldc_w 448
    //   14: invokestatic 536	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   17: ifne +81 -> 98
    //   20: new 538	org/json/JSONObject
    //   23: dup
    //   24: invokespecial 539	org/json/JSONObject:<init>	()V
    //   27: astore 16
    //   29: iconst_2
    //   30: anewarray 485	java/lang/String
    //   33: pop
    //   34: aload_0
    //   35: getfield 531	com/jingdong/app/mall/product/ProductListActivity:price	Ljava/lang/String;
    //   38: ldc_w 541
    //   41: invokevirtual 545	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   44: ifeq +54 -> 98
    //   47: aload_0
    //   48: getfield 531	com/jingdong/app/mall/product/ProductListActivity:price	Ljava/lang/String;
    //   51: ldc_w 541
    //   54: invokevirtual 549	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   57: astore 18
    //   59: aload 16
    //   61: ldc_w 551
    //   64: aload 18
    //   66: iconst_0
    //   67: aaload
    //   68: invokevirtual 555	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   71: pop
    //   72: aload 16
    //   74: ldc_w 557
    //   77: aload 18
    //   79: iconst_1
    //   80: aaload
    //   81: invokevirtual 555	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   84: pop
    //   85: aload_0
    //   86: getfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   89: ldc_w 558
    //   92: aload 16
    //   94: invokevirtual 555	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   97: pop
    //   98: aload_0
    //   99: getfield 420	com/jingdong/app/mall/product/ProductListActivity:expressionKeyMap	Ljava/util/HashMap;
    //   102: ifnull +78 -> 180
    //   105: aload_0
    //   106: getfield 420	com/jingdong/app/mall/product/ProductListActivity:expressionKeyMap	Ljava/util/HashMap;
    //   109: invokevirtual 564	java/util/HashMap:size	()I
    //   112: ifeq +68 -> 180
    //   115: new 560	java/util/HashMap
    //   118: dup
    //   119: invokespecial 565	java/util/HashMap:<init>	()V
    //   122: astore 10
    //   124: aload_0
    //   125: getfield 420	com/jingdong/app/mall/product/ProductListActivity:expressionKeyMap	Ljava/util/HashMap;
    //   128: invokevirtual 569	java/util/HashMap:entrySet	()Ljava/util/Set;
    //   131: invokeinterface 575 1 0
    //   136: astore 11
    //   138: aload 11
    //   140: invokeinterface 581 1 0
    //   145: ifne +118 -> 263
    //   148: aload 10
    //   150: invokevirtual 564	java/util/HashMap:size	()I
    //   153: ifle +27 -> 180
    //   156: new 538	org/json/JSONObject
    //   159: dup
    //   160: aload 10
    //   162: invokespecial 584	org/json/JSONObject:<init>	(Ljava/util/Map;)V
    //   165: astore 14
    //   167: aload_0
    //   168: getfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   171: ldc_w 586
    //   174: aload 14
    //   176: invokevirtual 555	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   179: pop
    //   180: aload_0
    //   181: getfield 422	com/jingdong/app/mall/product/ProductListActivity:expandNameMap	Ljava/util/HashMap;
    //   184: ifnull +78 -> 262
    //   187: aload_0
    //   188: getfield 422	com/jingdong/app/mall/product/ProductListActivity:expandNameMap	Ljava/util/HashMap;
    //   191: invokevirtual 564	java/util/HashMap:size	()I
    //   194: ifeq +68 -> 262
    //   197: new 560	java/util/HashMap
    //   200: dup
    //   201: invokespecial 565	java/util/HashMap:<init>	()V
    //   204: astore 4
    //   206: aload_0
    //   207: getfield 422	com/jingdong/app/mall/product/ProductListActivity:expandNameMap	Ljava/util/HashMap;
    //   210: invokevirtual 569	java/util/HashMap:entrySet	()Ljava/util/Set;
    //   213: invokeinterface 575 1 0
    //   218: astore 5
    //   220: aload 5
    //   222: invokeinterface 581 1 0
    //   227: ifne +100 -> 327
    //   230: aload 4
    //   232: invokevirtual 564	java/util/HashMap:size	()I
    //   235: ifle +27 -> 262
    //   238: new 538	org/json/JSONObject
    //   241: dup
    //   242: aload 4
    //   244: invokespecial 584	org/json/JSONObject:<init>	(Ljava/util/Map;)V
    //   247: astore 8
    //   249: aload_0
    //   250: getfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   253: ldc_w 588
    //   256: aload 8
    //   258: invokevirtual 555	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   261: pop
    //   262: return
    //   263: aload 11
    //   265: invokeinterface 592 1 0
    //   270: checkcast 594	java/util/Map$Entry
    //   273: astore 12
    //   275: aload 12
    //   277: invokeinterface 597 1 0
    //   282: checkcast 599	java/lang/CharSequence
    //   285: ldc_w 448
    //   288: invokestatic 536	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   291: ifne -153 -> 138
    //   294: aload 10
    //   296: aload 12
    //   298: invokeinterface 602 1 0
    //   303: checkcast 485	java/lang/String
    //   306: aload 12
    //   308: invokeinterface 597 1 0
    //   313: checkcast 485	java/lang/String
    //   316: invokevirtual 605	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   319: pop
    //   320: goto -182 -> 138
    //   323: astore_2
    //   324: goto -144 -> 180
    //   327: aload 5
    //   329: invokeinterface 592 1 0
    //   334: checkcast 594	java/util/Map$Entry
    //   337: astore 6
    //   339: aload 6
    //   341: invokeinterface 597 1 0
    //   346: checkcast 599	java/lang/CharSequence
    //   349: ldc_w 448
    //   352: invokestatic 536	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   355: ifne -135 -> 220
    //   358: aload 4
    //   360: aload 6
    //   362: invokeinterface 602 1 0
    //   367: checkcast 485	java/lang/String
    //   370: aload 6
    //   372: invokeinterface 597 1 0
    //   377: checkcast 485	java/lang/String
    //   380: invokevirtual 605	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   383: pop
    //   384: goto -164 -> 220
    //   387: astore_3
    //   388: return
    //   389: astore_1
    //   390: goto -292 -> 98
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	393	0	this	ProductListActivity
    //   389	1	1	localException1	Exception
    //   323	1	2	localException2	Exception
    //   387	1	3	localException3	Exception
    //   204	155	4	localHashMap1	HashMap
    //   218	110	5	localIterator1	java.util.Iterator
    //   337	34	6	localEntry1	java.util.Map.Entry
    //   247	10	8	localJSONObject1	JSONObject
    //   122	173	10	localHashMap2	HashMap
    //   136	128	11	localIterator2	java.util.Iterator
    //   273	34	12	localEntry2	java.util.Map.Entry
    //   165	10	14	localJSONObject2	JSONObject
    //   27	66	16	localJSONObject3	JSONObject
    //   57	21	18	arrayOfString	String[]
    // Exception table:
    //   from	to	target	type
    //   98	138	323	java/lang/Exception
    //   138	180	323	java/lang/Exception
    //   263	320	323	java/lang/Exception
    //   180	220	387	java/lang/Exception
    //   220	262	387	java/lang/Exception
    //   327	384	387	java/lang/Exception
    //   0	98	389	java/lang/Exception
  }
  
  private void hidefloatLayout()
  {
    post(new Runnable()
    {
      public void run()
      {
        ProductListActivity.this.productListSearchFloatLayout.setVisibility(8);
        ProductListActivity.this.historyList.setAdapter(null);
        ProductListActivity.this.productListSearchFilterBut.requestFocus();
        ProductListActivity.this.hasShowSearchFloat = false;
        ProductListActivity.this.autoCompleteEt.setCursorVisible(false);
        ProductListActivity.this.CURR_STATE = 1;
        ProductListActivity.this.productListSearchFilterBut.setText(2131166018);
      }
    });
    InputMethodManager localInputMethodManager = (InputMethodManager)getSystemService("input_method");
    if (localInputMethodManager.isActive()) {
      localInputMethodManager.hideSoftInputFromWindow(this.autoCompleteEt.getWindowToken(), 0);
    }
    while (this.productListSearchFloatLayout.getVisibility() != 8) {
      return;
    }
    finish();
  }
  
  /* Error */
  private void initComponent(Intent paramIntent)
  {
    // Byte code:
    //   0: aload_0
    //   1: new 639	android/app/AlertDialog$Builder
    //   4: dup
    //   5: aload_0
    //   6: invokespecial 642	android/app/AlertDialog$Builder:<init>	(Landroid/content/Context;)V
    //   9: putfield 221	com/jingdong/app/mall/product/ProductListActivity:dialogBuilder	Landroid/app/AlertDialog$Builder;
    //   12: aload_0
    //   13: aload_0
    //   14: ldc_w 643
    //   17: invokevirtual 644	com/jingdong/app/mall/product/ProductListActivity:findViewById	(I)Landroid/view/View;
    //   20: checkcast 646	android/widget/TextView
    //   23: putfield 309	com/jingdong/app/mall/product/ProductListActivity:searchCateText	Landroid/widget/TextView;
    //   26: aload_0
    //   27: aload_0
    //   28: ldc_w 647
    //   31: invokevirtual 644	com/jingdong/app/mall/product/ProductListActivity:findViewById	(I)Landroid/view/View;
    //   34: checkcast 521	android/widget/Button
    //   37: putfield 315	com/jingdong/app/mall/product/ProductListActivity:filterButton	Landroid/widget/Button;
    //   40: aload_0
    //   41: aload_0
    //   42: ldc_w 648
    //   45: invokevirtual 644	com/jingdong/app/mall/product/ProductListActivity:findViewById	(I)Landroid/view/View;
    //   48: checkcast 381	android/widget/RelativeLayout
    //   51: putfield 650	com/jingdong/app/mall/product/ProductListActivity:sortButtonLayout	Landroid/widget/RelativeLayout;
    //   54: aload_0
    //   55: aload_0
    //   56: ldc_w 651
    //   59: invokevirtual 644	com/jingdong/app/mall/product/ProductListActivity:findViewById	(I)Landroid/view/View;
    //   62: checkcast 381	android/widget/RelativeLayout
    //   65: putfield 293	com/jingdong/app/mall/product/ProductListActivity:sortButtonPrice	Landroid/widget/RelativeLayout;
    //   68: aload_0
    //   69: getfield 293	com/jingdong/app/mall/product/ProductListActivity:sortButtonPrice	Landroid/widget/RelativeLayout;
    //   72: ldc_w 652
    //   75: invokevirtual 385	android/widget/RelativeLayout:findViewById	(I)Landroid/view/View;
    //   78: checkcast 646	android/widget/TextView
    //   81: ldc_w 653
    //   84: invokevirtual 655	android/widget/TextView:setText	(I)V
    //   87: aload_0
    //   88: aload_0
    //   89: ldc_w 656
    //   92: invokevirtual 644	com/jingdong/app/mall/product/ProductListActivity:findViewById	(I)Landroid/view/View;
    //   95: checkcast 381	android/widget/RelativeLayout
    //   98: putfield 296	com/jingdong/app/mall/product/ProductListActivity:sortButtonSales	Landroid/widget/RelativeLayout;
    //   101: aload_0
    //   102: getfield 296	com/jingdong/app/mall/product/ProductListActivity:sortButtonSales	Landroid/widget/RelativeLayout;
    //   105: ldc_w 657
    //   108: invokevirtual 385	android/widget/RelativeLayout:findViewById	(I)Landroid/view/View;
    //   111: checkcast 646	android/widget/TextView
    //   114: ldc_w 658
    //   117: invokevirtual 655	android/widget/TextView:setText	(I)V
    //   120: aload_0
    //   121: aload_0
    //   122: ldc_w 659
    //   125: invokevirtual 644	com/jingdong/app/mall/product/ProductListActivity:findViewById	(I)Landroid/view/View;
    //   128: checkcast 381	android/widget/RelativeLayout
    //   131: putfield 306	com/jingdong/app/mall/product/ProductListActivity:sortButtonComment	Landroid/widget/RelativeLayout;
    //   134: aload_0
    //   135: getfield 306	com/jingdong/app/mall/product/ProductListActivity:sortButtonComment	Landroid/widget/RelativeLayout;
    //   138: ldc_w 660
    //   141: invokevirtual 385	android/widget/RelativeLayout:findViewById	(I)Landroid/view/View;
    //   144: checkcast 646	android/widget/TextView
    //   147: ldc_w 661
    //   150: invokevirtual 655	android/widget/TextView:setText	(I)V
    //   153: aload_0
    //   154: aload_0
    //   155: ldc_w 662
    //   158: invokevirtual 644	com/jingdong/app/mall/product/ProductListActivity:findViewById	(I)Landroid/view/View;
    //   161: checkcast 381	android/widget/RelativeLayout
    //   164: putfield 299	com/jingdong/app/mall/product/ProductListActivity:sortButtonAddTime	Landroid/widget/RelativeLayout;
    //   167: aload_0
    //   168: aload_0
    //   169: ldc_w 663
    //   172: invokevirtual 644	com/jingdong/app/mall/product/ProductListActivity:findViewById	(I)Landroid/view/View;
    //   175: checkcast 521	android/widget/Button
    //   178: putfield 241	com/jingdong/app/mall/product/ProductListActivity:productListSearchFilterBut	Landroid/widget/Button;
    //   181: aload_0
    //   182: aload_0
    //   183: ldc_w 664
    //   186: invokevirtual 644	com/jingdong/app/mall/product/ProductListActivity:findViewById	(I)Landroid/view/View;
    //   189: putfield 233	com/jingdong/app/mall/product/ProductListActivity:productListSearchFloatLayout	Landroid/view/View;
    //   192: aload_0
    //   193: aload_0
    //   194: ldc_w 665
    //   197: invokevirtual 644	com/jingdong/app/mall/product/ProductListActivity:findViewById	(I)Landroid/view/View;
    //   200: putfield 667	com/jingdong/app/mall/product/ProductListActivity:productListSearchAutoSeachLayout	Landroid/view/View;
    //   203: aload_0
    //   204: aload_0
    //   205: ldc_w 668
    //   208: invokevirtual 644	com/jingdong/app/mall/product/ProductListActivity:findViewById	(I)Landroid/view/View;
    //   211: checkcast 381	android/widget/RelativeLayout
    //   214: putfield 353	com/jingdong/app/mall/product/ProductListActivity:takeCouponLayout	Landroid/widget/RelativeLayout;
    //   217: aload_0
    //   218: getfield 353	com/jingdong/app/mall/product/ProductListActivity:takeCouponLayout	Landroid/widget/RelativeLayout;
    //   221: invokestatic 672	com/jingdong/app/mall/utils/CommonUtil:fixBackBroundRepeat	(Landroid/view/View;)V
    //   224: aload_0
    //   225: aload_0
    //   226: ldc_w 673
    //   229: invokevirtual 644	com/jingdong/app/mall/product/ProductListActivity:findViewById	(I)Landroid/view/View;
    //   232: putfield 246	com/jingdong/app/mall/product/ProductListActivity:searchWithVoice	Landroid/view/View;
    //   235: aload_0
    //   236: getfield 246	com/jingdong/app/mall/product/ProductListActivity:searchWithVoice	Landroid/view/View;
    //   239: aload_0
    //   240: invokevirtual 674	android/view/View:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   243: aload_0
    //   244: aload_0
    //   245: ldc_w 675
    //   248: invokevirtual 644	com/jingdong/app/mall/product/ProductListActivity:findViewById	(I)Landroid/view/View;
    //   251: putfield 249	com/jingdong/app/mall/product/ProductListActivity:cleanSearchTextView	Landroid/view/View;
    //   254: aload_0
    //   255: getfield 249	com/jingdong/app/mall/product/ProductListActivity:cleanSearchTextView	Landroid/view/View;
    //   258: aload_0
    //   259: invokevirtual 674	android/view/View:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   262: aload_0
    //   263: aload_0
    //   264: ldc_w 676
    //   267: invokevirtual 644	com/jingdong/app/mall/product/ProductListActivity:findViewById	(I)Landroid/view/View;
    //   270: checkcast 646	android/widget/TextView
    //   273: putfield 189	com/jingdong/app/mall/product/ProductListActivity:countNumTv	Landroid/widget/TextView;
    //   276: aload_0
    //   277: aload_0
    //   278: ldc_w 677
    //   281: invokevirtual 644	com/jingdong/app/mall/product/ProductListActivity:findViewById	(I)Landroid/view/View;
    //   284: checkcast 679	android/widget/ListView
    //   287: putfield 255	com/jingdong/app/mall/product/ProductListActivity:historyList	Landroid/widget/ListView;
    //   290: aload_0
    //   291: aload_0
    //   292: ldc_w 680
    //   295: invokevirtual 644	com/jingdong/app/mall/product/ProductListActivity:findViewById	(I)Landroid/view/View;
    //   298: checkcast 404	android/widget/AutoCompleteTextView
    //   301: putfield 185	com/jingdong/app/mall/product/ProductListActivity:autoCompleteEt	Landroid/widget/AutoCompleteTextView;
    //   304: aload_0
    //   305: getfield 255	com/jingdong/app/mall/product/ProductListActivity:historyList	Landroid/widget/ListView;
    //   308: new 682	com/jingdong/app/mall/product/ProductListActivity$3
    //   311: dup
    //   312: aload_0
    //   313: invokespecial 683	com/jingdong/app/mall/product/ProductListActivity$3:<init>	(Lcom/jingdong/app/mall/product/ProductListActivity;)V
    //   316: invokevirtual 684	android/widget/ListView:setOnItemClickListener	(Landroid/widget/AdapterView$OnItemClickListener;)V
    //   319: aload_0
    //   320: getfield 233	com/jingdong/app/mall/product/ProductListActivity:productListSearchFloatLayout	Landroid/view/View;
    //   323: new 686	com/jingdong/app/mall/product/ProductListActivity$4
    //   326: dup
    //   327: aload_0
    //   328: invokespecial 687	com/jingdong/app/mall/product/ProductListActivity$4:<init>	(Lcom/jingdong/app/mall/product/ProductListActivity;)V
    //   331: invokevirtual 674	android/view/View:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   334: aload_0
    //   335: getfield 185	com/jingdong/app/mall/product/ProductListActivity:autoCompleteEt	Landroid/widget/AutoCompleteTextView;
    //   338: new 689	com/jingdong/app/mall/product/ProductListActivity$5
    //   341: dup
    //   342: aload_0
    //   343: invokespecial 690	com/jingdong/app/mall/product/ProductListActivity$5:<init>	(Lcom/jingdong/app/mall/product/ProductListActivity;)V
    //   346: invokevirtual 694	android/widget/AutoCompleteTextView:setOnKeyListener	(Landroid/view/View$OnKeyListener;)V
    //   349: aload_0
    //   350: getfield 185	com/jingdong/app/mall/product/ProductListActivity:autoCompleteEt	Landroid/widget/AutoCompleteTextView;
    //   353: iconst_0
    //   354: invokevirtual 697	android/widget/AutoCompleteTextView:setCursorVisible	(Z)V
    //   357: aload_0
    //   358: getfield 185	com/jingdong/app/mall/product/ProductListActivity:autoCompleteEt	Landroid/widget/AutoCompleteTextView;
    //   361: new 699	com/jingdong/app/mall/product/ProductListActivity$6
    //   364: dup
    //   365: aload_0
    //   366: invokespecial 700	com/jingdong/app/mall/product/ProductListActivity$6:<init>	(Lcom/jingdong/app/mall/product/ProductListActivity;)V
    //   369: invokevirtual 704	android/widget/AutoCompleteTextView:setOnTouchListener	(Landroid/view/View$OnTouchListener;)V
    //   372: aload_0
    //   373: getfield 185	com/jingdong/app/mall/product/ProductListActivity:autoCompleteEt	Landroid/widget/AutoCompleteTextView;
    //   376: new 706	com/jingdong/app/mall/product/ProductListActivity$7
    //   379: dup
    //   380: aload_0
    //   381: invokespecial 707	com/jingdong/app/mall/product/ProductListActivity$7:<init>	(Lcom/jingdong/app/mall/product/ProductListActivity;)V
    //   384: invokevirtual 711	android/widget/AutoCompleteTextView:addTextChangedListener	(Landroid/text/TextWatcher;)V
    //   387: aload_0
    //   388: getfield 185	com/jingdong/app/mall/product/ProductListActivity:autoCompleteEt	Landroid/widget/AutoCompleteTextView;
    //   391: new 713	com/jingdong/app/mall/product/ProductListActivity$8
    //   394: dup
    //   395: aload_0
    //   396: invokespecial 714	com/jingdong/app/mall/product/ProductListActivity$8:<init>	(Lcom/jingdong/app/mall/product/ProductListActivity;)V
    //   399: invokevirtual 718	android/widget/AutoCompleteTextView:setOnFocusChangeListener	(Landroid/view/View$OnFocusChangeListener;)V
    //   402: aload_0
    //   403: aload_0
    //   404: ldc_w 719
    //   407: invokevirtual 644	com/jingdong/app/mall/product/ProductListActivity:findViewById	(I)Landroid/view/View;
    //   410: putfield 318	com/jingdong/app/mall/product/ProductListActivity:errorView	Landroid/view/View;
    //   413: aload_0
    //   414: getfield 318	com/jingdong/app/mall/product/ProductListActivity:errorView	Landroid/view/View;
    //   417: new 721	com/jingdong/app/mall/product/ProductListActivity$9
    //   420: dup
    //   421: aload_0
    //   422: invokespecial 722	com/jingdong/app/mall/product/ProductListActivity$9:<init>	(Lcom/jingdong/app/mall/product/ProductListActivity;)V
    //   425: invokevirtual 674	android/view/View:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   428: aload_0
    //   429: aload_0
    //   430: getfield 318	com/jingdong/app/mall/product/ProductListActivity:errorView	Landroid/view/View;
    //   433: ldc_w 723
    //   436: invokevirtual 724	android/view/View:findViewById	(I)Landroid/view/View;
    //   439: checkcast 521	android/widget/Button
    //   442: putfield 321	com/jingdong/app/mall/product/ProductListActivity:errorLoadingBut	Landroid/widget/Button;
    //   445: aload_0
    //   446: aload_0
    //   447: ldc_w 725
    //   450: invokevirtual 644	com/jingdong/app/mall/product/ProductListActivity:findViewById	(I)Landroid/view/View;
    //   453: checkcast 727	android/widget/ProgressBar
    //   456: putfield 169	com/jingdong/app/mall/product/ProductListActivity:loadingViewPb	Landroid/widget/ProgressBar;
    //   459: aload_0
    //   460: new 729	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener
    //   463: dup
    //   464: aload_0
    //   465: aconst_null
    //   466: invokespecial 732	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:<init>	(Lcom/jingdong/app/mall/product/ProductListActivity;Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;)V
    //   469: putfield 515	com/jingdong/app/mall/product/ProductListActivity:listener	Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;
    //   472: aload_0
    //   473: new 538	org/json/JSONObject
    //   476: dup
    //   477: invokespecial 539	org/json/JSONObject:<init>	()V
    //   480: putfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   483: aload_0
    //   484: aload_1
    //   485: invokevirtual 738	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   488: ldc_w 740
    //   491: iconst_0
    //   492: invokevirtual 743	android/os/Bundle:getBoolean	(Ljava/lang/String;Z)Z
    //   495: putfield 324	com/jingdong/app/mall/product/ProductListActivity:isFromShortcuts	Z
    //   498: aload_0
    //   499: aload_1
    //   500: invokevirtual 738	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   503: ldc 22
    //   505: invokevirtual 747	android/os/Bundle:getSerializable	(Ljava/lang/String;)Ljava/io/Serializable;
    //   508: checkcast 749	com/jingdong/common/entity/Commercial
    //   511: putfield 751	com/jingdong/app/mall/product/ProductListActivity:commercial	Lcom/jingdong/common/entity/Commercial;
    //   514: aload_0
    //   515: aload_1
    //   516: invokevirtual 738	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   519: ldc_w 753
    //   522: invokevirtual 747	android/os/Bundle:getSerializable	(Ljava/lang/String;)Ljava/io/Serializable;
    //   525: checkcast 755	com/jingdong/common/entity/SourceEntity
    //   528: putfield 757	com/jingdong/app/mall/product/ProductListActivity:sourceEntity	Lcom/jingdong/common/entity/SourceEntity;
    //   531: aload_0
    //   532: getfield 757	com/jingdong/app/mall/product/ProductListActivity:sourceEntity	Lcom/jingdong/common/entity/SourceEntity;
    //   535: ifnonnull +17 -> 552
    //   538: aload_0
    //   539: aload_1
    //   540: ldc_w 753
    //   543: invokevirtual 760	android/content/Intent:getSerializableExtra	(Ljava/lang/String;)Ljava/io/Serializable;
    //   546: checkcast 755	com/jingdong/common/entity/SourceEntity
    //   549: putfield 757	com/jingdong/app/mall/product/ProductListActivity:sourceEntity	Lcom/jingdong/common/entity/SourceEntity;
    //   552: aload_0
    //   553: getfield 324	com/jingdong/app/mall/product/ProductListActivity:isFromShortcuts	Z
    //   556: ifeq +303 -> 859
    //   559: aload_0
    //   560: aload_1
    //   561: invokevirtual 738	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   564: ldc_w 761
    //   567: invokevirtual 764	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   570: putfield 339	com/jingdong/app/mall/product/ProductListActivity:functionId	Ljava/lang/String;
    //   573: aload_0
    //   574: aload_1
    //   575: invokevirtual 738	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   578: ldc_w 765
    //   581: invokevirtual 764	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   584: putfield 312	com/jingdong/app/mall/product/ProductListActivity:name	Ljava/lang/String;
    //   587: aload_1
    //   588: invokevirtual 738	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   591: ldc_w 767
    //   594: invokevirtual 764	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   597: astore 41
    //   599: aload 41
    //   601: invokestatic 770	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   604: ifne +16 -> 620
    //   607: aload_0
    //   608: new 538	org/json/JSONObject
    //   611: dup
    //   612: aload 41
    //   614: invokespecial 772	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   617: putfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   620: aload_0
    //   621: getfield 185	com/jingdong/app/mall/product/ProductListActivity:autoCompleteEt	Landroid/widget/AutoCompleteTextView;
    //   624: ifnull +38 -> 662
    //   627: aload_0
    //   628: getfield 206	com/jingdong/app/mall/product/ProductListActivity:keyWord	Ljava/lang/String;
    //   631: invokestatic 770	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   634: ifne +28 -> 662
    //   637: aload_0
    //   638: getfield 185	com/jingdong/app/mall/product/ProductListActivity:autoCompleteEt	Landroid/widget/AutoCompleteTextView;
    //   641: aload_0
    //   642: getfield 206	com/jingdong/app/mall/product/ProductListActivity:keyWord	Ljava/lang/String;
    //   645: invokevirtual 408	android/widget/AutoCompleteTextView:setText	(Ljava/lang/CharSequence;)V
    //   648: aload_0
    //   649: getfield 185	com/jingdong/app/mall/product/ProductListActivity:autoCompleteEt	Landroid/widget/AutoCompleteTextView;
    //   652: aload_0
    //   653: getfield 206	com/jingdong/app/mall/product/ProductListActivity:keyWord	Ljava/lang/String;
    //   656: invokevirtual 775	java/lang/String:length	()I
    //   659: invokevirtual 778	android/widget/AutoCompleteTextView:setSelection	(I)V
    //   662: aload_0
    //   663: getfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   666: ldc_w 780
    //   669: iconst_1
    //   670: invokevirtual 783	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   673: pop
    //   674: aload_0
    //   675: getfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   678: ldc_w 785
    //   681: iconst_1
    //   682: invokevirtual 783	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   685: pop
    //   686: aload_0
    //   687: getfield 328	com/jingdong/app/mall/product/ProductListActivity:commercialId	Ljava/lang/Long;
    //   690: ifnull +470 -> 1160
    //   693: aload_0
    //   694: ldc 22
    //   696: putfield 175	com/jingdong/app/mall/product/ProductListActivity:fromWhich	Ljava/lang/String;
    //   699: aload_0
    //   700: getfield 650	com/jingdong/app/mall/product/ProductListActivity:sortButtonLayout	Landroid/widget/RelativeLayout;
    //   703: bipush 8
    //   705: invokevirtual 786	android/widget/RelativeLayout:setVisibility	(I)V
    //   708: aload_0
    //   709: getfield 315	com/jingdong/app/mall/product/ProductListActivity:filterButton	Landroid/widget/Button;
    //   712: ldc_w 787
    //   715: invokevirtual 788	android/widget/Button:setText	(I)V
    //   718: aload_0
    //   719: ldc_w 790
    //   722: putfield 339	com/jingdong/app/mall/product/ProductListActivity:functionId	Ljava/lang/String;
    //   725: aload_0
    //   726: aload_0
    //   727: ldc_w 791
    //   730: invokevirtual 794	com/jingdong/app/mall/product/ProductListActivity:getString	(I)Ljava/lang/String;
    //   733: putfield 312	com/jingdong/app/mall/product/ProductListActivity:name	Ljava/lang/String;
    //   736: aload_0
    //   737: getfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   740: ldc_w 796
    //   743: aload_0
    //   744: getfield 328	com/jingdong/app/mall/product/ProductListActivity:commercialId	Ljava/lang/Long;
    //   747: invokevirtual 555	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   750: pop
    //   751: aload_0
    //   752: getfield 667	com/jingdong/app/mall/product/ProductListActivity:productListSearchAutoSeachLayout	Landroid/view/View;
    //   755: bipush 8
    //   757: invokevirtual 411	android/view/View:setVisibility	(I)V
    //   760: aload_0
    //   761: iconst_0
    //   762: putfield 193	com/jingdong/app/mall/product/ProductListActivity:needShowBottomTip	Z
    //   765: aload_0
    //   766: ldc_w 797
    //   769: aconst_null
    //   770: invokestatic 803	com/jingdong/common/utils/ImageUtil:inflate	(ILandroid/view/ViewGroup;)Landroid/view/View;
    //   773: checkcast 805	android/widget/LinearLayout
    //   776: putfield 478	com/jingdong/app/mall/product/ProductListActivity:loadingLayout	Landroid/widget/LinearLayout;
    //   779: aload_0
    //   780: getfield 478	com/jingdong/app/mall/product/ProductListActivity:loadingLayout	Landroid/widget/LinearLayout;
    //   783: bipush 17
    //   785: invokevirtual 808	android/widget/LinearLayout:setGravity	(I)V
    //   788: aload_1
    //   789: ldc 28
    //   791: iconst_m1
    //   792: invokevirtual 812	android/content/Intent:getIntExtra	(Ljava/lang/String;I)I
    //   795: istore 9
    //   797: iload 9
    //   799: iconst_m1
    //   800: if_icmpeq +1365 -> 2165
    //   803: aload_0
    //   804: iload 9
    //   806: putfield 161	com/jingdong/app/mall/product/ProductListActivity:sortKey	I
    //   809: aload_0
    //   810: getfield 161	com/jingdong/app/mall/product/ProductListActivity:sortKey	I
    //   813: iconst_5
    //   814: if_icmpne +1359 -> 2173
    //   817: ldc 25
    //   819: aload_0
    //   820: getfield 339	com/jingdong/app/mall/product/ProductListActivity:functionId	Ljava/lang/String;
    //   823: invokevirtual 489	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   826: ifeq +1347 -> 2173
    //   829: aload_0
    //   830: getfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   833: ldc_w 814
    //   836: invokevirtual 817	org/json/JSONObject:remove	(Ljava/lang/String;)Ljava/lang/Object;
    //   839: pop
    //   840: aload_0
    //   841: aload_0
    //   842: getfield 161	com/jingdong/app/mall/product/ProductListActivity:sortKey	I
    //   845: invokespecial 374	com/jingdong/app/mall/product/ProductListActivity:checkSortView	(I)V
    //   848: return
    //   849: astore 43
    //   851: aload 43
    //   853: invokevirtual 820	java/lang/Exception:printStackTrace	()V
    //   856: goto -304 -> 552
    //   859: aload_0
    //   860: getfield 751	com/jingdong/app/mall/product/ProductListActivity:commercial	Lcom/jingdong/common/entity/Commercial;
    //   863: ifnull +23 -> 886
    //   866: aload_0
    //   867: aload_0
    //   868: getfield 751	com/jingdong/app/mall/product/ProductListActivity:commercial	Lcom/jingdong/common/entity/Commercial;
    //   871: invokevirtual 823	com/jingdong/common/entity/Commercial:getId	()Ljava/lang/String;
    //   874: invokestatic 829	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   877: invokestatic 832	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   880: putfield 328	com/jingdong/app/mall/product/ProductListActivity:commercialId	Ljava/lang/Long;
    //   883: goto -263 -> 620
    //   886: aload_0
    //   887: aload_1
    //   888: invokevirtual 738	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   891: ldc_w 834
    //   894: invokevirtual 764	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   897: putfield 836	com/jingdong/app/mall/product/ProductListActivity:catelogyId	Ljava/lang/String;
    //   900: aload_0
    //   901: aload_1
    //   902: invokevirtual 738	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   905: ldc_w 837
    //   908: invokevirtual 764	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   911: putfield 206	com/jingdong/app/mall/product/ProductListActivity:keyWord	Ljava/lang/String;
    //   914: aload_0
    //   915: aload_1
    //   916: invokevirtual 738	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   919: ldc_w 839
    //   922: invokevirtual 764	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   925: putfield 841	com/jingdong/app/mall/product/ProductListActivity:searchWay	Ljava/lang/String;
    //   928: aload_0
    //   929: aload_1
    //   930: invokevirtual 738	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   933: ldc_w 765
    //   936: invokevirtual 764	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   939: putfield 312	com/jingdong/app/mall/product/ProductListActivity:name	Ljava/lang/String;
    //   942: aload_0
    //   943: aload_1
    //   944: invokevirtual 738	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   947: ldc_w 842
    //   950: invokevirtual 764	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   953: putfield 844	com/jingdong/app/mall/product/ProductListActivity:filterName	Ljava/lang/String;
    //   956: aload_0
    //   957: aload_1
    //   958: invokevirtual 738	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   961: ldc_w 845
    //   964: invokevirtual 764	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   967: putfield 428	com/jingdong/app/mall/product/ProductListActivity:expandSortId	Ljava/lang/String;
    //   970: aload_0
    //   971: aload_1
    //   972: invokevirtual 738	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   975: ldc_w 846
    //   978: invokevirtual 764	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   981: putfield 848	com/jingdong/app/mall/product/ProductListActivity:levelFirst	Ljava/lang/String;
    //   984: aload_0
    //   985: aload_1
    //   986: invokevirtual 738	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   989: ldc_w 849
    //   992: invokevirtual 764	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   995: putfield 851	com/jingdong/app/mall/product/ProductListActivity:levelSecond	Ljava/lang/String;
    //   998: aload_0
    //   999: aload_1
    //   1000: invokevirtual 738	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   1003: ldc_w 852
    //   1006: invokevirtual 764	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   1009: putfield 854	com/jingdong/app/mall/product/ProductListActivity:field	Ljava/lang/String;
    //   1012: aload_0
    //   1013: aload_1
    //   1014: invokevirtual 738	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   1017: ldc_w 855
    //   1020: invokevirtual 764	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   1023: putfield 416	com/jingdong/app/mall/product/ProductListActivity:searchOldId	Ljava/lang/String;
    //   1026: aload_0
    //   1027: aload_1
    //   1028: invokevirtual 738	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   1031: ldc 16
    //   1033: invokevirtual 858	android/os/Bundle:getBoolean	(Ljava/lang/String;)Z
    //   1036: putfield 177	com/jingdong/app/mall/product/ProductListActivity:isFirstToList	Z
    //   1039: aload_0
    //   1040: aload_1
    //   1041: ldc_w 860
    //   1044: invokevirtual 863	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   1047: putfield 865	com/jingdong/app/mall/product/ProductListActivity:catelogyStock	Ljava/lang/String;
    //   1050: aload_0
    //   1051: getfield 836	com/jingdong/app/mall/product/ProductListActivity:catelogyId	Ljava/lang/String;
    //   1054: ifnull -434 -> 620
    //   1057: aload_0
    //   1058: getfield 836	com/jingdong/app/mall/product/ProductListActivity:catelogyId	Ljava/lang/String;
    //   1061: ldc_w 541
    //   1064: invokevirtual 545	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   1067: ifeq -447 -> 620
    //   1070: aload_0
    //   1071: getfield 836	com/jingdong/app/mall/product/ProductListActivity:catelogyId	Ljava/lang/String;
    //   1074: ldc_w 541
    //   1077: invokevirtual 549	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   1080: astore 40
    //   1082: aload 40
    //   1084: arraylength
    //   1085: tableswitch	default:+1164 -> 2249, 1:+27->1112, 2:+46->1131, 3:+38->1123
    //   1113: aload 40
    //   1115: iconst_0
    //   1116: aaload
    //   1117: putfield 848	com/jingdong/app/mall/product/ProductListActivity:levelFirst	Ljava/lang/String;
    //   1120: goto -500 -> 620
    //   1123: aload_0
    //   1124: aload 40
    //   1126: iconst_2
    //   1127: aaload
    //   1128: putfield 836	com/jingdong/app/mall/product/ProductListActivity:catelogyId	Ljava/lang/String;
    //   1131: aload_0
    //   1132: aload 40
    //   1134: iconst_1
    //   1135: aaload
    //   1136: putfield 851	com/jingdong/app/mall/product/ProductListActivity:levelSecond	Ljava/lang/String;
    //   1139: goto -27 -> 1112
    //   1142: astore_3
    //   1143: aload_3
    //   1144: invokevirtual 866	org/json/JSONException:printStackTrace	()V
    //   1147: goto -461 -> 686
    //   1150: astore 36
    //   1152: aload 36
    //   1154: invokevirtual 866	org/json/JSONException:printStackTrace	()V
    //   1157: goto -406 -> 751
    //   1160: aload_0
    //   1161: getfield 324	com/jingdong/app/mall/product/ProductListActivity:isFromShortcuts	Z
    //   1164: ifeq +36 -> 1200
    //   1167: aload_0
    //   1168: getfield 339	com/jingdong/app/mall/product/ProductListActivity:functionId	Ljava/lang/String;
    //   1171: ifnull +29 -> 1200
    //   1174: aload_0
    //   1175: getfield 650	com/jingdong/app/mall/product/ProductListActivity:sortButtonLayout	Landroid/widget/RelativeLayout;
    //   1178: bipush 8
    //   1180: invokevirtual 786	android/widget/RelativeLayout:setVisibility	(I)V
    //   1183: aload_0
    //   1184: getfield 667	com/jingdong/app/mall/product/ProductListActivity:productListSearchAutoSeachLayout	Landroid/view/View;
    //   1187: bipush 8
    //   1189: invokevirtual 411	android/view/View:setVisibility	(I)V
    //   1192: aload_0
    //   1193: iconst_0
    //   1194: putfield 193	com/jingdong/app/mall/product/ProductListActivity:needShowBottomTip	Z
    //   1197: goto -432 -> 765
    //   1200: aload_0
    //   1201: getfield 836	com/jingdong/app/mall/product/ProductListActivity:catelogyId	Ljava/lang/String;
    //   1204: ifnull +321 -> 1525
    //   1207: aload_0
    //   1208: getfield 312	com/jingdong/app/mall/product/ProductListActivity:name	Ljava/lang/String;
    //   1211: ifnull +314 -> 1525
    //   1214: aload_0
    //   1215: getfield 206	com/jingdong/app/mall/product/ProductListActivity:keyWord	Ljava/lang/String;
    //   1218: ifnonnull +307 -> 1525
    //   1221: aload_0
    //   1222: ldc 19
    //   1224: putfield 175	com/jingdong/app/mall/product/ProductListActivity:fromWhich	Ljava/lang/String;
    //   1227: aload_0
    //   1228: ldc_w 496
    //   1231: putfield 339	com/jingdong/app/mall/product/ProductListActivity:functionId	Ljava/lang/String;
    //   1234: aload_0
    //   1235: getfield 667	com/jingdong/app/mall/product/ProductListActivity:productListSearchAutoSeachLayout	Landroid/view/View;
    //   1238: iconst_0
    //   1239: invokevirtual 411	android/view/View:setVisibility	(I)V
    //   1242: aload_0
    //   1243: iconst_1
    //   1244: putfield 193	com/jingdong/app/mall/product/ProductListActivity:needShowBottomTip	Z
    //   1247: aload_0
    //   1248: getfield 650	com/jingdong/app/mall/product/ProductListActivity:sortButtonLayout	Landroid/widget/RelativeLayout;
    //   1251: iconst_0
    //   1252: invokevirtual 786	android/widget/RelativeLayout:setVisibility	(I)V
    //   1255: aload_0
    //   1256: iconst_1
    //   1257: putfield 161	com/jingdong/app/mall/product/ProductListActivity:sortKey	I
    //   1260: aload_0
    //   1261: iconst_1
    //   1262: invokespecial 374	com/jingdong/app/mall/product/ProductListActivity:checkSortView	(I)V
    //   1265: aload_0
    //   1266: getfield 315	com/jingdong/app/mall/product/ProductListActivity:filterButton	Landroid/widget/Button;
    //   1269: iconst_0
    //   1270: invokevirtual 867	android/widget/Button:setVisibility	(I)V
    //   1273: aload_0
    //   1274: getfield 185	com/jingdong/app/mall/product/ProductListActivity:autoCompleteEt	Landroid/widget/AutoCompleteTextView;
    //   1277: ifnull +13 -> 1290
    //   1280: aload_0
    //   1281: getfield 185	com/jingdong/app/mall/product/ProductListActivity:autoCompleteEt	Landroid/widget/AutoCompleteTextView;
    //   1284: ldc_w 868
    //   1287: invokevirtual 871	android/widget/AutoCompleteTextView:setHint	(I)V
    //   1290: aload_0
    //   1291: getfield 315	com/jingdong/app/mall/product/ProductListActivity:filterButton	Landroid/widget/Button;
    //   1294: ldc_w 872
    //   1297: invokevirtual 788	android/widget/Button:setText	(I)V
    //   1300: aload_0
    //   1301: getfield 299	com/jingdong/app/mall/product/ProductListActivity:sortButtonAddTime	Landroid/widget/RelativeLayout;
    //   1304: ldc_w 873
    //   1307: invokevirtual 385	android/widget/RelativeLayout:findViewById	(I)Landroid/view/View;
    //   1310: checkcast 646	android/widget/TextView
    //   1313: ldc_w 874
    //   1316: invokevirtual 655	android/widget/TextView:setText	(I)V
    //   1319: aload_0
    //   1320: getfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   1323: ldc_w 875
    //   1326: aload_0
    //   1327: getfield 836	com/jingdong/app/mall/product/ProductListActivity:catelogyId	Ljava/lang/String;
    //   1330: invokevirtual 555	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1333: pop
    //   1334: aload_0
    //   1335: getfield 865	com/jingdong/app/mall/product/ProductListActivity:catelogyStock	Ljava/lang/String;
    //   1338: invokestatic 770	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1341: ifne +17 -> 1358
    //   1344: aload_0
    //   1345: getfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   1348: ldc_w 860
    //   1351: ldc_w 877
    //   1354: invokevirtual 555	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1357: pop
    //   1358: aload_0
    //   1359: getfield 428	com/jingdong/app/mall/product/ProductListActivity:expandSortId	Ljava/lang/String;
    //   1362: ifnull +135 -> 1497
    //   1365: aload_0
    //   1366: getfield 428	com/jingdong/app/mall/product/ProductListActivity:expandSortId	Ljava/lang/String;
    //   1369: ldc_w 541
    //   1372: invokevirtual 549	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   1375: astore 30
    //   1377: new 879	java/lang/StringBuilder
    //   1380: dup
    //   1381: aload 30
    //   1383: iconst_0
    //   1384: aaload
    //   1385: invokestatic 882	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1388: invokespecial 883	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1391: ldc_w 541
    //   1394: invokevirtual 887	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1397: aload 30
    //   1399: iconst_1
    //   1400: aaload
    //   1401: invokevirtual 887	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1404: ldc_w 541
    //   1407: invokevirtual 887	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1410: invokevirtual 890	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1413: astore 31
    //   1415: aload_0
    //   1416: aload 30
    //   1418: iconst_1
    //   1419: aaload
    //   1420: putfield 349	com/jingdong/app/mall/product/ProductListActivity:region	Ljava/lang/String;
    //   1423: aload_0
    //   1424: aload 30
    //   1426: iconst_0
    //   1427: aaload
    //   1428: putfield 892	com/jingdong/app/mall/product/ProductListActivity:distribution	Ljava/lang/String;
    //   1431: aload_0
    //   1432: getfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   1435: ldc_w 894
    //   1438: aload 30
    //   1440: iconst_0
    //   1441: aaload
    //   1442: invokevirtual 555	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1445: pop
    //   1446: aload_0
    //   1447: getfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   1450: ldc_w 446
    //   1453: aload 30
    //   1455: iconst_1
    //   1456: aaload
    //   1457: invokevirtual 555	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1460: pop
    //   1461: aload_0
    //   1462: getfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   1465: ldc_w 845
    //   1468: aload_0
    //   1469: getfield 428	com/jingdong/app/mall/product/ProductListActivity:expandSortId	Ljava/lang/String;
    //   1472: aload 31
    //   1474: invokevirtual 775	java/lang/String:length	()I
    //   1477: invokevirtual 897	java/lang/String:substring	(I)Ljava/lang/String;
    //   1480: invokevirtual 555	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1483: pop
    //   1484: goto -719 -> 765
    //   1487: astore 27
    //   1489: aload 27
    //   1491: invokevirtual 866	org/json/JSONException:printStackTrace	()V
    //   1494: goto -729 -> 765
    //   1497: aload_0
    //   1498: invokespecial 899	com/jingdong/app/mall/product/ProductListActivity:getRememberStateSharedPreferences	()Ljava/lang/Boolean;
    //   1501: invokevirtual 902	java/lang/Boolean:booleanValue	()Z
    //   1504: ifeq -739 -> 765
    //   1507: aload_0
    //   1508: getfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   1511: ldc_w 446
    //   1514: aload_0
    //   1515: invokespecial 904	com/jingdong/app/mall/product/ProductListActivity:getRegionSharedPreferences	()Ljava/lang/String;
    //   1518: invokevirtual 555	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1521: pop
    //   1522: goto -757 -> 765
    //   1525: aload_0
    //   1526: ldc 25
    //   1528: putfield 175	com/jingdong/app/mall/product/ProductListActivity:fromWhich	Ljava/lang/String;
    //   1531: aload_0
    //   1532: ldc 25
    //   1534: putfield 339	com/jingdong/app/mall/product/ProductListActivity:functionId	Ljava/lang/String;
    //   1537: aload_0
    //   1538: getfield 650	com/jingdong/app/mall/product/ProductListActivity:sortButtonLayout	Landroid/widget/RelativeLayout;
    //   1541: iconst_0
    //   1542: invokevirtual 786	android/widget/RelativeLayout:setVisibility	(I)V
    //   1545: aload_0
    //   1546: iconst_5
    //   1547: putfield 161	com/jingdong/app/mall/product/ProductListActivity:sortKey	I
    //   1550: aload_0
    //   1551: iconst_5
    //   1552: invokespecial 374	com/jingdong/app/mall/product/ProductListActivity:checkSortView	(I)V
    //   1555: aload_0
    //   1556: getfield 299	com/jingdong/app/mall/product/ProductListActivity:sortButtonAddTime	Landroid/widget/RelativeLayout;
    //   1559: ldc_w 873
    //   1562: invokevirtual 385	android/widget/RelativeLayout:findViewById	(I)Landroid/view/View;
    //   1565: checkcast 646	android/widget/TextView
    //   1568: ldc_w 905
    //   1571: invokevirtual 655	android/widget/TextView:setText	(I)V
    //   1574: aload_0
    //   1575: getfield 667	com/jingdong/app/mall/product/ProductListActivity:productListSearchAutoSeachLayout	Landroid/view/View;
    //   1578: iconst_0
    //   1579: invokevirtual 411	android/view/View:setVisibility	(I)V
    //   1582: aload_0
    //   1583: iconst_1
    //   1584: putfield 193	com/jingdong/app/mall/product/ProductListActivity:needShowBottomTip	Z
    //   1587: aload_0
    //   1588: getfield 206	com/jingdong/app/mall/product/ProductListActivity:keyWord	Ljava/lang/String;
    //   1591: ifnull +136 -> 1727
    //   1594: aload_0
    //   1595: getfield 416	com/jingdong/app/mall/product/ProductListActivity:searchOldId	Ljava/lang/String;
    //   1598: ifnonnull +129 -> 1727
    //   1601: aload_0
    //   1602: getfield 315	com/jingdong/app/mall/product/ProductListActivity:filterButton	Landroid/widget/Button;
    //   1605: iconst_0
    //   1606: invokevirtual 867	android/widget/Button:setVisibility	(I)V
    //   1609: aload_0
    //   1610: getfield 315	com/jingdong/app/mall/product/ProductListActivity:filterButton	Landroid/widget/Button;
    //   1613: ldc_w 872
    //   1616: invokevirtual 788	android/widget/Button:setText	(I)V
    //   1619: iconst_1
    //   1620: anewarray 907	java/lang/Object
    //   1623: astore 22
    //   1625: aload 22
    //   1627: iconst_0
    //   1628: aload_0
    //   1629: getfield 206	com/jingdong/app/mall/product/ProductListActivity:keyWord	Ljava/lang/String;
    //   1632: aastore
    //   1633: aload_0
    //   1634: aload_0
    //   1635: ldc_w 908
    //   1638: aload 22
    //   1640: invokevirtual 911	com/jingdong/app/mall/product/ProductListActivity:getString	(I[Ljava/lang/Object;)Ljava/lang/String;
    //   1643: putfield 312	com/jingdong/app/mall/product/ProductListActivity:name	Ljava/lang/String;
    //   1646: aload_0
    //   1647: getfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   1650: ldc_w 913
    //   1653: aload_0
    //   1654: getfield 206	com/jingdong/app/mall/product/ProductListActivity:keyWord	Ljava/lang/String;
    //   1657: invokevirtual 555	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1660: pop
    //   1661: aload_0
    //   1662: getfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   1665: ldc_w 839
    //   1668: aload_0
    //   1669: getfield 841	com/jingdong/app/mall/product/ProductListActivity:searchWay	Ljava/lang/String;
    //   1672: invokevirtual 555	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1675: pop
    //   1676: aload_0
    //   1677: invokespecial 899	com/jingdong/app/mall/product/ProductListActivity:getRememberStateSharedPreferences	()Ljava/lang/Boolean;
    //   1680: invokevirtual 902	java/lang/Boolean:booleanValue	()Z
    //   1683: ifeq -918 -> 765
    //   1686: ldc_w 448
    //   1689: aload_0
    //   1690: invokespecial 904	com/jingdong/app/mall/product/ProductListActivity:getRegionSharedPreferences	()Ljava/lang/String;
    //   1693: invokevirtual 489	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1696: ifne -931 -> 765
    //   1699: aload_0
    //   1700: getfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   1703: ldc_w 446
    //   1706: aload_0
    //   1707: invokespecial 904	com/jingdong/app/mall/product/ProductListActivity:getRegionSharedPreferences	()Ljava/lang/String;
    //   1710: invokevirtual 555	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1713: pop
    //   1714: goto -949 -> 765
    //   1717: astore 23
    //   1719: aload 23
    //   1721: invokevirtual 866	org/json/JSONException:printStackTrace	()V
    //   1724: goto -959 -> 765
    //   1727: aload_0
    //   1728: getfield 416	com/jingdong/app/mall/product/ProductListActivity:searchOldId	Ljava/lang/String;
    //   1731: ldc_w 541
    //   1734: invokevirtual 549	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   1737: astore 4
    //   1739: aload_0
    //   1740: aload 4
    //   1742: iconst_0
    //   1743: aaload
    //   1744: putfield 836	com/jingdong/app/mall/product/ProductListActivity:catelogyId	Ljava/lang/String;
    //   1747: aload_0
    //   1748: aload 4
    //   1750: iconst_1
    //   1751: aaload
    //   1752: putfield 349	com/jingdong/app/mall/product/ProductListActivity:region	Ljava/lang/String;
    //   1755: aload_0
    //   1756: aload 4
    //   1758: iconst_2
    //   1759: aaload
    //   1760: putfield 892	com/jingdong/app/mall/product/ProductListActivity:distribution	Ljava/lang/String;
    //   1763: aload_0
    //   1764: aload_1
    //   1765: invokevirtual 738	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   1768: ldc_w 558
    //   1771: invokevirtual 764	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   1774: putfield 531	com/jingdong/app/mall/product/ProductListActivity:price	Ljava/lang/String;
    //   1777: aload_0
    //   1778: aload_1
    //   1779: invokevirtual 738	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   1782: ldc_w 914
    //   1785: invokevirtual 918	android/os/Bundle:getInt	(Ljava/lang/String;)I
    //   1788: putfield 418	com/jingdong/app/mall/product/ProductListActivity:priceId	I
    //   1791: aload_0
    //   1792: aload_1
    //   1793: ldc_w 919
    //   1796: invokevirtual 760	android/content/Intent:getSerializableExtra	(Ljava/lang/String;)Ljava/io/Serializable;
    //   1799: checkcast 560	java/util/HashMap
    //   1802: putfield 420	com/jingdong/app/mall/product/ProductListActivity:expressionKeyMap	Ljava/util/HashMap;
    //   1805: aload_0
    //   1806: aload_1
    //   1807: ldc_w 920
    //   1810: invokevirtual 760	android/content/Intent:getSerializableExtra	(Ljava/lang/String;)Ljava/io/Serializable;
    //   1813: checkcast 560	java/util/HashMap
    //   1816: putfield 422	com/jingdong/app/mall/product/ProductListActivity:expandNameMap	Ljava/util/HashMap;
    //   1819: aload_0
    //   1820: aload_1
    //   1821: ldc_w 921
    //   1824: invokevirtual 760	android/content/Intent:getSerializableExtra	(Ljava/lang/String;)Ljava/io/Serializable;
    //   1827: checkcast 560	java/util/HashMap
    //   1830: putfield 424	com/jingdong/app/mall/product/ProductListActivity:expressionKeyIdMap	Ljava/util/HashMap;
    //   1833: aload_0
    //   1834: aload_1
    //   1835: ldc_w 922
    //   1838: invokevirtual 760	android/content/Intent:getSerializableExtra	(Ljava/lang/String;)Ljava/io/Serializable;
    //   1841: checkcast 560	java/util/HashMap
    //   1844: putfield 426	com/jingdong/app/mall/product/ProductListActivity:expandNameIdMap	Ljava/util/HashMap;
    //   1847: aload_0
    //   1848: aload_1
    //   1849: ldc_w 924
    //   1852: invokevirtual 760	android/content/Intent:getSerializableExtra	(Ljava/lang/String;)Ljava/io/Serializable;
    //   1855: checkcast 926	com/jingdong/common/entity/SearchFilter
    //   1858: putfield 414	com/jingdong/app/mall/product/ProductListActivity:mCategorySearchFilter	Lcom/jingdong/common/entity/SearchFilter;
    //   1861: aload_1
    //   1862: ldc_w 860
    //   1865: invokevirtual 863	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   1868: astore 5
    //   1870: aload_0
    //   1871: getfield 315	com/jingdong/app/mall/product/ProductListActivity:filterButton	Landroid/widget/Button;
    //   1874: iconst_0
    //   1875: invokevirtual 867	android/widget/Button:setVisibility	(I)V
    //   1878: aload_0
    //   1879: getfield 315	com/jingdong/app/mall/product/ProductListActivity:filterButton	Landroid/widget/Button;
    //   1882: ldc_w 872
    //   1885: invokevirtual 788	android/widget/Button:setText	(I)V
    //   1888: aload_0
    //   1889: invokespecial 928	com/jingdong/app/mall/product/ProductListActivity:handleSearchFilter	()V
    //   1892: aload_0
    //   1893: getfield 844	com/jingdong/app/mall/product/ProductListActivity:filterName	Ljava/lang/String;
    //   1896: invokevirtual 775	java/lang/String:length	()I
    //   1899: istore 6
    //   1901: aload_0
    //   1902: getfield 206	com/jingdong/app/mall/product/ProductListActivity:keyWord	Ljava/lang/String;
    //   1905: invokevirtual 775	java/lang/String:length	()I
    //   1908: bipush 11
    //   1910: iload 6
    //   1912: isub
    //   1913: if_icmple +203 -> 2116
    //   1916: aload_0
    //   1917: aload_0
    //   1918: getfield 206	com/jingdong/app/mall/product/ProductListActivity:keyWord	Ljava/lang/String;
    //   1921: putfield 312	com/jingdong/app/mall/product/ProductListActivity:name	Ljava/lang/String;
    //   1924: iload 6
    //   1926: ifgt +201 -> 2127
    //   1929: iconst_1
    //   1930: anewarray 907	java/lang/Object
    //   1933: astore 21
    //   1935: aload 21
    //   1937: iconst_0
    //   1938: aload_0
    //   1939: getfield 206	com/jingdong/app/mall/product/ProductListActivity:keyWord	Ljava/lang/String;
    //   1942: aastore
    //   1943: aload_0
    //   1944: aload_0
    //   1945: ldc_w 908
    //   1948: aload 21
    //   1950: invokevirtual 911	com/jingdong/app/mall/product/ProductListActivity:getString	(I[Ljava/lang/Object;)Ljava/lang/String;
    //   1953: putfield 312	com/jingdong/app/mall/product/ProductListActivity:name	Ljava/lang/String;
    //   1956: aload_0
    //   1957: getfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   1960: ldc_w 913
    //   1963: aload_0
    //   1964: getfield 206	com/jingdong/app/mall/product/ProductListActivity:keyWord	Ljava/lang/String;
    //   1967: invokevirtual 555	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1970: pop
    //   1971: aload_0
    //   1972: getfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   1975: ldc_w 839
    //   1978: ldc_w 930
    //   1981: invokevirtual 555	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   1984: pop
    //   1985: ldc_w 448
    //   1988: aload_0
    //   1989: getfield 836	com/jingdong/app/mall/product/ProductListActivity:catelogyId	Ljava/lang/String;
    //   1992: invokevirtual 489	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1995: ifne +18 -> 2013
    //   1998: aload_0
    //   1999: getfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   2002: ldc_w 834
    //   2005: aload_0
    //   2006: getfield 836	com/jingdong/app/mall/product/ProductListActivity:catelogyId	Ljava/lang/String;
    //   2009: invokevirtual 555	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   2012: pop
    //   2013: aload_0
    //   2014: getfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   2017: ldc_w 446
    //   2020: aload_0
    //   2021: getfield 349	com/jingdong/app/mall/product/ProductListActivity:region	Ljava/lang/String;
    //   2024: invokevirtual 555	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   2027: pop
    //   2028: aload_0
    //   2029: getfield 854	com/jingdong/app/mall/product/ProductListActivity:field	Ljava/lang/String;
    //   2032: invokestatic 770	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   2035: ifne +18 -> 2053
    //   2038: aload_0
    //   2039: getfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   2042: ldc_w 932
    //   2045: aload_0
    //   2046: getfield 854	com/jingdong/app/mall/product/ProductListActivity:field	Ljava/lang/String;
    //   2049: invokevirtual 555	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   2052: pop
    //   2053: ldc_w 448
    //   2056: aload_0
    //   2057: getfield 892	com/jingdong/app/mall/product/ProductListActivity:distribution	Ljava/lang/String;
    //   2060: invokevirtual 489	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2063: ifne +18 -> 2081
    //   2066: aload_0
    //   2067: getfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   2070: ldc_w 894
    //   2073: aload_0
    //   2074: getfield 892	com/jingdong/app/mall/product/ProductListActivity:distribution	Ljava/lang/String;
    //   2077: invokevirtual 555	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   2080: pop
    //   2081: aload 5
    //   2083: invokestatic 770	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   2086: ifne -1321 -> 765
    //   2089: aload_0
    //   2090: getfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   2093: ldc_w 860
    //   2096: ldc_w 877
    //   2099: invokevirtual 555	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   2102: pop
    //   2103: goto -1338 -> 765
    //   2106: astore 8
    //   2108: aload 8
    //   2110: invokevirtual 866	org/json/JSONException:printStackTrace	()V
    //   2113: goto -1348 -> 765
    //   2116: aload_0
    //   2117: aload_0
    //   2118: getfield 206	com/jingdong/app/mall/product/ProductListActivity:keyWord	Ljava/lang/String;
    //   2121: putfield 312	com/jingdong/app/mall/product/ProductListActivity:name	Ljava/lang/String;
    //   2124: goto -200 -> 1924
    //   2127: iconst_2
    //   2128: anewarray 907	java/lang/Object
    //   2131: astore 7
    //   2133: aload 7
    //   2135: iconst_0
    //   2136: aload_0
    //   2137: getfield 312	com/jingdong/app/mall/product/ProductListActivity:name	Ljava/lang/String;
    //   2140: aastore
    //   2141: aload 7
    //   2143: iconst_1
    //   2144: aload_0
    //   2145: getfield 844	com/jingdong/app/mall/product/ProductListActivity:filterName	Ljava/lang/String;
    //   2148: aastore
    //   2149: aload_0
    //   2150: aload_0
    //   2151: ldc_w 933
    //   2154: aload 7
    //   2156: invokevirtual 911	com/jingdong/app/mall/product/ProductListActivity:getString	(I[Ljava/lang/Object;)Ljava/lang/String;
    //   2159: putfield 312	com/jingdong/app/mall/product/ProductListActivity:name	Ljava/lang/String;
    //   2162: goto -206 -> 1956
    //   2165: aload_0
    //   2166: iconst_1
    //   2167: putfield 161	com/jingdong/app/mall/product/ProductListActivity:sortKey	I
    //   2170: goto -1361 -> 809
    //   2173: aload_0
    //   2174: getfield 161	com/jingdong/app/mall/product/ProductListActivity:sortKey	I
    //   2177: bipush 6
    //   2179: if_icmpne +34 -> 2213
    //   2182: ldc_w 496
    //   2185: aload_0
    //   2186: getfield 339	com/jingdong/app/mall/product/ProductListActivity:functionId	Ljava/lang/String;
    //   2189: invokevirtual 489	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2192: ifeq +21 -> 2213
    //   2195: aload_0
    //   2196: getfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   2199: ldc_w 814
    //   2202: iconst_4
    //   2203: invokestatic 935	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   2206: invokevirtual 555	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   2209: pop
    //   2210: goto -1370 -> 840
    //   2213: aload_0
    //   2214: getfield 334	com/jingdong/app/mall/product/ProductListActivity:params	Lorg/json/JSONObject;
    //   2217: ldc_w 814
    //   2220: new 879	java/lang/StringBuilder
    //   2223: dup
    //   2224: aload_0
    //   2225: getfield 161	com/jingdong/app/mall/product/ProductListActivity:sortKey	I
    //   2228: invokestatic 935	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   2231: invokespecial 883	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2234: invokevirtual 890	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2237: invokevirtual 555	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   2240: pop
    //   2241: goto -1401 -> 840
    //   2244: astore 42
    //   2246: goto -1626 -> 620
    //   2249: goto -1629 -> 620
    //   2252: astore_2
    //   2253: goto -1633 -> 620
    //   2256: astore 10
    //   2258: goto -1418 -> 840
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	2261	0	this	ProductListActivity
    //   0	2261	1	paramIntent	Intent
    //   2252	1	2	localException1	Exception
    //   1142	2	3	localJSONException1	JSONException
    //   1737	20	4	arrayOfString1	String[]
    //   1868	214	5	str1	String
    //   1899	26	6	i	int
    //   2131	24	7	arrayOfObject1	Object[]
    //   2106	3	8	localJSONException2	JSONException
    //   795	10	9	j	int
    //   2256	1	10	localJSONException3	JSONException
    //   1933	16	21	arrayOfObject2	Object[]
    //   1623	16	22	arrayOfObject3	Object[]
    //   1717	3	23	localJSONException4	JSONException
    //   1487	3	27	localJSONException5	JSONException
    //   1375	79	30	arrayOfString2	String[]
    //   1413	60	31	str2	String
    //   1150	3	36	localJSONException6	JSONException
    //   1080	53	40	arrayOfString3	String[]
    //   597	16	41	str3	String
    //   2244	1	42	localJSONException7	JSONException
    //   849	3	43	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   538	552	849	java/lang/Exception
    //   662	686	1142	org/json/JSONException
    //   736	751	1150	org/json/JSONException
    //   1300	1358	1487	org/json/JSONException
    //   1358	1484	1487	org/json/JSONException
    //   1497	1522	1487	org/json/JSONException
    //   1646	1714	1717	org/json/JSONException
    //   1956	2013	2106	org/json/JSONException
    //   2013	2053	2106	org/json/JSONException
    //   2053	2081	2106	org/json/JSONException
    //   2081	2103	2106	org/json/JSONException
    //   607	620	2244	org/json/JSONException
    //   1070	1112	2252	java/lang/Exception
    //   1112	1120	2252	java/lang/Exception
    //   1123	1131	2252	java/lang/Exception
    //   1131	1139	2252	java/lang/Exception
    //   809	840	2256	org/json/JSONException
    //   2173	2210	2256	org/json/JSONException
    //   2213	2241	2256	org/json/JSONException
  }
  
  private void initListView()
  {
    this.mListView = ((ListView)findViewById(2131493005));
    this.mGridView = ((GridView)findViewById(2131494329));
    this.mListView.setOnItemClickListener(this);
    this.mGridView.setOnItemClickListener(this);
    this.wareInfoList = this.mListView;
    this.isGrid = false;
    this.mSwitchButton = ((ImageButton)findViewById(2131494332));
    this.mSwitchButton.setImageResource(2130837613);
    this.mSwitchButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (ProductListActivity.this.mNextPageLoader == null) {}
        do
        {
          do
          {
            return;
            ProductListActivity.this.isFromSwitch = true;
            if (ProductListActivity.this.isGrid) {
              break;
            }
            ProductListActivity.this.wareInfoList = ProductListActivity.this.mGridView;
            ProductListActivity.this.isGrid = true;
            ProductListActivity.this.mNextPageLoader.setAdapterView(ProductListActivity.this.mGridView);
            ProductListActivity.this.mSwitchButton.setImageResource(2130837614);
          } while (ProductListActivity.this.mListView == null);
          int j = ProductListActivity.this.mListView.getFirstVisiblePosition();
          if (j == 0) {}
          for (ProductListActivity.this.isListViewTop = true;; ProductListActivity.this.isListViewTop = false)
          {
            ProductListActivity.this.mGridView.setSelection(j);
            return;
          }
          ProductListActivity.this.wareInfoList = ProductListActivity.this.mListView;
          ProductListActivity.this.isGrid = false;
          ProductListActivity.this.mNextPageLoader.setAdapterView(ProductListActivity.this.mListView);
          ProductListActivity.this.mSwitchButton.setImageResource(2130837613);
        } while (ProductListActivity.this.mGridView == null);
        int i = ProductListActivity.this.mGridView.getFirstVisiblePosition();
        if (!ProductListActivity.this.isListViewTop) {
          i += 2;
        }
        ProductListActivity.this.mListView.setSelection(i);
      }
    });
    this.mSwitchButton.setVisibility(0);
    this.mNoDataView = ((TextView)findViewById(2131494330));
  }
  
  private void removeAllHeaderViews()
  {
    try
    {
      if ((this.wareInfoList instanceof ListView))
      {
        ListView localListView = (ListView)this.wareInfoList;
        for (int i = 0;; i++)
        {
          if (i >= localListView.getHeaderViewsCount()) {
            return;
          }
          localListView.removeHeaderView(localListView.getChildAt(i));
        }
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  private void searchWithVoice()
  {
    VoiceUtil.showVoiceDialog(this);
  }
  
  private void showFilterDialog()
  {
    if ("search".equals(this.functionId))
    {
      Intent localIntent1 = new Intent(this, SearchFilterActivity.class);
      Bundle localBundle1 = new Bundle();
      localBundle1.putString("keyWord", this.keyWord);
      localBundle1.putString("searchOldId", this.searchOldId);
      localBundle1.putInt("priceId", this.priceId);
      localBundle1.putSerializable("expressionKeyMap", this.expressionKeyMap);
      localBundle1.putSerializable("expandNameMap", this.expandNameMap);
      localBundle1.putSerializable("expressionKeyIdMap", this.expressionKeyIdMap);
      localBundle1.putSerializable("expandNameIdMap", this.expandNameIdMap);
      localBundle1.putSerializable("category_filter", this.mCategorySearchFilter);
      localBundle1.putInt("sortKey", this.sortKey);
      localBundle1.putString("field", this.field);
      localIntent1.putExtras(localBundle1);
      startActivityForResult(localIntent1, 101);
    }
    do
    {
      return;
      if ("searchCatelogy".equals(this.functionId))
      {
        Intent localIntent2 = new Intent(this, ProductFilterActivity.class);
        Bundle localBundle2 = new Bundle();
        localBundle2.putString("catelogyId", this.levelFirst + "-" + this.levelSecond + "-" + this.catelogyId);
        localBundle2.putString("expandSortId", this.expandSortId);
        localBundle2.putString("name", this.name);
        localBundle2.putBoolean("regionIsTrue", this.regionIsTrue);
        localBundle2.putBoolean("selfIsTrue", this.selfIsTrue);
        localBundle2.putInt("sortKey", this.sortKey);
        localIntent2.putExtras(localBundle2);
        startActivityForResult(localIntent2, 100);
        return;
      }
    } while (!"newViewActivity".equals(this.functionId));
    Intent localIntent3 = new Intent(this, CommercialRuleActivity.class);
    Bundle localBundle3 = new Bundle();
    localBundle3.putString("title", this.commercialTitle);
    localBundle3.putString("detail", this.promotionDetail);
    localIntent3.putExtras(localBundle3);
    startActivity(localIntent3);
  }
  
  private void showSeachResult(String paramString)
  {
    try
    {
      clearSavedFilterContent();
      this.functionId = "search";
      this.keyWord = paramString;
      String str1;
      StringBuilder localStringBuilder2;
      if ((!TextUtils.isEmpty(this.distribution)) || (!TextUtils.isEmpty(this.region)))
      {
        StringBuilder localStringBuilder1 = new StringBuilder(String.valueOf("0-"));
        if (!TextUtils.isEmpty(this.region)) {
          break label265;
        }
        str1 = "0";
        localStringBuilder2 = new StringBuilder(String.valueOf(str1 + "-"));
        if (!TextUtils.isEmpty(this.distribution)) {
          break label274;
        }
      }
      label265:
      label274:
      for (String str2 = "0";; str2 = this.distribution)
      {
        this.searchOldId = str2;
        JSONObject localJSONObject = new JSONObject();
        localJSONObject.put("keyword", paramString);
        localJSONObject.put("isLoadPromotion", true);
        localJSONObject.put("isLoadAverageScore", true);
        if ((!TextUtils.isEmpty(this.distribution)) && (!this.distribution.equalsIgnoreCase("0"))) {
          localJSONObject.put("self", this.distribution);
        }
        if (!TextUtils.isEmpty(this.region)) {
          localJSONObject.put("region", this.region);
        }
        if (this.sortKey != -1) {
          localJSONObject.put("sort", String.valueOf(this.sortKey));
        }
        this.params = localJSONObject;
        hidefloatLayout();
        getWareInfoList("search", localJSONObject);
        SearchHistoryTable.saveSearchHistory(paramString);
        return;
        str1 = this.region;
        break;
      }
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  private void tabSelected(View paramView1, View paramView2)
  {
    if (!hasWindowFocus()) {
      return;
    }
    if (this.mPageIndicator == null) {
      this.mPageIndicator = ((TabIndicator)findViewById(2131493554));
    }
    this.mPageIndicator.onTabSelected(paramView1, paramView2);
    Log.i("ProductListActivity", "tabSelected-->tabSelected");
  }
  
  protected void fadeInCountNumTv()
  {
    if (this.countNumTv != null) {
      ImageActivity.fadeIn(this.countNumTv);
    }
  }
  
  protected void fadeInSwitchButton()
  {
    if (this.mSwitchButton != null) {
      ImageActivity.fadeIn(this.mSwitchButton);
    }
  }
  
  protected void fadeOutCountNumTv()
  {
    if (this.countNumTv != null) {
      ImageActivity.fadeOut(this.countNumTv);
    }
  }
  
  protected void fadeOutSwitchButton()
  {
    if (this.mSwitchButton != null) {
      ImageActivity.fadeOut(this.mSwitchButton);
    }
  }
  
  public Map<String, String> getParams()
  {
    if (this.fromWhich.equals("search"))
    {
      HashMap localHashMap1 = new HashMap();
      localHashMap1.put("searchKeyWord", this.keyWord);
      return localHashMap1;
    }
    if (this.fromWhich.equals("category"))
    {
      HashMap localHashMap2 = new HashMap();
      localHashMap2.put("categoryId", this.catelogyId);
      return localHashMap2;
    }
    if ((this.commercial != null) && (this.fromWhich.equals("commercial")))
    {
      HashMap localHashMap3 = new HashMap();
      localHashMap3.put("activityName", this.commercial.getId());
      return localHashMap3;
    }
    return null;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == -1)
    {
      if ((paramInt1 != 100) && (paramInt1 != 101)) {
        break label42;
      }
      initComponent(paramIntent);
      getWareInfoList(this.functionId, this.params);
    }
    label42:
    while (paramInt1 != 1234)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
    }
    ArrayList localArrayList = paramIntent.getStringArrayListExtra("android.speech.extra.RESULTS");
    final String[] arrayOfString = new String[localArrayList.size()];
    for (int i = 0;; i++)
    {
      if (i >= localArrayList.size())
      {
        this.dialogBuilder.setTitle(2131165625);
        this.dialogBuilder.setItems(arrayOfString, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            String str = arrayOfString[paramAnonymousInt];
            if (!TextUtils.isEmpty(str))
            {
              if (ProductListActivity.this.autoCompleteEt != null)
              {
                ProductListActivity.this.autoCompleteEt.setText(str);
                ProductListActivity.this.autoCompleteEt.setSelection(str.length());
              }
              ProductListActivity.this.showSeachResult(str.trim());
            }
            ProductListActivity.this.listDialog.dismiss();
          }
        });
        post(new Runnable()
        {
          public void run()
          {
            ProductListActivity.this.listDialog = ProductListActivity.this.dialogBuilder.show();
          }
        });
        break;
      }
      arrayOfString[i] = ((String)localArrayList.get(i));
    }
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131494312: 
      searchWithVoice();
      return;
    }
    cleanSearchText();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903263);
    initComponent(getIntent());
    initListView();
    getWareInfoList(this.functionId, this.params);
  }
  
  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Product localProduct = (Product)paramAdapterView.getAdapter().getItem(paramInt);
    if (localProduct != null) {
      StartActivityUtils.startProductDetailActivity(this, localProduct.getId(), localProduct.getName(), this.sourceEntity);
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (this.wareInfoList != null)
    {
      this.wareInfoList.requestLayout();
      this.wareInfoList.invalidate();
    }
  }
  
  public boolean onSearchRequested()
  {
    return super.onSearchRequested();
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    if (paramBoolean)
    {
      Log.i("ProductListActivity", "onWindowFocusChanged-->tabSelected");
      tabSelected(this.mSelectedSortButton, this.mSelectedSortButton);
    }
  }
  
  private class ButtonClickListener
    implements View.OnClickListener
  {
    private ButtonClickListener() {}
    
    /* Error */
    public void onClick(View paramView)
    {
      // Byte code:
      //   0: aload_1
      //   1: iconst_0
      //   2: invokevirtual 28	android/view/View:setPressed	(Z)V
      //   5: aload_1
      //   6: invokevirtual 32	android/view/View:getId	()I
      //   9: ldc 33
      //   11: if_icmpeq +12 -> 23
      //   14: aload_1
      //   15: invokevirtual 32	android/view/View:getId	()I
      //   18: ldc 34
      //   20: if_icmpne +80 -> 100
      //   23: aload_1
      //   24: invokevirtual 32	android/view/View:getId	()I
      //   27: ldc 33
      //   29: if_icmpeq +14 -> 43
      //   32: aload_0
      //   33: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   36: invokestatic 40	com/jingdong/app/mall/product/ProductListActivity:access$0	(Lcom/jingdong/app/mall/product/ProductListActivity;)I
      //   39: iconst_1
      //   40: if_icmpne +11 -> 51
      //   43: aload_0
      //   44: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   47: invokestatic 43	com/jingdong/app/mall/product/ProductListActivity:access$1	(Lcom/jingdong/app/mall/product/ProductListActivity;)V
      //   50: return
      //   51: aload_0
      //   52: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   55: invokestatic 47	com/jingdong/app/mall/product/ProductListActivity:access$2	(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/AutoCompleteTextView;
      //   58: invokevirtual 53	android/widget/AutoCompleteTextView:getText	()Landroid/text/Editable;
      //   61: invokeinterface 59 1 0
      //   66: astore_2
      //   67: aload_2
      //   68: ifnull -18 -> 50
      //   71: aload_2
      //   72: invokevirtual 64	java/lang/String:trim	()Ljava/lang/String;
      //   75: invokevirtual 67	java/lang/String:length	()I
      //   78: ifle -28 -> 50
      //   81: aload_0
      //   82: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   85: aload_2
      //   86: invokevirtual 64	java/lang/String:trim	()Ljava/lang/String;
      //   89: invokestatic 71	com/jingdong/app/mall/product/ProductListActivity:access$3	(Lcom/jingdong/app/mall/product/ProductListActivity;Ljava/lang/String;)V
      //   92: aload_0
      //   93: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   96: invokestatic 74	com/jingdong/app/mall/product/ProductListActivity:access$4	(Lcom/jingdong/app/mall/product/ProductListActivity;)V
      //   99: return
      //   100: aload_0
      //   101: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   104: invokestatic 78	com/jingdong/app/mall/product/ProductListActivity:access$5	(Lcom/jingdong/app/mall/product/ProductListActivity;)Lorg/json/JSONObject;
      //   107: astore_3
      //   108: aload_1
      //   109: invokevirtual 32	android/view/View:getId	()I
      //   112: tableswitch	default:+48 -> 160, 2131494315:+101->213, 2131494316:+48->160, 2131494317:+48->160, 2131494318:+201->313, 2131494319:+48->160, 2131494320:+344->456, 2131494321:+48->160, 2131494322:+280->392
      //   161: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   164: aload_0
      //   165: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   168: invokestatic 81	com/jingdong/app/mall/product/ProductListActivity:access$6	(Lcom/jingdong/app/mall/product/ProductListActivity;)I
      //   171: invokestatic 85	com/jingdong/app/mall/product/ProductListActivity:access$9	(Lcom/jingdong/app/mall/product/ProductListActivity;I)V
      //   174: aload_3
      //   175: ldc 87
      //   177: ldc 89
      //   179: invokevirtual 95	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
      //   182: pop
      //   183: aload_3
      //   184: ldc 97
      //   186: aload_0
      //   187: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   190: invokestatic 101	com/jingdong/app/mall/product/ProductListActivity:access$10	(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;
      //   193: invokevirtual 95	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
      //   196: pop
      //   197: aload_0
      //   198: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   201: aload_0
      //   202: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   205: invokestatic 104	com/jingdong/app/mall/product/ProductListActivity:access$8	(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;
      //   208: aload_3
      //   209: invokestatic 108	com/jingdong/app/mall/product/ProductListActivity:access$11	(Lcom/jingdong/app/mall/product/ProductListActivity;Ljava/lang/String;Lorg/json/JSONObject;)V
      //   212: return
      //   213: aload_0
      //   214: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   217: invokestatic 81	com/jingdong/app/mall/product/ProductListActivity:access$6	(Lcom/jingdong/app/mall/product/ProductListActivity;)I
      //   220: iconst_3
      //   221: if_icmpne +71 -> 292
      //   224: aload_0
      //   225: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   228: iconst_2
      //   229: invokestatic 111	com/jingdong/app/mall/product/ProductListActivity:access$7	(Lcom/jingdong/app/mall/product/ProductListActivity;I)V
      //   232: ldc 113
      //   234: aload_0
      //   235: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   238: invokestatic 104	com/jingdong/app/mall/product/ProductListActivity:access$8	(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;
      //   241: invokevirtual 117	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   244: ifne +18 -> 262
      //   247: ldc 119
      //   249: aload_0
      //   250: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   253: invokestatic 104	com/jingdong/app/mall/product/ProductListActivity:access$8	(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;
      //   256: invokevirtual 117	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   259: ifeq +44 -> 303
      //   262: aload_3
      //   263: ldc 121
      //   265: aload_0
      //   266: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   269: invokestatic 81	com/jingdong/app/mall/product/ProductListActivity:access$6	(Lcom/jingdong/app/mall/product/ProductListActivity;)I
      //   272: invokestatic 125	java/lang/String:valueOf	(I)Ljava/lang/String;
      //   275: invokevirtual 95	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
      //   278: pop
      //   279: goto -119 -> 160
      //   282: astore 4
      //   284: aload 4
      //   286: invokevirtual 128	org/json/JSONException:printStackTrace	()V
      //   289: goto -115 -> 174
      //   292: aload_0
      //   293: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   296: iconst_3
      //   297: invokestatic 111	com/jingdong/app/mall/product/ProductListActivity:access$7	(Lcom/jingdong/app/mall/product/ProductListActivity;I)V
      //   300: goto -68 -> 232
      //   303: aload_3
      //   304: ldc 121
      //   306: invokevirtual 132	org/json/JSONObject:remove	(Ljava/lang/String;)Ljava/lang/Object;
      //   309: pop
      //   310: goto -150 -> 160
      //   313: aload_0
      //   314: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   317: invokestatic 81	com/jingdong/app/mall/product/ProductListActivity:access$6	(Lcom/jingdong/app/mall/product/ProductListActivity;)I
      //   320: iconst_1
      //   321: if_icmpeq -271 -> 50
      //   324: aload_0
      //   325: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   328: iconst_1
      //   329: invokestatic 111	com/jingdong/app/mall/product/ProductListActivity:access$7	(Lcom/jingdong/app/mall/product/ProductListActivity;I)V
      //   332: ldc 113
      //   334: aload_0
      //   335: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   338: invokestatic 104	com/jingdong/app/mall/product/ProductListActivity:access$8	(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;
      //   341: invokevirtual 117	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   344: ifne +18 -> 362
      //   347: ldc 119
      //   349: aload_0
      //   350: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   353: invokestatic 104	com/jingdong/app/mall/product/ProductListActivity:access$8	(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;
      //   356: invokevirtual 117	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   359: ifeq +23 -> 382
      //   362: aload_3
      //   363: ldc 121
      //   365: aload_0
      //   366: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   369: invokestatic 81	com/jingdong/app/mall/product/ProductListActivity:access$6	(Lcom/jingdong/app/mall/product/ProductListActivity;)I
      //   372: invokestatic 125	java/lang/String:valueOf	(I)Ljava/lang/String;
      //   375: invokevirtual 95	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
      //   378: pop
      //   379: goto -219 -> 160
      //   382: aload_3
      //   383: ldc 121
      //   385: invokevirtual 132	org/json/JSONObject:remove	(Ljava/lang/String;)Ljava/lang/Object;
      //   388: pop
      //   389: goto -229 -> 160
      //   392: aload_0
      //   393: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   396: invokestatic 81	com/jingdong/app/mall/product/ProductListActivity:access$6	(Lcom/jingdong/app/mall/product/ProductListActivity;)I
      //   399: iconst_5
      //   400: if_icmpeq -350 -> 50
      //   403: aload_0
      //   404: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   407: iconst_5
      //   408: invokestatic 111	com/jingdong/app/mall/product/ProductListActivity:access$7	(Lcom/jingdong/app/mall/product/ProductListActivity;I)V
      //   411: ldc 113
      //   413: aload_0
      //   414: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   417: invokestatic 104	com/jingdong/app/mall/product/ProductListActivity:access$8	(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;
      //   420: invokevirtual 117	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   423: ifeq +23 -> 446
      //   426: aload_3
      //   427: ldc 121
      //   429: aload_0
      //   430: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   433: invokestatic 81	com/jingdong/app/mall/product/ProductListActivity:access$6	(Lcom/jingdong/app/mall/product/ProductListActivity;)I
      //   436: invokestatic 125	java/lang/String:valueOf	(I)Ljava/lang/String;
      //   439: invokevirtual 95	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
      //   442: pop
      //   443: goto -283 -> 160
      //   446: aload_3
      //   447: ldc 121
      //   449: invokevirtual 132	org/json/JSONObject:remove	(Ljava/lang/String;)Ljava/lang/Object;
      //   452: pop
      //   453: goto -293 -> 160
      //   456: aload_0
      //   457: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   460: invokestatic 81	com/jingdong/app/mall/product/ProductListActivity:access$6	(Lcom/jingdong/app/mall/product/ProductListActivity;)I
      //   463: bipush 6
      //   465: if_icmpeq -415 -> 50
      //   468: aload_0
      //   469: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   472: bipush 6
      //   474: invokestatic 111	com/jingdong/app/mall/product/ProductListActivity:access$7	(Lcom/jingdong/app/mall/product/ProductListActivity;I)V
      //   477: ldc 113
      //   479: aload_0
      //   480: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   483: invokestatic 104	com/jingdong/app/mall/product/ProductListActivity:access$8	(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;
      //   486: invokevirtual 117	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   489: ifeq +17 -> 506
      //   492: aload_3
      //   493: ldc 121
      //   495: iconst_4
      //   496: invokestatic 125	java/lang/String:valueOf	(I)Ljava/lang/String;
      //   499: invokevirtual 95	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
      //   502: pop
      //   503: goto -343 -> 160
      //   506: ldc 119
      //   508: aload_0
      //   509: getfield 12	com/jingdong/app/mall/product/ProductListActivity$ButtonClickListener:this$0	Lcom/jingdong/app/mall/product/ProductListActivity;
      //   512: invokestatic 104	com/jingdong/app/mall/product/ProductListActivity:access$8	(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;
      //   515: invokevirtual 117	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   518: ifeq +18 -> 536
      //   521: aload_3
      //   522: ldc 121
      //   524: bipush 6
      //   526: invokestatic 125	java/lang/String:valueOf	(I)Ljava/lang/String;
      //   529: invokevirtual 95	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
      //   532: pop
      //   533: goto -373 -> 160
      //   536: aload_3
      //   537: ldc 121
      //   539: invokevirtual 132	org/json/JSONObject:remove	(Ljava/lang/String;)Ljava/lang/Object;
      //   542: pop
      //   543: goto -383 -> 160
      //   546: astore 5
      //   548: aload 5
      //   550: invokevirtual 128	org/json/JSONException:printStackTrace	()V
      //   553: goto -370 -> 183
      //   556: astore 6
      //   558: goto -361 -> 197
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	561	0	this	ButtonClickListener
      //   0	561	1	paramView	View
      //   66	20	2	str	String
      //   107	430	3	localJSONObject	JSONObject
      //   282	3	4	localJSONException1	JSONException
      //   546	3	5	localJSONException2	JSONException
      //   556	1	6	localJSONException3	JSONException
      // Exception table:
      //   from	to	target	type
      //   108	160	282	org/json/JSONException
      //   160	174	282	org/json/JSONException
      //   213	232	282	org/json/JSONException
      //   232	262	282	org/json/JSONException
      //   262	279	282	org/json/JSONException
      //   292	300	282	org/json/JSONException
      //   303	310	282	org/json/JSONException
      //   313	362	282	org/json/JSONException
      //   362	379	282	org/json/JSONException
      //   382	389	282	org/json/JSONException
      //   392	443	282	org/json/JSONException
      //   446	453	282	org/json/JSONException
      //   456	503	282	org/json/JSONException
      //   506	533	282	org/json/JSONException
      //   536	543	282	org/json/JSONException
      //   174	183	546	org/json/JSONException
      //   183	197	556	org/json/JSONException
    }
  }
  
  class MyGridAdapter
    extends MySimpleAdapter
  {
    public MyGridAdapter(List<?> paramList, int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
    {
      super(paramInt, paramArrayOfString, paramArrayOfInt, arrayOfInt);
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      View localView = super.getView(paramInt, paramView, paramViewGroup);
      ViewHolder localViewHolder;
      Product localProduct;
      if (localView.getTag() != null)
      {
        localViewHolder = (ViewHolder)localView.getTag();
        localProduct = (Product)getItem(paramInt);
        if (localProduct != null) {
          break label140;
        }
      }
      label140:
      String str;
      do
      {
        return localView;
        localViewHolder = new ViewHolder();
        localViewHolder.productJdPriceView = ((TextView)localView.findViewById(2131493237));
        localViewHolder.productMartPriceView = ((TextView)localView.findViewById(2131493048));
        localViewHolder.productPromotionJiangIv = ((ImageView)localView.findViewById(2131494306));
        localViewHolder.productPromotionZengIv = ((ImageView)localView.findViewById(2131494307));
        localViewHolder.productPromotionVipIv = ((ImageView)localView.findViewById(2131494305));
        localView.setTag(localViewHolder);
        break;
        ProductShow localProductShow = new ProductShow(ProductListActivity.this, localProduct);
        if (!TextUtils.isEmpty(localProduct.getJdPrice())) {
          break label287;
        }
        str = "";
        localViewHolder.productJdPriceView.setText(str);
        localViewHolder.productMartPriceView.setText(localProductShow.getMarketPrice());
      } while ((!TextUtils.equals(ProductListActivity.this.fromWhich, "category")) && (!TextUtils.equals(ProductListActivity.this.fromWhich, "search")));
      if (localProduct.getIsPromotionZeng().booleanValue())
      {
        localViewHolder.productPromotionZengIv.setVisibility(0);
        label243:
        if (!localProduct.getIsPromotionJiang().booleanValue()) {
          break label335;
        }
        localViewHolder.productPromotionJiangIv.setVisibility(0);
      }
      for (;;)
      {
        if (localProduct.getIsFlashSale().intValue() != 1) {
          break label348;
        }
        localViewHolder.productPromotionVipIv.setVisibility(0);
        return localView;
        label287:
        ProductListActivity localProductListActivity = ProductListActivity.this;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localProduct.getJdPrice();
        str = localProductListActivity.getString(2131165822, arrayOfObject);
        break;
        localViewHolder.productPromotionZengIv.setVisibility(8);
        break label243;
        label335:
        localViewHolder.productPromotionJiangIv.setVisibility(8);
      }
      label348:
      localViewHolder.productPromotionVipIv.setVisibility(8);
      return localView;
    }
    
    class ViewHolder
    {
      TextView productJdPriceView;
      TextView productMartPriceView;
      ImageView productPromotionJiangIv;
      ImageView productPromotionVipIv;
      ImageView productPromotionZengIv;
      
      ViewHolder() {}
    }
  }
  
  class MyListAdapter
    extends MySimpleAdapter
  {
    public MyListAdapter(List<?> paramList, int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
    {
      super(paramInt, paramArrayOfString, paramArrayOfInt, arrayOfInt);
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      View localView = super.getView(paramInt, paramView, paramViewGroup);
      ViewHolder localViewHolder;
      if (localView.getTag() != null) {
        localViewHolder = (ViewHolder)localView.getTag();
      }
      Product localProduct;
      for (;;)
      {
        localProduct = (Product)getItem(paramInt);
        if (localProduct != null) {
          break;
        }
        return localView;
        localViewHolder = new ViewHolder();
        localViewHolder.productJdPriceView = ((TextView)localView.findViewById(2131493237));
        localViewHolder.productMartPriceView = ((TextView)localView.findViewById(2131493048));
        localViewHolder.productCommentCountTv = ((TextView)localView.findViewById(2131493241));
        localViewHolder.productPromotionJiangIv = ((ImageView)localView.findViewById(2131494337));
        localViewHolder.productPromotionZengIv = ((ImageView)localView.findViewById(2131494338));
        localViewHolder.productPromotionVipIv = ((ImageView)localView.findViewById(2131494336));
        localViewHolder.productGoodTv = ((TextView)localView.findViewById(2131494340));
        localView.setTag(localViewHolder);
      }
      ProductShow localProductShow = new ProductShow(ProductListActivity.this, localProduct);
      String str1;
      Integer localInteger;
      String str2;
      if (TextUtils.isEmpty(localProduct.getJdPrice()))
      {
        str1 = "";
        localViewHolder.productJdPriceView.setText(str1);
        localViewHolder.productMartPriceView.setText(localProductShow.getMarketPrice());
        if ((!TextUtils.equals(ProductListActivity.this.fromWhich, "category")) && (!TextUtils.equals(ProductListActivity.this.fromWhich, "search"))) {
          break label593;
        }
        localInteger = localProduct.getTotalCount();
        str2 = localProduct.getGood();
        if ((localInteger != null) && (!TextUtils.isEmpty(str2))) {
          break label399;
        }
        localViewHolder.productCommentCountTv.setVisibility(8);
        localViewHolder.productGoodTv.setVisibility(8);
        label300:
        if (!localProduct.getIsPromotionZeng().booleanValue()) {
          break label554;
        }
        localViewHolder.productPromotionZengIv.setVisibility(0);
        label320:
        if (!localProduct.getIsPromotionJiang().booleanValue()) {
          break label567;
        }
        localViewHolder.productPromotionJiangIv.setVisibility(0);
      }
      for (;;)
      {
        if (localProduct.getIsFlashSale().intValue() != 1) {
          break label580;
        }
        localViewHolder.productPromotionVipIv.setVisibility(0);
        return localView;
        ProductListActivity localProductListActivity1 = ProductListActivity.this;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = localProduct.getJdPrice();
        str1 = localProductListActivity1.getString(2131165822, arrayOfObject1);
        break;
        label399:
        localViewHolder.productCommentCountTv.setVisibility(0);
        ProductListActivity localProductListActivity2 = ProductListActivity.this;
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = String.valueOf(localInteger);
        SpannableString localSpannableString1 = new SpannableString(localProductListActivity2.getString(2131166410, arrayOfObject2));
        localSpannableString1.setSpan(new StyleSpan(1), 0, localSpannableString1.length(), 33);
        localViewHolder.productCommentCountTv.setText(localSpannableString1);
        localViewHolder.productGoodTv.setVisibility(0);
        SpannableString localSpannableString2 = new SpannableString("好评度: " + str2);
        localSpannableString2.setSpan(new StyleSpan(1), "好评度: ".length(), localSpannableString2.length(), 33);
        localViewHolder.productGoodTv.setText(localSpannableString2);
        break label300;
        label554:
        localViewHolder.productPromotionZengIv.setVisibility(8);
        break label320;
        label567:
        localViewHolder.productPromotionJiangIv.setVisibility(8);
      }
      label580:
      localViewHolder.productPromotionVipIv.setVisibility(8);
      return localView;
      label593:
      localViewHolder.productCommentCountTv.setVisibility(8);
      localViewHolder.productGoodTv.setVisibility(8);
      return localView;
    }
    
    class ViewHolder
    {
      TextView productCommentCountTv;
      TextView productGoodTv;
      TextView productJdPriceView;
      TextView productMartPriceView;
      ImageView productPromotionJiangIv;
      ImageView productPromotionVipIv;
      ImageView productPromotionZengIv;
      
      ViewHolder() {}
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.product.ProductListActivity
 * JD-Core Version:    0.7.0.1
 */