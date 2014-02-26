package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.res.StringUtil;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

public class SearchFilter
  implements Serializable
{
  public static final int CATEGORY = 1;
  public static final int CATELOGY_FILTER = 111;
  public static final int CATELOGY_REGION_FILTER = 113;
  public static final int CATELOGY_SELF_FILTER = 112;
  public static final int DISTRIBUTION = 3;
  public static final int EXPAND_NAME = 7;
  public static final int EXPRESSION_KEY = 6;
  public static final int PRICE = 5;
  public static final int REGION = 2;
  public static final int REMEBER_REGION = 4;
  private final String TAG = "SearchFilter";
  private String[] fieldList;
  private String filterName;
  private String filterNameId;
  private String[] keyList;
  private String selectedItem;
  private int selectedOrder;
  private int typeFlag;
  private String[] valueList;
  private Integer[] wareNumberList;
  
  public SearchFilter(JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      return;
      setFilterName(StringUtil.search_filter_all_category);
      setTypeFlag(1);
      if ((paramJSONArrayPoxy != null) && (paramJSONArrayPoxy.length() > 0))
      {
        new ArrayList();
        ArrayList localArrayList2 = Catelogy.toList(paramJSONArrayPoxy, 1);
        if (localArrayList2 != null)
        {
          this.keyList = new String[1 + localArrayList2.size()];
          this.valueList = new String[1 + localArrayList2.size()];
          this.wareNumberList = new Integer[1 + localArrayList2.size()];
          this.fieldList = new String[1 + localArrayList2.size()];
          this.keyList[0] = "0";
          this.valueList[0] = StringUtil.product_filter_hint;
          this.fieldList[0] = "";
          for (int m = 1; m <= localArrayList2.size(); m++)
          {
            Catelogy localCatelogy = (Catelogy)localArrayList2.get(m - 1);
            this.keyList[m] = localCatelogy.getcId();
            this.valueList[m] = localCatelogy.getName();
            this.wareNumberList[m] = localCatelogy.getWareNumber();
            this.fieldList[m] = localCatelogy.getField();
          }
          continue;
          setFilterName(StringUtil.search_filter_region);
          setTypeFlag(2);
          if ((paramJSONArrayPoxy != null) && (paramJSONArrayPoxy.length() > 0))
          {
            new ArrayList();
            ArrayList localArrayList1 = Province.toList(paramJSONArrayPoxy, 0);
            if (localArrayList1 != null)
            {
              this.keyList = new String[1 + localArrayList1.size()];
              this.valueList = new String[1 + localArrayList1.size()];
              this.keyList[0] = "0";
              this.valueList[0] = StringUtil.product_filter_hint;
              for (int k = 1; k <= localArrayList1.size(); k++)
              {
                Province localProvince = (Province)localArrayList1.get(k - 1);
                this.keyList[k] = localProvince.getProvinceID();
                this.valueList[k] = localProvince.getProvinceName();
              }
              continue;
              setFilterName(StringUtil.search_filter_distribution);
              setTypeFlag(3);
              this.keyList = new String[3];
              this.valueList = new String[3];
              this.keyList[0] = "0";
              this.keyList[1] = "1";
              this.keyList[2] = "2";
              this.valueList[0] = StringUtil.product_filter_hint;
              this.valueList[1] = StringUtil.search_filter_jd_distribute;
              this.valueList[2] = StringUtil.search_filter_other_distribute;
              return;
              setFilterName(StringUtil.search_filter_price);
              setTypeFlag(5);
              if ((paramJSONArrayPoxy != null) && (paramJSONArrayPoxy.length() > 0))
              {
                new ArrayList();
                List localList = PriceFilter.toList(paramJSONArrayPoxy);
                if (localList != null)
                {
                  this.keyList = new String[1 + localList.size()];
                  this.valueList = new String[1 + localList.size()];
                  this.keyList[0] = "0";
                  this.valueList[0] = StringUtil.product_filter_hint;
                  for (int j = 1; j <= localList.size(); j++)
                  {
                    PriceFilter localPriceFilter = (PriceFilter)localList.get(j - 1);
                    this.keyList[j] = String.valueOf(j);
                    this.valueList[j] = (localPriceFilter.getMinPrice() + "-" + localPriceFilter.getMaxPrice());
                  }
                  continue;
                  JSONObjectProxy localJSONObjectProxy1 = paramJSONArrayPoxy.getJSONObjectOrNull(0);
                  if (localJSONObjectProxy1 != null)
                  {
                    String str = (String)localJSONObjectProxy1.keys().next();
                    setFilterNameId(str);
                    JSONObjectProxy localJSONObjectProxy2 = paramJSONArrayPoxy.getJSONObjectOrNull(0);
                    if (localJSONObjectProxy2 != null) {
                      setFilterName(localJSONObjectProxy2.getStringOrNull(str));
                    }
                    setTypeFlag(7);
                    this.keyList = new String[paramJSONArrayPoxy.length()];
                    this.valueList = new String[paramJSONArrayPoxy.length()];
                    this.keyList[0] = "0";
                    this.valueList[0] = StringUtil.product_filter_hint;
                    if ((paramJSONArrayPoxy != null) && (paramJSONArrayPoxy.length() > 1)) {
                      for (int i = 1; i < paramJSONArrayPoxy.length(); i++)
                      {
                        JSONObjectProxy localJSONObjectProxy3 = paramJSONArrayPoxy.getJSONObjectOrNull(i);
                        if (localJSONObjectProxy3 != null)
                        {
                          this.keyList[i] = ((String)localJSONObjectProxy3.keys().next());
                          this.valueList[i] = localJSONObjectProxy3.getStringOrNull(this.keyList[i]);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  
  public SearchFilter(JSONObjectProxy paramJSONObjectProxy)
  {
    String str1 = (String)paramJSONObjectProxy.keys().next();
    setFilterName(str1);
    String str2 = paramJSONObjectProxy.getStringOrNull(str1);
    String[] arrayOfString;
    if (!TextUtils.isEmpty(str2))
    {
      if (!str2.contains(";")) {
        break label128;
      }
      arrayOfString = str2.split(";");
      setTypeFlag(6);
      if ((arrayOfString != null) && (arrayOfString.length > 0))
      {
        this.keyList = new String[1 + arrayOfString.length];
        this.valueList = new String[1 + arrayOfString.length];
        this.keyList[0] = "0";
        this.valueList[0] = StringUtil.product_filter_hint;
      }
    }
    for (int i = 1;; i++)
    {
      if (i > arrayOfString.length)
      {
        return;
        label128:
        arrayOfString = new String[] { str2 };
        break;
      }
      this.keyList[i] = String.valueOf(i);
      this.valueList[i] = arrayOfString[(i - 1)];
    }
  }
  
  public SearchFilter(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    this.selectedOrder = 0;
    this.selectedItem = "0";
    switch (paramInt)
    {
    }
    for (;;)
    {
      return;
      this.filterName = paramJSONObjectProxy.getStringOrNull("expandSortName");
      JSONArrayPoxy localJSONArrayPoxy = paramJSONObjectProxy.getJSONArrayOrNull("items");
      if ((localJSONArrayPoxy != null) && (localJSONArrayPoxy.length() > 0))
      {
        this.keyList = new String[localJSONArrayPoxy.length()];
        this.valueList = new String[localJSONArrayPoxy.length()];
        LinkedHashMap localLinkedHashMap = new LinkedHashMap();
        for (int j = 0; j < localJSONArrayPoxy.length(); j++)
        {
          JSONObjectProxy localJSONObjectProxy = localJSONArrayPoxy.getJSONObjectOrNull(j);
          Integer localInteger = localJSONObjectProxy.getIntOrNull("expandValueId");
          String str = localJSONObjectProxy.getStringOrNull("expandSortValueName");
          localLinkedHashMap.put(localInteger, str);
          this.keyList[j] = String.valueOf(localInteger);
          this.valueList[j] = str;
        }
        continue;
        this.filterName = StringUtil.search_filter_distribution;
        this.keyList = new String[3];
        this.valueList = new String[3];
        this.keyList[0] = "0";
        this.keyList[1] = "1";
        this.keyList[2] = "2";
        this.valueList[0] = StringUtil.product_filter_hint;
        this.valueList[1] = StringUtil.search_filter_jd_distribute;
        this.valueList[2] = StringUtil.search_filter_other_distribute;
        return;
        this.filterName = StringUtil.search_filter_region;
        if ((paramJSONObjectProxy != null) && (paramJSONObjectProxy.length() > 0))
        {
          new ArrayList();
          ArrayList localArrayList = Province.toList(paramJSONObjectProxy.getJSONArrayOrNull("provinces"), 0);
          if (localArrayList == null) {
            break;
          }
          this.keyList = new String[1 + localArrayList.size()];
          this.valueList = new String[1 + localArrayList.size()];
          this.keyList[0] = "0";
          this.valueList[0] = StringUtil.product_filter_hint;
          for (int i = 1; i <= localArrayList.size(); i++)
          {
            Province localProvince = (Province)localArrayList.get(i - 1);
            this.keyList[i] = localProvince.getProvinceID();
            this.valueList[i] = localProvince.getProvinceName();
          }
        }
      }
    }
    this.keyList = new String[1];
    this.valueList = new String[1];
    this.keyList[0] = "0";
    this.valueList[0] = StringUtil.product_filter_hint;
  }
  
  /* Error */
  public static ArrayList<SearchFilter> toList(JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    // Byte code:
    //   0: new 70	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 71	java/util/ArrayList:<init>	()V
    //   7: astore_2
    //   8: iconst_0
    //   9: istore_3
    //   10: iload_3
    //   11: aload_0
    //   12: invokevirtual 68	com/jingdong/common/utils/JSONArrayPoxy:length	()I
    //   15: if_icmplt +5 -> 20
    //   18: aload_2
    //   19: areturn
    //   20: aload_2
    //   21: new 2	com/jingdong/common/entity/SearchFilter
    //   24: dup
    //   25: aload_0
    //   26: iload_3
    //   27: invokevirtual 255	com/jingdong/common/utils/JSONArrayPoxy:getJSONObject	(I)Lcom/jingdong/common/utils/JSONObjectProxy;
    //   30: iload_1
    //   31: invokespecial 257	com/jingdong/common/entity/SearchFilter:<init>	(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    //   34: invokevirtual 261	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   37: pop
    //   38: iinc 3 1
    //   41: goto -31 -> 10
    //   44: astore 6
    //   46: aconst_null
    //   47: areturn
    //   48: astore 4
    //   50: aload_2
    //   51: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	paramJSONArrayPoxy	JSONArrayPoxy
    //   0	52	1	paramInt	int
    //   7	44	2	localArrayList	ArrayList
    //   9	30	3	i	int
    //   48	1	4	localJSONException1	org.json.JSONException
    //   44	1	6	localJSONException2	org.json.JSONException
    // Exception table:
    //   from	to	target	type
    //   0	8	44	org/json/JSONException
    //   10	18	48	org/json/JSONException
    //   20	38	48	org/json/JSONException
  }
  
  public String[] getFieldList()
  {
    return this.fieldList;
  }
  
  public String getFilterName()
  {
    return this.filterName;
  }
  
  public String getFilterNameId()
  {
    if (this.filterNameId == null) {
      return "";
    }
    return this.filterNameId;
  }
  
  public int getIndexFromValue(String paramString)
  {
    for (int i = 0;; i++)
    {
      if (i >= getValueList().length) {
        i = -1;
      }
      while ((getValueList()[i] != null) && (getValueList()[i].equals(paramString))) {
        return i;
      }
    }
  }
  
  public String[] getKeyList()
  {
    if (this.keyList == null) {
      return new String[0];
    }
    return this.keyList;
  }
  
  public String getSelectedItem()
  {
    return this.selectedItem;
  }
  
  public int getSelectedOrder()
  {
    return this.selectedOrder;
  }
  
  public int getTypeFlag()
  {
    return this.typeFlag;
  }
  
  public String[] getValueList()
  {
    if (this.valueList == null) {
      return new String[0];
    }
    return this.valueList;
  }
  
  public Integer[] getWareNumberList()
  {
    return this.wareNumberList;
  }
  
  public void setFieldList(String[] paramArrayOfString)
  {
    this.fieldList = paramArrayOfString;
  }
  
  public void setFilterName(String paramString)
  {
    this.filterName = paramString;
  }
  
  public void setFilterNameId(String paramString)
  {
    this.filterNameId = paramString;
  }
  
  public void setKeyList(String[] paramArrayOfString)
  {
    this.keyList = paramArrayOfString;
  }
  
  public void setSelectedItem(String paramString)
  {
    this.selectedItem = paramString;
  }
  
  public void setSelectedOrder(int paramInt)
  {
    this.selectedOrder = paramInt;
  }
  
  public void setTypeFlag(int paramInt)
  {
    this.typeFlag = paramInt;
  }
  
  public void setValueList(String[] paramArrayOfString)
  {
    this.valueList = paramArrayOfString;
  }
  
  public void setWareNumberList(Integer[] paramArrayOfInteger)
  {
    this.wareNumberList = paramArrayOfInteger;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.SearchFilter
 * JD-Core Version:    0.7.0.1
 */