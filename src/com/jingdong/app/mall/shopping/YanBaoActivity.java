package com.jingdong.app.mall.shopping;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Paint;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.ScrollView;
import android.widget.TextView;
import com.jingdong.app.mall.home.slide.SlideUtils;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.ui.JDListView;
import com.jingdong.common.entity.cart.CartResonseYB;
import com.jingdong.common.entity.cart.CartResonseYBSelected;
import com.jingdong.common.entity.cart.CartResponseSku;
import com.jingdong.common.entity.cart.CartResponseYBBrand;
import com.jingdong.common.entity.cart.CartResponseYBCategory;
import com.jingdong.common.entity.cart.CartResponseYBDetail;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.MySimpleAdapter;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class YanBaoActivity
  extends MyActivity
{
  private static final String TAG = "YanBaoActivity";
  public static final String YAN_BAO = "yan_bao";
  public static final int YAN_BAO_RESULT_NO = 2;
  public static final int YAN_BAO_RESULT_OK = 1;
  public static final String YAN_BAO_SELECT = "yan_bao_select";
  private MySimpleAdapter adapter;
  private Button confirmBuy;
  private LinearLayout dividerBelowLayout;
  private LinearLayout dividerLayout;
  private TextView emptyView;
  private LinearLayout group;
  private HorizontalScrollView groupHorizontal;
  private ScrollView scrollView;
  private HashMap<CartResponseYBDetail, String> selectedBrandOfCategory = new HashMap();
  private ArrayList<CartResonseYBSelected> selectedYB = new ArrayList();
  private ArrayList<String> selectedYBId = new ArrayList();
  private RadioButton[] tabButtons;
  private TextView titleView;
  private ArrayList<CartResponseYBCategory> yanBaoList = null;
  private ArrayList<CartResponseYBDetail> yanBaoSelected = new ArrayList();
  private ArrayList<HashMap<String, CartResponseYBDetail>> yanBaoSelectedBrand = new ArrayList();
  private JDListView yanBaoSelectedView;
  private LinearLayout yanBaoShowLayout;
  
  private void calcuTitleWidth()
  {
    int i = DPIUtil.getWidth();
    if ((this.tabButtons == null) || (this.tabButtons.length < 1)) {
      return;
    }
    int j = 0;
    int k = this.tabButtons.length;
    for (int m = 0;; m++)
    {
      if (m >= k)
      {
        if (j >= i) {
          break;
        }
        int n = (i - j) / k;
        for (int i1 = 0; i1 < k; i1++)
        {
          int i2 = (int)this.tabButtons[i1].getPaint().measureText(this.tabButtons[i1].getText().toString()) + this.tabButtons[i1].getPaddingLeft() + this.tabButtons[i1].getPaddingRight();
          this.tabButtons[i1].getLayoutParams().width = (i2 + n);
        }
        break;
      }
      j += (int)this.tabButtons[m].getPaint().measureText(this.tabButtons[m].getText().toString()) + this.tabButtons[m].getPaddingLeft() + this.tabButtons[m].getPaddingRight();
    }
  }
  
  private void freshTabButton(int paramInt)
  {
    if (this.tabButtons == null) {
      return;
    }
    int i = 0;
    label10:
    if (i < this.tabButtons.length)
    {
      if (paramInt != i) {
        break label40;
      }
      this.tabButtons[i].setChecked(true);
    }
    for (;;)
    {
      i++;
      break label10;
      break;
      label40:
      this.tabButtons[i].setChecked(false);
    }
  }
  
  private void getDetailFromSelected()
  {
    if ((this.yanBaoList != null) && (this.yanBaoList.size() > 0) && (this.selectedYB != null) && (this.selectedYB.size() > 0)) {}
    CartResponseYBCategory localCartResponseYBCategory;
    ArrayList localArrayList1;
    int j;
    for (int i = 0;; i++)
    {
      if (i >= this.yanBaoList.size()) {
        return;
      }
      localCartResponseYBCategory = (CartResponseYBCategory)this.yanBaoList.get(i);
      localArrayList1 = localCartResponseYBCategory.getYbDetails();
      if ((localArrayList1 != null) && (localArrayList1.size() > 0))
      {
        j = 0;
        if (j < localArrayList1.size()) {
          break;
        }
      }
    }
    ArrayList localArrayList2 = ((CartResponseYBBrand)localArrayList1.get(j)).getYbDetails();
    if ((localArrayList2 != null) && (localArrayList2.size() > 0)) {}
    for (int k = 0;; k++)
    {
      if (k >= localArrayList2.size())
      {
        j++;
        break;
      }
      CartResponseYBDetail localCartResponseYBDetail = (CartResponseYBDetail)localArrayList2.get(k);
      if (this.selectedYBId.contains(localCartResponseYBDetail.getId()))
      {
        this.yanBaoSelected.add(localCartResponseYBDetail);
        HashMap localHashMap = new HashMap();
        localHashMap.put(localCartResponseYBCategory.getVirtualSkuType(), localCartResponseYBDetail);
        this.yanBaoSelectedBrand.add(localHashMap);
        this.selectedBrandOfCategory.put(localCartResponseYBDetail, localCartResponseYBCategory.getVirtualSkuName());
      }
    }
  }
  
  private void getIdFromYBSelected()
  {
    if ((this.selectedYB != null) && (this.selectedYB.size() > 0)) {}
    for (int i = 0;; i++)
    {
      if (i >= this.selectedYB.size()) {
        return;
      }
      CartResonseYBSelected localCartResonseYBSelected = (CartResonseYBSelected)this.selectedYB.get(i);
      if (localCartResonseYBSelected != null)
      {
        CartResponseSku localCartResponseSku = localCartResonseYBSelected.getYbSku();
        if ((localCartResponseSku != null) && (!TextUtils.isEmpty(localCartResponseSku.getSkuId()))) {
          this.selectedYBId.add(localCartResponseSku.getSkuId());
        }
      }
    }
  }
  
  private String getPriceFromCent(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      double d = Double.parseDouble(paramString) / 100.0D;
      return "￥" + d;
    }
    return "";
  }
  
  private int getRMIndex(String paramString)
  {
    if (paramString.contains("￥")) {
      return paramString.lastIndexOf("￥");
    }
    return -1;
  }
  
  private CartResponseYBDetail getSelectDetail(String paramString)
  {
    for (int i = 0;; i++)
    {
      if (i >= this.yanBaoSelectedBrand.size()) {
        return null;
      }
      HashMap localHashMap = (HashMap)this.yanBaoSelectedBrand.get(i);
      if (localHashMap.containsKey(paramString)) {
        return (CartResponseYBDetail)localHashMap.get(paramString);
      }
    }
  }
  
  private String getSubString(CartResponseYBDetail paramCartResponseYBDetail)
  {
    String str = paramCartResponseYBDetail.getPriceShow();
    if (!TextUtils.isEmpty(str))
    {
      if (str.contains("￥"))
      {
        if (!TextUtils.isEmpty(str.substring(str.lastIndexOf("￥")))) {
          return str.substring(str.lastIndexOf("￥"));
        }
        return getPriceFromCent(paramCartResponseYBDetail.getPriceCent());
      }
    }
    else {
      return getPriceFromCent(paramCartResponseYBDetail.getPriceCent());
    }
    return "";
  }
  
  private void initYanBaoContent(final CartResponseYBCategory paramCartResponseYBCategory)
  {
    if (paramCartResponseYBCategory == null) {
      return;
    }
    this.yanBaoShowLayout.removeAllViews();
    ArrayList localArrayList1 = paramCartResponseYBCategory.getYbDetails();
    int i = 0;
    label19:
    TextView localTextView1;
    TextView localTextView2;
    LinearLayout localLinearLayout;
    ArrayList localArrayList2;
    if (i < localArrayList1.size())
    {
      CartResponseYBBrand localCartResponseYBBrand = (CartResponseYBBrand)localArrayList1.get(i);
      localTextView1 = new TextView(this);
      localTextView2 = new TextView(this);
      localTextView1.setText(localCartResponseYBBrand.getBrandName());
      localTextView1.setTextSize(2, 17.0F);
      localTextView1.setPadding(0, DPIUtil.dip2px(2.0F), 0, DPIUtil.dip2px(15.0F));
      localTextView2.setText(getString(2131166384));
      localTextView2.setTextSize(2, 14.0F);
      localTextView2.setPadding(0, DPIUtil.dip2px(5.0F), 0, DPIUtil.dip2px(2.0F));
      localTextView2.setTextColor(getResources().getColor(2131296312));
      localLinearLayout = new LinearLayout(this);
      localLinearLayout.setOrientation(1);
      localArrayList2 = localCartResponseYBBrand.getYbDetails();
    }
    for (int j = 0;; j++)
    {
      int k = localArrayList2.size();
      if (j >= k)
      {
        if (i == 0) {
          this.yanBaoShowLayout.addView(localTextView2);
        }
        this.yanBaoShowLayout.addView(localTextView1);
        this.yanBaoShowLayout.addView(localLinearLayout);
        i++;
        break label19;
        break;
      }
      final CartResponseYBDetail localCartResponseYBDetail = (CartResponseYBDetail)localArrayList2.get(j);
      localCartResponseYBDetail.getCid();
      CheckBox localCheckBox = new CheckBox(this);
      TextView localTextView3 = new TextView(this);
      TextView localTextView4 = new TextView(this);
      localTextView3.setId(2131492875);
      localCheckBox.setBackgroundResource(2130837758);
      localCheckBox.setButtonDrawable(2130838616);
      localTextView3.setText(localCartResponseYBDetail.getServiceYear() + getString(2131166385));
      localTextView3.setPadding(DPIUtil.dip2px(5.0F), 0, 0, 0);
      localTextView3.setTextSize(2, 18.0F);
      localTextView4.setText(getSubString(localCartResponseYBDetail));
      localTextView4.setTextSize(2, 18.0F);
      localTextView4.setTextColor(getResources().getColor(2131296288));
      localTextView3.setGravity(3);
      localCheckBox.setGravity(5);
      RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(-2, -2);
      RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
      RelativeLayout.LayoutParams localLayoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams1.addRule(15);
      localLayoutParams1.addRule(9);
      localLayoutParams1.leftMargin = DPIUtil.dip2px(5.0F);
      localLayoutParams2.addRule(15);
      localLayoutParams2.addRule(1, 2131492875);
      localLayoutParams2.leftMargin = DPIUtil.dip2px(8.0F);
      localLayoutParams3.addRule(15);
      localLayoutParams3.addRule(11);
      localLayoutParams3.rightMargin = DPIUtil.dip2px(5.0F);
      RelativeLayout localRelativeLayout = new RelativeLayout(this);
      localRelativeLayout.addView(localTextView3, localLayoutParams1);
      localRelativeLayout.addView(localTextView4, localLayoutParams2);
      localRelativeLayout.addView(localCheckBox, localLayoutParams3);
      if (isContainValue(localCartResponseYBDetail)) {
        localCheckBox.setChecked(true);
      }
      CompoundButton.OnCheckedChangeListener local3 = new CompoundButton.OnCheckedChangeListener()
      {
        public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          if (paramAnonymousBoolean)
          {
            if (YanBaoActivity.this.isContainKey(paramCartResponseYBCategory.getVirtualSkuType()))
            {
              YanBaoActivity.this.yanBaoSelected.remove(YanBaoActivity.this.getSelectDetail(paramCartResponseYBCategory.getVirtualSkuType()));
              YanBaoActivity.this.removeSelectBrand(paramCartResponseYBCategory.getVirtualSkuType());
            }
            if (YanBaoActivity.this.selectedBrandOfCategory.containsValue(paramCartResponseYBCategory)) {
              YanBaoActivity.this.selectedBrandOfCategory.remove(YanBaoActivity.this.getSelectDetail(paramCartResponseYBCategory.getVirtualSkuType()));
            }
            HashMap localHashMap = new HashMap();
            localHashMap.put(paramCartResponseYBCategory.getVirtualSkuType(), localCartResponseYBDetail);
            YanBaoActivity.this.selectedBrandOfCategory.put(localCartResponseYBDetail, paramCartResponseYBCategory.getVirtualSkuName());
            YanBaoActivity.this.yanBaoSelectedBrand.add(localHashMap);
            YanBaoActivity.this.yanBaoSelected.add(localCartResponseYBDetail);
            YanBaoActivity.this.adapter.notifyDataSetChanged();
            YanBaoActivity.this.initYanBaoContent(paramCartResponseYBCategory);
          }
          do
          {
            return;
            if (YanBaoActivity.this.isContainKey(paramCartResponseYBCategory.getVirtualSkuType()))
            {
              YanBaoActivity.this.removeSelectBrand(paramCartResponseYBCategory.getVirtualSkuType());
              YanBaoActivity.this.yanBaoSelected.remove(localCartResponseYBDetail);
              YanBaoActivity.this.adapter.notifyDataSetChanged();
              YanBaoActivity.this.initYanBaoContent(paramCartResponseYBCategory);
            }
          } while (!YanBaoActivity.this.selectedBrandOfCategory.containsValue(paramCartResponseYBCategory));
          YanBaoActivity.this.selectedBrandOfCategory.remove(YanBaoActivity.this.getSelectDetail(paramCartResponseYBCategory.getVirtualSkuType()));
        }
      };
      localCheckBox.setOnCheckedChangeListener(local3);
      localRelativeLayout.setBackgroundDrawable(getResources().getDrawable(2130838596));
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, DPIUtil.dip2px(57.0F));
      localLayoutParams.bottomMargin = DPIUtil.dip2px(9.0F);
      localLinearLayout.addView(localRelativeLayout, localLayoutParams);
    }
  }
  
  private void initYanBaoTitle()
  {
    if ((this.yanBaoList != null) && (this.yanBaoList.size() > 0))
    {
      int i = this.yanBaoList.size();
      this.tabButtons = new RadioButton[i];
      final int j = 0;
      if (j >= i) {
        return;
      }
      final CartResponseYBCategory localCartResponseYBCategory = (CartResponseYBCategory)this.yanBaoList.get(j);
      RadioButton localRadioButton = new RadioButton(this);
      this.tabButtons[j] = localRadioButton;
      localRadioButton.setText(localCartResponseYBCategory.getVirtualSkuName());
      if (i > 1) {
        localRadioButton.setBackgroundDrawable(getResources().getDrawable(2130837552));
      }
      for (;;)
      {
        localRadioButton.setButtonDrawable(2130838616);
        localRadioButton.setPadding(DPIUtil.dip2px(10.0F), 0, DPIUtil.dip2px(10.0F), 0);
        localRadioButton.setGravity(17);
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, DPIUtil.dip2px(47.0F));
        this.group.addView(localRadioButton, localLayoutParams);
        localRadioButton.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
        {
          public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
          {
            if (paramAnonymousBoolean)
            {
              YanBaoActivity.this.initYanBaoContent(localCartResponseYBCategory);
              YanBaoActivity.this.freshTabButton(j);
            }
          }
        });
        j++;
        break;
        localRadioButton.setBackgroundDrawable(getResources().getDrawable(2130838602));
      }
    }
    this.scrollView.setVisibility(8);
    this.confirmBuy.setVisibility(8);
    this.groupHorizontal.setVisibility(8);
    this.dividerBelowLayout.setVisibility(8);
    this.emptyView.setVisibility(0);
  }
  
  private boolean isContainKey(String paramString)
  {
    for (int i = 0;; i++)
    {
      if (i >= this.yanBaoSelectedBrand.size()) {
        return false;
      }
      if (((HashMap)this.yanBaoSelectedBrand.get(i)).containsKey(paramString)) {
        return true;
      }
    }
  }
  
  private boolean isContainValue(CartResponseYBDetail paramCartResponseYBDetail)
  {
    for (int i = 0;; i++)
    {
      if (i >= this.yanBaoSelectedBrand.size()) {
        return false;
      }
      if (((HashMap)this.yanBaoSelectedBrand.get(i)).containsValue(paramCartResponseYBDetail)) {
        return true;
      }
    }
  }
  
  private void removeSelectBrand(String paramString)
  {
    for (int i = 0;; i++)
    {
      if (i >= this.yanBaoSelectedBrand.size()) {
        return;
      }
      HashMap localHashMap = (HashMap)this.yanBaoSelectedBrand.get(i);
      if (localHashMap.containsKey(paramString)) {
        this.yanBaoSelectedBrand.remove(localHashMap);
      }
    }
  }
  
  private void setEvent()
  {
    this.confirmBuy.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Intent localIntent = new Intent(YanBaoActivity.this, ShoppingCartNewActivity.class);
        Bundle localBundle = new Bundle();
        localBundle.putSerializable("yan_bao", YanBaoActivity.this.yanBaoSelected);
        localBundle.putSerializable("yan_bao_select", YanBaoActivity.this.selectedYB);
        localIntent.putExtras(localBundle);
        YanBaoActivity.this.setResult(1, localIntent);
        YanBaoActivity.this.finish();
      }
    });
  }
  
  private void setSelectedAdapter()
  {
    this.adapter = new MySimpleAdapter(this, this.yanBaoSelected, 2130903371, new String[0], new int[0])
    {
      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        View localView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
        CartResponseYBDetail localCartResponseYBDetail = (CartResponseYBDetail)getItem(paramAnonymousInt);
        String str = (String)YanBaoActivity.this.selectedBrandOfCategory.get(localCartResponseYBDetail);
        TextView localTextView = (TextView)localView.findViewById(2131495628);
        SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
        localSpannableStringBuilder.append(str + "," + localCartResponseYBDetail.getName() + "," + localCartResponseYBDetail.getServiceYear() + YanBaoActivity.this.getString(2131166385) + ",");
        int i = localSpannableStringBuilder.length();
        localSpannableStringBuilder.setSpan(new ForegroundColorSpan(YanBaoActivity.this.getResources().getColor(2131296285)), 0, i, 33);
        localSpannableStringBuilder.append(YanBaoActivity.this.getSubString(localCartResponseYBDetail));
        int j = localSpannableStringBuilder.length();
        localSpannableStringBuilder.setSpan(new ForegroundColorSpan(YanBaoActivity.this.getResources().getColor(2131296288)), i, j, 33);
        localTextView.setText(localSpannableStringBuilder);
        return localView;
      }
    };
    this.yanBaoSelectedView.setAdapter(this.adapter);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903370);
    this.scrollView = ((ScrollView)findViewById(2131495621));
    this.emptyView = ((TextView)findViewById(2131495627));
    this.titleView = ((TextView)findViewById(2131492990));
    this.titleView.setText(getString(2131166383));
    this.dividerLayout = ((LinearLayout)findViewById(2131495624));
    this.dividerBelowLayout = ((LinearLayout)findViewById(2131495620));
    SlideUtils.addDivider(this.dividerLayout, SlideUtils.getLayoutParamsValue(0, 0, 0, 0), 2130838595);
    SlideUtils.addDivider(this.dividerBelowLayout, SlideUtils.getLayoutParamsValue(0, 0, 0, 0), 2130838593);
    this.group = ((LinearLayout)findViewById(2131495618));
    this.yanBaoSelectedView = ((JDListView)findViewById(2131495626));
    this.groupHorizontal = ((HorizontalScrollView)findViewById(2131495617));
    this.yanBaoShowLayout = ((LinearLayout)findViewById(2131495622));
    this.confirmBuy = ((Button)findViewById(2131495619));
    Bundle localBundle = getIntent().getExtras();
    ArrayList localArrayList = null;
    if (localBundle != null)
    {
      Serializable localSerializable1 = localBundle.getSerializable("yan_bao");
      Serializable localSerializable2 = localBundle.getSerializable("yan_bao_select");
      localArrayList = null;
      if (localSerializable1 != null) {
        localArrayList = (ArrayList)localSerializable1;
      }
      if (localSerializable2 != null) {
        this.selectedYB = ((ArrayList)localSerializable2);
      }
      if ((localArrayList != null) && (localArrayList.size() > 0) && (localArrayList.get(0) != null)) {
        this.yanBaoList = ((CartResonseYB)localArrayList.get(0)).getCategories();
      }
    }
    if ((localArrayList == null) || (localArrayList.size() < 1))
    {
      this.scrollView.setVisibility(8);
      this.confirmBuy.setVisibility(8);
      this.groupHorizontal.setVisibility(8);
      this.dividerBelowLayout.setVisibility(8);
      this.emptyView.setVisibility(0);
      return;
    }
    getIdFromYBSelected();
    getDetailFromSelected();
    setSelectedAdapter();
    setEvent();
    initYanBaoTitle();
    calcuTitleWidth();
    freshTabButton(0);
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4) {
      setResult(2, new Intent(this, ShoppingCartNewActivity.class));
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.YanBaoActivity
 * JD-Core Version:    0.7.0.1
 */