package com.jingdong.app.mall.register;

import android.app.AlertDialog;
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
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.utils.JDStringUtils;

public class QuickRegisterActivity
  extends MyActivity
{
  private CheckBox agreementCheckBox;
  private TextView agreementShowTextView;
  private AlertDialog alertDialog;
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
  private MyActivity myActivity;
  private String phoneNumber;
  private EditText phoneNumberEditText;
  QuickRegisterListener.QuickRegisterStatusListener qucikRegisterStatusListener = new QuickRegisterListener.QuickRegisterStatusListener()
  {
    public void onFailed(final String paramAnonymousString)
    {
      try
      {
        final AlertDialog.Builder localBuilder = new AlertDialog.Builder(QuickRegisterActivity.this);
        localBuilder.setTitle("注册失败");
        if ("".equals(paramAnonymousString)) {
          localBuilder.setMessage("异常操作");
        }
        for (;;)
        {
          QuickRegisterActivity.this.myActivity.post(new Runnable()
          {
            public void run()
            {
              if (paramAnonymousString.contains("请勿"))
              {
                localBuilder.setPositiveButton("去注册", new DialogInterface.OnClickListener()
                {
                  public void onClick(DialogInterface paramAnonymous3DialogInterface, int paramAnonymous3Int)
                  {
                    Intent localIntent = new Intent(QuickRegisterActivity.this, QuickRegisterLoginActivity.class);
                    Bundle localBundle = new Bundle();
                    localBundle.putString("phoneNumber", QuickRegisterActivity.this.phoneNumber);
                    localIntent.putExtras(localBundle);
                    localIntent.putExtra("newNumber", false);
                    localIntent.putExtra("com.360buy:navigationDisplayFlag", QuickRegisterActivity.this.getIntent().getIntExtra("com.360buy:navigationDisplayFlag", 0));
                    localIntent.putExtra("com.360buy:loginResendFlag", QuickRegisterActivity.this.getIntent().getIntExtra("com.360buy:loginResendFlag", -1));
                    QuickRegisterActivity.this.startActivityInFrame(localIntent);
                  }
                });
                localBuilder.setNegativeButton("取消", new DialogInterface.OnClickListener()
                {
                  public void onClick(DialogInterface paramAnonymous3DialogInterface, int paramAnonymous3Int)
                  {
                    QuickRegisterActivity.this.alertDialog.dismiss();
                  }
                });
              }
              for (;;)
              {
                QuickRegisterActivity.this.alertDialog = localBuilder.show();
                return;
                localBuilder.setPositiveButton("确定", new DialogInterface.OnClickListener()
                {
                  public void onClick(DialogInterface paramAnonymous3DialogInterface, int paramAnonymous3Int)
                  {
                    QuickRegisterActivity.this.alertDialog.dismiss();
                  }
                });
              }
            }
          });
          return;
          localBuilder.setMessage(paramAnonymousString);
        }
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    
    public void onSuccess(String paramAnonymousString)
    {
      QuickRegisterActivity.this.myActivity.post(new Runnable()
      {
        public void run()
        {
          Intent localIntent = new Intent(QuickRegisterActivity.this, QuickRegisterLoginActivity.class);
          Bundle localBundle = new Bundle();
          localBundle.putString("phoneNumber", QuickRegisterActivity.this.phoneNumber);
          localIntent.putExtras(localBundle);
          localIntent.putExtra("newNumber", true);
          localIntent.putExtra("com.360buy:loginResendFlag", QuickRegisterActivity.this.getIntent().getIntExtra("com.360buy:loginResendFlag", -1));
          localIntent.putExtra("com.360buy:navigationDisplayFlag", QuickRegisterActivity.this.getIntent().getIntExtra("com.360buy:navigationDisplayFlag", 0));
          QuickRegisterActivity.this.startActivityInFrame(localIntent);
        }
      });
    }
  };
  QuickRegisterListener quickRegisterListener = new QuickRegisterListener(this.qucikRegisterStatusListener, this)
  {
    public boolean checkInputs()
    {
      return QuickRegisterActivity.this.quickRegisterInputCheck();
    }
    
    public String getPhone()
    {
      return QuickRegisterActivity.this.phoneNumberEditText.getText().toString();
    }
  };
  private RelativeLayout quickRegisterToRegisterLayout;
  private String returnPwd;
  private String sRegMailAddr;
  private String sRegName;
  private String sRegPwd1;
  private String sRegPwd2;
  private String sRegUuid;
  private Button sendRegisterInfoButton;
  TextView showAgreement;
  
  private void initQuickRegisterElements()
  {
    this.myActivity = this;
    this.phoneNumberEditText = ((EditText)findViewById(2131494365));
    this.sendRegisterInfoButton = ((Button)findViewById(2131494368));
    this.quickRegisterToRegisterLayout = ((RelativeLayout)findViewById(2131494373));
    this.agreementShowTextView = ((TextView)findViewById(2131494367));
    this.agreementCheckBox = ((CheckBox)findViewById(2131494366));
    this.mTitle = ((TextView)findViewById(2131492990));
    this.mTitle.setText("快速注册");
    this.sendRegisterInfoButton.setOnClickListener(this.quickRegisterListener);
    this.agreementShowTextView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Intent localIntent = new Intent(QuickRegisterActivity.this, WebActivity.class);
        localIntent.putExtra("url", QuickRegisterActivity.this.getStringFromPreference("regiterAgreementUrl"));
        localIntent.putExtra("com.360buy:navigationDisplayFlag", QuickRegisterActivity.this.getIntent().getIntExtra("com.360buy:navigationDisplayFlag", 0));
        QuickRegisterActivity.this.startActivityInFrame(localIntent);
      }
    });
    this.agreementCheckBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean)
        {
          QuickRegisterActivity.this.sendRegisterInfoButton.setEnabled(true);
          QuickRegisterActivity.this.sendRegisterInfoButton.setTextColor(-16777216);
          return;
        }
        QuickRegisterActivity.this.sendRegisterInfoButton.setEnabled(false);
        QuickRegisterActivity.this.sendRegisterInfoButton.setTextColor(Color.rgb(153, 153, 153));
      }
    });
    this.quickRegisterToRegisterLayout.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Intent localIntent = new Intent(QuickRegisterActivity.this, RegisterActivity.class);
        localIntent.putExtra("com.360buy:navigationDisplayFlag", QuickRegisterActivity.this.getIntent().getIntExtra("com.360buy:navigationDisplayFlag", 0));
        localIntent.putExtra("com.360buy:loginResendFlag", QuickRegisterActivity.this.getIntent().getIntExtra("com.360buy:loginResendFlag", -1));
        QuickRegisterActivity.this.startActivityInFrame(localIntent);
      }
    });
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903277);
    initQuickRegisterElements();
  }
  
  protected void onResume()
  {
    super.onResume();
    if (LoginUserBase.hasLogin()) {
      finish();
    }
  }
  
  public boolean quickRegisterInputCheck()
  {
    this.phoneNumber = this.phoneNumberEditText.getText().toString();
    if (TextUtils.isEmpty(this.phoneNumber))
    {
      this.phoneNumberEditText.setError(JDStringUtils.getErrorSpanned(getApplicationContext(), 2131166339));
      return false;
    }
    return true;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.register.QuickRegisterActivity
 * JD-Core Version:    0.7.0.1
 */