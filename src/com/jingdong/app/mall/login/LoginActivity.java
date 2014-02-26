package com.jingdong.app.mall.login;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.ScrollView;
import android.widget.TextView;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.app.mall.ime.JDInputMethod;
import com.jingdong.app.mall.personel.MyBackAndExchangeActivity;
import com.jingdong.app.mall.personel.MyCollectActivity;
import com.jingdong.app.mall.personel.MyCommentDiscussActivity;
import com.jingdong.app.mall.personel.MyOrderInfoListActivity;
import com.jingdong.app.mall.personel.MyWebMessage;
import com.jingdong.app.mall.personel.PersonelActivity;
import com.jingdong.app.mall.personel.UserPhotoUpload;
import com.jingdong.app.mall.register.QuickRegisterActivity;
import com.jingdong.app.mall.shopping.EasyGoAddrListActivity;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.database.table.UserNamesTable;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.login.LoginUserBase.LoginRequestListener;
import com.jingdong.common.login.SafetyManager;
import com.jingdong.common.utils.CommonBase.BrowserUrlListener;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.JDGameUtil;
import com.jingdong.common.utils.JDStringUtils;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import com.jingdong.common.utils.PushMessageUtils;
import com.jingdong.common.utils.StatisticsReportUtil;
import com.jingdong.common.utils.URLParamMap;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

