package com.jingdong.app.mall.register;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.app.mall.login.LoginActivity;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.frame.ScrollableTabActivity;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.login.LoginUserBase.LoginRequestListener;
import com.jingdong.common.login.SafetyManager;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JDStringUtils;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.StatisticsReportUtil;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class RegisterActivity
  extends MyActivity
{
  private static final String TAG = RegisterActivity.class.getSimpleName();
  boolean bShowPassword = false;
  boolean bThreadStop = true;
  boolean bVerifiedMail = false;
  boolean bVerifiedName = false;
  CheckBox mAccept;
  Button mConfirmBtn;
  EditText mRegisterFirstPwd;
  EditText mRegisterMail;
  EditText mRegisterName;
  EditText mRegisterSecondPwd;
  CheckBox mShowPassword;
  TextView mTitle;
  String messageBody;
  private String sRegMailAddr;
  private String sRegName;
  private String sRegPwd1;
  private String sRegPwd2;
  private String sRegUuid;
  TextView showAgreement;
  
  private void clearTextview()
  {
    this.mRegisterName.setText("");
    this.mRegisterMail.setText("");
    this.mRegisterFirstPwd.setText("");
    this.mRegisterSecondPwd.setText("");
  }
  
  private void getUserPassword()
  {
    this.sRegPwd2 = LoginActivity.EncryptPassword2(this.sRegPwd1);
  }
  
  private void initBtn()
  {
    this.mConfirmBtn = ((Button)findViewById(2131494412));
    this.mConfirmBtn.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        RegisterActivity.this.onRegister();
      }
    });
    this.mTitle = ((TextView)findViewById(2131492990));
    this.mTitle.setText(2131165715);
    this.mShowPassword = ((CheckBox)findViewById(2131493790));
    this.mAccept = ((CheckBox)findViewById(2131494410));
    this.showAgreement = ((TextView)findViewById(2131494411));
  }
  
  private void initCheckBox()
  {
    this.mShowPassword.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
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
          RegisterActivity.this.mRegisterFirstPwd.setInputType(144);
          RegisterActivity.this.mRegisterSecondPwd.setInputType(144);
          return;
        }
        RegisterActivity.this.mRegisterFirstPwd.setInputType(129);
        RegisterActivity.this.mRegisterSecondPwd.setInputType(129);
      }
    });
    this.mAccept.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean)
        {
          RegisterActivity.this.mConfirmBtn.setEnabled(true);
          RegisterActivity.this.mConfirmBtn.setTextColor(-16777216);
          return;
        }
        RegisterActivity.this.mConfirmBtn.setEnabled(false);
        RegisterActivity.this.mConfirmBtn.setTextColor(Color.rgb(153, 153, 153));
      }
    });
  }
  
  private void initTextView()
  {
    this.mRegisterName = ((EditText)findViewById(2131494403));
    this.mRegisterName.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        if (!paramAnonymousBoolean) {
          RegisterActivity.this.nameCheck();
        }
      }
    });
    this.mRegisterMail = ((EditText)findViewById(2131494405));
    this.mRegisterMail.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        if (!paramAnonymousBoolean) {
          RegisterActivity.this.mailCheck();
        }
      }
    });
    this.mRegisterMail.setInputType(32);
    this.mRegisterFirstPwd = ((EditText)findViewById(2131494407));
    this.mRegisterSecondPwd = ((EditText)findViewById(2131494409));
    this.showAgreement.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Intent localIntent = new Intent(RegisterActivity.this, WebActivity.class);
        localIntent.putExtra("url", RegisterActivity.this.getStringFromPreference("regiterAgreementUrl"));
        localIntent.putExtra("com.360buy:navigationDisplayFlag", RegisterActivity.this.getIntent().getIntExtra("com.360buy:navigationDisplayFlag", 0));
        RegisterActivity.this.startActivityInFrame(localIntent);
      }
    });
  }
  
  private boolean inputCheck()
  {
    boolean bool1;
    if (!nameCheck())
    {
      boolean bool2 = mailCheck();
      bool1 = false;
      if (!bool2) {}
    }
    else
    {
      bool1 = true;
    }
    String str = this.mRegisterFirstPwd.getText().toString().trim();
    if (TextUtils.isEmpty(str))
    {
      bool1 = true;
      this.mRegisterFirstPwd.setError(JDStringUtils.getErrorSpanned(getApplicationContext(), 2131165709));
    }
    do
    {
      return bool1;
      if (!CommonUtil.checkPassword(str, 6, 20))
      {
        this.mRegisterFirstPwd.setError(JDStringUtils.getErrorSpanned(getApplicationContext(), 2131165711));
        return true;
      }
    } while (str.equals(this.mRegisterSecondPwd.getText().toString()));
    this.mRegisterSecondPwd.setError(JDStringUtils.getErrorSpanned(getApplicationContext(), 2131165726));
    return true;
  }
  
  private void loginError(String paramString)
  {
    post(new Runnable()
    {
      public void run()
      {
        try
        {
          Toast.makeText(RegisterActivity.this, RegisterActivity.this.getString(2131165706), 1).show();
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
        ScrollableTabActivity localScrollableTabActivity = (ScrollableTabActivity)RegisterActivity.this.getParent();
        if (localScrollableTabActivity != null) {
          localScrollableTabActivity.removeRecordSecond();
        }
        LoginActivity.saveUserName(paramString);
        SafetyManager.saveSafety(RegisterActivity.this.sRegName, RegisterActivity.this.sRegPwd2, true);
        RegisterActivity.this.finish();
      }
    });
  }
  
  private boolean mailCheck()
  {
    String str = this.mRegisterMail.getText().toString().trim();
    boolean bool2;
    if (TextUtils.isEmpty(str))
    {
      bool2 = true;
      this.mRegisterMail.setError(JDStringUtils.getErrorSpanned(getApplicationContext(), 2131165720));
    }
    boolean bool1;
    do
    {
      return bool2;
      bool1 = CommonUtil.checkEmailWithSuffix(str);
      bool2 = false;
    } while (bool1);
    this.mRegisterMail.setError(JDStringUtils.getErrorSpanned(getApplicationContext(), 2131165727));
    return true;
  }
  
  private boolean nameCheck()
  {
    String str = this.mRegisterName.getText().toString();
    int i = CommonUtil.getLength(str.trim());
    boolean bool;
    if (TextUtils.isEmpty(str.trim()))
    {
      bool = true;
      this.mRegisterName.setError(JDStringUtils.getErrorSpanned(getApplicationContext(), 2131165719));
    }
    do
    {
      return bool;
      if (!CommonUtil.checkUsername(str))
      {
        this.mRegisterName.setError(JDStringUtils.getErrorSpanned(getApplicationContext(), 2131165710));
        return true;
      }
      if (i < 4) {
        break;
      }
      bool = false;
    } while (i <= 20);
    this.mRegisterName.setError(JDStringUtils.getErrorSpanned(getApplicationContext(), 2131165710));
    return true;
  }
  
  private void onLogin()
  {
    getUserPassword();
    if ((this.sRegPwd1.length() < 1) || (this.sRegName.length() < 1)) {
      return;
    }
    LoginUserBase.login(this, this.sRegName, this.sRegPwd2, true, true, new LoginUserBase.LoginRequestListener()
    {
      public void onLoginError(int paramAnonymousInt, String paramAnonymousString)
      {
        if (paramAnonymousInt == 2) {
          RegisterActivity.this.loginError(paramAnonymousString);
        }
      }
      
      public void onLoginSuccess(String paramAnonymousString)
      {
        RegisterActivity.this.loginSuccess(paramAnonymousString);
      }
    });
  }
  
  private void onRegister()
  {
    try
    {
      if (inputCheck()) {
        return;
      }
      if (this.bVerifiedMail) {}
      ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(this.mRegisterSecondPwd.getWindowToken(), 0);
      getRegisterUserInfo();
      JSONObject localJSONObject = new JSONObject();
      HttpGroup.HttpSetting localHttpSetting;
      return;
    }
    catch (Exception localException)
    {
      try
      {
        localJSONObject.put("username", this.sRegName);
        localJSONObject.put("pwd", this.sRegPwd1);
        localJSONObject.put("pwd2", this.sRegPwd2);
        localJSONObject.put("mail", this.sRegMailAddr);
        localJSONObject.put("uuid", StatisticsReportUtil.readDeviceUUID());
        localHttpSetting = new HttpGroup.HttpSetting();
        localHttpSetting.setReadTimeout(60000);
        localHttpSetting.setFunctionId("register");
        localHttpSetting.setJsonParams(localJSONObject);
        localHttpSetting.setPost(true);
        localHttpSetting.setListener(new HttpGroup.OnAllListener()
        {
          public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
          {
            try
            {
              JSONArrayPoxy localJSONArrayPoxy = paramAnonymousHttpResponse.getJSONObject().getJSONArray("regInfo");
              if (localJSONArrayPoxy.length() < 1) {
                RegisterActivity.this.showDialog(RegisterActivity.this.getText(2131165724).toString());
              }
              for (;;)
              {
                label39:
                RegisterActivity.this.bThreadStop = true;
                return;
                if (localJSONArrayPoxy.getJSONObject(0).names().toString().contains("info"))
                {
                  RegisterActivity.this.messageBody = localJSONArrayPoxy.getJSONObject(0).getString("info");
                  RegisterActivity.this.showDialog(RegisterActivity.this.messageBody);
                }
                else
                {
                  RegisterActivity.this.onRegisterSuccess();
                  RegisterActivity.this.onLogin();
                }
              }
            }
            catch (Exception localException)
            {
              break label39;
            }
          }
          
          public void onError(HttpGroup.HttpError paramAnonymousHttpError)
          {
            RegisterActivity.this.showDialog(RegisterActivity.this.getText(2131165724).toString());
          }
          
          public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
          
          public void onStart()
          {
            RegisterActivity.this.bThreadStop = false;
          }
        });
        localHttpSetting.setNotifyUser(true);
        getHttpGroupaAsynPool().add(localHttpSetting);
        return;
      }
      catch (JSONException localJSONException) {}
      localException = localException;
      return;
    }
  }
  
  private void onRegisterSuccess()
  {
    post(new Runnable()
    {
      public void run()
      {
        Toast.makeText(RegisterActivity.this, 2131165738, 0).show();
      }
    });
  }
  
  private void popupToast(final String paramString)
  {
    post(new Runnable()
    {
      public void run()
      {
        Toast.makeText(RegisterActivity.this, paramString, 1).show();
      }
    });
  }
  
  private void verifyUserMailAddr()
  {
    this.bVerifiedMail = false;
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("email", this.mRegisterMail.getText());
      HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setFunctionId("validate");
      localHttpSetting.setJsonParams(localJSONObject);
      localHttpSetting.setListener(new HttpGroup.OnAllListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          try
          {
            final String str = paramAnonymousHttpResponse.getJSONObject().getString("userName");
            if (str.length() < 1) {
              RegisterActivity.this.mRegisterMail.setError(JDStringUtils.getErrorSpanned(RegisterActivity.this.getApplicationContext(), 2131165724));
            }
            for (;;)
            {
              label40:
              RegisterActivity.this.bThreadStop = true;
              return;
              if (str.contains(RegisterActivity.this.getString(2131165728)))
              {
                RegisterActivity.this.bVerifiedMail = true;
              }
              else
              {
                RegisterActivity.this.bVerifiedMail = false;
                RegisterActivity.this.post(new Runnable()
                {
                  public void run()
                  {
                    RegisterActivity.this.mRegisterMail.setError(JDStringUtils.getErrorSpanned(str));
                  }
                });
              }
            }
          }
          catch (Exception localException)
          {
            break label40;
          }
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError)
        {
          RegisterActivity.this.bVerifiedMail = true;
        }
        
        public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
        
        public void onStart()
        {
          RegisterActivity.this.bThreadStop = false;
        }
      });
      getHttpGroupaAsynPool().add(localHttpSetting);
      return;
    }
    catch (JSONException localJSONException) {}
  }
  
  private void verifyUserName()
  {
    this.bVerifiedName = false;
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("userName", this.mRegisterName.getText());
      HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setFunctionId("validate");
      localHttpSetting.setJsonParams(localJSONObject);
      localHttpSetting.setPost(true);
      localHttpSetting.setListener(new HttpGroup.OnAllListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          for (;;)
          {
            try
            {
              str = paramAnonymousHttpResponse.getJSONObject().getString("userName");
              int i = str.length();
              if (i >= 1) {
                continue;
              }
            }
            catch (Exception localException)
            {
              final String str;
              continue;
            }
            RegisterActivity.this.bThreadStop = true;
            return;
            if (str.contains(RegisterActivity.this.getString(2131165728)))
            {
              RegisterActivity.this.bVerifiedName = true;
            }
            else
            {
              RegisterActivity.this.bVerifiedName = false;
              RegisterActivity.this.post(new Runnable()
              {
                public void run()
                {
                  RegisterActivity.this.mRegisterName.setError(JDStringUtils.getErrorSpanned(str));
                }
              });
            }
          }
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError)
        {
          RegisterActivity.this.bVerifiedName = false;
        }
        
        public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
        
        public void onStart()
        {
          RegisterActivity.this.bThreadStop = false;
        }
      });
      getHttpGroupaAsynPool().add(localHttpSetting);
      return;
    }
    catch (JSONException localJSONException) {}
  }
  
  protected void getRegisterUserInfo()
  {
    this.sRegName = this.mRegisterName.getText().toString();
    this.sRegMailAddr = this.mRegisterMail.getText().toString();
    this.sRegPwd1 = this.mRegisterFirstPwd.getText().toString();
    this.sRegPwd2 = this.mRegisterSecondPwd.getText().toString();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903282);
    initBtn();
    initTextView();
    initCheckBox();
    this.mTitle = ((TextView)findViewById(2131492990));
    this.mTitle.setText("普通用户注册");
  }
  
  protected void onResume()
  {
    super.onResume();
    if (LoginUserBase.hasLogin()) {
      post(new Runnable()
      {
        public void run()
        {
          RegisterActivity.this.finish();
        }
      });
    }
  }
  
  void showDialog(String paramString)
  {
    final AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(2131165714);
    localBuilder.setMessage(paramString);
    localBuilder.setPositiveButton(2131166076, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.dismiss();
      }
    });
    post(new Runnable()
    {
      public void run()
      {
        localBuilder.show();
      }
    });
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.register.RegisterActivity
 * JD-Core Version:    0.7.0.1
 */