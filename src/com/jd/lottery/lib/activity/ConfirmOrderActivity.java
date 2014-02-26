package com.jd.lottery.lib.activity;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.jd.droidlib.annotation.inject.InjectView;
import com.jd.droidlib.executor.service.MainThreadResultReceiver;
import com.jd.droidlib.util.L;
import com.jd.lottery.lib.R.layout;
import com.jd.lottery.lib.R.string;
import com.jd.lottery.lib.adapter.ConfirmListAdapter;
import com.jd.lottery.lib.data.Constants.API_ERROR;
import com.jd.lottery.lib.data.Constants.LotteryType;
import com.jd.lottery.lib.data.Constants.PayType;
import com.jd.lottery.lib.data.UserManager;
import com.jd.lottery.lib.formatter.Formatter;
import com.jd.lottery.lib.formatter.LotteryBasket;
import com.jd.lottery.lib.formatter.LotteryBasket.LotteryItem;
import com.jd.lottery.lib.model.BetRequest;
import com.jd.lottery.lib.model.IssueEntity;
import com.jd.lottery.lib.model.LotteryEntity;
import com.jd.lottery.lib.model.OrderInfoEntity;
import com.jd.lottery.lib.model.TokenInfo;
import com.jd.lottery.lib.model.UserInfoEntity;
import com.jd.lottery.lib.service.DataIntentService;
import com.jd.lottery.lib.ui.widget.FullSizeListView;
import com.jd.lottery.lib.ui.widget.PasswordEditText;
import com.jd.lottery.lib.ui.widget.PaymentMethodDialogFragment;
import com.jd.lottery.lib.ui.widget.PaymentMethodDialogFragment.ActionClickListener;
import com.jd.lottery.lib.ui.widget.ToastUtil;
import com.jd.lottery.lib.utils.StringUtils;
import com.jd.lottery.lib.utils.Util;
import com.jingdong.app.lib.base.activity.JDActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ConfirmOrderActivity
  extends BaseActivity
{
  private static final String ISSUE_ENTITY = "essueEntity";
  private static final String KIND = "kind";
  private static final String MONEY = "money";
  private static final String NUMBER = "number";
  private static final int REQUEST_CODE_ORDER = 1;
  private static final int REQUEST_CODE_UPDATE_USER_INFO = 0;
  private static final String STOP_FLAG = "stop_flag";
  private static final String TERM = "term";
  private static final String TIME = "time";
  private static final String TYPE = "type";
  @InjectView
  private TextView comfirm_order_pay_message;
  @InjectView
  private RelativeLayout confirm_order_info_content;
  @InjectView
  private TextView confirm_order_info_idcard;
  @InjectView
  private RelativeLayout confirm_order_info_layout;
  @InjectView
  private TextView confirm_order_info_mobile;
  @InjectView
  private TextView confirm_order_info_name;
  @InjectView
  private TextView confirm_order_info_no;
  @InjectView
  private ScrollView confirm_order_info_scrollView;
  @InjectView
  private FullSizeListView confirm_order_list;
  @InjectView
  private TextView confirm_order_pay_find_pwd;
  @InjectView
  private PasswordEditText confirm_order_pay_pwd;
  @InjectView
  private TextView confirm_order_payway;
  @InjectView
  private LinearLayout confirm_order_payway_layout;
  @InjectView
  private RelativeLayout confirm_order_payway_pwd_layout;
  @InjectView
  private TextView confirm_order_submit;
  @InjectView
  private TextView confirm_order_total_number;
  @InjectView
  private TextView confirm_order_total_price;
  private final MainThreadResultReceiver getUserInfoReceiver = new MainThreadResultReceiver()
  {
    protected void onReceiveResult(int paramAnonymousInt, Bundle paramAnonymousBundle)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = paramAnonymousBundle.toString();
      L.d("@@@@@@@@@@@%s", arrayOfObject);
      Constants.API_ERROR localAPI_ERROR = (Constants.API_ERROR)paramAnonymousBundle.get("error");
      if ((localAPI_ERROR != null) && (localAPI_ERROR != Constants.API_ERROR.UNDEFINED) && (localAPI_ERROR != Constants.API_ERROR.SUCCESS))
      {
        ToastUtil.shortToast(ConfirmOrderActivity.this.getApplicationContext(), localAPI_ERROR.getErrMsg());
        return;
      }
      ConfirmOrderActivity.this.userInfoEntity = ((UserInfoEntity)paramAnonymousBundle.get("data"));
      if ((ConfirmOrderActivity.this.userInfoEntity == null) || (StringUtils.isEmpty(ConfirmOrderActivity.this.userInfoEntity.fullname)) || (StringUtils.isEmpty(ConfirmOrderActivity.this.userInfoEntity.idcardnumber)) || (StringUtils.isEmpty(ConfirmOrderActivity.this.userInfoEntity.mobile)))
      {
        ConfirmOrderActivity.this.confirm_order_info_content.setVisibility(8);
        ConfirmOrderActivity.this.confirm_order_info_no.setVisibility(0);
        return;
      }
      ConfirmOrderActivity.this.confirm_order_info_content.setVisibility(0);
      ConfirmOrderActivity.this.confirm_order_info_no.setVisibility(8);
      ConfirmOrderActivity.this.confirm_order_info_name.setText(ConfirmOrderActivity.this.userInfoEntity.fullname);
      ConfirmOrderActivity.this.confirm_order_info_idcard.setText(StringUtils.idCardNumber2Safe4Show(ConfirmOrderActivity.this.userInfoEntity.idcardnumber));
      ConfirmOrderActivity.this.confirm_order_info_mobile.setText(StringUtils.phoneNum2Safe4Show(ConfirmOrderActivity.this.userInfoEntity.mobile));
    }
  };
  private IssueEntity issueEntity;
  private List<LotteryBasket.LotteryItem> lotteryItems;
  private String mCouponIds;
  private Formatter mFormatter;
  private ArrayList<LotteryEntity> mIssueArray;
  private int mKind;
  private int mMoney;
  private int mNumber;
  private Constants.PayType mPayType = Constants.PayType.PayOnline;
  private ProgressDialog mProgressDialog;
  private String mPwd;
  private int mStopFlag;
  private int mTerm;
  private int mTime;
  private int mType;
  private OrderInfoEntity orderInfoEntity;
  PaymentMethodDialogFragment paymentMethodDialogFragment;
  private String pin;
  private Runnable runnable = new Runnable()
  {
    public void run()
    {
      ConfirmOrderActivity.this.confirm_order_info_scrollView.scrollTo(1, 1);
    }
  };
  private final MainThreadResultReceiver takeOrderReceiver = new MainThreadResultReceiver()
  {
    protected void onReceiveResult(int paramAnonymousInt, Bundle paramAnonymousBundle)
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = paramAnonymousBundle.toString();
      L.d("@@@@@@@@@@@%s", arrayOfObject1);
      Constants.API_ERROR localAPI_ERROR = (Constants.API_ERROR)paramAnonymousBundle.get("error");
      if ((localAPI_ERROR != null) && (localAPI_ERROR != Constants.API_ERROR.UNDEFINED) && (localAPI_ERROR != Constants.API_ERROR.SUCCESS))
      {
        ToastUtil.shortToast(ConfirmOrderActivity.this.getApplicationContext(), localAPI_ERROR.getErrMsg());
        ConfirmOrderActivity.this.confirm_order_submit.setEnabled(true);
        if (ConfirmOrderActivity.this.mProgressDialog.isShowing()) {
          ConfirmOrderActivity.this.mProgressDialog.dismiss();
        }
      }
      do
      {
        do
        {
          return;
          ConfirmOrderActivity.this.orderInfoEntity = ((OrderInfoEntity)paramAnonymousBundle.get("data"));
          if (ConfirmOrderActivity.this.orderInfoEntity != null) {
            break;
          }
          ConfirmOrderActivity.this.confirm_order_submit.setEnabled(true);
        } while (!ConfirmOrderActivity.this.mProgressDialog.isShowing());
        ConfirmOrderActivity.this.mProgressDialog.dismiss();
        return;
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = ConfirmOrderActivity.this.orderInfoEntity.toString();
        L.d("@@@@@@@@@@@%s", arrayOfObject2);
        LotteryBasket.getInstance().clear(ConfirmOrderActivity.this.mKind);
        if (ConfirmOrderActivity.this.mPayType == Constants.PayType.PayOnline) {
          break;
        }
        ToastUtil.longToast(ConfirmOrderActivity.this.getApplicationContext(), R.string.lottery_order_success);
        Intent localIntent2 = new Intent();
        localIntent2.setFlags(67108864);
        localIntent2.setClass(ConfirmOrderActivity.this.getApplicationContext(), MainActivity.class);
        ConfirmOrderActivity.this.startActivity(localIntent2);
        ConfirmOrderActivity.this.confirm_order_submit.setEnabled(true);
      } while (!ConfirmOrderActivity.this.mProgressDialog.isShowing());
      ConfirmOrderActivity.this.mProgressDialog.dismiss();
      return;
      String str = Util.getHostDeviceInfo();
      final long l = ConfirmOrderActivity.this.orderInfoEntity.erporderid.intValue();
      Intent localIntent1 = DataIntentService.getLotteryTokenIntent(ConfirmOrderActivity.this, str, "pay", UserManager.getInstance().getCookie(), new MainThreadResultReceiver()
      {
        protected void onReceiveResult(int paramAnonymous2Int, Bundle paramAnonymous2Bundle)
        {
          if (ConfirmOrderActivity.this.mProgressDialog.isShowing()) {
            ConfirmOrderActivity.this.mProgressDialog.dismiss();
          }
          TokenInfo localTokenInfo = (TokenInfo)paramAnonymous2Bundle.get("data");
          if (localTokenInfo == null)
          {
            ConfirmOrderActivity.this.confirm_order_submit.setEnabled(true);
            return;
          }
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = paramAnonymous2Bundle.toString();
          L.d("@@@@@@@@@@@%s", arrayOfObject);
          String str = localTokenInfo.url + "?tokenKey=" + localTokenInfo.tokenKey + "&orderId=" + l;
          Intent localIntent = new Intent(ConfirmOrderActivity.this, JDActivity.class);
          localIntent.putExtra("url", str);
          ConfirmOrderActivity.this.startActivityForResult(localIntent, 1);
        }
      });
      ConfirmOrderActivity.this.startService(localIntent1);
      ConfirmOrderActivity.this.confirm_order_submit.setEnabled(true);
    }
  };
  private String upoadLotteries;
  private UserInfoEntity userInfoEntity;
  
  private String combineAppendInfo(ArrayList<LotteryEntity> paramArrayList)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramArrayList.iterator();
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        localStringBuilder.deleteCharAt(-1 + localStringBuilder.length());
        L.d("@@@@@@@@@22" + localStringBuilder.toString());
        return localStringBuilder.toString();
      }
      LotteryEntity localLotteryEntity = (LotteryEntity)localIterator.next();
      localStringBuilder.append(localLotteryEntity.issueid);
      localStringBuilder.append(':');
      localStringBuilder.append(localLotteryEntity.issuename);
      localStringBuilder.append(':');
      localStringBuilder.append(this.mTime);
      localStringBuilder.append(':');
      localStringBuilder.append(this.mMoney / this.mTerm);
      localStringBuilder.append(';');
    }
  }
  
  public static void launch(Activity paramActivity, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, IssueEntity paramIssueEntity)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("kind", paramInt1);
    localIntent.putExtra("type", paramInt2);
    localIntent.putExtra("term", paramInt3);
    localIntent.putExtra("time", paramInt4);
    localIntent.putExtra("number", paramInt5);
    localIntent.putExtra("money", paramInt6);
    localIntent.putExtra("stop_flag", paramInt7);
    localIntent.putExtra("essueEntity", paramIssueEntity);
    localIntent.setClass(paramActivity, ConfirmOrderActivity.class);
    paramActivity.startActivity(localIntent);
  }
  
  private void setupViews()
  {
    this.mPayType = Constants.PayType.PayOnline;
    this.confirm_order_payway.setText(this.mPayType.getName());
    this.confirm_order_payway_pwd_layout.setVisibility(8);
    TextView localTextView1 = this.confirm_order_total_price;
    Resources localResources1 = getResources();
    int i = R.string.total_money_formater;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(this.mMoney);
    localTextView1.setText(localResources1.getString(i, arrayOfObject1));
    TextView localTextView2 = this.confirm_order_total_number;
    Resources localResources2 = getResources();
    int j = R.string.total_term_formater;
    Object[] arrayOfObject2 = new Object[3];
    arrayOfObject2[0] = Integer.valueOf(this.mNumber);
    arrayOfObject2[1] = Integer.valueOf(this.mTerm);
    arrayOfObject2[2] = Integer.valueOf(this.mTime);
    localTextView2.setText(localResources2.getString(j, arrayOfObject2));
    ConfirmListAdapter localConfirmListAdapter = new ConfirmListAdapter(getApplicationContext());
    localConfirmListAdapter.setLotterys(this.lotteryItems);
    localConfirmListAdapter.setFormatter(this.mFormatter);
    this.confirm_order_list.setAdapter(localConfirmListAdapter);
    this.confirm_order_info_layout.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (ConfirmOrderActivity.this.userInfoEntity == null)
        {
          ToastUtil.shortToast(ConfirmOrderActivity.this.getApplicationContext(), R.string.toast_get_personal_info_fail);
          return;
        }
        EditPersonalInfoActivity.launchForResult(ConfirmOrderActivity.this, ConfirmOrderActivity.this.userInfoEntity, 0);
      }
    });
    this.confirm_order_payway_layout.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        FragmentTransaction localFragmentTransaction = ConfirmOrderActivity.this.getSupportFragmentManager().beginTransaction();
        Fragment localFragment = ConfirmOrderActivity.this.getSupportFragmentManager().findFragmentByTag("paymentMethodDialog");
        if (localFragment != null)
        {
          localFragmentTransaction.remove(localFragment);
          localFragmentTransaction.addToBackStack(null);
          return;
        }
        ConfirmOrderActivity.this.paymentMethodDialogFragment = PaymentMethodDialogFragment.newInstance(ConfirmOrderActivity.this.mMoney, ConfirmOrderActivity.this.mPayType, ConfirmOrderActivity.this.mCouponIds, ConfirmOrderActivity.this.mTerm);
        ConfirmOrderActivity.this.paymentMethodDialogFragment.show(ConfirmOrderActivity.this.getSupportFragmentManager(), "paymentMethodDialog");
        ConfirmOrderActivity.this.paymentMethodDialogFragment.setOnActionClickListener(new PaymentMethodDialogFragment.ActionClickListener()
        {
          public void onLeftClicked() {}
          
          public void onRightClicked(Constants.PayType paramAnonymous2PayType, double paramAnonymous2Double, String paramAnonymous2String)
          {
            ConfirmOrderActivity.this.mPayType = paramAnonymous2PayType;
            ConfirmOrderActivity.this.mCouponIds = paramAnonymous2String;
            ConfirmOrderActivity.this.confirm_order_payway.setText(ConfirmOrderActivity.this.mPayType.getName());
            if (ConfirmOrderActivity.this.mPayType == Constants.PayType.Balance)
            {
              ConfirmOrderActivity.this.comfirm_order_pay_message.setVisibility(0);
              TextView localTextView3 = ConfirmOrderActivity.this.comfirm_order_pay_message;
              ConfirmOrderActivity localConfirmOrderActivity3 = ConfirmOrderActivity.this;
              int k = R.string.confirm_order_use_blance;
              Object[] arrayOfObject3 = new Object[1];
              arrayOfObject3[0] = Integer.valueOf(ConfirmOrderActivity.this.mMoney);
              localTextView3.setText(localConfirmOrderActivity3.getString(k, arrayOfObject3));
            }
            while (ConfirmOrderActivity.this.mPayType == Constants.PayType.PayOnline)
            {
              ConfirmOrderActivity.this.confirm_order_payway_pwd_layout.setVisibility(8);
              return;
              if (ConfirmOrderActivity.this.mPayType == Constants.PayType.Score)
              {
                ConfirmOrderActivity.this.comfirm_order_pay_message.setVisibility(0);
                TextView localTextView2 = ConfirmOrderActivity.this.comfirm_order_pay_message;
                ConfirmOrderActivity localConfirmOrderActivity2 = ConfirmOrderActivity.this;
                int j = R.string.confirm_order_use_beans;
                Object[] arrayOfObject2 = new Object[1];
                arrayOfObject2[0] = Integer.valueOf(100 * ConfirmOrderActivity.this.mMoney);
                localTextView2.setText(localConfirmOrderActivity2.getString(j, arrayOfObject2));
              }
              else if (ConfirmOrderActivity.this.mPayType == Constants.PayType.Coupon)
              {
                ConfirmOrderActivity.this.comfirm_order_pay_message.setVisibility(0);
                TextView localTextView1 = ConfirmOrderActivity.this.comfirm_order_pay_message;
                ConfirmOrderActivity localConfirmOrderActivity1 = ConfirmOrderActivity.this;
                int i = R.string.confirm_order_use_coupon;
                Object[] arrayOfObject1 = new Object[1];
                arrayOfObject1[0] = Double.valueOf(paramAnonymous2Double);
                localTextView1.setText(localConfirmOrderActivity1.getString(i, arrayOfObject1));
              }
              else
              {
                ConfirmOrderActivity.this.comfirm_order_pay_message.setVisibility(8);
              }
            }
            ConfirmOrderActivity.this.confirm_order_payway_pwd_layout.setVisibility(0);
          }
        });
      }
    });
    this.confirm_order_pay_find_pwd.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView) {}
    });
    this.confirm_order_submit.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ConfirmOrderActivity.this.confirm_order_submit.setEnabled(false);
        if ((ConfirmOrderActivity.this.userInfoEntity == null) || (StringUtils.isEmpty(ConfirmOrderActivity.this.userInfoEntity.fullname)) || (StringUtils.isEmpty(ConfirmOrderActivity.this.userInfoEntity.idcardnumber)) || (StringUtils.isEmpty(ConfirmOrderActivity.this.userInfoEntity.mobile)))
        {
          ToastUtil.shortToast(ConfirmOrderActivity.this.getApplicationContext(), R.string.toast_confirm_order_imperfect_personal_info);
          ConfirmOrderActivity.this.confirm_order_submit.setEnabled(true);
          return;
        }
        ConfirmOrderActivity.this.mPwd = ConfirmOrderActivity.this.confirm_order_pay_pwd.getText().toString();
        if ((ConfirmOrderActivity.this.mPayType != Constants.PayType.PayOnline) && (StringUtils.isEmpty(ConfirmOrderActivity.this.mPwd)))
        {
          ToastUtil.shortToast(ConfirmOrderActivity.this.getApplicationContext(), R.string.toast_confirm_order_no_pwd);
          ConfirmOrderActivity.this.confirm_order_submit.setEnabled(true);
          return;
        }
        BetRequest localBetRequest = new BetRequest();
        localBetRequest.setLotteryCategory(ConfirmOrderActivity.this.issueEntity.lotterycategory);
        localBetRequest.setIssueId(ConfirmOrderActivity.this.issueEntity.issueid);
        localBetRequest.setIssueName(ConfirmOrderActivity.this.issueEntity.issuename);
        if (ConfirmOrderActivity.this.mTerm > 1)
        {
          localBetRequest.setOrderType(3);
          if ((ConfirmOrderActivity.this.mIssueArray == null) || (ConfirmOrderActivity.this.mIssueArray.size() < ConfirmOrderActivity.this.mTerm))
          {
            ToastUtil.shortToast(ConfirmOrderActivity.this.getApplicationContext(), R.string.toast_term_error);
            ConfirmOrderActivity.this.confirm_order_submit.setEnabled(true);
            return;
          }
          localBetRequest.setAppendIssueinfo(ConfirmOrderActivity.this.combineAppendInfo(ConfirmOrderActivity.this.mIssueArray));
          localBetRequest.setMulti(0);
        }
        for (;;)
        {
          localBetRequest.setPayType(ConfirmOrderActivity.this.mPayType);
          localBetRequest.setPayPassword(ConfirmOrderActivity.this.mPwd);
          localBetRequest.setTotalStake(ConfirmOrderActivity.this.mNumber);
          localBetRequest.setLotteryNumber(ConfirmOrderActivity.this.upoadLotteries);
          localBetRequest.setTotalFee(ConfirmOrderActivity.this.mMoney);
          localBetRequest.setStopflag(ConfirmOrderActivity.this.mStopFlag);
          localBetRequest.setPin(UserManager.getInstance().getUserName());
          localBetRequest.setCouponIds(ConfirmOrderActivity.this.mCouponIds);
          localBetRequest.setFullName(ConfirmOrderActivity.this.userInfoEntity.fullname);
          localBetRequest.setIdcardNumber(ConfirmOrderActivity.this.userInfoEntity.idcardnumber);
          localBetRequest.setMobile(ConfirmOrderActivity.this.userInfoEntity.mobile);
          localBetRequest.setUserType(ConfirmOrderActivity.this.userInfoEntity.usertype.intValue());
          ConfirmOrderActivity.this.startService(DataIntentService.getOrderIntent(ConfirmOrderActivity.this, localBetRequest, ConfirmOrderActivity.this.takeOrderReceiver));
          if (ConfirmOrderActivity.this.mProgressDialog.isShowing()) {
            break;
          }
          ConfirmOrderActivity.this.mProgressDialog.show();
          return;
          localBetRequest.setOrderType(0);
          localBetRequest.setMulti(ConfirmOrderActivity.this.mTime);
        }
      }
    });
    this.confirm_order_info_scrollView.post(this.runnable);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    L.d("@@@@@@@@@@@" + paramInt1);
    switch (paramInt1)
    {
    default: 
    case 0: 
      do
      {
        do
        {
          return;
        } while ((paramInt2 != 0) || (paramIntent == null));
        this.confirm_order_info_no.setVisibility(8);
        this.confirm_order_info_content.setVisibility(0);
        this.userInfoEntity = ((UserInfoEntity)paramIntent.getSerializableExtra("data"));
        L.d("@@@@@@@@@22" + this.userInfoEntity);
      } while (this.userInfoEntity == null);
      this.confirm_order_info_name.setText(this.userInfoEntity.fullname);
      this.confirm_order_info_idcard.setText(StringUtils.idCardNumber2Safe4Show(this.userInfoEntity.idcardnumber));
      this.confirm_order_info_mobile.setText(StringUtils.phoneNum2Safe4Show(this.userInfoEntity.mobile));
      return;
    }
    Intent localIntent = new Intent();
    localIntent.setFlags(67108864);
    localIntent.setClass(getApplicationContext(), MainActivity.class);
    startActivity(localIntent);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.mProgressDialog = new ProgressDialog(this);
    this.mProgressDialog.setProgressStyle(0);
    this.mProgressDialog.setMessage(getString(R.string.loading));
    this.mProgressDialog.setCanceledOnTouchOutside(false);
    Intent localIntent = getIntent();
    this.mKind = localIntent.getIntExtra("kind", -1);
    this.mType = localIntent.getIntExtra("type", -1);
    this.mTerm = localIntent.getIntExtra("term", -1);
    this.mTime = localIntent.getIntExtra("time", -1);
    this.mNumber = localIntent.getIntExtra("number", -1);
    this.mMoney = localIntent.getIntExtra("money", -1);
    this.mStopFlag = localIntent.getIntExtra("stop_flag", 3);
    this.issueEntity = ((IssueEntity)localIntent.getSerializableExtra("essueEntity"));
    this.mFormatter = Formatter.getFormatter(this.mKind, this.mType);
    this.pin = UserManager.getInstance().getUserName();
    this.lotteryItems = LotteryBasket.getInstance().getShowLotterys(getApplicationContext(), this.mKind);
    this.upoadLotteries = LotteryBasket.getInstance().getUploadLotterys(getApplicationContext(), this.mKind);
    startService(DataIntentService.getUserInfoIntent(this, this.getUserInfoReceiver));
    if (this.mTerm > 1) {
      startService(DataIntentService.getZhuiHaoIntent(this, this.mTerm, Constants.LotteryType.getTypeByValue(this.issueEntity.lotterycategory), new MainThreadResultReceiver()
      {
        protected void onReceiveResult(int paramAnonymousInt, Bundle paramAnonymousBundle)
        {
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = paramAnonymousBundle.toString();
          L.d("@@@@@@@@@@@%s", arrayOfObject);
          ConfirmOrderActivity.this.mIssueArray = ((ArrayList)paramAnonymousBundle.get("data"));
        }
      }));
    }
    setupViews();
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  public void onPreInject()
  {
    setContentView(R.layout.activity_confirm_order);
  }
  
  protected void onResume()
  {
    super.onResume();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.activity.ConfirmOrderActivity
 * JD-Core Version:    0.7.0.1
 */