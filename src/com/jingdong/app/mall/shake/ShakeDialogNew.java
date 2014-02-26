package com.jingdong.app.mall.shake;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.jingdong.app.mall.utils.LoginUser;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.common.entity.ShakeData;
import com.jingdong.common.entity.ShakeResult;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.ui.ExceptionDrawable;
import com.jingdong.common.ui.HandlerRecycleBitmapDrawable;
import com.jingdong.common.utils.ActivityUtils;
import com.jingdong.common.utils.CommonBase;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.ImageUtil.InputWay;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.SDKUtils;
import com.jingdong.common.utils.ShakeUtils;
import java.util.HashMap;
import java.util.Map;

public class ShakeDialogNew
  extends MyActivity
  implements View.OnClickListener
{
  private static final long DELAY_TIME = 600L;
  private static final int SHAKE_ENTER = 1;
  private static final int SHAKE_EXIT = 2;
  private static final String TAG = ShakeDialogNew.class.getSimpleName();
  public static ShakeDialogNew instance = null;
  public static boolean isOnResume = false;
  public static boolean isReceiveCouponed = false;
  private long clickTime = 0L;
  private TextView couponComment;
  private TextView couponType;
  private boolean isReceiveCouponStatus = false;
  private String mAchieveMsg = "";
  private View mAchieveProgressView;
  private String mAchieveType = "";
  private MyActivity mActivity;
  private ImageView mCouponImage;
  private RelativeLayout mCouponRelativeLayout;
  private RelativeLayout mCouponSucessRelativeLayout;
  private String mJLOGEvent = "";
  private String mJLOGKey = "";
  private String mJLOGValue = "";
  private EditText mPhoneAuth;
  private ShakeData mShakeData;
  private ShakeResult mShakeResult;
  private String mShakeType;
  private int mTypeValue;
  private Button receiveCoupon;
  
  private int initContentView(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return 2130903302;
    case 1: 
    case 2: 
    case 7: 
      return 2130903303;
    case 3: 
      return 2130903299;
    case 4: 
      return 2130903298;
    case 5: 
      return 2130903302;
    case 6: 
      return 2130903302;
    }
    return 2130903304;
  }
  
  private void initCustomView(int paramInt)
  {
    ImageView localImageView1 = (ImageView)findViewById(2131494474);
    Button localButton = (Button)findViewById(2131494484);
    localButton.setOnClickListener(this);
    if (isSingerShake())
    {
      localButton.setBackgroundResource(2130838214);
      if (this.mShakeResult != null) {
        break label55;
      }
    }
    label55:
    do
    {
      return;
      localButton.setBackgroundResource(2130838213);
      break;
      this.mShakeData = this.mShakeResult.getData();
      switch (paramInt)
      {
      default: 
        showMsg();
        return;
      case 1: 
        localImageView1.setImageResource(2130838263);
        showProduct();
        return;
      case 2: 
        localImageView1.setImageResource(2130838264);
        showProduct();
        return;
      case 7: 
        localImageView1.setImageResource(2130838261);
        showProduct();
        return;
      case 3: 
        showCoupon();
        return;
      }
    } while (this.mShakeData == null);
    RelativeLayout localRelativeLayout3 = (RelativeLayout)findViewById(2131494476);
    RelativeLayout localRelativeLayout4 = (RelativeLayout)findViewById(2131494477);
    ImageView localImageView4 = (ImageView)findViewById(2131494481);
    if (isSingerShake())
    {
      localRelativeLayout3.setBackgroundResource(2130838220);
      localRelativeLayout4.setBackgroundResource(2130838249);
      localImageView4.setBackgroundResource(2130838250);
    }
    for (;;)
    {
      findViewById(2131494485).setOnClickListener(this);
      this.mCouponImage = ((ImageView)findViewById(2131494478));
      this.couponType = ((TextView)findViewById(2131494479));
      this.receiveCoupon = ((Button)findViewById(2131494485));
      this.mAchieveProgressView = findViewById(2131494486);
      SpannableStringBuilder localSpannableStringBuilder = ShakeUtils.handleColorString(this, 2131166539, this.mShakeData.getSubtype(), this.mShakeData.getTitle(), 4, 2131296402);
      this.couponType.setText(localSpannableStringBuilder);
      showHintComment((TextView)findViewById(2131494482), 2131296402);
      return;
      localRelativeLayout3.setBackgroundResource(2130838219);
      localRelativeLayout4.setBackgroundResource(2130838201);
      localImageView4.setBackgroundResource(2130838221);
    }
    RelativeLayout localRelativeLayout2 = (RelativeLayout)findViewById(2131494507);
    ImageView localImageView3 = (ImageView)findViewById(2131494502);
    if (isSingerShake())
    {
      localRelativeLayout2.setBackgroundResource(2130838220);
      localImageView3.setImageDrawable(getResources().getDrawable(2130838251));
    }
    for (;;)
    {
      localImageView1.setImageResource(2130838262);
      findViewById(2131494502).setBackgroundResource(2130838222);
      findViewById(2131494508).setVisibility(0);
      showMsg();
      return;
      localRelativeLayout2.setBackgroundResource(2130838219);
      localImageView3.setImageDrawable(getResources().getDrawable(2130838222));
    }
    RelativeLayout localRelativeLayout1 = (RelativeLayout)findViewById(2131494507);
    if (isSingerShake()) {
      localRelativeLayout1.setBackgroundResource(2130838220);
    }
    for (;;)
    {
      ImageView localImageView2 = (ImageView)findViewById(2131494502);
      localImageView1.setImageResource(2130838260);
      RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)localImageView2.getLayoutParams();
      localLayoutParams.height = this.mActivity.getResources().getDimensionPixelOffset(2131427623);
      localLayoutParams.width = this.mActivity.getResources().getDimensionPixelOffset(2131427624);
      localImageView2.setLayoutParams(localLayoutParams);
      localImageView2.setImageResource(2130838233);
      showMsg();
      return;
      localRelativeLayout1.setBackgroundResource(2130838219);
    }
    this.mAchieveProgressView = findViewById(2131494486);
    findViewById(2131494520).setOnClickListener(this);
    showSpecialProduct();
  }
  
  private boolean isSingerShake()
  {
    return TextUtils.equals(this.mShakeType, "singer");
  }
  
  private void loadAchieveCoupon(String paramString1, String paramString2, final TextView paramTextView, final Button paramButton)
  {
    if (this.mShakeResult == null) {
      return;
    }
    setAchieveProgressVisible(0);
    final String str = this.mShakeResult.getType();
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("achieveCoupon");
    localHttpSetting.putJsonParam("couponUuid", paramString2);
    if (!TextUtils.isEmpty(paramString1)) {
      localHttpSetting.putJsonParam("phone", paramString1);
    }
    localHttpSetting.setNotifyUser(true);
    localHttpSetting.setEffect(0);
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        ShakeDialogNew.this.setCustomButtonClick(true);
        ShakeDialogNew.this.setAchieveProgressVisible(8);
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        if (localJSONObjectProxy != null) {
          try
          {
            ShakeDialogNew.this.mJLOGEvent = "shake_achieve";
            ShakeDialogNew.isReceiveCouponed = true;
            ShakeDialogNew.this.mJLOGKey = "type";
            ShakeDialogNew.this.mJLOGValue = str;
            final String str1 = localJSONObjectProxy.getStringOrNull("achieveResult");
            final String str2 = localJSONObjectProxy.getStringOrNull("msg");
            ShakeDialogNew.this.mActivity.post(new Runnable()
            {
              public void run()
              {
                if (TextUtils.equals("success", str1))
                {
                  if (ShakeDialogNew.this.mCouponImage != null)
                  {
                    ShakeDialogNew.this.mCouponImage.setBackgroundResource(2130838212);
                    RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)ShakeDialogNew.this.mCouponImage.getLayoutParams();
                    localLayoutParams.height = ShakeDialogNew.this.mActivity.getResources().getDimensionPixelOffset(2131427623);
                    localLayoutParams.width = ShakeDialogNew.this.mActivity.getResources().getDimensionPixelOffset(2131427624);
                    ShakeDialogNew.this.mCouponImage.setLayoutParams(localLayoutParams);
                  }
                  ShakeDialogNew.this.isReceiveCouponStatus = true;
                  if ((TextUtils.equals(this.val$achieveType, "coupon")) || (TextUtils.equals(this.val$achieveType, "bean"))) {
                    if ((this.val$couponTextView != null) && (this.val$receiveCoupon != null)) {}
                  }
                  while (!TextUtils.equals(this.val$achieveType, "special_prize"))
                  {
                    do
                    {
                      do
                      {
                        return;
                        int i = ShakeDialogNew.this.getResources().getDimensionPixelOffset(2131427645);
                        if (i > 24) {
                          i = 24;
                        }
                        this.val$couponTextView.setText(str2);
                        this.val$couponTextView.setTextColor(ShakeDialogNew.this.getResources().getColor(2131296402));
                        this.val$couponTextView.setTextSize(i);
                        this.val$receiveCoupon.setText(ShakeDialogNew.this.getString(2131166536));
                        this.val$receiveCoupon.setBackgroundResource(2130838246);
                        if (!TextUtils.equals(this.val$achieveType, "coupon")) {
                          break;
                        }
                        if (ShakeDialogNew.this.mCouponRelativeLayout != null)
                        {
                          ShakeDialogNew.this.mCouponRelativeLayout.setVisibility(8);
                          ShakeDialogNew.this.couponComment.setVisibility(8);
                        }
                      } while (ShakeDialogNew.this.mCouponSucessRelativeLayout == null);
                      ShakeDialogNew.this.mCouponSucessRelativeLayout.setVisibility(0);
                      TextView localTextView2 = (TextView)ShakeDialogNew.this.findViewById(2131494498);
                      ShakeDialogNew localShakeDialogNew = ShakeDialogNew.this;
                      Object[] arrayOfObject = new Object[1];
                      arrayOfObject[0] = ShakeDialogNew.this.mShakeData.getSubtype();
                      localTextView2.setText(localShakeDialogNew.getString(2131166533, arrayOfObject));
                      return;
                    } while (!TextUtils.equals(this.val$achieveType, "bean"));
                    ((ImageView)ShakeDialogNew.this.findViewById(2131494481)).setVisibility(8);
                    ((RelativeLayout)ShakeDialogNew.this.findViewById(2131494480)).setVisibility(8);
                    TextView localTextView1 = (TextView)ShakeDialogNew.this.findViewById(2131494483);
                    localTextView1.setVisibility(0);
                    String str = ShakeDialogNew.this.mShakeData.getSubtype() + ShakeDialogNew.this.getString(2131166547) + ShakeDialogNew.this.mShakeData.getTitle();
                    localTextView1.setText(ShakeDialogNew.this.getString(2131166534, new Object[] { str }));
                    return;
                  }
                  ((RelativeLayout)ShakeDialogNew.this.findViewById(2131494515)).setVisibility(8);
                  RelativeLayout localRelativeLayout = (RelativeLayout)ShakeDialogNew.this.findViewById(2131494521);
                  if (ShakeDialogNew.this.isSingerShake()) {
                    localRelativeLayout.setBackgroundResource(2130838220);
                  }
                  for (;;)
                  {
                    localRelativeLayout.setVisibility(0);
                    ShakeDialogNew.this.findViewById(2131494526).setOnClickListener(ShakeDialogNew.this);
                    ((TextView)ShakeDialogNew.this.findViewById(2131494524)).setText(str2);
                    ShakeDialogNew.this.hideSoftInput();
                    return;
                    localRelativeLayout.setBackgroundResource(2130838219);
                  }
                }
                if (!TextUtils.equals(this.val$achieveType, ShakeDialogNew.this.mAchieveType))
                {
                  ShakeDialogNew.this.mAchieveType = this.val$achieveType;
                  ShakeDialogNew.this.mAchieveMsg = str2;
                }
                ShakeUtils.showToast(ShakeDialogNew.this, ShakeDialogNew.this.mAchieveMsg);
              }
            });
            return;
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
            ShakeDialogNew.this.mJLOGValue = "-1";
            ShakeDialogNew.this.mJLOGKey = "err";
            return;
          }
          finally
          {
            ShakeUtils.onJMAEvent(ShakeDialogNew.this.getBaseContext(), ShakeDialogNew.this.mJLOGEvent, ShakeDialogNew.this.getShakeParams());
          }
        }
        ShakeDialogNew.this.mJLOGValue = "-1";
        ShakeDialogNew.this.mJLOGKey = "err";
        ShakeUtils.onJMAEvent(ShakeDialogNew.this.getBaseContext(), ShakeDialogNew.this.mJLOGEvent, ShakeDialogNew.this.getShakeParams());
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        ShakeDialogNew.this.setAchieveProgressVisible(8);
        if (paramAnonymousHttpError != null)
        {
          int i = paramAnonymousHttpError.getErrorCode();
          ShakeDialogNew.this.mJLOGValue = String.valueOf(i);
          ShakeDialogNew.this.mJLOGKey = "err";
          ShakeDialogNew.this.mJLOGEvent = "shake_achieve";
          ShakeUtils.onJMAEvent(ShakeDialogNew.this.getBaseContext(), ShakeDialogNew.this.mJLOGEvent, ShakeDialogNew.this.getShakeParams());
        }
        ShakeDialogNew.this.setCustomButtonClick(true);
      }
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    });
    this.mActivity.getHttpGroupaAsynPool().add(localHttpSetting);
    setCustomButtonClick(false);
  }
  
  private void loadProductImage(final ImageView paramImageView, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setType(5000);
    localHttpSetting.setPriority(5000);
    localHttpSetting.setUrl(paramString);
    localHttpSetting.setEffect(0);
    localHttpSetting.setNotifyUser(true);
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        final Bitmap localBitmap = ImageUtil.createBitmap(ImageUtil.InputWay.createInputWay(paramAnonymousHttpResponse), 0, 0);
        ShakeDialogNew.this.mActivity.post(new Runnable()
        {
          public void run()
          {
            if (this.val$imageView != null)
            {
              HandlerRecycleBitmapDrawable localHandlerRecycleBitmapDrawable = new HandlerRecycleBitmapDrawable(localBitmap, ShakeDialogNew.this.mActivity);
              this.val$imageView.setImageDrawable(localHandlerRecycleBitmapDrawable);
            }
          }
        });
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams)
      {
        ShakeDialogNew.this.mActivity.post(new Runnable()
        {
          public void run()
          {
            if (this.val$imageView != null)
            {
              this.val$imageView.setImageDrawable(new ExceptionDrawable(ShakeDialogNew.this.mActivity, ShakeDialogNew.this.mActivity.getString(2131165185)));
              this.val$imageView.setOnClickListener(new View.OnClickListener()
              {
                public void onClick(View paramAnonymous3View)
                {
                  ShakeDialogNew.this.showProductDetailActivity();
                }
              });
            }
          }
        });
      }
    });
    this.mActivity.getHttpGroupaAsynPool(5000).add(localHttpSetting);
  }
  
  private void setCustomButtonClick(final boolean paramBoolean)
  {
    post(new Runnable()
    {
      public void run()
      {
        if (ShakeDialogNew.this.receiveCoupon != null) {
          ShakeDialogNew.this.receiveCoupon.setClickable(paramBoolean);
        }
      }
    });
  }
  
  private void setJDPrice(TextView paramTextView, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    ForegroundColorSpan localForegroundColorSpan = new ForegroundColorSpan(this.mActivity.getResources().getColor(2131296399));
    CharSequence localCharSequence = this.mActivity.getResources().getText(2131165665);
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(localCharSequence + paramString);
    int i = -1 + localCharSequence.length();
    int j = localSpannableStringBuilder.length();
    localSpannableStringBuilder.setSpan(new RelativeSizeSpan(1.0F), 0, j, 33);
    localSpannableStringBuilder.setSpan(localForegroundColorSpan, i, j, 33);
    paramTextView.setText(localSpannableStringBuilder);
  }
  
  private void showCoupon()
  {
    if (this.mShakeData == null) {
      return;
    }
    RelativeLayout localRelativeLayout1 = (RelativeLayout)findViewById(2131494487);
    RelativeLayout localRelativeLayout2 = (RelativeLayout)findViewById(2131494488);
    View localView = findViewById(2131494495);
    TextView localTextView1;
    String str1;
    label216:
    String str4;
    label329:
    String str5;
    if (isSingerShake())
    {
      localRelativeLayout1.setBackgroundResource(2130838220);
      localRelativeLayout2.setBackgroundResource(2130838249);
      localView.setBackgroundResource(2130838250);
      findViewById(2131494499).setOnClickListener(this);
      this.mCouponRelativeLayout = ((RelativeLayout)findViewById(2131494492));
      this.mCouponSucessRelativeLayout = ((RelativeLayout)findViewById(2131494497));
      this.mCouponImage = ((ImageView)findViewById(2131494489));
      this.mAchieveProgressView = findViewById(2131494486);
      localTextView1 = (TextView)findViewById(2131494493);
      TextView localTextView2 = (TextView)findViewById(2131494494);
      this.couponType = ((TextView)findViewById(2131494490));
      this.receiveCoupon = ((Button)findViewById(2131494499));
      this.couponComment = ((TextView)findViewById(2131494491));
      str1 = this.mShakeData.getScope();
      if (!TextUtils.isEmpty(str1)) {
        break label423;
      }
      localTextView1.setVisibility(8);
      String str2 = this.mShakeData.getStartTime();
      String str3 = this.mShakeData.getEndTime();
      if ((!TextUtils.isEmpty(str2)) && (!TextUtils.isEmpty(str3))) {
        localTextView2.setText(getString(2131166507) + str2 + getString(2131166524) + str3);
      }
      str4 = this.mShakeData.getTitle();
      if (!TextUtils.equals(str4, getString(2131166518))) {
        break label462;
      }
      this.mCouponImage.setBackgroundResource(2130838203);
      SpannableStringBuilder localSpannableStringBuilder = ShakeUtils.handleColorString(this, 2131166540, this.mShakeData.getSubtype(), "", 4, 2131296402);
      this.couponType.setText(localSpannableStringBuilder);
      str5 = this.mShakeData.getComment();
      if (!TextUtils.isEmpty(str5)) {
        break label490;
      }
      this.couponComment.setVisibility(8);
    }
    for (;;)
    {
      showHintComment((TextView)findViewById(2131494496), 2131296402);
      return;
      localRelativeLayout1.setBackgroundResource(2130838219);
      localRelativeLayout2.setBackgroundResource(2130838201);
      localView.setBackgroundResource(2130838221);
      break;
      label423:
      localTextView1.setText(getString(2131166506) + str1);
      localTextView1.setVisibility(0);
      break label216;
      label462:
      if (!TextUtils.equals(str4, getString(2131166517))) {
        break label329;
      }
      this.mCouponImage.setBackgroundResource(2130838205);
      break label329;
      label490:
      this.couponComment.setText(str5);
      this.couponComment.setVisibility(0);
    }
  }
  
  private void showDialog()
  {
    AlertDialog localAlertDialog = new AlertDialog.Builder(this.mActivity).create();
    localAlertDialog.setMessage(this.mActivity.getText(2131166510));
    localAlertDialog.setTitle(2131166509);
    DialogInterface.OnClickListener local1 = new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        switch (paramAnonymousInt)
        {
        default: 
          return;
        }
        ShakeDialogNew.this.mActivity.post(new Runnable()
        {
          public void run()
          {
            Runnable local1 = new Runnable()
            {
              public void run()
              {
                ShakeDialogNew.this.loadAchieveCoupon(null, ShakeDialogNew.this.mShakeData.getKey(), ShakeDialogNew.this.couponType, ShakeDialogNew.this.receiveCoupon);
              }
            };
            LoginUser.getInstance().executeLoginRunnable(ShakeDialogNew.this.mActivity, local1);
          }
        });
      }
    };
    localAlertDialog.setButton(-1, this.mActivity.getString(2131166511), local1);
    try
    {
      localAlertDialog.show();
      return;
    }
    catch (Throwable localThrowable) {}
  }
  
  private void showHintComment(TextView paramTextView, int paramInt)
  {
    if (paramTextView != null) {
      paramTextView.setText(ShakeUtils.handleBeforeColorString(this, 2131166532, getString(2131166531), paramInt));
    }
  }
  
  private void showMsg()
  {
    if (this.mShakeResult == null) {
      return;
    }
    ((TextView)findViewById(2131494509)).setText(this.mShakeResult.getMsg());
  }
  
  private void showPopupAnim()
  {
    if (SDKUtils.isSDKVersionMoreThan16()) {
      ActivityUtils.setOverridePendingTransition(this, 2130968580, 2130968581);
    }
  }
  
  private void showProduct()
  {
    if (this.mShakeData == null) {
      return;
    }
    RelativeLayout localRelativeLayout1 = (RelativeLayout)findViewById(2131494510);
    RelativeLayout localRelativeLayout2 = (RelativeLayout)findViewById(2131494501);
    View localView = findViewById(2131494503);
    if (isSingerShake())
    {
      localRelativeLayout1.setBackgroundResource(2130838220);
      localRelativeLayout2.setBackgroundResource(2130838256);
      localView.setBackgroundResource(2130838250);
    }
    for (;;)
    {
      findViewById(2131494514).setOnClickListener(this);
      TextView localTextView1 = (TextView)findViewById(2131494511);
      TextView localTextView2 = (TextView)findViewById(2131494513);
      loadProductImage((ImageView)findViewById(2131494502), this.mShakeData.getImageUrl());
      localTextView1.setText(this.mShakeData.getName());
      setJDPrice(localTextView2, this.mShakeData.getJdPrice());
      return;
      localRelativeLayout1.setBackgroundResource(2130838219);
      localRelativeLayout2.setBackgroundResource(2130838240);
      localView.setBackgroundResource(2130838221);
    }
  }
  
  private void showProductDetailActivity()
  {
    try
    {
      if (this.mShakeData != null)
      {
        ShakeUtils.shakeRunnableStop();
        this.mJLOGEvent = "shake_click_sku";
        this.mJLOGKey = "type";
        this.mJLOGValue = this.mShakeResult.getType();
        ShakeUtils.onJMAEvent(getBaseContext(), this.mJLOGEvent, getShakeParams());
        StartActivityUtils.startProductDetailActivity(this.mActivity, this.mShakeData.getId(), this.mShakeData.getName(), new SourceEntity("shake", this.mShakeResult.getType()));
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  private void showSpecialProduct()
  {
    if (this.mShakeData == null) {
      return;
    }
    RelativeLayout localRelativeLayout1 = (RelativeLayout)findViewById(2131494515);
    RelativeLayout localRelativeLayout2 = (RelativeLayout)findViewById(2131494501);
    this.mPhoneAuth = ((EditText)findViewById(2131494519));
    ImageView localImageView1 = (ImageView)findViewById(2131494503);
    ImageView localImageView2 = (ImageView)findViewById(2131494481);
    if (isSingerShake())
    {
      localRelativeLayout1.setBackgroundResource(2130838220);
      this.mPhoneAuth.setBackgroundResource(2130838239);
      localRelativeLayout2.setBackgroundResource(2130838256);
      localImageView1.setBackgroundResource(2130838250);
      localImageView2.setBackgroundResource(2130838250);
    }
    for (;;)
    {
      TextView localTextView = (TextView)findViewById(2131494516);
      loadProductImage((ImageView)findViewById(2131494502), this.mShakeData.getImageUrl());
      localTextView.setText(this.mShakeData.getComment());
      return;
      localRelativeLayout1.setBackgroundResource(2130838219);
      this.mPhoneAuth.setBackgroundResource(2130838242);
      localRelativeLayout2.setBackgroundResource(2130838240);
      localImageView1.setBackgroundResource(2130838221);
      localImageView2.setBackgroundResource(2130838221);
    }
  }
  
  public void destroyAllData()
  {
    this.mShakeResult = null;
    this.mShakeData = null;
    this.receiveCoupon = null;
    this.couponType = null;
    this.couponComment = null;
    this.mCouponRelativeLayout = null;
    this.mCouponSucessRelativeLayout = null;
    this.mCouponImage = null;
    this.mShakeType = null;
    this.mPhoneAuth = null;
    this.mAchieveProgressView = null;
  }
  
  public void finish()
  {
    super.finish();
    showPopupAnim();
  }
  
  public Map<String, String> getShakeParams()
  {
    HashMap localHashMap = new HashMap();
    if (TextUtils.equals("shake_achieve", this.mJLOGEvent)) {
      localHashMap.put(this.mJLOGKey, this.mJLOGValue);
    }
    do
    {
      do
      {
        return localHashMap;
        if (TextUtils.equals("shake_click_sku", this.mJLOGEvent))
        {
          localHashMap.put(this.mJLOGKey, this.mJLOGValue);
          return localHashMap;
        }
      } while (!TextUtils.equals("share_sns", this.mJLOGEvent));
      localHashMap.put("from", "shake_achieve");
    } while (this.mShakeResult == null);
    localHashMap.put("value", this.mShakeResult.getType());
    return localHashMap;
  }
  
  public void onClick(View paramView)
  {
    if (System.currentTimeMillis() - this.clickTime > 600L) {
      this.clickTime = System.currentTimeMillis();
    }
    switch (paramView.getId())
    {
    default: 
    case 2131494484: 
    case 2131494514: 
    case 2131494485: 
    case 2131494499: 
    case 2131494520: 
      label272:
      String str3;
      do
      {
        do
        {
          return;
          finish();
          return;
          showProductDetailActivity();
          return;
          if (!LoginUser.hasLogin())
          {
            showDialog();
            return;
          }
          if (!this.isReceiveCouponStatus)
          {
            loadAchieveCoupon(null, this.mShakeData.getKey(), this.couponType, this.receiveCoupon);
            return;
          }
          String str4 = "";
          String str5;
          if (TextUtils.equals(this.mJLOGValue, "bean"))
          {
            str4 = this.mShakeData.getSubtype() + getString(2131166547) + this.mShakeData.getTitle();
            this.mJLOGEvent = "share_sns";
            str5 = CommonBase.getShakeShareText("shake_accept_share");
            if (TextUtils.isEmpty(str5)) {
              break label272;
            }
          }
          for (String str6 = str5.replace("&", str4);; str6 = getString(2131166535, new Object[] { str4 }))
          {
            ShakeUtils.handelShare(this, str6);
            ShakeUtils.onJMAEvent(this, this.mJLOGEvent, getShakeParams());
            return;
            if (!TextUtils.equals(this.mJLOGValue, "coupon")) {
              break;
            }
            str4 = this.mShakeData.getSubtype();
            break;
          }
        } while (this.mPhoneAuth == null);
        str3 = this.mPhoneAuth.getText().toString();
        if ((TextUtils.isEmpty(str3)) || (!ShakeUtils.isCellphone(str3)))
        {
          ShakeUtils.showToast(this, getString(2131166543));
          return;
        }
        if (!LoginUser.hasLogin())
        {
          showDialog();
          return;
        }
      } while (this.isReceiveCouponStatus);
      loadAchieveCoupon(str3, this.mShakeData.getKey(), this.couponType, this.receiveCoupon);
      return;
    }
    String str1 = CommonBase.getShakeShareText("shake_accept_share");
    if ((!TextUtils.isEmpty(str1)) && (this.mShakeData != null)) {}
    for (String str2 = str1.replace("&", this.mShakeData.getSubtype());; str2 = getString(2131166542))
    {
      ShakeUtils.handelShare(this, str2);
      this.mJLOGEvent = "share_sns";
      ShakeUtils.onJMAEvent(this, this.mJLOGEvent, getShakeParams());
      return;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.mActivity = this;
    Bundle localBundle = getIntent().getExtras();
    this.mShakeResult = ((ShakeResult)localBundle.get("result"));
    this.mTypeValue = localBundle.getInt("type");
    this.mShakeType = localBundle.getString("shake_type");
    showPopupAnim();
    setContentView(initContentView(this.mTypeValue));
    initCustomView(this.mTypeValue);
    instance = this;
    WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
    localLayoutParams.gravity = 48;
    getWindow().setAttributes(localLayoutParams);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    setContentView(2130903301);
  }
  
  protected void onPause()
  {
    ShakeActivity.hasPause = true;
    super.onPause();
    ShakeUtils.shakeRunnableStop();
  }
  
  protected void onResume()
  {
    ShakeActivity.hasPause = false;
    super.onResume();
    ShakeUtils.shakeRunnableStart();
    ShakeActivity.mShakeIsStop = false;
  }
  
  protected void onStop()
  {
    super.onStop();
  }
  
  public void setAchieveProgressVisible(final int paramInt)
  {
    post(new Runnable()
    {
      public void run()
      {
        if (ShakeDialogNew.this.mAchieveProgressView != null)
        {
          ShakeDialogNew.this.mAchieveProgressView.setVisibility(paramInt);
          ShakeDialogNew.this.mAchieveProgressView.setBackgroundDrawable(ShakeDialogNew.this.getResources().getDrawable(2130838265));
          if (paramInt == 0)
          {
            TextView localTextView = (TextView)ShakeDialogNew.this.mAchieveProgressView.findViewById(2131493611);
            if (localTextView != null)
            {
              localTextView.setText(ShakeDialogNew.this.getString(2131166549));
              localTextView.setTextColor(ShakeDialogNew.this.getResources().getColor(2131296396));
            }
          }
        }
      }
    });
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shake.ShakeDialogNew
 * JD-Core Version:    0.7.0.1
 */