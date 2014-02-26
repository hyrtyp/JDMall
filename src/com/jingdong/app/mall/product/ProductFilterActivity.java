package com.jingdong.app.mall.product;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.entity.SearchFilter;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.ArrayUtil;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class ProductFilterActivity
  extends MyActivity
  implements AdapterView.OnItemClickListener
{
  private static final String TAG = "ProductFilterActivity";
  private ArrayList<SearchFilter> allList = new ArrayList();
  private AlertDialog.Builder catelogyFilterDialog;
  String catelogyId;
  private RelativeLayout distributeLayout;
  TextView distributeSearchChoosed;
  TextView distributeSearchMenu;
  private TextView emptyView;
  private String expandSortId;
  private ArrayList<SearchFilter> headList = new ArrayList();
  CheckBox isHaveCheckBox;
  private View isHaveDivider;
  private RelativeLayout isHaveLayout;
  private boolean isNeedShowStock = false;
  private ArrayList<SearchFilter> list;
  private ListView listView;
  private MySimpleAdapter mAdapter;
  SearchFilter mDistributeFilter;
  SearchFilter mRegionFilter;
  private MyActivity myActivity;
  private String name;
  private int productListSortKey;
  private JSONObjectProxy provinceJsonObject;
  private LinearLayout regionAllLayout;
  private boolean regionIsTrue;
  private RelativeLayout regionLayout;
  TextView regionSearchChoosed;
  TextView regionSearchMenu;
  private int regionTag;
  private boolean selfIsTrue;
  private Button submitButton;
  
  private void getProductFilter()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("catelogyId", this.catelogyId);
      HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setFunctionId("expandSort");
      localHttpSetting.setPost(true);
      localHttpSetting.setJsonParams(localJSONObject);
      localHttpSetting.setListener(new HttpGroup.OnAllListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          JSONArrayPoxy localJSONArrayPoxy = paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("expandSorts");
          if (ProductFilterActivity.this.list != null) {
            ProductFilterActivity.this.list.clear();
          }
          ProductFilterActivity.this.list = new ArrayList();
          String[] arrayOfString1 = ProductFilterActivity.this.expandSortId.split("-");
          ProductFilterActivity.this.mDistributeFilter = new SearchFilter(new JSONObjectProxy(), 112);
          ProductFilterActivity.this.headList.add(ProductFilterActivity.this.mDistributeFilter);
          ProductFilterActivity.this.mRegionFilter = new SearchFilter(ProductFilterActivity.this.provinceJsonObject, 113);
          ProductFilterActivity.this.headList.add(ProductFilterActivity.this.mRegionFilter);
          ProductFilterActivity.this.allList.addAll(ProductFilterActivity.this.headList);
          if ((localJSONArrayPoxy != null) && (localJSONArrayPoxy.length() > 0))
          {
            ProductFilterActivity.this.list.addAll(SearchFilter.toList(localJSONArrayPoxy, 111));
            ProductFilterActivity.this.allList.addAll(ProductFilterActivity.this.list);
          }
          int i;
          Iterator localIterator;
          if ((ProductFilterActivity.this.allList != null) && (ProductFilterActivity.this.allList.size() > 0))
          {
            i = 0;
            localIterator = ProductFilterActivity.this.allList.iterator();
            if (!localIterator.hasNext())
            {
              if (ProductFilterActivity.this.regionTag != 0) {
                ProductFilterActivity.this.isNeedShowStock = true;
              }
              ProductFilterActivity.this.initDistributeRegionValue();
            }
          }
          for (;;)
          {
            ProductFilterActivity.this.mAdapter = new MySimpleAdapter(ProductFilterActivity.this, ProductFilterActivity.this.list, 2130903261, new String[] { "expandSortName" }, new int[] { 2131493217 })
            {
              public View getView(int paramAnonymous2Int, View paramAnonymous2View, ViewGroup paramAnonymous2ViewGroup)
              {
                View localView = super.getView(paramAnonymous2Int, paramAnonymous2View, paramAnonymous2ViewGroup);
                SearchFilter localSearchFilter = (SearchFilter)ProductFilterActivity.this.list.get(paramAnonymous2Int);
                TextView localTextView = (TextView)localView.findViewById(2131494296);
                if (localSearchFilter.getSelectedOrder() > 0)
                {
                  localTextView.setTextColor(ProductFilterActivity.this.getResources().getColor(2131296356));
                  localTextView.setText(String.valueOf(ArrayUtil.getValueOfArray(localSearchFilter.getValueList(), localSearchFilter.getSelectedOrder(), "全部")));
                }
                for (;;)
                {
                  ((TextView)localView.findViewById(2131494294)).setText(localSearchFilter.getFilterName());
                  return localView;
                  localTextView.setTextColor(ProductFilterActivity.this.getResources().getColor(2131296355));
                  localTextView.setText(String.valueOf(ArrayUtil.getValueOfArray(localSearchFilter.getValueList(), 0, "全部")));
                }
              }
            };
            ProductFilterActivity.this.post(new Runnable()
            {
              public void run()
              {
                ProductFilterActivity.this.listView.setAdapter(ProductFilterActivity.this.mAdapter);
              }
            });
            return;
            SearchFilter localSearchFilter = (SearchFilter)localIterator.next();
            try
            {
              int i1 = Integer.parseInt(String.valueOf(ArrayUtil.getValueOfArray(arrayOfString1, i, "0")));
              j = i1;
            }
            catch (Exception localException)
            {
              for (;;)
              {
                int k;
                String[] arrayOfString2;
                int m;
                int n;
                int j = 0;
                continue;
                String str = arrayOfString2[n];
                if (TextUtils.equals(str, String.valueOf(j)))
                {
                  if (localSearchFilter.getFilterName().equals(ProductFilterActivity.this.getString(2131166257))) {
                    ProductFilterActivity.this.regionTag = k;
                  }
                  localSearchFilter.setSelectedOrder(k);
                  localSearchFilter.setSelectedItem(str);
                }
                else
                {
                  k++;
                  n++;
                }
              }
            }
            if (j != 0)
            {
              k = 0;
              arrayOfString2 = localSearchFilter.getKeyList();
              m = arrayOfString2.length;
              n = 0;
              if (n < m) {}
            }
            else
            {
              i++;
              break;
            }
            ProductFilterActivity.this.post(new Runnable()
            {
              public void run()
              {
                ProductFilterActivity.this.listView.setVisibility(8);
                ProductFilterActivity.this.emptyView.setVisibility(0);
              }
            });
          }
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
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  private void querySelectRegion()
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("selectedProvince");
    localHttpSetting.setEffect(1);
    localHttpSetting.setListener(new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        ProductFilterActivity.this.provinceJsonObject = paramAnonymousHttpResponse.getJSONObject();
        ProductFilterActivity.this.getProductFilter();
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        ProductFilterActivity.this.getProductFilter();
      }
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    localHttpSetting.setLocalFileCache(true);
    localHttpSetting.setLocalFileCacheTime(259200000L);
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  public void handleHeadClickAction(final SearchFilter paramSearchFilter, final TextView paramTextView)
  {
    if ((paramSearchFilter.getKeyList() != null) && (paramSearchFilter.getKeyList().length > 0))
    {
      if (!TextUtils.equals(paramSearchFilter.getFilterName(), MyApplication.getInstance().getApplicationContext().getString(2131166257))) {
        break label103;
      }
      this.catelogyFilterDialog = new AlertDialog.Builder(this);
      this.catelogyFilterDialog.setTitle(paramSearchFilter.getFilterName());
      if (paramSearchFilter.getValueList().length > 0) {
        this.catelogyFilterDialog.setSingleChoiceItems(paramSearchFilter.getValueList(), paramSearchFilter.getSelectedOrder(), new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            paramTextView.setText(String.valueOf(ArrayUtil.getValueOfArray(paramSearchFilter.getValueList(), paramAnonymousInt, "")));
            if (paramAnonymousInt == 0)
            {
              paramTextView.setTextColor(ProductFilterActivity.this.getResources().getColor(2131296355));
              paramSearchFilter.setSelectedItem(String.valueOf(ArrayUtil.getValueOfArray(paramSearchFilter.getKeyList(), paramAnonymousInt, "")));
              paramSearchFilter.setSelectedOrder(paramAnonymousInt);
              paramAnonymousDialogInterface.dismiss();
              if (paramAnonymousInt != 0)
              {
                if (ProductFilterActivity.this.isNeedShowStock) {
                  break label172;
                }
                ProductFilterActivity.this.isNeedShowStock = true;
                ProductFilterActivity.this.showIsHave();
              }
            }
            for (;;)
            {
              if ((paramAnonymousInt == 0) && (ProductFilterActivity.this.isNeedShowStock))
              {
                ProductFilterActivity.this.isNeedShowStock = false;
                ProductFilterActivity.this.hideIsHave();
              }
              ProductFilterActivity.this.regionTag = paramAnonymousInt;
              return;
              paramTextView.setTextColor(ProductFilterActivity.this.getResources().getColor(2131296356));
              break;
              label172:
              ProductFilterActivity.this.resetIsHave();
            }
          }
        });
      }
    }
    label103:
    do
    {
      this.catelogyFilterDialog.show();
      do
      {
        return;
      } while (!TextUtils.equals(paramSearchFilter.getFilterName(), MyApplication.getInstance().getApplicationContext().getString(2131166258)));
      this.catelogyFilterDialog = new AlertDialog.Builder(this);
      this.catelogyFilterDialog.setTitle(paramSearchFilter.getFilterName());
    } while (paramSearchFilter.getValueList().length <= 0);
    this.catelogyFilterDialog.setSingleChoiceItems(paramSearchFilter.getValueList(), paramSearchFilter.getSelectedOrder(), new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramTextView.setText(String.valueOf(ArrayUtil.getValueOfArray(paramSearchFilter.getValueList(), paramAnonymousInt, "")));
        if (paramAnonymousInt == 0) {
          paramTextView.setTextColor(ProductFilterActivity.this.getResources().getColor(2131296355));
        }
        for (;;)
        {
          paramSearchFilter.setSelectedItem(String.valueOf(ArrayUtil.getValueOfArray(paramSearchFilter.getKeyList(), paramAnonymousInt, "")));
          paramSearchFilter.setSelectedOrder(paramAnonymousInt);
          paramAnonymousDialogInterface.dismiss();
          return;
          paramTextView.setTextColor(ProductFilterActivity.this.getResources().getColor(2131296356));
        }
      }
    });
    this.catelogyFilterDialog.show();
  }
  
  public void hideIsHave()
  {
    this.isHaveLayout.setVisibility(8);
    this.isHaveDivider.setVisibility(8);
    this.regionAllLayout.getLayoutParams().height = DPIUtil.dip2px(44.0F);
  }
  
  public void initComponent()
  {
    this.distributeLayout = ((RelativeLayout)findViewById(2131494293));
    this.regionLayout = ((RelativeLayout)findViewById(2131494298));
    this.isHaveLayout = ((RelativeLayout)findViewById(2131494300));
    this.regionAllLayout = ((LinearLayout)findViewById(2131494297));
    if (!this.regionIsTrue) {
      this.regionAllLayout.setVisibility(8);
    }
    for (;;)
    {
      this.isHaveDivider = findViewById(2131494299);
      this.distributeSearchMenu = ((TextView)this.distributeLayout.findViewById(2131494294));
      this.distributeSearchChoosed = ((TextView)this.distributeLayout.findViewById(2131494296));
      this.distributeSearchMenu.setText("选择配送方");
      this.regionSearchMenu = ((TextView)this.regionLayout.findViewById(2131494294));
      this.regionSearchChoosed = ((TextView)this.regionLayout.findViewById(2131494296));
      this.regionSearchMenu.setText("选择库存");
      this.isHaveCheckBox = ((CheckBox)this.isHaveLayout.findViewById(2131494303));
      return;
      this.regionAllLayout.setVisibility(0);
    }
  }
  
  public void initDistributeRegionValue()
  {
    post(new Runnable()
    {
      public void run()
      {
        SearchFilterActivity.initValue(ProductFilterActivity.this.myActivity, ProductFilterActivity.this.mDistributeFilter, ProductFilterActivity.this.distributeSearchChoosed, ProductFilterActivity.this.regionTag);
        SearchFilterActivity.initValue(ProductFilterActivity.this.myActivity, ProductFilterActivity.this.mRegionFilter, ProductFilterActivity.this.regionSearchChoosed, ProductFilterActivity.this.regionTag);
        ProductFilterActivity.this.initIsHaveItem();
      }
    });
    this.distributeLayout.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ProductFilterActivity.this.handleHeadClickAction(ProductFilterActivity.this.mDistributeFilter, ProductFilterActivity.this.distributeSearchChoosed);
      }
    });
    this.regionLayout.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ProductFilterActivity.this.handleHeadClickAction(ProductFilterActivity.this.mRegionFilter, ProductFilterActivity.this.regionSearchChoosed);
      }
    });
  }
  
  public void initIsHaveItem()
  {
    if (this.mRegionFilter != null)
    {
      if (this.mRegionFilter.getSelectedOrder() != 0) {
        showIsHave();
      }
    }
    else {
      return;
    }
    hideIsHave();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903259);
    this.myActivity = this;
    this.catelogyId = getIntent().getExtras().getString("catelogyId");
    this.expandSortId = getIntent().getExtras().getString("expandSortId");
    this.regionIsTrue = getIntent().getExtras().getBoolean("regionIsTrue");
    this.selfIsTrue = getIntent().getExtras().getBoolean("selfIsTrue");
    this.productListSortKey = getIntent().getExtras().getInt("sortKey", 1);
    if (this.expandSortId == null) {
      this.expandSortId = "0-0-0-0-0-0-0-0-0";
    }
    this.name = getIntent().getExtras().getString("name");
    TextView localTextView = (TextView)findViewById(2131492990);
    if (this.name.length() > 10) {}
    for (String str = this.name.substring(0, 10) + "...";; str = this.name)
    {
      localTextView.setText(str + " - " + getString(2131166018));
      this.emptyView = ((TextView)findViewById(2131493221));
      this.submitButton = ((Button)findViewById(2131494684));
      this.submitButton.setText(2131166028);
      this.submitButton.setVisibility(0);
      this.submitButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          Intent localIntent = new Intent(ProductFilterActivity.this, ProductListActivity.class);
          ProductFilterActivity.this.expandSortId = "";
          int i;
          Iterator localIterator;
          int j;
          if (ProductFilterActivity.this.allList != null)
          {
            i = 0;
            localIterator = ProductFilterActivity.this.allList.iterator();
            if (!localIterator.hasNext())
            {
              j = i + (9 - ProductFilterActivity.this.allList.size());
              label76:
              if (j > 0) {
                break label316;
              }
            }
          }
          for (;;)
          {
            Bundle localBundle = new Bundle();
            if ((ProductFilterActivity.this.isHaveCheckBox.isChecked()) && (ProductFilterActivity.this.isNeedShowStock)) {
              localBundle.putString("stock", "have");
            }
            localBundle.putString("cid", ProductFilterActivity.this.catelogyId);
            localBundle.putString("expandSortId", ProductFilterActivity.this.expandSortId.substring(0, -1 + ProductFilterActivity.this.expandSortId.length()));
            localBundle.putString("name", ProductFilterActivity.this.name);
            localBundle.putInt("sortKey", ProductFilterActivity.this.productListSortKey);
            localBundle.putSerializable("source", new SourceEntity("cateFilter", ProductFilterActivity.this.name));
            localIntent.putExtras(localBundle);
            localIntent.putExtra("com.360buy:clearHistoryFlag", true);
            ProductFilterActivity.this.setResult(-1, localIntent);
            ProductFilterActivity.this.finish();
            return;
            Object localObject = localIterator.next();
            if (!(localObject instanceof SearchFilter))
            {
              i++;
              break;
            }
            SearchFilter localSearchFilter = (SearchFilter)localObject;
            ProductFilterActivity localProductFilterActivity1 = ProductFilterActivity.this;
            localProductFilterActivity1.expandSortId = (localProductFilterActivity1.expandSortId + localSearchFilter.getSelectedItem() + "-");
            break;
            label316:
            ProductFilterActivity localProductFilterActivity2 = ProductFilterActivity.this;
            localProductFilterActivity2.expandSortId += "0-";
            j--;
            break label76;
            ProductFilterActivity.this.expandSortId = "0-0-0-0-0-0-0-0-0-";
          }
        }
      });
      this.listView = ((ListView)findViewById(2131493220));
      this.listView.setOnItemClickListener(this);
      this.listView.setPadding(0, 0, 0, 0);
      initComponent();
      if (!this.regionIsTrue) {
        break;
      }
      querySelectRegion();
      return;
    }
    getProductFilter();
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    Object localObject = this.list.get(paramInt);
    if (!(localObject instanceof SearchFilter)) {}
    final SearchFilter localSearchFilter;
    do
    {
      return;
      localSearchFilter = (SearchFilter)localObject;
    } while (localSearchFilter.getKeyList() == null);
    final TextView localTextView = (TextView)paramView.findViewById(2131494296);
    localBuilder.setTitle(localSearchFilter.getFilterName());
    localBuilder.setSingleChoiceItems(localSearchFilter.getValueList(), localSearchFilter.getSelectedOrder(), new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        localSearchFilter.setSelectedItem(String.valueOf(ArrayUtil.getValueOfArray(localSearchFilter.getKeyList(), paramAnonymousInt, Integer.valueOf(0))));
        localSearchFilter.setSelectedOrder(paramAnonymousInt);
        localTextView.setText(String.valueOf(ArrayUtil.getValueOfArray(localSearchFilter.getValueList(), paramAnonymousInt, "全部")));
        if (paramAnonymousInt == 0) {
          localTextView.setTextColor(ProductFilterActivity.this.getResources().getColor(2131296355));
        }
        for (;;)
        {
          paramAnonymousDialogInterface.dismiss();
          if (TextUtils.equals(localSearchFilter.getFilterName(), "库存"))
          {
            localSearchFilter.setSelectedOrder(paramAnonymousInt);
            localSearchFilter.setSelectedItem(localSearchFilter.getKeyList()[paramAnonymousInt]);
            if ((paramAnonymousInt != 0) && (!ProductFilterActivity.this.isNeedShowStock))
            {
              ProductFilterActivity.this.isNeedShowStock = true;
              ProductFilterActivity.this.showIsHave();
            }
            if ((paramAnonymousInt == 0) && (ProductFilterActivity.this.isNeedShowStock))
            {
              ProductFilterActivity.this.isNeedShowStock = false;
              ProductFilterActivity.this.hideIsHave();
            }
          }
          return;
          localTextView.setTextColor(ProductFilterActivity.this.getResources().getColor(2131296356));
        }
      }
    });
    localBuilder.show();
  }
  
  public void resetIsHave()
  {
    this.isHaveCheckBox.setChecked(true);
  }
  
  public void showIsHave()
  {
    this.isHaveLayout.setVisibility(0);
    this.isHaveDivider.setVisibility(0);
    this.regionAllLayout.getLayoutParams().height = DPIUtil.dip2px(89.0F);
    resetIsHave();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.product.ProductFilterActivity
 * JD-Core Version:    0.7.0.1
 */