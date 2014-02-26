package com.jingdong.app.mall.register;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.frame.ScrollableTabActivity;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JDStringUtils;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.PrintStream;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONException;

public class QuickRegisterLoginActivity
  extends MyActivity
{
  public static final String RESEND_FLAG = "com.360buy:loginResendFlag";
  public static final int TO_MY_JD = 1;
  private final int TIME_LONG = 120;
  private int TIME_TAG = 120;
  private AlertDialog alertDialog;
  private TextView mTitle;
  private MyActivity myActivity;
  private String phoneNumber;
  QuickRegisterLoginListener quickRegisterLoginListener = new QuickRegisterLoginListener(this.quickRegisterLoginStatusListener, this)
  {
    public boolean checkInputs()
    {
      return QuickRegisterLoginActivity.this.inputCheck(getPassword());
    }
    
    public String getPassword()
    {
      return QuickRegisterLoginActivity.this.registerPwdEditText.getText().toString();
    }
    
    public String getPhone()
    {
      return QuickRegisterLoginActivity.this.phoneNumber;
    }
  };
  QuickRegisterLoginListener.QuickRegisterLoginStatusListener quickRegisterLoginStatusListener = new QuickRegisterLoginListener.QuickRegisterLoginStatusListener()
  {
    public void onFailed(String paramAnonymousString)
    {
      QuickRegisterLoginActivity.this.LoginError(paramAnonymousString);
    }
    
    public void onSuccess(String paramAnonymousString1, String paramAnonymousString2)
    {
      QuickRegisterLoginActivity.this.myActivity.post(new Runnable()
      {
        public void run()
        {
          QuickRegisterLoginActivity.this.afterSuccess();
        }
      });
    }
  };
  private EditText registerPwdEditText;
  private Button registerPwdLoginButton;
  private Button registerResendButton;
  private TimerTask task;
  private TextView timeTextView;
  private Timer timer;
  
  private void LoginError(final String paramString)
  {
    post(new Runnable()
    {
      public void run()
      {
        try
        {
          AlertDialog.Builder localBuilder = new AlertDialog.Builder(QuickRegisterLoginActivity.this);
          localBuilder.setTitle(2131165704);
          if ("".equals(paramString)) {
            localBuilder.setMessage(2131165706);
          }
          for (;;)
          {
            localBuilder.setPositiveButton(2131165517, new DialogInterface.OnClickListener()
            {
              public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                QuickRegisterLoginActivity.this.alertDialog.dismiss();
              }
            });
            QuickRegisterLoginActivity.this.alertDialog = localBuilder.show();
            return;
            localBuilder.setMessage(paramString);
          }
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    });
  }
  
  private void newTwoMinutesTimeCount()
  {
    this.registerResendButton.setEnabled(false);
    this.TIME_TAG = 120;
    this.timeTextView.setText("您可以在" + this.TIME_TAG + "秒后重新请求");
    this.timeTextView.setVisibility(0);
  }
  
  private boolean passWordCheck()
  {
    boolean bool1 = TextUtils.isEmpty(this.registerPwdEditText.getText().toString().trim());
    boolean bool2 = false;
    if (bool1)
    {
      bool2 = true;
      this.registerPwdEditText.setError(JDStringUtils.getErrorSpanned(getApplicationContext(), 2131165709));
    }
    return bool2;
  }
  
  private void resendError(final String paramString)
  {
    post(new Runnable()
    {
      public void run()
      {
        try
        {
          AlertDialog.Builder localBuilder = new AlertDialog.Builder(QuickRegisterLoginActivity.this);
          localBuilder.setTitle("短信发送错误");
          if ("".equals(paramString)) {
            localBuilder.setMessage("");
          }
          for (;;)
          {
            localBuilder.setPositiveButton(2131165517, new DialogInterface.OnClickListener()
            {
              public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                QuickRegisterLoginActivity.this.alertDialog.dismiss();
              }
            });
            QuickRegisterLoginActivity.this.alertDialog = localBuilder.show();
            return;
            localBuilder.setMessage(paramString);
          }
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    });
  }
  
  public void afterSuccess()
  {
    ScrollableTabActivity localScrollableTabActivity = (ScrollableTabActivity)getParent();
    if (localScrollableTabActivity != null) {
      localScrollableTabActivity.removeRecordSecond();
    }
    finish();
  }
  
  public boolean inputCheck(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      this.registerPwdEditText.setError(JDStringUtils.getErrorSpanned(getApplicationContext(), 2131166340));
      return false;
    }
    return true;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.myActivity = this;
    setContentView(2130903278);
    this.registerPwdEditText = ((EditText)findViewById(2131494380));
    this.registerPwdLoginButton = ((Button)findViewById(2131494381));
    this.registerResendButton = ((Button)findViewById(2131494385));
    this.registerResendButton.setEnabled(false);
    this.phoneNumber = getIntent().getExtras().getString("phoneNumber");
    this.mTitle = ((TextView)findViewById(2131492990));
    this.mTitle.setText("快速注册");
    this.timeTextView = ((TextView)findViewById(2131494386));
    this.timer = new Timer();
    this.task = new TimerTask()
    {
      public void run()
      {
        if (QuickRegisterLoginActivity.this.TIME_TAG == 0)
        {
          QuickRegisterLoginActivity.this.post(new Runnable()
          {
            public void run()
            {
              QuickRegisterLoginActivity.this.registerResendButton.setEnabled(true);
              QuickRegisterLoginActivity.this.timeTextView.setVisibility(8);
            }
          });
          return;
        }
        QuickRegisterLoginActivity localQuickRegisterLoginActivity = QuickRegisterLoginActivity.this;
        localQuickRegisterLoginActivity.TIME_TAG = (-1 + localQuickRegisterLoginActivity.TIME_TAG);
        QuickRegisterLoginActivity.this.post(new Runnable()
        {
          public void run()
          {
            QuickRegisterLoginActivity.this.timeTextView.setText(String.valueOf("您可以在" + QuickRegisterLoginActivity.this.TIME_TAG + "秒后重新请求"));
          }
        });
      }
    };
    this.timer.schedule(this.task, 0L, 1000L);
    if (Boolean.valueOf(getIntent().getBooleanExtra("newNumber", false)).booleanValue()) {
      newTwoMinutesTimeCount();
    }
    for (;;)
    {
      ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(this.registerPwdEditText.getWindowToken(), 0);
      this.registerResendButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
          localHttpSetting.putJsonParam("mobileNum", QuickRegisterLoginActivity.this.phoneNumber);
          localHttpSetting.setNotifyUser(true);
          localHttpSetting.setFunctionId("regMobileNum");
          localHttpSetting.setListener(new HttpGroup.OnAllListener()
          {
            public void onEnd(HttpGroup.HttpResponse paramAnonymous2HttpResponse)
            {
              paramAnonymous2HttpResponse.getCode();
              JSONObjectProxy localJSONObjectProxy = paramAnonymous2HttpResponse.getJSONObject();
              String str1 = "";
              String str2 = "获取验证密码失败";
              Boolean localBoolean = Boolean.valueOf(false);
              try
              {
                if (!localJSONObjectProxy.has("randomPwd"))
                {
                  localBoolean = Boolean.valueOf(true);
                  if (!localBoolean.booleanValue()) {
                    QuickRegisterLoginActivity.this.post(new Runnable()
                    {
                      public void run()
                      {
                        QuickRegisterLoginActivity.this.newTwoMinutesTimeCount();
                      }
                    });
                  }
                  System.out.println("random" + str1);
                  if (!localBoolean.booleanValue()) {}
                }
              }
              catch (JSONException localJSONException1)
              {
                try
                {
                  for (;;)
                  {
                    str2 = (String)localJSONObjectProxy.get("message");
                    QuickRegisterLoginActivity.this.resendError(str2);
                    if (str2.contains("ip")) {
                      QuickRegisterLoginActivity.this.post(new Runnable()
                      {
                        public void run()
                        {
                          QuickRegisterLoginActivity.this.registerResendButton.setEnabled(false);
                        }
                      });
                    }
                    return;
                    str1 = (String)localJSONObjectProxy.get("randomPwd");
                  }
                  localJSONException1 = localJSONException1;
                  localBoolean = Boolean.valueOf(true);
                  localJSONException1.printStackTrace();
                }
                catch (JSONException localJSONException2)
                {
                  for (;;)
                  {
                    localJSONException2.printStackTrace();
                  }
                }
              }
            }
            
            public void onError(HttpGroup.HttpError paramAnonymous2HttpError) {}
            
            public void onProgress(int paramAnonymous2Int1, int paramAnonymous2Int2) {}
            
            public void onStart() {}
          });
          QuickRegisterLoginActivity.this.getHttpGroupaAsynPool().add(localHttpSetting);
        }
      });
      this.registerPwdLoginButton.setOnClickListener(this.quickRegisterLoginListener);
      return;
      this.registerResendButton.setEnabled(true);
      this.TIME_TAG = 0;
      this.timeTextView.setVisibility(8);
    }
  }
  
  protected void onResume()
  {
    super.onResume();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.register.QuickRegisterLoginActivity
 * JD-Core Version:    0.7.0.1
 */