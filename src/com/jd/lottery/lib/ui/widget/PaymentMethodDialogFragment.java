package com.jd.lottery.lib.ui.widget;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import com.jd.droidlib.executor.service.MainThreadResultReceiver;
import com.jd.droidlib.util.L;
import com.jd.lottery.lib.R.color;
import com.jd.lottery.lib.R.id;
import com.jd.lottery.lib.R.layout;
import com.jd.lottery.lib.R.string;
import com.jd.lottery.lib.data.Constants.PayType;
import com.jd.lottery.lib.model.CouponInfo;
import com.jd.lottery.lib.model.Pair;
import com.jd.lottery.lib.model.UserBscEntity;
import com.jd.lottery.lib.service.DataIntentService;
import com.jd.lottery.lib.utils.StringUtils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class PaymentMethodDialogFragment
  extends DialogFragment
{
  private static final String COUPON_IDS = "coupon_ids";
  private static final String PAY_TYPE = "pay_type";
  private static final String TERM = "term";
  private static final String TOTAL_MONEY = "total_money";
  ActionClickListener actionClickListener;
  private TextView balanceTextView;
  private TextView balanceUnavailableTextView;
  private TextView beansTextView;
  private TextView beansUnavailableTextView;
  private TextView cancleTextView;
  private int checkedIndex = -1;
  private CouponAdapter couponAdapter;
  private String[] couponIds;
  private ArrayList<String> couponList = new ArrayList();
  private FullSizeListView couponListView;
  private ArrayList<Pair<String, CouponInfo>> couponPairs = new ArrayList();
  private TextView couponTextView;
  private TextView couponTitle;
  private Constants.PayType currentPayType;
  private Handler handler;
  private TextView okTextView;
  private Constants.PayType[] payTypes;
  private RadioButton[] radioButtons;
  private int term;
  private double totalMoney;
  private TextView totalMoneyTextView;
  private UserBscEntity userBscEntity;
  
  public PaymentMethodDialogFragment()
  {
    Constants.PayType[] arrayOfPayType = new Constants.PayType[4];
    arrayOfPayType[0] = Constants.PayType.Balance;
    arrayOfPayType[1] = Constants.PayType.PayOnline;
    arrayOfPayType[2] = Constants.PayType.Beans;
    arrayOfPayType[3] = Constants.PayType.Coupon;
    this.payTypes = arrayOfPayType;
    this.handler = new Handler()
    {
      public void handleMessage(Message paramAnonymousMessage)
      {
        int i;
        double d;
        if ((paramAnonymousMessage.what == 1) && (PaymentMethodDialogFragment.this.couponAdapter != null))
        {
          i = 0;
          d = 0.0D;
        }
        for (int j = 0;; j++)
        {
          if (j >= PaymentMethodDialogFragment.this.couponPairs.size())
          {
            PaymentMethodDialogFragment.this.couponTextView.setVisibility(0);
            TextView localTextView = PaymentMethodDialogFragment.this.couponTextView;
            PaymentMethodDialogFragment localPaymentMethodDialogFragment = PaymentMethodDialogFragment.this;
            int k = R.string.dialog_payment_coupon;
            Object[] arrayOfObject = new Object[2];
            arrayOfObject[0] = Integer.valueOf(i);
            arrayOfObject[1] = Double.valueOf(d);
            localTextView.setText(localPaymentMethodDialogFragment.getString(k, arrayOfObject));
            PaymentMethodDialogFragment.this.couponAdapter.notifyDataSetChanged();
            return;
          }
          if (PaymentMethodDialogFragment.this.couponAdapter.isSelected(j))
          {
            i++;
            d += ((CouponInfo)((Pair)PaymentMethodDialogFragment.this.couponPairs.get(j)).second).getDiscount();
          }
        }
      }
    };
  }
  
  private void checkRadioButton(int paramInt)
  {
    if (paramInt == this.checkedIndex) {
      return;
    }
    RadioButton[] arrayOfRadioButton = this.radioButtons;
    int i = arrayOfRadioButton.length;
    int j = 0;
    if (j >= i)
    {
      this.radioButtons[paramInt].setChecked(true);
      if (paramInt != 3) {
        break label81;
      }
      this.couponListView.setVisibility(0);
    }
    for (;;)
    {
      this.checkedIndex = paramInt;
      return;
      RadioButton localRadioButton = arrayOfRadioButton[j];
      if (localRadioButton.isChecked()) {
        localRadioButton.setChecked(false);
      }
      j++;
      break;
      label81:
      this.couponListView.setVisibility(8);
      if (this.radioButtons[3].isClickable()) {
        this.couponTextView.setVisibility(8);
      }
      if (this.couponAdapter != null)
      {
        this.couponAdapter.cleanAllSelect();
        this.couponAdapter.notifyDataSetChanged();
      }
    }
  }
  
  private void checkRadioButton(Constants.PayType paramPayType)
  {
    if (paramPayType == Constants.PayType.Balance) {
      checkRadioButton(0);
    }
    do
    {
      return;
      if (paramPayType == Constants.PayType.PayOnline)
      {
        checkRadioButton(1);
        return;
      }
      if (paramPayType == Constants.PayType.Beans)
      {
        checkRadioButton(2);
        return;
      }
    } while (paramPayType != Constants.PayType.Coupon);
    checkRadioButton(3);
  }
  
  public static PaymentMethodDialogFragment newInstance(double paramDouble, Constants.PayType paramPayType, String paramString, int paramInt)
  {
    PaymentMethodDialogFragment localPaymentMethodDialogFragment = new PaymentMethodDialogFragment();
    Bundle localBundle = new Bundle();
    localBundle.putDouble("total_money", paramDouble);
    localBundle.putSerializable("pay_type", paramPayType);
    localBundle.putString("coupon_ids", paramString);
    localBundle.putInt("term", paramInt);
    localPaymentMethodDialogFragment.setArguments(localBundle);
    return localPaymentMethodDialogFragment;
  }
  
  private void updateViews()
  {
    if (isAdded())
    {
      if (this.userBscEntity != null) {
        break label236;
      }
      if ((this.balanceTextView != null) && (this.balanceUnavailableTextView != null) && (this.radioButtons[0] != null))
      {
        this.balanceUnavailableTextView.setVisibility(0);
        this.balanceUnavailableTextView.setText(R.string.dialog_payment_http_error);
        this.radioButtons[0].setClickable(false);
        this.balanceTextView.setTextColor(getResources().getColor(R.color.payment_title_unavailable));
      }
      if ((this.beansTextView != null) && (this.beansUnavailableTextView != null) && (this.radioButtons[2] != null))
      {
        this.beansUnavailableTextView.setVisibility(0);
        this.beansUnavailableTextView.setText(R.string.dialog_payment_http_error);
        this.radioButtons[2].setClickable(false);
        this.beansTextView.setTextColor(getResources().getColor(R.color.payment_title_unavailable));
      }
      if ((this.couponTextView != null) && (this.couponListView != null) && (this.radioButtons[3] != null))
      {
        this.couponTextView.setVisibility(0);
        this.couponTextView.setTextColor(getResources().getColor(R.color.payment_method_red));
        this.couponTextView.setText(R.string.dialog_payment_http_error);
        this.couponTitle.setTextColor(getResources().getColor(R.color.payment_title_unavailable));
        this.radioButtons[3].setClickable(false);
      }
    }
    label236:
    CouponInfo[] arrayOfCouponInfo;
    label353:
    int j;
    label474:
    double d;
    label518:
    int k;
    label529:
    do
    {
      return;
      if ((this.balanceTextView != null) && (this.balanceUnavailableTextView != null) && (this.radioButtons[0] != null))
      {
        TextView localTextView2 = this.balanceTextView;
        int i1 = R.string.dialog_payment_balance;
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Double.valueOf(this.userBscEntity.balance);
        localTextView2.setText(getString(i1, arrayOfObject2));
        if (this.totalMoney <= this.userBscEntity.balance) {
          break;
        }
        this.balanceUnavailableTextView.setVisibility(0);
        this.radioButtons[0].setClickable(false);
        this.balanceTextView.setTextColor(getResources().getColor(R.color.payment_title_unavailable));
      }
      if ((this.beansTextView != null) && (this.beansUnavailableTextView != null) && (this.radioButtons[2] != null))
      {
        TextView localTextView1 = this.beansTextView;
        int n = R.string.dialog_payment_points;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Integer.valueOf(this.userBscEntity.beans);
        localTextView1.setText(getString(n, arrayOfObject1));
        if (this.totalMoney <= this.userBscEntity.beans / 100) {
          break label689;
        }
        this.beansUnavailableTextView.setVisibility(0);
        this.radioButtons[2].setClickable(false);
        this.beansTextView.setTextColor(getResources().getColor(R.color.payment_title_unavailable));
      }
      if ((this.couponTextView == null) || (this.couponListView == null) || (this.radioButtons[3] == null) || (this.term != 1)) {
        break label726;
      }
      arrayOfCouponInfo = this.userBscEntity.coupon;
      int i = arrayOfCouponInfo.length;
      j = 0;
      if (j < i) {
        break label728;
      }
      d = 0.0D;
      k = 0;
      if (k < this.couponPairs.size()) {
        break label765;
      }
      if (this.totalMoney >= d) {
        break label837;
      }
    } while (this.couponPairs.size() <= 0);
    this.couponAdapter = new CouponAdapter(getActivity(), this.couponPairs);
    this.couponListView.setAdapter(this.couponAdapter);
    for (int m = 0;; m++)
    {
      if (m >= this.couponPairs.size())
      {
        if (this.couponList.size() > 0)
        {
          this.couponListView.setVisibility(0);
          this.couponList.clear();
        }
        this.radioButtons[3].setClickable(true);
        this.couponAdapter.notifyDataSetChanged();
        return;
        this.balanceUnavailableTextView.setVisibility(8);
        this.radioButtons[0].setClickable(true);
        this.balanceTextView.setTextColor(getResources().getColor(17170444));
        break label353;
        label689:
        this.beansUnavailableTextView.setVisibility(8);
        this.radioButtons[2].setClickable(true);
        this.beansTextView.setTextColor(getResources().getColor(17170444));
        break label474;
        label726:
        break;
        label728:
        CouponInfo localCouponInfo = arrayOfCouponInfo[j];
        Pair localPair = new Pair(localCouponInfo.getId(), localCouponInfo);
        this.couponPairs.add(localPair);
        j++;
        break label518;
        label765:
        d += ((CouponInfo)((Pair)this.couponPairs.get(k)).second).getDiscount();
        k++;
        break label529;
      }
      if (this.couponList.contains(((Pair)this.couponPairs.get(m)).first)) {
        this.couponAdapter.setSelected(m);
      }
    }
    label837:
    this.couponTextView.setVisibility(0);
    this.couponTextView.setTextColor(getResources().getColor(R.color.payment_method_red));
    this.couponTextView.setText(R.string.dialog_payment_coupon_unavailable);
    this.couponTitle.setTextColor(getResources().getColor(R.color.payment_title_unavailable));
    this.radioButtons[3].setClickable(false);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.totalMoney = getArguments().getDouble("total_money");
    this.currentPayType = ((Constants.PayType)getArguments().getSerializable("pay_type"));
    this.term = getArguments().getInt("term");
    String[] arrayOfString;
    int i;
    if (this.currentPayType == Constants.PayType.Coupon)
    {
      String str1 = getArguments().getString("coupon_ids");
      if (!StringUtils.isEmpty(str1))
      {
        this.couponIds = str1.split(",");
        arrayOfString = this.couponIds;
        i = arrayOfString.length;
      }
    }
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return;
      }
      String str2 = arrayOfString[j];
      this.couponList.add(str2);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    getDialog().getWindow().requestFeature(1);
    LinearLayout localLinearLayout = (LinearLayout)paramLayoutInflater.inflate(R.layout.fragmentdialog_payment_method, paramViewGroup, false);
    this.totalMoneyTextView = ((TextView)localLinearLayout.findViewById(R.id.fragment_payment_method_total_money));
    TextView localTextView1 = this.totalMoneyTextView;
    int i = R.string.dialog_payment_total_moaney;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Double.valueOf(this.totalMoney);
    localTextView1.setText(getString(i, arrayOfObject1));
    this.balanceTextView = ((TextView)localLinearLayout.findViewById(R.id.fragment_payment_method_balance));
    TextView localTextView2 = this.balanceTextView;
    int j = R.string.dialog_payment_balance;
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Double.valueOf(0.0D);
    localTextView2.setText(getString(j, arrayOfObject2));
    this.balanceUnavailableTextView = ((TextView)localLinearLayout.findViewById(R.id.fragment_payment_method_balance_unavailable));
    this.beansTextView = ((TextView)localLinearLayout.findViewById(R.id.fragment_payment_method_points));
    TextView localTextView3 = this.beansTextView;
    int k = R.string.dialog_payment_points;
    Object[] arrayOfObject3 = new Object[1];
    arrayOfObject3[0] = Integer.valueOf(0);
    localTextView3.setText(getString(k, arrayOfObject3));
    this.beansUnavailableTextView = ((TextView)localLinearLayout.findViewById(R.id.fragment_payment_method_points_unavailable));
    this.couponTextView = ((TextView)localLinearLayout.findViewById(R.id.fragment_payment_method_coupon));
    this.couponTitle = ((TextView)localLinearLayout.findViewById(R.id.fragment_payment_method_coupon_title));
    this.couponListView = ((FullSizeListView)localLinearLayout.findViewById(R.id.fragment_payment_method_coupon_list));
    this.radioButtons = new RadioButton[4];
    this.radioButtons[0] = ((RadioButton)localLinearLayout.findViewById(R.id.fragment_payment_method_balance_radiobtn));
    this.radioButtons[1] = ((RadioButton)localLinearLayout.findViewById(R.id.fragment_payment_method_online_radiobtn));
    this.radioButtons[2] = ((RadioButton)localLinearLayout.findViewById(R.id.fragment_payment_method_points_radiobtn));
    this.radioButtons[3] = ((RadioButton)localLinearLayout.findViewById(R.id.fragment_payment_method_coupon_radiobtn));
    checkRadioButton(this.currentPayType);
    for (int m = 0;; m++)
    {
      if (m >= 4)
      {
        if (this.term > 1)
        {
          this.couponTextView.setVisibility(0);
          this.couponTextView.setTextColor(getResources().getColor(R.color.payment_method_red));
          this.couponTextView.setText(R.string.dialog_payment_coupon_unsupport_zuihao);
          this.radioButtons[3].setClickable(false);
          this.couponTitle.setTextColor(getResources().getColor(R.color.payment_title_unavailable));
        }
        this.cancleTextView = ((TextView)localLinearLayout.findViewById(R.id.fragment_alert_dialog_cancle));
        this.cancleTextView.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            PaymentMethodDialogFragment.this.dismiss();
          }
        });
        this.okTextView = ((TextView)localLinearLayout.findViewById(R.id.fragment_alert_dialog_ok));
        this.okTextView.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            Constants.PayType localPayType;
            double d;
            StringBuffer localStringBuffer;
            if (PaymentMethodDialogFragment.this.actionClickListener != null)
            {
              localPayType = PaymentMethodDialogFragment.this.payTypes[PaymentMethodDialogFragment.this.checkedIndex];
              d = 0.0D;
              localStringBuffer = new StringBuffer();
              if (localPayType != Constants.PayType.Coupon) {}
            }
            else
            {
              for (int i = 0;; i++)
              {
                if (i >= PaymentMethodDialogFragment.this.couponPairs.size())
                {
                  if (localStringBuffer.length() > 0) {
                    localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
                  }
                  if (0.0D != d) {
                    break;
                  }
                  ToastUtil.shortToast(PaymentMethodDialogFragment.this.getActivity(), R.string.toast_coupon_not_select);
                  return;
                }
                if (PaymentMethodDialogFragment.this.couponAdapter.isSelected(i))
                {
                  d += ((CouponInfo)((Pair)PaymentMethodDialogFragment.this.couponPairs.get(i)).second).getDiscount();
                  localStringBuffer.append((String)((Pair)PaymentMethodDialogFragment.this.couponPairs.get(i)).first);
                  localStringBuffer.append(",");
                }
              }
              if (PaymentMethodDialogFragment.this.totalMoney <= d) {
                break label220;
              }
              ToastUtil.shortToast(PaymentMethodDialogFragment.this.getActivity(), R.string.toast_coupon_selected_isnot_enough);
              return;
            }
            localStringBuffer.append("");
            label220:
            PaymentMethodDialogFragment.this.actionClickListener.onRightClicked(localPayType, d, localStringBuffer.toString());
            PaymentMethodDialogFragment.this.dismiss();
          }
        });
        return localLinearLayout;
      }
      final int n = m;
      this.radioButtons[m].setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
      {
        public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          PaymentMethodDialogFragment.this.checkRadioButton(n);
        }
      });
    }
  }
  
  public void onStart()
  {
    getActivity().startService(DataIntentService.getUserBscIntent(getActivity(), new MainThreadResultReceiver()
    {
      protected void onReceiveResult(int paramAnonymousInt, Bundle paramAnonymousBundle)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = paramAnonymousBundle.toString();
        L.d("@@@@@@@@@@@%s", arrayOfObject);
        PaymentMethodDialogFragment.this.userBscEntity = ((UserBscEntity)paramAnonymousBundle.get("data"));
        PaymentMethodDialogFragment.this.updateViews();
      }
    }));
    super.onStart();
  }
  
  public void setOnActionClickListener(ActionClickListener paramActionClickListener)
  {
    this.actionClickListener = paramActionClickListener;
  }
  
  public static abstract interface ActionClickListener
  {
    public abstract void onLeftClicked();
    
    public abstract void onRightClicked(Constants.PayType paramPayType, double paramDouble, String paramString);
  }
  
  class CouponAdapter
    extends ArrayAdapter<Pair<String, CouponInfo>>
  {
    HashMap<Integer, Boolean> isSelected;
    ArrayList<Pair<String, CouponInfo>> items;
    LayoutInflater layoutInflater;
    
    public CouponAdapter(ArrayList<Pair<String, CouponInfo>> paramArrayList)
    {
      super(0, localList);
      this.items = localList;
      this.layoutInflater = LayoutInflater.from(paramArrayList);
      this.isSelected = new HashMap();
      for (int i = 0;; i++)
      {
        if (i >= localList.size()) {
          return;
        }
        this.isSelected.put(Integer.valueOf(i), Boolean.valueOf(false));
      }
    }
    
    public void cleanAllSelect()
    {
      for (int i = 0;; i++)
      {
        if (i >= this.isSelected.size()) {
          return;
        }
        cleanSelected(i);
      }
    }
    
    public void cleanSelected(int paramInt)
    {
      this.isSelected.put(Integer.valueOf(paramInt), Boolean.valueOf(false));
    }
    
    public int getCount()
    {
      if (this.items == null) {
        return 0;
      }
      return this.items.size();
    }
    
    public Pair<String, CouponInfo> getItem(int paramInt)
    {
      return (Pair)this.items.get(paramInt);
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public View getView(final int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      Pair localPair = getItem(paramInt);
      PaymentMethodDialogFragment.ViewHolder localViewHolder;
      if (paramView == null)
      {
        paramView = this.layoutInflater.inflate(R.layout.widget_fragment_dialog_payment_listview_item, paramViewGroup, false);
        localViewHolder = new PaymentMethodDialogFragment.ViewHolder();
        localViewHolder.layout = ((LinearLayout)paramView.findViewById(R.id.coupon_item_layout));
        localViewHolder.textView = ((TextView)paramView.findViewById(R.id.coupon_item_text));
        localViewHolder.checkBox = ((CheckBox)paramView.findViewById(R.id.coupon_item_checkbox));
        paramView.setTag(localViewHolder);
      }
      for (;;)
      {
        localViewHolder.layout.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            if (!PaymentMethodDialogFragment.CouponAdapter.this.isSelected(paramInt))
            {
              double d = 0.0D;
              int i = 0;
              HashMap localHashMap2;
              Integer localInteger2;
              if (i >= PaymentMethodDialogFragment.this.couponPairs.size())
              {
                if (d >= PaymentMethodDialogFragment.this.totalMoney) {
                  break label180;
                }
                localHashMap2 = PaymentMethodDialogFragment.CouponAdapter.this.isSelected;
                localInteger2 = Integer.valueOf(paramInt);
                if (!PaymentMethodDialogFragment.CouponAdapter.this.isSelected(paramInt)) {
                  break label174;
                }
              }
              label174:
              for (boolean bool3 = false;; bool3 = true)
              {
                localHashMap2.put(localInteger2, Boolean.valueOf(bool3));
                PaymentMethodDialogFragment.this.handler.sendEmptyMessage(1);
                return;
                if (PaymentMethodDialogFragment.this.couponAdapter.isSelected(i)) {
                  d += ((CouponInfo)((Pair)PaymentMethodDialogFragment.this.couponPairs.get(i)).second).getDiscount();
                }
                i++;
                break;
              }
              label180:
              ToastUtil.shortToast(PaymentMethodDialogFragment.this.getActivity(), R.string.toast_coupon_is_enough);
              return;
            }
            HashMap localHashMap1 = PaymentMethodDialogFragment.CouponAdapter.this.isSelected;
            Integer localInteger1 = Integer.valueOf(paramInt);
            boolean bool1 = PaymentMethodDialogFragment.CouponAdapter.this.isSelected(paramInt);
            boolean bool2 = false;
            if (bool1) {}
            for (;;)
            {
              localHashMap1.put(localInteger1, Boolean.valueOf(bool2));
              PaymentMethodDialogFragment.this.handler.sendEmptyMessage(1);
              return;
              bool2 = true;
            }
          }
        });
        localViewHolder.checkBox.setChecked(((Boolean)this.isSelected.get(Integer.valueOf(paramInt))).booleanValue());
        SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        TextView localTextView = localViewHolder.textView;
        Resources localResources = PaymentMethodDialogFragment.this.getResources();
        int i = R.string.dialog_payment_coupon_item_message;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Double.valueOf(((CouponInfo)localPair.second).getDiscount());
        arrayOfObject[1] = localSimpleDateFormat.format(((CouponInfo)localPair.second).getEndTime());
        localTextView.setText(localResources.getString(i, arrayOfObject));
        return paramView;
        localViewHolder = (PaymentMethodDialogFragment.ViewHolder)paramView.getTag();
      }
    }
    
    public boolean isEnabled(int paramInt)
    {
      return false;
    }
    
    public boolean isSelected(int paramInt)
    {
      return ((Boolean)this.isSelected.get(Integer.valueOf(paramInt))).booleanValue();
    }
    
    public void setSelected(int paramInt)
    {
      this.isSelected.put(Integer.valueOf(paramInt), Boolean.valueOf(true));
    }
  }
  
  static class ViewHolder
  {
    CheckBox checkBox;
    LinearLayout layout;
    TextView textView;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.ui.widget.PaymentMethodDialogFragment
 * JD-Core Version:    0.7.0.1
 */