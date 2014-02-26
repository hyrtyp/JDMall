package com.jingdong.app.mall.shopping;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.ui.JDListView;
import com.jingdong.common.entity.CouponInfo;
import com.jingdong.common.entity.GiftCartInfo;
import com.jingdong.common.entity.NewCurrentOrder;
import com.jingdong.common.utils.ImageUtil;
import java.util.ArrayList;

public class EditYouHuiLipinActivity
  extends MyActivity
  implements UpdateOrderInfoInterface
{
  public static final int GET_COUPON = 1;
  public static final int GET_JING_QUAN = 2;
  public static final int GET_LIPIN = 3;
  private String TAG = "EditYouHuiLipinActivity";
  private boolean bCard = false;
  private String bCardtip;
  private boolean bDongCoupon = false;
  private String bDongCoupontip;
  private boolean bJingCoupon = false;
  private String bJingCoupontip;
  private RelativeLayout loadingBar;
  private Button mConfirm;
  private ArrayList<CouponInfo> mCouponInfo;
  private ArrayList<CouponInfo> mDongCouponInfo;
  private ArrayList<GiftCartInfo> mGiftInfo;
  private ArrayList<CouponInfo> mJingCouponInfo;
  private JDListView mListViewDong;
  private JDListView mListViewJing;
  private JDListView mListViewLiPin;
  private NewCurrentOrder mNewCurrentOrder;
  private TextView mNoDong = null;
  private TextView mNoJing = null;
  private TextView mNoLi = null;
  private TextView mTitle;
  private int oldSelectedDongPostion = -1;
  
  private void handleClickEvent()
  {
    this.mConfirm.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        EditYouHuiLipinActivity.this.updateYouhuiInfo();
        Intent localIntent = new Intent();
        localIntent.putExtra("ExtraNewCurrentOrder", EditYouHuiLipinActivity.this.mNewCurrentOrder);
        EditYouHuiLipinActivity.this.setResult(5, localIntent);
        EditYouHuiLipinActivity.this.finish();
      }
    });
  }
  
  private void initComponent()
  {
    this.mListViewLiPin = ((JDListView)findViewById(2131494449));
    this.mListViewJing = ((JDListView)findViewById(2131494441));
    this.mListViewDong = ((JDListView)findViewById(2131494445));
    this.mTitle = ((TextView)findViewById(2131492990));
    this.mTitle.setText(2131165986);
    this.mConfirm = ((Button)findViewById(2131494450));
    this.mNoJing = ((TextView)findViewById(2131494440));
    this.mNoDong = ((TextView)findViewById(2131494444));
    this.mNoLi = ((TextView)findViewById(2131494448));
    this.loadingBar = ((RelativeLayout)findViewById(2131494451));
    this.loadingBar.getBackground().setAlpha(100);
  }
  
  private void setCouponView()
  {
    if ((this.mCouponInfo != null) && (this.mCouponInfo.size() > 0))
    {
      this.mJingCouponInfo = CouponInfo.lookupJingForList(this.mCouponInfo);
      this.mDongCouponInfo = CouponInfo.lookupDongForList(this.mCouponInfo);
      if (this.bJingCoupon) {
        if ((this.mJingCouponInfo != null) && (this.mJingCouponInfo.size() > 0))
        {
          this.mNoJing.setVisibility(8);
          setJingDataView();
        }
      }
      while (this.bDongCoupon) {
        if ((this.mDongCouponInfo != null) && (this.mDongCouponInfo.size() > 0))
        {
          this.mNoJing = ((TextView)findViewById(2131494444));
          this.mNoJing.setVisibility(8);
          this.mListViewDong.setVisibility(0);
          setDongDataView();
          return;
          this.mNoJing.setText("没有可用的京券");
          this.mNoJing.setVisibility(0);
          this.mListViewJing.setVisibility(8);
          continue;
          setNotAvailable(this.mListViewJing, this.mNoJing, this.bJingCoupontip);
        }
        else
        {
          this.mNoDong.setVisibility(0);
          this.mListViewDong.setVisibility(8);
          this.mNoDong.setText("没有可用的东券");
          return;
        }
      }
      setNotAvailable(this.mListViewDong, this.mNoDong, this.bDongCoupontip);
      return;
    }
    this.mNoJing.setText("没有可用的京券");
    this.mNoJing.setVisibility(0);
    this.mListViewJing.setVisibility(8);
    this.mNoDong.setVisibility(0);
    this.mNoDong.setText("没有可用的东券");
    this.mListViewDong.setVisibility(8);
  }
  
  private void setDongDataView()
  {
    BaseAdapter local5 = new BaseAdapter()
    {
      public int getCount()
      {
        if ((EditYouHuiLipinActivity.this.mDongCouponInfo != null) && (!EditYouHuiLipinActivity.this.mDongCouponInfo.isEmpty())) {
          return EditYouHuiLipinActivity.this.mDongCouponInfo.size();
        }
        return 0;
      }
      
      public Object getItem(int paramAnonymousInt)
      {
        if ((EditYouHuiLipinActivity.this.mDongCouponInfo != null) && (!EditYouHuiLipinActivity.this.mDongCouponInfo.isEmpty())) {
          return EditYouHuiLipinActivity.this.mDongCouponInfo.get(paramAnonymousInt);
        }
        return null;
      }
      
      public long getItemId(int paramAnonymousInt)
      {
        return paramAnonymousInt;
      }
      
      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        if (paramAnonymousView == null) {
          paramAnonymousView = ImageUtil.inflate(2130903171, paramAnonymousViewGroup, false);
        }
        ViewHolder localViewHolder;
        if (paramAnonymousView.getTag() != null) {
          localViewHolder = (ViewHolder)paramAnonymousView.getTag();
        }
        for (;;)
        {
          CouponInfo localCouponInfo = (CouponInfo)getItem(paramAnonymousInt);
          localViewHolder.mTextViewName.setText(localCouponInfo.getDiscountName());
          localViewHolder.mTextViewTimeEnd.setText(localCouponInfo.getTimeEndShow());
          localViewHolder.mTextViewScope.setText(localCouponInfo.getScope());
          if ((localCouponInfo == null) || (!localCouponInfo.getSelected().booleanValue())) {
            break;
          }
          localViewHolder.mCheck.setChecked(true);
          EditYouHuiLipinActivity.this.oldSelectedDongPostion = paramAnonymousInt;
          return paramAnonymousView;
          localViewHolder = new ViewHolder();
          localViewHolder.mCheck = ((RadioButton)paramAnonymousView.findViewById(2131493598));
          localViewHolder.mTextViewName = ((TextView)paramAnonymousView.findViewById(2131493591));
          localViewHolder.mTextViewTimeEnd = ((TextView)paramAnonymousView.findViewById(2131493596));
          localViewHolder.mTextViewScope = ((TextView)paramAnonymousView.findViewById(2131493600));
          paramAnonymousView.setTag(localViewHolder);
        }
        localViewHolder.mCheck.setChecked(false);
        return paramAnonymousView;
      }
      
      class ViewHolder
      {
        RadioButton mCheck;
        TextView mTextViewName;
        TextView mTextViewScope;
        TextView mTextViewTimeEnd;
        
        ViewHolder() {}
      }
    };
    this.mListViewDong.setAdapter(local5);
    this.mListViewDong.setClickable(true);
    this.mListViewDong.setItemsCanFocus(true);
    this.mListViewDong.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      private void unSelectOldRadioButton(AdapterView<?> paramAnonymousAdapterView)
      {
        if (EditYouHuiLipinActivity.this.oldSelectedDongPostion != -1)
        {
          RadioButton localRadioButton = (RadioButton)paramAnonymousAdapterView.getChildAt(EditYouHuiLipinActivity.this.oldSelectedDongPostion).findViewById(2131493598);
          if (localRadioButton != null)
          {
            localRadioButton.setChecked(false);
            CouponInfo localCouponInfo = (CouponInfo)EditYouHuiLipinActivity.this.mDongCouponInfo.get(EditYouHuiLipinActivity.this.oldSelectedDongPostion);
            if (localCouponInfo != null)
            {
              localCouponInfo.setSelected(Boolean.valueOf(false));
              localCouponInfo.setModify(true);
            }
          }
        }
      }
      
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (EditYouHuiLipinActivity.this.bDongCoupon)
        {
          if (!CouponInfo.isSelectedJingForList(EditYouHuiLipinActivity.this.mJingCouponInfo))
          {
            CouponInfo localCouponInfo = (CouponInfo)EditYouHuiLipinActivity.this.mDongCouponInfo.get(paramAnonymousInt);
            RadioButton localRadioButton = (RadioButton)paramAnonymousView.findViewById(2131493598);
            if (localRadioButton.isChecked())
            {
              localRadioButton.setChecked(false);
              unSelectOldRadioButton(paramAnonymousAdapterView);
              EditYouHuiLipinActivity.this.oldSelectedDongPostion = -1;
            }
            for (;;)
            {
              localCouponInfo.setSelected(Boolean.valueOf(localRadioButton.isChecked()));
              localCouponInfo.setModify(true);
              EditYouHuiLipinActivity.this.mNewCurrentOrder.setChangeJingOrDongQuan(true);
              return;
              try
              {
                if (Double.valueOf(EditYouHuiLipinActivity.this.mNewCurrentOrder.getTotalPrice()).doubleValue() < localCouponInfo.getQuota().floatValue())
                {
                  Toast.makeText(EditYouHuiLipinActivity.this, "您购买的金额不足" + localCouponInfo.getQuota() + "元," + "不能使用这张东券", 0).show();
                  return;
                }
              }
              catch (Exception localException)
              {
                localRadioButton.setChecked(true);
                unSelectOldRadioButton(paramAnonymousAdapterView);
                EditYouHuiLipinActivity.this.oldSelectedDongPostion = paramAnonymousInt;
              }
            }
          }
          Toast.makeText(EditYouHuiLipinActivity.this, "您已经选择了京券", 0).show();
          return;
        }
        Toast.makeText(EditYouHuiLipinActivity.this, EditYouHuiLipinActivity.this.bDongCoupontip, 0).show();
      }
    });
    local5.notifyDataSetChanged();
  }
  
  private void setJingDataView()
  {
    BaseAdapter local3 = new BaseAdapter()
    {
      public int getCount()
      {
        if ((EditYouHuiLipinActivity.this.mJingCouponInfo != null) && (!EditYouHuiLipinActivity.this.mJingCouponInfo.isEmpty())) {
          return EditYouHuiLipinActivity.this.mJingCouponInfo.size();
        }
        return 0;
      }
      
      public Object getItem(int paramAnonymousInt)
      {
        if ((EditYouHuiLipinActivity.this.mJingCouponInfo != null) && (!EditYouHuiLipinActivity.this.mJingCouponInfo.isEmpty())) {
          return EditYouHuiLipinActivity.this.mJingCouponInfo.get(paramAnonymousInt);
        }
        return null;
      }
      
      public long getItemId(int paramAnonymousInt)
      {
        return paramAnonymousInt;
      }
      
      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        if (paramAnonymousView == null) {
          paramAnonymousView = ImageUtil.inflate(2130903170, paramAnonymousViewGroup, false);
        }
        ViewHolder localViewHolder;
        if (paramAnonymousView.getTag() != null) {
          localViewHolder = (ViewHolder)paramAnonymousView.getTag();
        }
        for (;;)
        {
          CouponInfo localCouponInfo = (CouponInfo)getItem(paramAnonymousInt);
          localViewHolder.mTextViewName.setText(localCouponInfo.getDiscountName());
          localViewHolder.mTextViewTimeEnd.setText(localCouponInfo.getTimeEndShow());
          localViewHolder.mTextViewScope.setText(localCouponInfo.getScope());
          if ((localCouponInfo == null) || (!localCouponInfo.getSelected().booleanValue())) {
            break;
          }
          localViewHolder.mCheck.setChecked(true);
          return paramAnonymousView;
          localViewHolder = new ViewHolder();
          localViewHolder.mCheck = ((CheckBox)paramAnonymousView.findViewById(2131493592));
          localViewHolder.mTextViewName = ((TextView)paramAnonymousView.findViewById(2131493591));
          localViewHolder.mTextViewTimeEnd = ((TextView)paramAnonymousView.findViewById(2131493596));
          localViewHolder.mTextViewScope = ((TextView)paramAnonymousView.findViewById(2131493594));
          paramAnonymousView.setTag(localViewHolder);
        }
        localViewHolder.mCheck.setChecked(false);
        return paramAnonymousView;
      }
      
      class ViewHolder
      {
        CheckBox mCheck;
        TextView mTextViewName;
        TextView mTextViewScope;
        TextView mTextViewTimeEnd;
        
        ViewHolder() {}
      }
    };
    this.mListViewJing.setAdapter(local3);
    this.mListViewJing.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (EditYouHuiLipinActivity.this.bJingCoupon)
        {
          if (!CouponInfo.isSelectedDongForList(EditYouHuiLipinActivity.this.mDongCouponInfo))
          {
            CouponInfo localCouponInfo = (CouponInfo)EditYouHuiLipinActivity.this.mJingCouponInfo.get(paramAnonymousInt);
            CheckBox localCheckBox = (CheckBox)paramAnonymousView.findViewById(2131493592);
            boolean bool1 = localCheckBox.isChecked();
            boolean bool2 = false;
            if (bool1) {}
            for (;;)
            {
              localCheckBox.setChecked(bool2);
              localCouponInfo.setSelected(Boolean.valueOf(localCheckBox.isChecked()));
              localCouponInfo.setModify(true);
              EditYouHuiLipinActivity.this.mNewCurrentOrder.setChangeJingOrDongQuan(true);
              return;
              bool2 = true;
            }
          }
          Toast.makeText(EditYouHuiLipinActivity.this, "您已经选择了东券", 0).show();
          return;
        }
        Toast.makeText(EditYouHuiLipinActivity.this, EditYouHuiLipinActivity.this.bJingCoupontip, 0).show();
      }
    });
  }
  
  private void setLipinDataView()
  {
    if (!this.bCard)
    {
      setNotAvailable(this.mListViewLiPin, this.mNoLi, this.bCardtip);
      return;
    }
    if (this.mGiftInfo.size() < 1)
    {
      this.mNoLi.setText("没有可用的礼品卡");
      this.mNoLi.setVisibility(0);
      this.mListViewLiPin.setVisibility(8);
      return;
    }
    this.mNoLi.setVisibility(8);
    this.mListViewLiPin.setVisibility(0);
    BaseAdapter local7 = new BaseAdapter()
    {
      public int getCount()
      {
        if ((EditYouHuiLipinActivity.this.mGiftInfo != null) && (!EditYouHuiLipinActivity.this.mGiftInfo.isEmpty())) {
          return EditYouHuiLipinActivity.this.mGiftInfo.size();
        }
        return 0;
      }
      
      public Object getItem(int paramAnonymousInt)
      {
        if ((EditYouHuiLipinActivity.this.mGiftInfo != null) && (!EditYouHuiLipinActivity.this.mGiftInfo.isEmpty())) {
          return EditYouHuiLipinActivity.this.mGiftInfo.get(paramAnonymousInt);
        }
        return null;
      }
      
      public long getItemId(int paramAnonymousInt)
      {
        return paramAnonymousInt;
      }
      
      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        if (paramAnonymousView == null) {
          paramAnonymousView = ImageUtil.inflate(2130903174, paramAnonymousViewGroup, false);
        }
        ViewHolder localViewHolder;
        if (paramAnonymousView.getTag() != null) {
          localViewHolder = (ViewHolder)paramAnonymousView.getTag();
        }
        for (;;)
        {
          GiftCartInfo localGiftCartInfo = (GiftCartInfo)getItem(paramAnonymousInt);
          localViewHolder.mTextViewName.setText(localGiftCartInfo.getDiscountName());
          localViewHolder.mTextViewLeaveMoneyShow.setText(localGiftCartInfo.getLeaveMoneyShow());
          localViewHolder.mTextViewTimeEndShow.setText(localGiftCartInfo.getTimeEndShow());
          if ((localGiftCartInfo == null) || (!localGiftCartInfo.getSelected().booleanValue())) {
            break;
          }
          localViewHolder.mCheck.setChecked(true);
          return paramAnonymousView;
          localViewHolder = new ViewHolder();
          localViewHolder.mCheck = ((CheckBox)paramAnonymousView.findViewById(2131493609));
          localViewHolder.mTextViewName = ((TextView)paramAnonymousView.findViewById(2131493605));
          localViewHolder.mTextViewLeaveMoneyShow = ((TextView)paramAnonymousView.findViewById(2131493607));
          localViewHolder.mTextViewTimeEndShow = ((TextView)paramAnonymousView.findViewById(2131493596));
          paramAnonymousView.setTag(localViewHolder);
        }
        localViewHolder.mCheck.setChecked(false);
        return paramAnonymousView;
      }
      
      class ViewHolder
      {
        CheckBox mCheck;
        TextView mTextViewLeaveMoneyShow;
        TextView mTextViewName;
        TextView mTextViewTimeEndShow;
        
        ViewHolder() {}
      }
    };
    this.mListViewLiPin.setAdapter(local7);
    this.mListViewLiPin.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (EditYouHuiLipinActivity.this.bCard)
        {
          GiftCartInfo localGiftCartInfo = (GiftCartInfo)EditYouHuiLipinActivity.this.mGiftInfo.get(paramAnonymousInt);
          CheckBox localCheckBox = (CheckBox)paramAnonymousView.findViewById(2131493609);
          boolean bool1 = localCheckBox.isChecked();
          boolean bool2 = false;
          if (bool1) {}
          for (;;)
          {
            localCheckBox.setChecked(bool2);
            localGiftCartInfo.setSelected(Boolean.valueOf(localCheckBox.isChecked()));
            localGiftCartInfo.setModify(true);
            EditYouHuiLipinActivity.this.mNewCurrentOrder.setChangeLipin(true);
            return;
            bool2 = true;
          }
        }
        Toast.makeText(EditYouHuiLipinActivity.this, EditYouHuiLipinActivity.this.bCardtip, 0).show();
      }
    });
  }
  
  private void setNotAvailable(ListView paramListView, TextView paramTextView, String paramString)
  {
    paramListView.setVisibility(8);
    paramTextView.setVisibility(0);
    paramTextView.setText(paramString);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903293);
    Intent localIntent = getIntent();
    this.bCard = localIntent.getBooleanExtra("bCard", true);
    this.bJingCoupon = localIntent.getBooleanExtra("bJingCoupon", true);
    this.bDongCoupon = localIntent.getBooleanExtra("bDongCoupon", true);
    this.bCardtip = localIntent.getStringExtra("bCardtip");
    this.bJingCoupontip = localIntent.getStringExtra("bJingCoupontip");
    this.bDongCoupontip = localIntent.getStringExtra("bDongCoupontip");
    this.mNewCurrentOrder = ((NewCurrentOrder)localIntent.getSerializableExtra("ExtraNewCurrentOrder"));
    if (this.mNewCurrentOrder != null)
    {
      this.mCouponInfo = this.mNewCurrentOrder.getCouponInfo();
      this.mGiftInfo = this.mNewCurrentOrder.getGiftInfo();
    }
    if ((this.bCardtip == null) || (this.bCardtip.trim().equals(""))) {
      this.bCardtip = getString(2131166247);
    }
    if ((this.bJingCoupontip == null) || (this.bJingCoupontip.trim().equals(""))) {
      this.bJingCoupontip = getString(2131166248);
    }
    if ((this.bDongCoupontip == null) || (this.bDongCoupontip.trim().equals(""))) {
      this.bDongCoupontip = getString(2131166249);
    }
    initComponent();
    handleClickEvent();
    this.loadingBar.setVisibility(0);
    post(new Runnable()
    {
      public void run()
      {
        EditYouHuiLipinActivity.this.setCouponView();
        EditYouHuiLipinActivity.this.setLipinDataView();
        EditYouHuiLipinActivity.this.loadingBar.setVisibility(8);
      }
    }, 200);
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      updateYouhuiInfo();
      setResult(0);
      finish();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public void updateInvoinceInfo() {}
  
  public void updatePaymentInfo() {}
  
  public void updateUserInfo() {}
  
  public void updateYouhuiInfo() {}
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.EditYouHuiLipinActivity
 * JD-Core Version:    0.7.0.1
 */