public class LoginActivity
  extends MyActivity
{
  public static final String AUTO_SAVE_USER_NAME = "auto_save_user_name_for_select";
  public static final String FIND_PD_KEY = "findpwd";
  public static final int NAME_LOG_IN = 0;
  public static final int PHONE_LOG_IN = 1;
  public static final String PREF_LOGIN = "loginFlag";
  public static final String PREF_NAME = "userInfo";
  public static final String RESEND_FLAG = "com.360buy:loginResendFlag";
  private static final int RETRY_TIMES = 3;
  private static final String TAG = "LoginActivity";
  public static final int TO_FINISH = 0;
  public static final int TO_JD_ACCOUNT_SAFE = 7;
  public static final int TO_JD_COLLECT = 4;
  public static final int TO_JD_COMMENT_DISCUSS = 5;
  public static final int TO_JD_EASY_BUY = 6;
  public static final int TO_JD_GAME = 2;
  public static final int TO_JD_MESSAGE = 3;
  public static final int TO_JD_ORDER = 9;
  public static final int TO_JD_REPAIR_CHANGE = 8;
  public static final int TO_MY_JD = 1;
  public static final int TO_UNKNOW = -1;
  private static EditText mUserPassword;
  public static final String passwordTag = "jdPasswordTag";
  private final boolean HISTORY_HIDE = false;
  private final boolean HISTORY_SHOW = true;
  private AlertDialog alertDialog;
  private boolean bRememberMe;
  private TextView findPassword;
  private String findPdUrl;
  private LinearLayout historyUserNameLayout = null;
  private View loginDividerLine;
  View.OnClickListener loginNameSelectorClickListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      boolean bool1 = ((Boolean)paramAnonymousView.getTag()).booleanValue();
      if (!bool1)
      {
        if (bool1) {}
        for (boolean bool2 = false;; bool2 = true)
        {
          paramAnonymousView.setTag(Boolean.valueOf(bool2));
          LoginActivity.this.mInputMethod.dismissPopupwindow();
          LoginActivity.mUserPassword.clearFocus();
          LoginActivity.this.showAllSavedUserName();
          return;
        }
      }
      LoginActivity.this.showOrhidHistoryUserName(AnimationUtils.loadAnimation(LoginActivity.this.mContext, 2130968598), false);
    }
  };
  private ImageView login_name_selector;
  private RelativeLayout login_page_input_name_layout;
  private ImageView login_user_icon;
  private Context mContext;
  private JDInputMethod mInputMethod;
  private TextView mInputmethodView;
  Button mLoginCancel;
  Button mLoginConfirm;
  LoginUserBase mLoginUser;
  Button mRegLink;
  CheckBox mRememberMe;
  TextView mTitle;
  private EditText mUserNameTxt;
  TextView nameTextView;
  private ArrayList<String> names;
  TextView passwordTextView;
  String sUserName;
  String sUserPassword;
  
  public static String EncryptPassword2(String paramString)
  {
    MessageDigest localMessageDigest = null;
    try
    {
      localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.reset();
      localMessageDigest.update(paramString.getBytes("UTF-8"));
      label22:
      byte[] arrayOfByte = localMessageDigest.digest();
      StringBuffer localStringBuffer = new StringBuffer();
      int i = 0;
      if (i >= arrayOfByte.length) {
        return localStringBuffer.toString().toUpperCase();
      }
      if (Integer.toHexString(0xFF & arrayOfByte[i]).length() == 1) {
        localStringBuffer.append("0").append(Integer.toHexString(0xFF & arrayOfByte[i]));
      }
      for (;;)
      {
        i++;
        break;
        localStringBuffer.append(Integer.toHexString(0xFF & arrayOfByte[i]));
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      break label22;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      break label22;
    }
  }
  
  public static void afterSuccess(MyActivity paramMyActivity)
  {
    if (paramMyActivity == null) {}
    Intent localIntent1;
    do
    {
      return;
      localIntent1 = paramMyActivity.getIntent();
    } while (localIntent1 == null);
    switch (localIntent1.getIntExtra("com.360buy:loginResendFlag", 0))
    {
    }
    for (;;)
    {
      return;
      paramMyActivity.noShowAgain();
      Intent localIntent9 = new Intent(paramMyActivity, PersonelActivity.class);
      localIntent9.putExtra("com.360buy:singleInstanceFlag", true);
      Bundle localBundle = new Bundle();
      localBundle.putString("pinName", LoginUserBase.getLoginUserName());
      localIntent9.putExtras(localBundle);
      paramMyActivity.startActivityInFrame(localIntent9);
      continue;
      JDGameUtil.gotoJDGameUtil(paramMyActivity, LoginUserBase.getLoginUserName(), HttpGroup.getCookie(), 2);
      finishWithDelay(paramMyActivity, 1000);
      continue;
      paramMyActivity.noShowAgain();
      Intent localIntent8 = new Intent(paramMyActivity, MyCollectActivity.class);
      localIntent8.putExtra("com.360buy:singleInstanceFlag", true);
      paramMyActivity.startActivityInFrame(localIntent8);
      continue;
      paramMyActivity.noShowAgain();
      Intent localIntent7 = new Intent(paramMyActivity, MyWebMessage.class);
      localIntent7.putExtra("com.360buy:singleInstanceFlag", true);
      paramMyActivity.startActivityInFrame(localIntent7);
      continue;
      paramMyActivity.noShowAgain();
      queryAccountSecurity(paramMyActivity);
      continue;
      paramMyActivity.noShowAgain();
      Intent localIntent6 = new Intent(paramMyActivity, MyCommentDiscussActivity.class);
      localIntent6.putExtra("com.360buy:singleInstanceFlag", true);
      paramMyActivity.startActivityInFrame(localIntent6);
      continue;
      paramMyActivity.noShowAgain();
      Intent localIntent5 = new Intent(paramMyActivity, EasyGoAddrListActivity.class);
      localIntent5.putExtra("com.360buy:singleInstanceFlag", true);
      paramMyActivity.startActivityInFrame(localIntent5);
      continue;
      paramMyActivity.noShowAgain();
      Intent localIntent4 = new Intent(paramMyActivity, MyBackAndExchangeActivity.class);
      localIntent4.putExtra("com.360buy:singleInstanceFlag", true);
      paramMyActivity.startActivityInFrame(localIntent4);
      continue;
      paramMyActivity.noShowAgain();
      Intent localIntent3 = new Intent(paramMyActivity, MyOrderInfoListActivity.class);
      localIntent3.putExtra("com.360buy:singleInstanceFlag", true);
      String str = localIntent1.getStringExtra("functionId");
      if (!TextUtils.isEmpty(str)) {
        localIntent3.putExtra("functionId", str);
      }
      paramMyActivity.startActivityInFrame(localIntent3);
      continue;
      Intent localIntent2 = new Intent();
      localIntent2.putExtra("username", LoginUserBase.getLoginUserName());
      localIntent2.putExtra("cookie", HttpGroup.getCookie());
      localIntent2.putExtra("commonParams", StatisticsReportUtil.getDeviceInfoStr());
      paramMyActivity.setResult(-1, localIntent2);
      paramMyActivity.finish();
    }
  }
  
  private boolean checkDownPointerInView(View paramView, float paramFloat1, float paramFloat2)
  {
    int[] arrayOfInt = new int[2];
    paramView.getLocationOnScreen(arrayOfInt);
    return (paramFloat1 >= arrayOfInt[0]) && (paramFloat1 <= arrayOfInt[0] + paramView.getWidth()) && (paramFloat2 >= arrayOfInt[1]) && (paramFloat2 <= arrayOfInt[1] + paramView.getHeight());
  }
  
  public static void clearRemember(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    
    if (paramBoolean1) {
      SafetyManager.removeUsername();
    }
    if (paramBoolean2) {
      SafetyManager.removePassword();
    }
    if (paramBoolean3) {
      SafetyManager.removeRemember();
    }
  }
  
  private void closeJDInputMethod()
  {
    if (this.mInputMethod != null) {
      this.mInputMethod.dismissPopupwindow();
    }
  }
  
  private void delUserNameFromCache(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    do
    {
      return;
      UserNamesTable.delUserName(paramString);
    } while (!paramString.equals(this.mUserNameTxt.getText().toString()));
    SafetyManager.clearSafety();
    this.mUserNameTxt.setText("");
    this.login_user_icon.setPadding(0, 0, 0, 0);
    this.login_user_icon.setImageResource(2130837974);
  }
  
  private static void finishWithDelay(MyActivity paramMyActivity, int paramInt)
  {
    paramMyActivity.post(new Runnable()
    {
      public void run()
      {
        try
        {
          LoginActivity.this.finish();
          return;
        }
        catch (Throwable localThrowable) {}
      }
    }, paramInt);
  }
  
  public static ArrayList<String> getAllUserName()
  {
    return UserNamesTable.getUserNames();
  }
  
  private void getRememberedUser()
  {
    String str1 = SafetyManager.getUserName();
    String str2 = SafetyManager.getPassword();
    if (str1 != null)
    {
      setUserName(str1);
      if (str2 == null) {
        break label34;
      }
    }
    for (;;)
    {
      setUserPassword(str2);
      return;
      str1 = "";
      break;
      label34:
      str2 = "";
    }
  }
  
  private void getUserName()
  {
    this.sUserName = this.mUserNameTxt.getText().toString();
  }
  
  private void getUserPassword()
  {
    this.sUserPassword = EncryptPassword2(mUserPassword.getText().toString());
  }
  
  private void getUserPasswordNoCode()
  {
    this.sUserPassword = mUserPassword.getText().toString();
  }
  
  private void handleClickEvent()
  {
    ((ScrollView)findViewById(2131493615)).setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        int i = paramAnonymousMotionEvent.getAction();
        boolean bool = false;
        if (i == 2)
        {
          int j = LoginActivity.this.historyUserNameLayout.getVisibility();
          bool = false;
          if (j == 0)
          {
            LoginActivity.this.showOrhidHistoryUserName(null, false);
            bool = true;
          }
        }
        return bool;
      }
    });
    this.mLoginConfirm.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        try
        {
          LoginActivity.this.closeJDInputMethod();
          LoginActivity.this.onLogin();
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    });
    this.mRegLink.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        LoginActivity.this.closeJDInputMethod();
        Intent localIntent = new Intent(LoginActivity.this, QuickRegisterActivity.class);
        localIntent.putExtra("com.360buy:navigationDisplayFlag", LoginActivity.this.getIntent().getIntExtra("com.360buy:navigationDisplayFlag", 0));
        localIntent.putExtra("com.360buy:loginResendFlag", LoginActivity.this.getIntent().getIntExtra("com.360buy:loginResendFlag", -1));
        LoginActivity.this.startActivityInFrame(localIntent);
      }
    });
    this.mRememberMe.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        switch (paramAnonymousCompoundButton.getId())
        {
        default: 
          return;
        }
        if (paramAnonymousBoolean)
        {
          LoginActivity.this.bRememberMe = true;
          return;
        }
        LoginActivity.this.bRememberMe = false;
      }
    });
    this.mRememberMe.setChecked(true);
    SharedPreferences localSharedPreferences = CommonUtil.getJdSharedPreferences();
    if (localSharedPreferences != null)
    {
      this.findPdUrl = localSharedPreferences.getString("findpwd", "");
      if (TextUtils.isEmpty(this.findPdUrl)) {
        this.findPassword.setVisibility(8);
      }
    }
    for (;;)
    {
      this.findPassword.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          URLParamMap localURLParamMap = new URLParamMap();
          if (TextUtils.isEmpty(LoginActivity.this.findPdUrl)) {
            return;
          }
          localURLParamMap.put("to", LoginActivity.this.findPdUrl.toString().trim());
          CommonUtil.queryBrowserUrl("to", localURLParamMap, new CommonBase.BrowserUrlListener()
          {
            public void onComplete(final String paramAnonymous2String)
            {
              LoginActivity.this.post(new Runnable()
              {
                public void run()
                {
                  Intent localIntent = new Intent(LoginActivity.this, WebActivity.class);
                  localIntent.putExtra("url", paramAnonymous2String);
                  localIntent.putExtra("com.360buy:navigationDisplayFlag", LoginActivity.this.getIntent().getIntExtra("com.360buy:navigationDisplayFlag", 0));
                  LoginActivity.this.startActivityInFrame(localIntent);
                }
              });
            }
          });
        }
      });
      return;
      this.findPassword.setVisibility(8);
    }
  }
  
  private void hideOrShowText()
  {
    final CheckBox localCheckBox = (CheckBox)findViewById(2131493626);
    localCheckBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        Editable localEditable = LoginActivity.mUserPassword.getText();
        String str;
        if (localEditable == null)
        {
          str = "";
          if (!localCheckBox.isChecked()) {
            break label65;
          }
          LoginActivity.mUserPassword.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
        }
        for (;;)
        {
          if (!TextUtils.isEmpty(str)) {
            LoginActivity.mUserPassword.setSelection(str.length());
          }
          return;
          str = localEditable.toString();
          break;
          label65:
          LoginActivity.mUserPassword.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
      }
    });
  }
  
  private void initBtn()
  {
    this.nameTextView = ((TextView)findViewById(2131493620));
    this.passwordTextView = ((TextView)findViewById(2131493625));
    this.mLoginConfirm = ((Button)findViewById(2131493629));
    this.mRegLink = ((Button)findViewById(2131493634));
    this.mRememberMe = ((CheckBox)findViewById(2131493628));
    this.login_user_icon = ((ImageView)findViewById(2131493617));
    this.findPassword = ((TextView)findViewById(2131493631));
    this.login_name_selector = ((ImageView)findViewById(2131493621));
    this.login_page_input_name_layout = ((RelativeLayout)findViewById(2131493619));
    this.login_name_selector.setClickable(true);
    this.login_name_selector.setTag(Boolean.valueOf(false));
    this.login_name_selector.setOnClickListener(this.loginNameSelectorClickListener);
    this.mTitle = ((TextView)findViewById(2131492990));
    this.mTitle.setText(2131165976);
    this.historyUserNameLayout = ((LinearLayout)findViewById(2131493636));
    this.loginDividerLine = findViewById(2131493623);
  }
  
  private void initEditTxt()
  {
    this.mUserNameTxt = ((EditText)findViewById(2131493622));
    mUserPassword = (EditText)findViewById(2131493627);
    mUserPassword.setTag("jdPasswordTag");
    this.mInputmethodView = ((TextView)findViewById(2131493635));
    this.mUserNameTxt.addTextChangedListener(new TextWatcher()
    {
      public void afterTextChanged(Editable paramAnonymousEditable)
      {
        if ((LoginActivity.mUserPassword != null) && (!TextUtils.isEmpty(LoginActivity.mUserPassword.getText()))) {
          LoginActivity.mUserPassword.setText("");
        }
        if ((LoginActivity.this.mUserNameTxt == null) || (LoginActivity.this.mUserNameTxt.getText() == null)) {}
        String str;
        do
        {
          return;
          str = LoginActivity.this.mUserNameTxt.getText().toString();
        } while (TextUtils.isEmpty(str));
        Bitmap localBitmap = UserPhotoUpload.getUserBitmapPhotoFromCache(str);
        if (localBitmap != null)
        {
          int i = LoginActivity.this.getResources().getDimensionPixelSize(2131427444);
          int j = DPIUtil.dip2px(10.0F);
          LoginActivity.this.login_user_icon.setPadding(j, j, j, j);
          LoginActivity.this.login_user_icon.setImageBitmap(ImageUtil.toRoundBitmap(localBitmap, i, i));
          return;
        }
        LoginActivity.this.login_user_icon.setPadding(0, 0, 0, 0);
        LoginActivity.this.login_user_icon.setImageResource(2130837974);
      }
      
      public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        if (LoginActivity.this.historyUserNameLayout.getVisibility() == 0) {
          LoginActivity.this.showOrhidHistoryUserName(AnimationUtils.loadAnimation(LoginActivity.this.mContext, 2130968598), false);
        }
      }
    });
    if (SafetyManager.isRemember())
    {
      getRememberedUser();
      return;
    }
    String str = SafetyManager.getUserName();
    if (!TextUtils.isEmpty(str)) {
      setUserName(str);
    }
    for (;;)
    {
      mUserPassword.setText("");
      return;
      this.mUserNameTxt.setText("");
    }
  }
  
  private void initJDInputMethod()
  {
    this.mContext = this;
    mUserPassword.setTransformationMethod(PasswordTransformationMethod.getInstance());
    this.mInputMethod = new JDInputMethod(this, this.mUserNameTxt, mUserPassword, findViewById(2131493614));
    this.mInputMethod.initIME();
    this.mInputMethod.initInputmethodView(this.mInputmethodView);
  }
  
  private boolean isJDGame()
  {
    int i = getIntent().getIntExtra("com.360buy:loginResendFlag", 0);
    boolean bool = false;
    if (2 == i) {
      bool = true;
    }
    return bool;
  }
  
  private void loginError(final String paramString)
  {
    post(new Runnable()
    {
      public void run()
      {
        try
        {
          LoginActivity.this.mRememberMe.setChecked(LoginActivity.this.bRememberMe);
          final AlertDialog.Builder localBuilder = new AlertDialog.Builder(LoginActivity.this);
          localBuilder.setTitle(2131165704);
          if (TextUtils.isEmpty(paramString)) {
            localBuilder.setMessage(2131165706);
          }
          for (;;)
          {
            localBuilder.setPositiveButton(2131165517, new DialogInterface.OnClickListener()
            {
              public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                LoginActivity.this.alertDialog.dismiss();
              }
            });
            LoginActivity.this.post(new Runnable()
            {
              public void run()
              {
                LoginActivity.this.alertDialog = localBuilder.show();
              }
            });
            return;
            localBuilder.setMessage(paramString);
          }
          return;
        }
        catch (Exception localException) {}
      }
    });
  }
  
  private void loginSuccess(final String paramString)
  {
    post(new Runnable()
    {
      public void run()
      {
        if (!TextUtils.isEmpty(CommonUtil.getStringFromPreference("annualToken", ""))) {
          com.jingdong.app.mall.amHelper.AmHelper.isShowDialog = true;
        }
        if (LoginActivity.this.mRememberMe != null) {
          LoginActivity.this.bRememberMe = LoginActivity.this.mRememberMe.isChecked();
        }
        try
        {
          if (LoginActivity.this.bRememberMe)
          {
            SafetyManager.setRemember(true);
            LoginActivity.this.onRemember();
            if (TextUtils.isEmpty(LoginActivity.this.sUserName)) {
              break label102;
            }
            LoginActivity.saveUserName(LoginActivity.this.sUserName);
          }
          for (;;)
          {
            LoginActivity.afterSuccess(LoginActivity.this);
            return;
            SafetyManager.clearSafety();
            break;
            label102:
            LoginActivity.saveUserName(paramString);
          }
          return;
        }
        catch (Exception localException) {}
      }
    });
  }
  
  private boolean nameCheck()
  {
    boolean bool1 = TextUtils.isEmpty(this.mUserNameTxt.getText().toString().trim());
    boolean bool2 = false;
    if (bool1)
    {
      bool2 = true;
      this.mUserNameTxt.setError(JDStringUtils.getErrorSpanned(getApplicationContext(), 2131165708));
    }
    return bool2;
  }
  
  private void onLogin()
  {
    if ((nameCheck()) || (passWordCheck())) {}
    label128:
    label133:
    for (;;)
    {
      return;
      ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(mUserPassword.getWindowToken(), 0);
      getUserName();
      String str1 = SafetyManager.getPassword();
      String str2 = mUserPassword.getText().toString();
      if (str1 != null)
      {
        if (!str2.equals(str1)) {
          break label128;
        }
        getUserPasswordNoCode();
      }
      for (;;)
      {
        if ((this.sUserPassword.length() < 1) || (this.sUserName.length() < 1)) {
          break label133;
        }
        PushMessageUtils.saveBindState(false);
        LoginUserBase.login(this, this.sUserName, this.sUserPassword, true, true, new LoginUserBase.LoginRequestListener()
        {
          public void onLoginError(int paramAnonymousInt, String paramAnonymousString)
          {
            if (paramAnonymousInt == 2) {
              LoginActivity.this.loginError(paramAnonymousString);
            }
          }
          
          public void onLoginSuccess(String paramAnonymousString)
          {
            LoginActivity.this.loginSuccess(paramAnonymousString);
          }
        });
        return;
        str1 = "";
        break;
        getUserPassword();
      }
    }
  }
  
  private boolean passWordCheck()
  {
    boolean bool1 = TextUtils.isEmpty(mUserPassword.getText().toString().trim());
    boolean bool2 = false;
    if (bool1)
    {
      bool2 = true;
      mUserPassword.setError(JDStringUtils.getErrorSpanned(getApplicationContext(), 2131165709));
    }
    return bool2;
  }
  
  public static void queryAccountSecurity(MyActivity paramMyActivity)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("jdHomeShowItem");
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONArrayPoxy localJSONArrayPoxy = paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("subItemList");
        if ((localJSONArrayPoxy != null) && (localJSONArrayPoxy.length() > 0))
        {
          JSONObjectProxy localJSONObjectProxy = localJSONArrayPoxy.getJSONObjectOrNull(0);
          final String str1 = localJSONObjectProxy.getStringOrNull("url");
          final String str2 = localJSONObjectProxy.getStringOrNull("functionId");
          if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2))) {
            LoginActivity.this.post(new Runnable()
            {
              public void run()
              {
                URLParamMap localURLParamMap = new URLParamMap();
                localURLParamMap.put("to", str1);
                CommonUtil.queryBrowserUrl(str2, localURLParamMap, new CommonBase.BrowserUrlListener()
                {
                  public void onComplete(final String paramAnonymous3String)
                  {
                    this.val$activity.post(new Runnable()
                    {
                      public void run()
                      {
                        Intent localIntent = new Intent(this.val$activity, WebActivity.class);
                        localIntent.putExtra("url", paramAnonymous3String);
                        this.val$activity.startActivityInFrame(localIntent);
                      }
                    });
                  }
                });
              }
            });
          }
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams)
      {
        paramAnonymousHttpSettingParams.putJsonParam("type", "AccountSecurity");
      }
    });
    localHttpSetting.setNotifyUser(true);
    paramMyActivity.getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  public static void saveUserName(String paramString)
  {
    UserNamesTable.insertUserName(paramString);
  }
  
  private void setScreenOrientation()
  {
    if (getRequestedOrientation() != 1) {
      setRequestedOrientation(1);
    }
  }
  
  private void setUserName(String paramString)
  {
    if (TextUtils.equals(paramString, this.mUserNameTxt.getText().toString())) {}
    do
    {
      return;
      mUserPassword.setText("");
      this.mUserNameTxt.setText(paramString);
    } while (TextUtils.isEmpty(paramString));
    this.mUserNameTxt.setSelection(paramString.length());
  }
  
  private void setUserPassword(String paramString)
  {
    if (paramString.length() > 0) {
      mUserPassword.setText(paramString);
    }
  }
  
  private void showAllSavedUserName()
  {
    this.historyUserNameLayout.removeAllViews();
    View localView = LayoutInflater.from(this.mContext).inflate(2130903178, null, false);
    ListView localListView = (ListView)localView.findViewById(2131493637);
    this.names = getAllUserName();
    localListView.setAdapter(new MySimpleAdapter(this, this.names, 2130903179, new String[0], new int[0])
    {
      public View getView(final int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        View localView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
        final String str = (String)getItem(paramAnonymousInt);
        ((TextView)localView.findViewById(2131493640)).setText(str);
        ImageView localImageView = (ImageView)localView.findViewById(2131493638);
        Bitmap localBitmap = UserPhotoUpload.getUserBitmapPhotoFromCache(str);
        if (localBitmap != null)
        {
          int i = LoginActivity.this.getResources().getDimensionPixelSize(2131427442);
          int j = DPIUtil.dip2px(6.0F);
          localImageView.setPadding(j, j, j, j);
          localImageView.setImageBitmap(ImageUtil.toRoundBitmap(localBitmap, i, i));
        }
        for (;;)
        {
          ((ImageView)localView.findViewById(2131493639)).setOnClickListener(new View.OnClickListener()
          {
            public void onClick(View paramAnonymous2View)
            {
              AlertDialog.Builder localBuilder = new AlertDialog.Builder(LoginActivity.this);
              LoginActivity localLoginActivity = LoginActivity.this;
              Object[] arrayOfObject = new Object[1];
              arrayOfObject[0] = str;
              localBuilder.setTitle(localLoginActivity.getString(2131165610, arrayOfObject));
              localBuilder.setNegativeButton(2131165601, new DialogInterface.OnClickListener()
              {
                public void onClick(DialogInterface paramAnonymous3DialogInterface, int paramAnonymous3Int) {}
              });
              localBuilder.setPositiveButton(2131165607, new DialogInterface.OnClickListener()
              {
                public void onClick(DialogInterface paramAnonymous3DialogInterface, int paramAnonymous3Int)
                {
                  LoginActivity.this.names.remove(this.val$position);
                  LoginActivity.this.delUserNameFromCache(this.val$name);
                  LoginActivity.12.this.notifyDataSetChanged();
                  if (LoginActivity.this.names.size() <= 0)
                  {
                    LoginActivity.this.showOrhidHistoryUserName(AnimationUtils.loadAnimation(LoginActivity.this.mContext, 2130968598), false);
                    if (LoginActivity.this.login_name_selector != null) {
                      LoginActivity.this.login_name_selector.setVisibility(8);
                    }
                  }
                }
              });
              localBuilder.show();
            }
          });
          return localView;
          localImageView.setPadding(0, 0, 0, 0);
          localImageView.setImageResource(2130837974);
        }
      }
    });
    localListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        String str = (String)LoginActivity.this.names.get(paramAnonymousInt);
        LoginActivity.this.setUserName(str);
        LoginActivity.this.showOrhidHistoryUserName(AnimationUtils.loadAnimation(LoginActivity.this.mContext, 2130968598), false);
      }
    });
    this.historyUserNameLayout.addView(localView);
    Rect localRect = new Rect();
    getWindow().getDecorView().getWindowVisibleDisplayFrame(localRect);
    int i = localRect.top;
    this.loginDividerLine.getGlobalVisibleRect(localRect);
    RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)this.historyUserNameLayout.getLayoutParams();
    localLayoutParams.topMargin = (-1 + (localRect.bottom - i));
    localLayoutParams.leftMargin = localRect.left;
    localLayoutParams.rightMargin = localRect.left;
    localLayoutParams.bottomMargin = DPIUtil.dip2px(10.0F);
    showOrhidHistoryUserName(AnimationUtils.loadAnimation(this.mContext, 2130968596), true);
  }
  
  private void showOrhidHistoryUserName(Animation paramAnimation, boolean paramBoolean)
  {
    if (paramAnimation != null) {
      paramAnimation.setDuration(250L);
    }
    if (paramBoolean)
    {
      this.login_name_selector.setImageResource(2130838430);
      this.historyUserNameLayout.setAnimation(paramAnimation);
      this.historyUserNameLayout.setVisibility(0);
      return;
    }
    this.login_name_selector.setImageResource(2130837845);
    this.login_name_selector.setTag(Boolean.valueOf(false));
    this.historyUserNameLayout.setAnimation(paramAnimation);
    this.historyUserNameLayout.setVisibility(8);
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return super.dispatchTouchEvent(paramMotionEvent);
      paramMotionEvent.getRawX();
      paramMotionEvent.getRawY();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().setSoftInputMode(32);
    setScreenOrientation();
    setContentView(2130903177);
    initBtn();
    initEditTxt();
    handleClickEvent();
    initJDInputMethod();
    hideOrShowText();
    findViewById(2131493632).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        CommonUtil.toBrowser("thirdLogin", new URLParamMap());
      }
    });
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (this.mInputMethod.isPopupwindowShowing())
      {
        closeJDInputMethod();
        return true;
      }
      if (isJDGame())
      {
        JDGameUtil.gotoJDGameUtil(this, "", "", 3);
        finishWithDelay(this, 1000);
        return true;
      }
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onPause()
  {
    closeJDInputMethod();
    super.onPause();
  }
  
  public void onRemember()
  {
    if ((nameCheck()) || (passWordCheck())) {
      return;
    }
    getUserName();
    String str1 = SafetyManager.getPassword();
    String str2 = mUserPassword.getText().toString();
    if (str1 != null)
    {
      if (!str2.equals(str1)) {
        break label71;
      }
      getUserPasswordNoCode();
    }
    for (;;)
    {
      SafetyManager.saveSafety(this.sUserName, this.sUserPassword, true);
      return;
      str1 = "";
      break;
      label71:
      getUserPassword();
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    CommonUtil.getInstance().isCanClick();
    showOrhidHistoryUserName(null, false);
    if (LoginUserBase.hasLogin()) {
      post(new Runnable()
      {
        public void run()
        {
          LoginActivity.afterSuccess(LoginActivity.this);
        }
      });
    }
    if (this.login_name_selector != null)
    {
      ArrayList localArrayList = getAllUserName();
      if ((localArrayList != null) && (localArrayList.size() > 0)) {
        this.login_name_selector.setVisibility(0);
      }
    }
    else
    {
      return;
    }
    this.login_name_selector.setVisibility(8);
  }
  
  public void onStart()
  {
    super.onStart();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.login.LoginActivity
 * JD-Core Version:    0.7.0.1
 */