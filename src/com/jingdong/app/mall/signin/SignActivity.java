package com.jingdong.app.mall.signin;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.ActionBarDrawerToggle;
import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.DrawerLayout.LayoutParams;
import android.text.Editable;
import android.text.TextUtils;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.WindowManager;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ViewFlipper;
import com.jingdong.app.mall.login.LoginActivity;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.entity.SigninInfo;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.secure.Base64;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.NewJLogUtil;
import java.io.IOException;
import org.json.JSONException;

public class SignActivity
  extends MyActivity
  implements View.OnClickListener, View.OnTouchListener
{
  private static final int COMMON = 0;
  private static final int CONGRATULATION = 1;
  private static final int REFRESH_DELAY = 1;
  private static final String TAG = "SignActivity";
  private static final int VERIFY = 2;
  Runnable ViewFlipperTask = new Runnable()
  {
    public void run()
    {
      for (;;)
      {
        if (SignActivity.this.test_count > 9) {
          return;
        }
        try
        {
          Thread.sleep(2000L);
          SignActivity.this.handler.post(new Runnable()
          {
            public void run()
            {
              SignActivity.this.vf1.showNext();
              SignActivity.this.vf2.showNext();
              SignActivity.this.vf3.showNext();
            }
          });
          SignActivity localSignActivity = SignActivity.this;
          localSignActivity.test_count = (1 + localSignActivity.test_count);
        }
        catch (InterruptedException localInterruptedException)
        {
          for (;;)
          {
            localInterruptedException.printStackTrace();
          }
        }
      }
    }
  };
  private LinearLayout commom_view = null;
  private LinearLayout congratulation_layout = null;
  private TextView content_1 = null;
  private TextView content_2 = null;
  private LinearLayout drawer;
  private ImageButton drawerIcon;
  Handler handler = new Handler();
  private boolean hasDone = false;
  private boolean hasUpdateTimes = false;
  private String hintText = "";
  private String hintTextTitle = "";
  private Button leave = null;
  private Button login = null;
  private LinearLayout loginOrleave = null;
  private String loginText = "";
  private String loginTextTitle = "";
  private DrawerLayout mDrawerLayout;
  private Handler mHandler = new Handler()
  {
    public void dispatchMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default: 
        return;
      }
      SignActivity.this.httpSigninInfo();
    }
  };
  int[] num_bmps = { 2130838330, 2130838331, 2130838332, 2130838333, 2130838334, 2130838335, 2130838336, 2130838337, 2130838338, 2130838339 };
  private ImageButton qiandao_back = null;
  private Button qiandao_btn = null;
  private ImageButton qiandao_share = null;
  private String radomCodeErrorText = "";
  private int randomTimes;
  private String resultText = "";
  private String resultValue = "";
  private TextView reward_tv = null;
  private SigninInfo sInfo;
  private int screenHeight;
  private int screenWidth;
  private EditText signin_verify_result = null;
  private int test_count = 0;
  String times;
  private Toast toast = null;
  private TextView totalNum = null;
  private Button verifyCommit;
  private ImageView verifyImg;
  private EditText verifyResult;
  private LinearLayout verify_layout = null;
  private ViewFlipper vf1 = null;
  private ViewFlipper vf2 = null;
  private ViewFlipper vf3 = null;
  
  private void httpGetReward()
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("qdRefundsSubmit");
    localHttpSetting.putJsonParam("isRandom", "1");
    localHttpSetting.putJsonParam("randomResult", this.signin_verify_result.getText().toString());
    localHttpSetting.setNotifyUser(true);
    localHttpSetting.setListener(new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        switch (localJSONObjectProxy.getIntOrNull("resultCode").intValue())
        {
        default: 
        case 0: 
          do
          {
            return;
            SignActivity.this.resultText = localJSONObjectProxy.getStringOrNull("refundsResultText");
            SignActivity.this.resultValue = localJSONObjectProxy.getStringOrNull("refundsResultValue");
            SignActivity.this.handler.post(new Runnable()
            {
              public void run()
              {
                SignActivity.this.showJingDouView();
              }
            });
          } while (!NewJLogUtil.isUseNewJLog());
          NewJLogUtil.onJMAEvent(SignActivity.this, "SignRewardValue", "reward = " + SignActivity.this.resultValue);
          return;
        }
        SignActivity.this.radomCodeErrorText = localJSONObjectProxy.getStringOrNull("radomCodeErrorText");
        if (SignActivity.this.radomCodeErrorText == null) {
          SignActivity.this.radomCodeErrorText = SignActivity.this.getResources().getString(2131166575);
        }
        SignActivity.this.handler.post(new Runnable()
        {
          public void run()
          {
            SignActivity.this.toastshort(SignActivity.this.radomCodeErrorText);
            SignActivity.this.httpVerifyImage();
          }
        });
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void httpShare()
  {
    if (NewJLogUtil.isUseNewJLog()) {
      NewJLogUtil.onJMAEvent(this, "SignShare", "");
    }
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("qdShareStats");
    localHttpSetting.setNotifyUser(true);
    localHttpSetting.setListener(new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        paramAnonymousHttpResponse.getJSONObject();
        SignActivity.this.handler.post(new Runnable()
        {
          public void run() {}
        });
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        SignActivity.this.handler.post(new Runnable()
        {
          public void run() {}
        });
      }
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void httpSigninInfo()
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("qdHomePage");
    localHttpSetting.putJsonParam("isUpdateSusTimes", "0");
    localHttpSetting.setNotifyUser(true);
    localHttpSetting.setListener(new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        try
        {
          SignActivity.this.sInfo = new SigninInfo(localJSONObjectProxy);
          if (!LoginUserBase.hasLogin())
          {
            SignActivity.this.handler.post(new Runnable()
            {
              public void run()
              {
                SignActivity.this.totalNum.setText(SignActivity.this.sInfo.getTotalNumTimes());
                SignActivity.this.prepareToLogin();
              }
            });
            return;
          }
          SignActivity.this.loginText = SignActivity.this.sInfo.getLoginText();
          SignActivity.this.loginTextTitle = SignActivity.this.sInfo.getLoginTextTitle();
          SignActivity.this.hintText = SignActivity.this.sInfo.getHintText();
          SignActivity.this.hintTextTitle = SignActivity.this.sInfo.getHintTextTitle();
          SignActivity.this.handler.post(new Runnable()
          {
            public void run()
            {
              String str1 = SignActivity.this.sInfo.getIsSucc();
              String str2 = SignActivity.this.sInfo.getClearText();
              if ((str1 != null) && (str2 != null) && ("1".equals(str1)))
              {
                SignActivity.this.toastshort(str2);
                SignActivity.this.sInfo.setSustainedNumTimes("0");
              }
              if (!LoginUserBase.hasLogin()) {
                SignActivity.this.sInfo.setSustainedNumTimes("0");
              }
              SignActivity.this.updateQianDaoBtn();
              SignActivity.this.updateTimes();
              SignActivity.this.updateShouyeTV();
            }
          });
          if ((SignActivity.this.sInfo != null) && (SignActivity.this.sInfo.getNextUpdateTime() != null))
          {
            long l = Long.parseLong(SignActivity.this.sInfo.getNextUpdateTime()) - System.currentTimeMillis();
            SignActivity.this.mHandler.sendEmptyMessageDelayed(1, l);
            return;
          }
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void httpSummit()
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("qdSubmit");
    localHttpSetting.setNotifyUser(true);
    localHttpSetting.setListener(new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        final JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        switch (localJSONObjectProxy.getIntOrNull("resultCode").intValue())
        {
        case 1: 
        default: 
        case 0: 
          do
          {
            return;
            SignActivity.this.resultText = localJSONObjectProxy.getStringOrNull("refundsResultText");
            SignActivity.this.resultValue = localJSONObjectProxy.getStringOrNull("refundsResultValue");
            SignActivity.this.handler.post(new Runnable()
            {
              public void run()
              {
                SignActivity.this.startVF();
                SignActivity.this.qiandao_btn.setBackgroundResource(2130838348);
                SignActivity.this.hasDone = true;
                if (localJSONObjectProxy.getIntOrNull("isRandomNeed").intValue() == 0)
                {
                  SignActivity.this.showJingDouView();
                  return;
                }
                SignActivity.this.httpVerifyImage();
              }
            });
          } while (!NewJLogUtil.isUseNewJLog());
          NewJLogUtil.onJMAEvent(SignActivity.this, "SignCommit", "");
          return;
        }
        SignActivity.this.hasDone = true;
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void httpVerifyImage()
  {
    this.signin_verify_result.setText("");
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("qdRandomCodeRefresh");
    localHttpSetting.setNotifyUser(true);
    localHttpSetting.setListener(new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        SignActivity.this.randomTimes = localJSONObjectProxy.getIntOrNull("randomTimes").intValue();
        final String str = localJSONObjectProxy.getStringOrNull("randomImgStr");
        localJSONObjectProxy.getIntOrNull("randomValideTime").intValue();
        SignActivity.this.handler.post(new Runnable()
        {
          public void run()
          {
            SignActivity.this.showView(2);
            try
            {
              byte[] arrayOfByte = Base64.decode(str);
              Bitmap localBitmap = BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length);
              SignActivity.this.verifyImg.setImageBitmap(localBitmap);
              return;
            }
            catch (IOException localIOException)
            {
              localIOException.printStackTrace();
            }
          }
        });
        if (NewJLogUtil.isUseNewJLog()) {
          NewJLogUtil.onJMAEvent(SignActivity.this, "SignVerifyFail", "Time = " + SignActivity.this.randomTimes);
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        SignActivity.this.handler.post(new Runnable()
        {
          public void run()
          {
            SignActivity.this.verifyImg.setImageResource(2130838362);
          }
        });
      }
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void initViewAndEvent()
  {
    this.congratulation_layout = ((LinearLayout)findViewById(2131494652));
    this.commom_view = ((LinearLayout)findViewById(2131494645));
    this.verify_layout = ((LinearLayout)findViewById(2131494641));
    this.qiandao_back = ((ImageButton)findViewById(2131494628));
    this.qiandao_back.setOnClickListener(this);
    this.qiandao_share = ((ImageButton)findViewById(2131494629));
    this.qiandao_share.setOnClickListener(this);
    this.qiandao_btn = ((Button)findViewById(2131494639));
    this.qiandao_btn.setOnClickListener(this);
    this.drawerIcon = ((ImageButton)findViewById(2131494654));
    this.drawerIcon.setOnClickListener(this);
    this.verifyImg = ((ImageView)findViewById(2131494642));
    this.verifyImg.setOnClickListener(this);
    this.verifyResult = ((EditText)findViewById(2131494643));
    this.verifyCommit = ((Button)findViewById(2131494644));
    this.verifyCommit.setOnClickListener(this);
    this.loginOrleave = ((LinearLayout)findViewById(2131494649));
    this.content_1 = ((TextView)findViewById(2131494647));
    this.content_2 = ((TextView)findViewById(2131494648));
    this.totalNum = ((TextView)findViewById(2131494631));
    this.reward_tv = ((TextView)findViewById(2131494653));
    this.signin_verify_result = ((EditText)findViewById(2131494643));
    this.login = ((Button)findViewById(2131494650));
    this.login.setOnClickListener(this);
    this.leave = ((Button)findViewById(2131494651));
    this.leave.setOnClickListener(this);
    initViewFilpper();
  }
  
  private void initViewFilpper()
  {
    this.vf1 = ((ViewFlipper)findViewById(2131494636));
    int i = 0;
    int j;
    if (i >= 10)
    {
      this.vf1.setDisplayedChild(0);
      this.vf1.setInAnimation(AnimationUtils.loadAnimation(this, 2130968594));
      this.vf1.setOutAnimation(AnimationUtils.loadAnimation(this, 2130968595));
      this.vf2 = ((ViewFlipper)findViewById(2131494637));
      j = 0;
      label74:
      if (j < 10) {
        break label210;
      }
      this.vf2.setDisplayedChild(0);
      this.vf2.setInAnimation(AnimationUtils.loadAnimation(this, 2130968594));
      this.vf2.setOutAnimation(AnimationUtils.loadAnimation(this, 2130968595));
      this.vf3 = ((ViewFlipper)findViewById(2131494638));
    }
    for (int k = 0;; k++)
    {
      if (k >= 10)
      {
        this.vf3.setDisplayedChild(0);
        this.vf3.setInAnimation(AnimationUtils.loadAnimation(this, 2130968594));
        this.vf3.setOutAnimation(AnimationUtils.loadAnimation(this, 2130968595));
        return;
        ImageView localImageView1 = new ImageView(this);
        localImageView1.setImageResource(this.num_bmps[i]);
        this.vf1.addView(localImageView1);
        i++;
        break;
        label210:
        ImageView localImageView2 = new ImageView(this);
        localImageView2.setImageResource(this.num_bmps[j]);
        this.vf2.addView(localImageView2);
        j++;
        break label74;
      }
      ImageView localImageView3 = new ImageView(this);
      localImageView3.setImageResource(this.num_bmps[k]);
      this.vf3.addView(localImageView3);
    }
  }
  
  private void openDrawer()
  {
    this.mDrawerLayout.openDrawer(5);
  }
  
  private void prepareToLogin()
  {
    this.loginOrleave.setVisibility(0);
    if (this.loginTextTitle.equals("")) {
      this.content_1.setText(getResources().getString(2131166569));
    }
    for (;;)
    {
      this.content_1.setTextColor(getResources().getColor(2131296427));
      if (!this.loginText.equals("")) {
        break;
      }
      this.content_2.setText(getResources().getString(2131166570));
      return;
      this.content_1.setText(this.loginTextTitle);
    }
    this.content_2.setText(this.loginText);
  }
  
  private void showJingDouView()
  {
    if ((this.resultText != null) && (this.resultValue != null)) {
      if (this.resultText.contains("%X%X%X%")) {
        this.resultText = this.resultText.replace("%X%X%X%", this.resultValue);
      }
    }
    for (;;)
    {
      this.reward_tv.setText(this.resultText);
      showView(1);
      return;
      if (this.resultText == null) {
        this.resultText = "";
      }
    }
  }
  
  private void showView(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      this.congratulation_layout.setVisibility(8);
      this.commom_view.setVisibility(0);
      this.verify_layout.setVisibility(8);
      this.loginOrleave.setVisibility(8);
      this.content_1.setTypeface(Typeface.defaultFromStyle(0));
      this.content_1.setTextSize(16.0F);
      this.content_1.setTextColor(getResources().getColor(2131296425));
      this.content_1.setText(this.hintTextTitle);
      this.content_2.setText(this.hintText);
      return;
    case 1: 
      this.congratulation_layout.setVisibility(0);
      this.commom_view.setVisibility(8);
      this.verify_layout.setVisibility(8);
      return;
    }
    this.congratulation_layout.setVisibility(8);
    this.commom_view.setVisibility(8);
    this.verify_layout.setVisibility(0);
  }
  
  private void startVF()
  {
    if (TextUtils.isEmpty(this.times)) {
      this.times = "0";
    }
    int i = Integer.parseInt(this.times);
    int j = i / 10 % 10;
    int k = i / 100;
    int m = i + 1;
    int n = m / 10 % 10;
    int i1 = m / 100;
    this.vf3.showNext();
    if (j != n) {
      this.vf2.showNext();
    }
    if (i1 != k) {
      this.vf1.showNext();
    }
  }
  
  private void toastshort(String paramString)
  {
    if ((TextUtils.isEmpty(paramString)) || (this == null)) {
      return;
    }
    if (this.toast != null)
    {
      this.toast.setText(paramString);
      this.toast.setDuration(1);
    }
    for (;;)
    {
      this.toast.show();
      return;
      this.toast = Toast.makeText(this, paramString, 1);
    }
  }
  
  private void updateQianDaoBtn()
  {
    if (this.sInfo.getIsDone() == null) {
      this.hasDone = false;
    }
    int i;
    do
    {
      return;
      i = this.sInfo.getIsDone().intValue();
      if (i == 0)
      {
        this.hasDone = false;
        this.qiandao_btn.setBackgroundResource(2130838366);
        return;
      }
      if (i == 1)
      {
        this.hasDone = true;
        this.qiandao_btn.setBackgroundResource(2130838348);
        return;
      }
    } while (i != 2);
    this.hasDone = true;
    this.qiandao_btn.setBackgroundResource(2130838348);
    httpVerifyImage();
  }
  
  private void updateShouyeTV()
  {
    showView(0);
    this.content_1.setText(this.sInfo.getHintTextTitle());
    this.content_2.setText(this.sInfo.getHintText());
    this.totalNum.setText(this.sInfo.getTotalNumTimes());
  }
  
  private void updateTimes()
  {
    if (this.hasUpdateTimes) {
      return;
    }
    this.times = this.sInfo.getSustainedNumTimes();
    if (this.times == null) {
      this.times = "000";
    }
    int i = Integer.parseInt(this.times);
    this.vf3.setDisplayedChild(i % 10);
    this.vf2.setDisplayedChild(i / 10 % 10);
    this.vf1.setDisplayedChild(i / 100);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 0) {
      httpSigninInfo();
    }
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
    case 2131494628: 
    case 2131494629: 
    case 2131494639: 
      do
      {
        return;
        finish();
        return;
        Intent localIntent2 = new Intent("android.intent.action.SEND");
        localIntent2.setType("text/plain");
        localIntent2.putExtra("android.intent.extra.SUBJECT", getString(2131166573));
        if (this.sInfo != null) {
          localIntent2.putExtra("android.intent.extra.TEXT", this.sInfo.getShareText());
        }
        startActivityNoException(Intent.createChooser(localIntent2, getString(2131166572)));
        httpShare();
        return;
        if (!LoginUserBase.hasLogin())
        {
          toastshort(getResources().getString(2131166569));
          prepareToLogin();
          return;
        }
      } while (this.hasDone);
      httpSummit();
      return;
    case 2131494650: 
      Intent localIntent1 = new Intent();
      localIntent1.setClass(this, LoginActivity.class);
      startActivityForResult(localIntent1, 0);
      return;
    case 2131494651: 
      finish();
      return;
    case 2131494644: 
      if (this.randomTimes >= 3)
      {
        toastshort(getString(2131166565));
        return;
      }
      String str = this.verifyResult.getText().toString();
      if ((str == null) || (str.trim().equals("")))
      {
        toastshort(getString(2131166566));
        return;
      }
      httpGetReward();
      return;
    case 2131494642: 
      httpVerifyImage();
      return;
    }
    openDrawer();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    setContentView(2130903324);
    WindowManager localWindowManager = getWindowManager();
    this.screenHeight = localWindowManager.getDefaultDisplay().getHeight();
    this.screenWidth = localWindowManager.getDefaultDisplay().getWidth();
    this.drawer = ((LinearLayout)findViewById(2131494655));
    this.mDrawerLayout = ((DrawerLayout)findViewById(2131494624));
    ((DrawerLayout.LayoutParams)this.drawer.getLayoutParams()).width = (this.screenWidth - DPIUtil.dip2px(3.0F));
    super.onCreate(paramBundle);
    initViewAndEvent();
    ActionBarDrawerToggle local3 = new ActionBarDrawerToggle(this, this.mDrawerLayout, 2130838349, 2131166561, 2131166561)
    {
      public void onDrawerClosed(View paramAnonymousView)
      {
        if (((SignListView)SignActivity.this.drawer).handler.hasMessages(0)) {
          ((SignListView)SignActivity.this.drawer).handler.removeMessages(0);
        }
        SignActivity.this.drawerIcon.setVisibility(0);
      }
      
      public void onDrawerOpened(View paramAnonymousView)
      {
        ((SignListView)SignActivity.this.drawer).showUserData();
        ((SignListView)SignActivity.this.drawer).postHttp();
        SignActivity.this.drawerIcon.setVisibility(8);
        if (NewJLogUtil.isUseNewJLog()) {
          NewJLogUtil.onJMAEvent(SignActivity.this, "SignDrawerOpened", "");
        }
      }
    };
    this.mDrawerLayout.setDrawerListener(local3);
    if (NewJLogUtil.isUseNewJLog()) {
      NewJLogUtil.onJMAEvent(this, "SignActivity", "");
    }
  }
  
  protected void onDestroy()
  {
    if (this.mHandler.hasMessages(1)) {
      this.mHandler.removeMessages(1);
    }
    super.onDestroy();
  }
  
  protected void onStart()
  {
    httpSigninInfo();
    super.onStart();
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    paramMotionEvent.getX();
    paramMotionEvent.getY();
    return false;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.signin.SignActivity
 * JD-Core Version:    0.7.0.1
 */