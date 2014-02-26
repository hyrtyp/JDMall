package com.jingdong.app.mall.product;

import android.app.AlertDialog.Builder;
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
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.ui.DialogController;
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
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class SearchFilterActivity
  extends MyActivity
  implements AdapterView.OnItemClickListener
{
  public static final String CATEGORY_FILTER = "category_filter";
  public static final String FIELD = "field";
  private static final String TAG = "SearchFilterActivity";
  private String categoryId;
  private JSONArrayPoxy categoryJsonArray;
  private AlertDialog.Builder catelogyFilterDialog;
  private View.OnClickListener clickListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      Iterator localIterator1;
      Iterator localIterator2;
      label95:
      SearchFilterActivity localSearchFilterActivity3;
      if (paramAnonymousView.getId() == 2131494684)
      {
        if ((SearchFilterActivity.this.list == null) || (SearchFilterActivity.this.list.size() <= 0)) {
          break label1461;
        }
        localIterator1 = SearchFilterActivity.this.list.iterator();
        if (localIterator1.hasNext()) {
          break label646;
        }
        if ((SearchFilterActivity.this.headList != null) && (SearchFilterActivity.this.headList.size() > 0))
        {
          localIterator2 = SearchFilterActivity.this.headList.iterator();
          if (localIterator2.hasNext()) {
            break label1304;
          }
        }
        localSearchFilterActivity3 = SearchFilterActivity.this;
        if (!SearchFilterActivity.this.remember) {
          break label1453;
        }
      }
      label646:
      label800:
      label807:
      label1453:
      for (String str5 = "1";; str5 = "0")
      {
        localSearchFilterActivity3.rememberRegion = str5;
        SearchFilterActivity.this.searchOldId = "";
        SearchFilterActivity localSearchFilterActivity4 = SearchFilterActivity.this;
        localSearchFilterActivity4.searchOldId = (localSearchFilterActivity4.searchOldId + SearchFilterActivity.this.categoryId + "-");
        SearchFilterActivity localSearchFilterActivity5 = SearchFilterActivity.this;
        localSearchFilterActivity5.searchOldId = (localSearchFilterActivity5.searchOldId + SearchFilterActivity.this.region + "-");
        SearchFilterActivity localSearchFilterActivity6 = SearchFilterActivity.this;
        localSearchFilterActivity6.searchOldId = (localSearchFilterActivity6.searchOldId + SearchFilterActivity.this.distribution + "-");
        SearchFilterActivity localSearchFilterActivity7 = SearchFilterActivity.this;
        localSearchFilterActivity7.searchOldId = (localSearchFilterActivity7.searchOldId + SearchFilterActivity.this.rememberRegion + "-");
        SearchFilterActivity localSearchFilterActivity8 = SearchFilterActivity.this;
        localSearchFilterActivity8.searchOldId += SearchFilterActivity.this.provinceName;
        Intent localIntent = new Intent(SearchFilterActivity.this, ProductListActivity.class);
        Bundle localBundle = new Bundle();
        localBundle.putBoolean("com.360buy:clearHistoryFlag", true);
        localBundle.putString("keyWord", SearchFilterActivity.this.keyWord);
        localBundle.putString("searchOldId", SearchFilterActivity.this.searchOldId);
        localBundle.putString("filterName", SearchFilterActivity.this.filterName);
        localBundle.putString("field", SearchFilterActivity.this.field);
        localBundle.putString("price", SearchFilterActivity.this.price);
        localBundle.putInt("priceId", SearchFilterActivity.this.priceId);
        localBundle.putSerializable("expressionKeyMap", SearchFilterActivity.this.expressionKeyMap);
        localBundle.putSerializable("expandNameMap", SearchFilterActivity.this.expandNameMap);
        localBundle.putSerializable("expressionKeyIdMap", SearchFilterActivity.this.expressionKeyIdMap);
        localBundle.putSerializable("expandNameIdMap", SearchFilterActivity.this.expandNameIdMap);
        localBundle.putSerializable("category_filter", SearchFilterActivity.this.mCategoryFilter);
        localBundle.putInt("sortKey", SearchFilterActivity.this.productListSortKey);
        if ((SearchFilterActivity.this.isHaveCheckBox.isChecked()) && (SearchFilterActivity.this.isNeedShowStock)) {
          localBundle.putString("stock", "have");
        }
        localBundle.putSerializable("source", new SourceEntity("searchFilter", SearchFilterActivity.this.keyWord));
        localIntent.putExtras(localBundle);
        localIntent.putExtra("com.360buy:clearHistoryFlag", true);
        SearchFilterActivity.this.setResult(-1, localIntent);
        SearchFilterActivity.this.finish();
        return;
        Object localObject = localIterator1.next();
        if (!(localObject instanceof SearchFilter)) {
          break;
        }
        SearchFilter localSearchFilter1 = (SearchFilter)localObject;
        if (localSearchFilter1.getKeyList().length > 0)
        {
          if (localSearchFilter1.getTypeFlag() == 1)
          {
            SearchFilterActivity localSearchFilterActivity1 = SearchFilterActivity.this;
            String str3;
            label708:
            SearchFilterActivity localSearchFilterActivity2;
            if (localSearchFilter1.getSelectedItem() != null)
            {
              str3 = localSearchFilter1.getSelectedItem();
              localSearchFilterActivity1.categoryId = str3;
              localSearchFilterActivity2 = SearchFilterActivity.this;
              if (localSearchFilter1.getSelectedOrder() == 0) {
                break label800;
              }
            }
            for (String str4 = String.valueOf(ArrayUtil.getValueOfArray(localSearchFilter1.getValueList(), localSearchFilter1.getSelectedOrder(), ""));; str4 = "")
            {
              localSearchFilterActivity2.filterName = str4;
              if (localSearchFilter1.getFieldList() == null) {
                break label807;
              }
              SearchFilterActivity.this.field = String.valueOf(ArrayUtil.getValueOfArray(localSearchFilter1.getFieldList(), localSearchFilter1.getSelectedOrder(), ""));
              break;
              str3 = "0";
              break label708;
            }
            SearchFilterActivity.this.field = "";
            break;
          }
          if (localSearchFilter1.getTypeFlag() == 5)
          {
            if (localSearchFilter1.getSelectedOrder() != 0)
            {
              SearchFilterActivity.this.price = String.valueOf(ArrayUtil.getValueOfArray(localSearchFilter1.getValueList(), localSearchFilter1.getSelectedOrder(), ""));
              SearchFilterActivity.this.priceId = localSearchFilter1.getSelectedOrder();
              break;
            }
            SearchFilterActivity.this.price = "0";
            SearchFilterActivity.this.priceId = 0;
            break;
          }
          if (localSearchFilter1.getTypeFlag() == 6)
          {
            if (localSearchFilter1.getSelectedOrder() != 0)
            {
              int j = localSearchFilter1.getSelectedOrder();
              String str2 = String.valueOf(ArrayUtil.getValueOfArray(localSearchFilter1.getValueList(), j, ""));
              SearchFilterActivity.this.expressionKeyMap.put(localSearchFilter1.getFilterName(), str2);
              SearchFilterActivity.this.expressionKeyIdMap.put(localSearchFilter1.getFilterName(), Integer.valueOf(j));
              break;
            }
            if (SearchFilterActivity.this.expressionKeyMap.get(localSearchFilter1.getFilterName()) != null) {
              SearchFilterActivity.this.expressionKeyMap.remove(localSearchFilter1.getFilterName());
            }
            if (SearchFilterActivity.this.expressionKeyIdMap.get(localSearchFilter1.getFilterName()) == null) {
              break;
            }
            SearchFilterActivity.this.expressionKeyIdMap.remove(localSearchFilter1.getFilterName());
            break;
          }
          if (localSearchFilter1.getTypeFlag() != 7) {
            break;
          }
          if (localSearchFilter1.getSelectedOrder() != 0)
          {
            int i = localSearchFilter1.getSelectedOrder();
            String str1 = String.valueOf(ArrayUtil.getValueOfArray(localSearchFilter1.getKeyList(), i, ""));
            SearchFilterActivity.this.expandNameMap.put(localSearchFilter1.getFilterNameId(), str1);
            SearchFilterActivity.this.expandNameIdMap.put(localSearchFilter1.getFilterNameId(), Integer.valueOf(i));
            break;
          }
          if (SearchFilterActivity.this.expandNameMap.get(localSearchFilter1.getFilterNameId()) != null) {
            SearchFilterActivity.this.expandNameMap.remove(localSearchFilter1.getFilterNameId());
          }
          if (SearchFilterActivity.this.expandNameIdMap.get(localSearchFilter1.getFilterNameId()) == null) {
            break;
          }
          SearchFilterActivity.this.expandNameIdMap.remove(localSearchFilter1.getFilterNameId());
          break;
        }
        if (localSearchFilter1.getTypeFlag() == 1)
        {
          SearchFilterActivity.this.categoryId = "0";
          SearchFilterActivity.this.filterName = "";
          SearchFilterActivity.this.field = "";
          break;
        }
        if (localSearchFilter1.getTypeFlag() == 2)
        {
          SearchFilterActivity.this.region = "0";
          break;
        }
        if (localSearchFilter1.getTypeFlag() == 3)
        {
          SearchFilterActivity.this.distribution = "0";
          break;
        }
        SearchFilterActivity.this.rememberRegion = "0";
        break;
        SearchFilter localSearchFilter2 = (SearchFilter)localIterator2.next();
        if (localSearchFilter2.getTypeFlag() == 2)
        {
          SearchFilterActivity localSearchFilterActivity10 = SearchFilterActivity.this;
          if (localSearchFilter2.getSelectedItem() != null) {}
          for (String str7 = localSearchFilter2.getSelectedItem();; str7 = "0")
          {
            localSearchFilterActivity10.region = str7;
            SearchFilterActivity.this.provinceName = String.valueOf(ArrayUtil.getValueOfArray(localSearchFilter2.getValueList(), localSearchFilter2.getSelectedOrder(), ""));
            int k = localSearchFilter2.getSelectedOrder();
            SearchFilterActivity.this.regionTag = k;
            break;
          }
        }
        if (localSearchFilter2.getTypeFlag() != 3) {
          break label95;
        }
        SearchFilterActivity localSearchFilterActivity9 = SearchFilterActivity.this;
        if (localSearchFilter2.getSelectedItem() != null) {}
        for (String str6 = localSearchFilter2.getSelectedItem();; str6 = "0")
        {
          localSearchFilterActivity9.distribution = str6;
          break;
        }
      }
      label1304:
      label1461:
      final DialogController local1 = new DialogController()
      {
        public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
        {
          switch (paramAnonymous2Int)
          {
          default: 
            return;
          }
          paramAnonymous2DialogInterface.dismiss();
        }
      };
      local1.setTitle(SearchFilterActivity.this.getString(2131165609));
      local1.setMessage(SearchFilterActivity.this.getString(2131165724));
      local1.setPositiveButton(SearchFilterActivity.this.getString(2131165517));
      local1.init(SearchFilterActivity.this);
      SearchFilterActivity.this.post(new Runnable()
      {
        public void run()
        {
          local1.show();
        }
      });
    }
  };
  private RelativeLayout distributeLayout;
  TextView distributeSearchChoosed;
  TextView distributeSearchMenu;
  private String distribution = "0";
  private HashMap<String, Integer> expandNameIdMap = new HashMap();
  private HashMap<String, String> expandNameMap = new HashMap();
  private HashMap<String, Integer> expressionKeyIdMap = new HashMap();
  private HashMap<String, String> expressionKeyMap = new HashMap();
  private String field;
  private String filterName;
  private Boolean firstIn = Boolean.valueOf(false);
  private String gotCid;
  private String gotField;
  private List<SearchFilter> headList = new ArrayList();
  CheckBox isHaveCheckBox;
  private View isHaveDivider;
  private RelativeLayout isHaveLayout;
  private boolean isNeedShowStock = false;
  private StringBuffer[] items;
  private String keyWord;
  private List<SearchFilter> list;
  private ListView listView;
  private MySimpleAdapter mAdapter;
  SearchFilter mCategoryFilter;
  SearchFilter mDistributeFilter;
  private JSONArrayPoxy mExpandNameJsonArrayList;
  private JSONArrayPoxy mExpressionKeyJsonArrayList;
  private JSONArrayPoxy mPriceJsonArray;
  SearchFilter mRegionFilter;
  private String mSelectedCategoryItem = "";
  private int mSelectedCategoryOrder = 0;
  private MyActivity myActivity;
  private String price;
  private int priceId;
  private int productListSortKey;
  private JSONArrayPoxy provinceJsonArray;
  private String provinceName;
  private String region = "0";
  private LinearLayout regionAllLayout;
  private RelativeLayout regionLayout;
  TextView regionSearchChoosed;
  TextView regionSearchMenu;
  private int regionTag;
  private boolean remember = true;
  private String rememberRegion;
  private Button searchButton;
  private String searchOldId;
  private TextView searchTitle;
  
  private void handleClickAction(final SearchFilter paramSearchFilter, final TextView paramTextView)
  {
    this.catelogyFilterDialog = new AlertDialog.Builder(this);
    this.catelogyFilterDialog.setTitle(paramSearchFilter.getFilterName());
    if (paramSearchFilter.getKeyList().length > 0)
    {
      this.catelogyFilterDialog.setSingleChoiceItems(paramSearchFilter.getValueList(), paramSearchFilter.getSelectedOrder(), new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramTextView.setText(String.valueOf(ArrayUtil.getValueOfArray(paramSearchFilter.getValueList(), paramAnonymousInt, "")));
          if (paramAnonymousInt == 0) {
            paramTextView.setTextColor(SearchFilterActivity.this.getResources().getColor(2131296355));
          }
          for (;;)
          {
            paramSearchFilter.setSelectedOrder(paramAnonymousInt);
            paramAnonymousDialogInterface.dismiss();
            return;
            paramTextView.setTextColor(SearchFilterActivity.this.getResources().getColor(2131296356));
          }
        }
      });
      this.catelogyFilterDialog.show();
    }
  }
  
  private void initKeyValueMap()
  {
    this.expressionKeyMap = new HashMap();
    this.expressionKeyIdMap = new HashMap();
    this.expandNameMap = new HashMap();
    this.expandNameIdMap = new HashMap();
  }
  
  public static void initValue(MyActivity paramMyActivity, SearchFilter paramSearchFilter, TextView paramTextView, int paramInt)
  {
    if ((paramSearchFilter.getKeyList() != null) && (paramSearchFilter.getValueList() != null))
    {
      if (paramSearchFilter.getSelectedOrder() > 0)
      {
        paramTextView.setTextColor(paramMyActivity.getResources().getColor(2131296356));
        paramTextView.setText(String.valueOf(ArrayUtil.getValueOfArray(paramSearchFilter.getValueList(), paramSearchFilter.getSelectedOrder(), "全部")));
      }
      do
      {
        return;
        paramTextView.setTextColor(paramMyActivity.getResources().getColor(2131296355));
        if (paramSearchFilter.getTypeFlag() == 2)
        {
          if (paramInt > 0) {
            paramTextView.setTextColor(paramMyActivity.getResources().getColor(2131296356));
          }
          paramTextView.setText(String.valueOf(ArrayUtil.getValueOfArray(paramSearchFilter.getValueList(), paramInt, "全部")));
          paramSearchFilter.setSelectedItem(String.valueOf(ArrayUtil.getValueOfArray(paramSearchFilter.getKeyList(), paramInt, "0")));
          paramSearchFilter.setSelectedOrder(paramInt);
          return;
        }
        if ((paramSearchFilter.getTypeFlag() == 4) && (CommonUtil.getRememberStateSharedPreferences().booleanValue()))
        {
          paramTextView.setText(String.valueOf(ArrayUtil.getValueOfArray(paramSearchFilter.getValueList(), 1, "全部")));
          paramSearchFilter.setSelectedItem(String.valueOf(ArrayUtil.getValueOfArray(paramSearchFilter.getKeyList(), 1, "0")));
          paramSearchFilter.setSelectedOrder(1);
          return;
        }
      } while ((paramSearchFilter.getValueList().length <= 0) || (paramSearchFilter.getKeyList().length <= 0));
      paramTextView.setText(String.valueOf(ArrayUtil.getValueOfArray(paramSearchFilter.getValueList(), 0, "全部")));
      paramSearchFilter.setSelectedItem(String.valueOf(ArrayUtil.getValueOfArray(paramSearchFilter.getKeyList(), 0, "0")));
      paramSearchFilter.setSelectedOrder(0);
      return;
    }
    paramTextView.setText(paramMyActivity.getString(2131166024));
    paramTextView.setTextColor(paramMyActivity.getResources().getColor(2131296355));
    paramTextView.setEnabled(false);
  }
  
  private void queryAllCategoryFilter(String paramString1, String paramString2)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("catelogyFilter");
    localHttpSetting.putJsonParam("keyword", this.keyWord);
    localHttpSetting.putJsonParam("newVersion", "1");
    if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString2)) && (!TextUtils.equals("0", paramString1)))
    {
      localHttpSetting.putJsonParam("cid", paramString1);
      localHttpSetting.putJsonParam("filed", paramString2);
    }
    localHttpSetting.setEffect(1);
    localHttpSetting.setListener(new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONArrayPoxy localJSONArrayPoxy1 = paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("catelogyList");
        if (localJSONArrayPoxy1 != null) {
          SearchFilterActivity.this.categoryJsonArray = localJSONArrayPoxy1;
        }
        JSONArrayPoxy localJSONArrayPoxy2 = paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("expandAttrData");
        try
        {
          JSONArrayPoxy localJSONArrayPoxy8 = localJSONArrayPoxy2.getJSONObjectOrNull(0).getJSONArrayOrNull("price");
          localJSONArrayPoxy3 = localJSONArrayPoxy8;
        }
        catch (Exception localException1)
        {
          for (;;)
          {
            JSONArrayPoxy localJSONArrayPoxy3 = null;
          }
        }
        if (localJSONArrayPoxy3 != null) {
          SearchFilterActivity.this.mPriceJsonArray = localJSONArrayPoxy3;
        }
        try
        {
          JSONArrayPoxy localJSONArrayPoxy7 = localJSONArrayPoxy2.getJSONObjectOrNull(1).getJSONArrayOrNull("expressionKey");
          localJSONArrayPoxy4 = localJSONArrayPoxy7;
        }
        catch (Exception localException2)
        {
          for (;;)
          {
            JSONArrayPoxy localJSONArrayPoxy4 = null;
          }
        }
        SearchFilterActivity.this.mExpressionKeyJsonArrayList = localJSONArrayPoxy4;
        try
        {
          JSONArrayPoxy localJSONArrayPoxy6 = localJSONArrayPoxy2.getJSONObjectOrNull(2).getJSONArrayOrNull("expandName");
          localJSONArrayPoxy5 = localJSONArrayPoxy6;
        }
        catch (Exception localException3)
        {
          for (;;)
          {
            JSONArrayPoxy localJSONArrayPoxy5 = null;
          }
        }
        SearchFilterActivity.this.mExpandNameJsonArrayList = localJSONArrayPoxy5;
        SearchFilterActivity.this.querySelectRegion();
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        SearchFilterActivity.this.querySelectRegion();
      }
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    localHttpSetting.setNotifyUser(true);
    getHttpGroupaAsynPool().add(localHttpSetting);
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
        JSONArrayPoxy localJSONArrayPoxy = paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("provinces");
        if (localJSONArrayPoxy != null) {
          SearchFilterActivity.this.provinceJsonArray = localJSONArrayPoxy;
        }
        SearchFilterActivity.this.showSearchFilter();
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        SearchFilterActivity.this.showSearchFilter();
      }
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    localHttpSetting.setLocalFileCache(true);
    localHttpSetting.setLocalFileCacheTime(259200000L);
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void showHintDialog()
  {
    DialogController local13 = new DialogController()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        switch (paramAnonymousInt)
        {
        default: 
          return;
        }
        paramAnonymousDialogInterface.dismiss();
      }
    };
    local13.setTitle(getString(2131165609));
    local13.setMessage(getString(2131166023));
    local13.setPositiveButton(getString(2131165517));
    local13.init(this);
    local13.show();
  }
  
  private void showSearchFilter()
  {
    this.list = new ArrayList();
    SearchFilter localSearchFilter1;
    String str1;
    String str2;
    Iterator localIterator;
    label234:
    int k;
    if (this.mCategoryFilter == null)
    {
      localSearchFilter1 = new SearchFilter(this.categoryJsonArray, 1);
      this.mCategoryFilter = localSearchFilter1;
      if (this.mRegionFilter == null) {
        this.mRegionFilter = new SearchFilter(this.provinceJsonArray, 2);
      }
      if (this.mDistributeFilter == null) {
        this.mDistributeFilter = new SearchFilter(new JSONArrayPoxy(), 3);
      }
      SearchFilter localSearchFilter2 = new SearchFilter(this.mPriceJsonArray, 5);
      if (this.firstIn.booleanValue()) {
        localSearchFilter2.setSelectedOrder(this.priceId);
      }
      this.list.add(localSearchFilter1);
      if (this.firstIn.booleanValue())
      {
        this.headList.add(this.mDistributeFilter);
        this.headList.add(this.mRegionFilter);
      }
      if ((!TextUtils.isEmpty(this.searchOldId)) && (this.firstIn.booleanValue()))
      {
        String[] arrayOfString1 = this.searchOldId.split("-");
        str1 = String.valueOf(ArrayUtil.getValueOfArray(arrayOfString1, 1, "0"));
        str2 = String.valueOf(ArrayUtil.getValueOfArray(arrayOfString1, 2, "0"));
        localIterator = this.headList.iterator();
        if (localIterator.hasNext()) {
          break label409;
        }
      }
      initDistributeRegionValue();
      if ((localSearchFilter2.getValueList() != null) && (localSearchFilter2.getValueList().length > 1)) {
        this.list.add(localSearchFilter2);
      }
      if (!this.firstIn.booleanValue()) {
        initKeyValueMap();
      }
      if (this.mExpressionKeyJsonArrayList != null)
      {
        k = 0;
        label299:
        if (k < this.mExpressionKeyJsonArrayList.length()) {
          break label587;
        }
      }
      if (this.mExpandNameJsonArrayList == null) {}
    }
    for (int i = 0;; i++)
    {
      label409:
      label500:
      SearchFilter localSearchFilter4;
      if (i >= this.mExpandNameJsonArrayList.length())
      {
        this.mAdapter = new MySimpleAdapter(this, this.list, 2130903261, new String[] { "expandSortName" }, new int[] { 2131494294 })
        {
          public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
          {
            View localView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
            if (paramAnonymousInt >= SearchFilterActivity.this.list.size()) {}
            SearchFilter localSearchFilter;
            TextView localTextView2;
            do
            {
              return localView;
              localSearchFilter = (SearchFilter)SearchFilterActivity.this.list.get(paramAnonymousInt);
              TextView localTextView1 = (TextView)localView.findViewById(2131494294);
              localTextView2 = (TextView)localView.findViewById(2131494296);
              localTextView1.setText(localSearchFilter.getFilterName());
              if ((localSearchFilter.getKeyList() == null) || (localSearchFilter.getValueList() == null)) {
                break;
              }
              if (localSearchFilter.getSelectedOrder() > 0)
              {
                localTextView2.setTextColor(SearchFilterActivity.this.getResources().getColor(2131296356));
                localTextView2.setText(String.valueOf(ArrayUtil.getValueOfArray(localSearchFilter.getValueList(), localSearchFilter.getSelectedOrder(), "全部")));
                return localView;
              }
              if ((localSearchFilter.getTypeFlag() == 4) && (CommonUtil.getRememberStateSharedPreferences().booleanValue()))
              {
                localTextView2.setTextColor(SearchFilterActivity.this.getResources().getColor(2131296356));
                localTextView2.setText(String.valueOf(ArrayUtil.getValueOfArray(localSearchFilter.getValueList(), 1, "全部")));
                localSearchFilter.setSelectedItem(String.valueOf(ArrayUtil.getValueOfArray(localSearchFilter.getKeyList(), 1, "0")));
                localSearchFilter.setSelectedOrder(1);
                return localView;
              }
            } while ((localSearchFilter.getValueList().length <= 0) || (localSearchFilter.getKeyList().length <= 0));
            localTextView2.setTextColor(SearchFilterActivity.this.getResources().getColor(2131296355));
            localTextView2.setText(String.valueOf(ArrayUtil.getValueOfArray(localSearchFilter.getValueList(), 0, "全部")));
            localSearchFilter.setSelectedItem(String.valueOf(ArrayUtil.getValueOfArray(localSearchFilter.getKeyList(), 0, "0")));
            localSearchFilter.setSelectedOrder(0);
            return localView;
            localTextView2.setText(SearchFilterActivity.this.getString(2131166024));
            localTextView2.setTextColor(SearchFilterActivity.this.getResources().getColor(2131296355));
            localTextView2.setEnabled(false);
            return localView;
          }
        };
        post(new Runnable()
        {
          public void run()
          {
            SearchFilterActivity.this.listView.setAdapter(SearchFilterActivity.this.mAdapter);
          }
        });
        this.listView.setOnItemClickListener(this);
        this.firstIn = Boolean.valueOf(false);
        return;
        localSearchFilter1 = this.mCategoryFilter;
        break;
        SearchFilter localSearchFilter5 = (SearchFilter)localIterator.next();
        if (localSearchFilter5.getTypeFlag() == 3)
        {
          if (Integer.parseInt(str2) == 0) {
            break label234;
          }
          int i3 = 0;
          String[] arrayOfString3 = localSearchFilter5.getKeyList();
          int i4 = arrayOfString3.length;
          for (int i5 = 0;; i5++)
          {
            if (i5 >= i4) {
              break label500;
            }
            if (arrayOfString3[i5].equals(str2))
            {
              localSearchFilter5.setSelectedOrder(i3);
              localSearchFilter5.setSelectedItem(str2);
              break;
            }
            i3++;
          }
          break label234;
        }
        if ((localSearchFilter5.getTypeFlag() != 2) || (Integer.parseInt(str1) == 0)) {
          break label234;
        }
        int n = 0;
        String[] arrayOfString2 = localSearchFilter5.getKeyList();
        int i1 = arrayOfString2.length;
        for (int i2 = 0;; i2++)
        {
          if (i2 >= i1) {
            break label585;
          }
          if (arrayOfString2[i2].equals(str1))
          {
            this.regionTag = n;
            if (this.regionTag == 0) {
              break;
            }
            this.isNeedShowStock = true;
            break;
          }
          n++;
        }
        label585:
        break label234;
        label587:
        JSONObjectProxy localJSONObjectProxy = this.mExpressionKeyJsonArrayList.getJSONObjectOrNull(k);
        if (localJSONObjectProxy != null) {
          localSearchFilter4 = new SearchFilter(localJSONObjectProxy);
        }
      }
      try
      {
        if ((this.expressionKeyIdMap != null) && (this.expressionKeyIdMap.size() != 0) && (localSearchFilter4.getFilterName() != null))
        {
          int m = ((Integer)this.expressionKeyIdMap.get(localSearchFilter4.getFilterName())).intValue();
          if (m != 0) {
            localSearchFilter4.setSelectedOrder(m);
          }
        }
      }
      catch (Exception localException2)
      {
        label671:
        JSONArrayPoxy localJSONArrayPoxy;
        SearchFilter localSearchFilter3;
        break label671;
      }
      this.list.add(localSearchFilter4);
      k++;
      break label299;
      localJSONArrayPoxy = this.mExpandNameJsonArrayList.getJSONArrayOrNull(i);
      if (localJSONArrayPoxy != null)
      {
        localSearchFilter3 = new SearchFilter(localJSONArrayPoxy, 7);
        if ((this.expandNameIdMap == null) || (this.expandNameIdMap.size() <= 0)) {}
      }
      try
      {
        if ((this.expandNameIdMap != null) && (this.expandNameIdMap.size() != 0) && (localSearchFilter3.getFilterNameId() != null))
        {
          int j = ((Integer)this.expandNameIdMap.get(localSearchFilter3.getFilterNameId())).intValue();
          if (j != 0) {
            localSearchFilter3.setSelectedOrder(j);
          }
        }
      }
      catch (Exception localException1)
      {
        label792:
        break label792;
      }
      this.list.add(localSearchFilter3);
    }
  }
  
  public void handleHeadClickAction(final SearchFilter paramSearchFilter, final TextView paramTextView)
  {
    if ((paramSearchFilter.getKeyList() != null) && (paramSearchFilter.getKeyList().length > 0))
    {
      if (paramSearchFilter.getTypeFlag() != 2) {
        break label90;
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
              paramTextView.setTextColor(SearchFilterActivity.this.getResources().getColor(2131296355));
              paramSearchFilter.setSelectedItem(String.valueOf(ArrayUtil.getValueOfArray(paramSearchFilter.getKeyList(), paramAnonymousInt, "")));
              paramSearchFilter.setSelectedOrder(paramAnonymousInt);
              paramAnonymousDialogInterface.dismiss();
              if (paramAnonymousInt != 0)
              {
                if (SearchFilterActivity.this.isNeedShowStock) {
                  break label172;
                }
                SearchFilterActivity.this.isNeedShowStock = true;
                SearchFilterActivity.this.showIsHave();
              }
            }
            for (;;)
            {
              if ((paramAnonymousInt == 0) && (SearchFilterActivity.this.isNeedShowStock))
              {
                SearchFilterActivity.this.isNeedShowStock = false;
                SearchFilterActivity.this.hideIsHave();
              }
              SearchFilterActivity.this.regionTag = paramAnonymousInt;
              return;
              paramTextView.setTextColor(SearchFilterActivity.this.getResources().getColor(2131296356));
              break;
              label172:
              SearchFilterActivity.this.resetIsHave();
            }
          }
        });
      }
    }
    label90:
    do
    {
      this.catelogyFilterDialog.show();
      do
      {
        return;
      } while (paramSearchFilter.getTypeFlag() != 3);
      this.catelogyFilterDialog = new AlertDialog.Builder(this);
      this.catelogyFilterDialog.setTitle(paramSearchFilter.getFilterName());
    } while (paramSearchFilter.getValueList().length <= 0);
    this.catelogyFilterDialog.setSingleChoiceItems(paramSearchFilter.getValueList(), paramSearchFilter.getSelectedOrder(), new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramTextView.setText(String.valueOf(ArrayUtil.getValueOfArray(paramSearchFilter.getValueList(), paramAnonymousInt, "")));
        if (paramAnonymousInt == 0) {
          paramTextView.setTextColor(SearchFilterActivity.this.getResources().getColor(2131296355));
        }
        for (;;)
        {
          paramSearchFilter.setSelectedItem(String.valueOf(ArrayUtil.getValueOfArray(paramSearchFilter.getKeyList(), paramAnonymousInt, "")));
          paramSearchFilter.setSelectedOrder(paramAnonymousInt);
          paramAnonymousDialogInterface.dismiss();
          return;
          paramTextView.setTextColor(SearchFilterActivity.this.getResources().getColor(2131296356));
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
    this.isHaveDivider = findViewById(2131494299);
    this.distributeSearchMenu = ((TextView)this.distributeLayout.findViewById(2131494294));
    this.distributeSearchChoosed = ((TextView)this.distributeLayout.findViewById(2131494296));
    this.distributeSearchMenu.setText("选择配送方");
    this.regionSearchMenu = ((TextView)this.regionLayout.findViewById(2131494294));
    this.regionSearchChoosed = ((TextView)this.regionLayout.findViewById(2131494296));
    this.regionSearchMenu.setText("选择库存");
    this.isHaveCheckBox = ((CheckBox)this.isHaveLayout.findViewById(2131494303));
  }
  
  public void initDistributeRegionValue()
  {
    post(new Runnable()
    {
      public void run()
      {
        SearchFilterActivity.initValue(SearchFilterActivity.this.myActivity, SearchFilterActivity.this.mDistributeFilter, SearchFilterActivity.this.distributeSearchChoosed, SearchFilterActivity.this.regionTag);
        SearchFilterActivity.initValue(SearchFilterActivity.this.myActivity, SearchFilterActivity.this.mRegionFilter, SearchFilterActivity.this.regionSearchChoosed, SearchFilterActivity.this.regionTag);
        SearchFilterActivity.this.initIsHaveItem();
      }
    });
    this.distributeLayout.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        SearchFilterActivity.this.handleHeadClickAction(SearchFilterActivity.this.mDistributeFilter, SearchFilterActivity.this.distributeSearchChoosed);
      }
    });
    this.regionLayout.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        SearchFilterActivity.this.handleHeadClickAction(SearchFilterActivity.this.mRegionFilter, SearchFilterActivity.this.regionSearchChoosed);
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
    this.productListSortKey = getIntent().getExtras().getInt("sortKey", 1);
    this.keyWord = getIntent().getExtras().getString("keyWord");
    this.searchOldId = getIntent().getExtras().getString("searchOldId");
    if (getIntent().getSerializableExtra("expressionKeyMap") != null) {
      this.expressionKeyMap = ((HashMap)getIntent().getSerializableExtra("expressionKeyMap"));
    }
    if (getIntent().getSerializableExtra("expandNameMap") != null) {
      this.expandNameMap = ((HashMap)getIntent().getSerializableExtra("expandNameMap"));
    }
    if (getIntent().getSerializableExtra("expressionKeyIdMap") != null) {
      this.expressionKeyIdMap = ((HashMap)getIntent().getSerializableExtra("expressionKeyIdMap"));
    }
    if (getIntent().getSerializableExtra("expandNameIdMap") != null) {
      this.expandNameIdMap = ((HashMap)getIntent().getSerializableExtra("expandNameIdMap"));
    }
    if (getIntent().getExtras() != null)
    {
      this.priceId = getIntent().getExtras().getInt("priceId");
      this.mCategoryFilter = ((SearchFilter)getIntent().getExtras().getSerializable("category_filter"));
      this.gotField = getIntent().getExtras().getString("field");
    }
    if ((!TextUtils.isEmpty(this.searchOldId)) && (this.searchOldId.contains("-"))) {
      this.gotCid = String.valueOf(ArrayUtil.getValueOfArray(this.searchOldId.split("-"), 0, "0"));
    }
    this.listView = ((ListView)findViewById(2131493220));
    this.listView.setPadding(0, 0, 0, 0);
    this.searchTitle = ((TextView)findViewById(2131492990));
    if (this.keyWord.length() > 10) {}
    for (String str1 = this.keyWord.substring(0, 10) + "...";; str1 = this.keyWord)
    {
      String str2 = str1 + " - " + getString(2131166018);
      this.searchTitle.setText(str2);
      this.searchButton = ((Button)findViewById(2131494684));
      this.searchButton.setText(2131166028);
      this.searchButton.setVisibility(0);
      this.searchButton.setOnClickListener(this.clickListener);
      this.firstIn = Boolean.valueOf(true);
      initComponent();
      queryAllCategoryFilter(this.gotCid, this.gotField);
      return;
    }
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Object localObject = this.list.get(paramInt);
    if (!(localObject instanceof SearchFilter)) {}
    final SearchFilter localSearchFilter;
    final TextView localTextView;
    do
    {
      return;
      localSearchFilter = (SearchFilter)localObject;
      localTextView = (TextView)paramView.findViewById(2131494296);
      if ((localSearchFilter.getKeyList() == null) || (localSearchFilter.getKeyList().length <= 0)) {
        break;
      }
      if (localSearchFilter.getTypeFlag() == 1)
      {
        this.items = new StringBuffer[localSearchFilter.getValueList().length];
        this.items[0] = new StringBuffer();
        this.items[0].append(String.valueOf(ArrayUtil.getValueOfArray(localSearchFilter.getValueList(), 0, "全部")));
        for (int i = 1;; i++)
        {
          if (i >= localSearchFilter.getValueList().length)
          {
            this.catelogyFilterDialog = new AlertDialog.Builder(this);
            this.catelogyFilterDialog.setTitle(localSearchFilter.getFilterName());
            if (this.items.length <= 0) {
              break;
            }
            this.catelogyFilterDialog.setSingleChoiceItems(this.items, localSearchFilter.getSelectedOrder(), new DialogInterface.OnClickListener()
            {
              public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
              {
                localTextView.setText(String.valueOf(ArrayUtil.getValueOfArray(SearchFilterActivity.this.items, paramAnonymousInt, "")));
                if (paramAnonymousInt == 0) {
                  localTextView.setTextColor(SearchFilterActivity.this.getResources().getColor(2131296355));
                }
                for (;;)
                {
                  if (localSearchFilter.getSelectedOrder() != paramAnonymousInt)
                  {
                    localSearchFilter.setSelectedOrder(paramAnonymousInt);
                    localSearchFilter.setSelectedItem(String.valueOf(ArrayUtil.getValueOfArray(localSearchFilter.getKeyList(), paramAnonymousInt, "")));
                    String str1 = String.valueOf(ArrayUtil.getValueOfArray(localSearchFilter.getKeyList(), paramAnonymousInt, ""));
                    String str2 = "";
                    if (localSearchFilter.getFieldList() != null) {
                      str2 = String.valueOf(ArrayUtil.getValueOfArray(localSearchFilter.getFieldList(), paramAnonymousInt, ""));
                    }
                    SearchFilterActivity.this.queryAllCategoryFilter(str1, str2);
                  }
                  paramAnonymousDialogInterface.dismiss();
                  return;
                  localTextView.setTextColor(SearchFilterActivity.this.getResources().getColor(2131296356));
                }
              }
            });
            this.catelogyFilterDialog.show();
            return;
          }
          this.items[i] = new StringBuffer();
          this.items[i].append(String.valueOf(ArrayUtil.getValueOfArray(localSearchFilter.getValueList(), i, "")));
          this.items[i].append("(");
          this.items[i].append(String.valueOf(ArrayUtil.getValueOfArray(localSearchFilter.getWareNumberList(), i, "")));
          this.items[i].append(")");
        }
      }
      if (localSearchFilter.getTypeFlag() == 5)
      {
        handleClickAction(localSearchFilter, localTextView);
        return;
      }
      if (localSearchFilter.getTypeFlag() == 6)
      {
        handleClickAction(localSearchFilter, localTextView);
        return;
      }
    } while (localSearchFilter.getTypeFlag() != 7);
    handleClickAction(localSearchFilter, localTextView);
    return;
    showHintDialog();
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
 * Qualified Name:     com.jingdong.app.mall.product.SearchFilterActivity
 * JD-Core Version:    0.7.0.1
 */