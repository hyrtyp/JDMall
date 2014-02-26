package com.jingdong.app.mall;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import android.provider.Settings.System;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpGroupSetting;
import com.jingdong.common.utils.HttpGroup.HttpGroupaAsynPool;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.StatisticsReportUtil;
import org.json.JSONObject;

public class ErrorActivity
  extends Activity
{
  private Button btnCancel;
  private Button btnSubmit;
  private CheckBox checkBox;
  private EditText editText;
  private String errorStr;
  private boolean isKill = true;
  private boolean isRestart;
  private ProgressDialog loading;
  private String msg;
  private TextView textView;
  private String user;
  
  private void doPost(String paramString, JSONObject paramJSONObject)
  {
    try
    {
      HttpGroup.HttpGroupSetting localHttpGroupSetting = new HttpGroup.HttpGroupSetting();
      localHttpGroupSetting.setPriority(1000);
      localHttpGroupSetting.setType(1000);
      HttpGroup.HttpGroupaAsynPool localHttpGroupaAsynPool = new HttpGroup.HttpGroupaAsynPool(localHttpGroupSetting);
      HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setFunctionId(paramString);
      localHttpSetting.setJsonParams(paramJSONObject);
      localHttpSetting.setListener(new HttpGroup.OnAllListener()
      {
        private void restart()
        {
          if (ErrorActivity.this.isRestart()) {
            ErrorActivity.this.startActivity(new Intent(ErrorActivity.this, MainActivity.class));
          }
          ErrorActivity.this.killProcess();
        }
        
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          restart();
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError)
        {
          restart();
        }
        
        public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
        
        public void onStart() {}
      });
      localHttpGroupaAsynPool.add(localHttpSetting);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  private boolean isContainsPlug()
  {
    return (this.errorStr != null) && ((this.errorStr.contains("PersonelPlugFragment")) || (this.errorStr.contains("MoreFragment")) || (this.errorStr.contains("ProductDetailPlugFragment")) || (this.errorStr.contains("MyFragment")));
  }
  
  private boolean isRestart()
  {
    if (this.checkBox != null) {
      return this.isRestart;
    }
    return false;
  }
  
  private void killProcess()
  {
    finish();
    Process.killProcess(Process.myPid());
    System.exit(0);
  }
  
  private void myOnClick(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      this.errorStr = (this.editText.getText() + "|| version code: " + StatisticsReportUtil.getSoftwareVersionCode() + " ||" + this.errorStr);
      if (isContainsPlug()) {
        this.errorStr = (CommonUtil.getString(2131166552) + " | " + this.errorStr);
      }
      onSubmitError();
      return;
    }
    killProcess();
  }
  
  private void onActivity()
  {
    View.OnClickListener local2 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ErrorActivity.this.myOnClick(0);
      }
    };
    View.OnClickListener local3 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ErrorActivity.this.myOnClick(-1);
      }
    };
    this.btnSubmit.setOnClickListener(local2);
    this.btnCancel.setOnClickListener(local3);
    this.textView.setText(this.textView.getText() + "||" + this.msg);
  }
  
  private void onDialog(View paramView)
  {
    new AlertDialog.Builder(this).setView(paramView).setMessage(this.msg).setTitle(2131166156).setPositiveButton(2131166157, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        ErrorActivity.this.myOnClick(0);
      }
    }).setNegativeButton(2131166158, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        ErrorActivity.this.myOnClick(-1);
      }
    }).setOnKeyListener(new DialogInterface.OnKeyListener()
    {
      public boolean onKey(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if (paramAnonymousInt == 4) {}
        while (paramAnonymousInt == 84) {
          return true;
        }
        return false;
      }
    }).show();
  }
  
  private void onSubmitError()
  {
    try
    {
      final JSONObject localJSONObject = new JSONObject();
      if (this.errorStr.length() > 20000) {
        this.errorStr = this.errorStr.substring(0, 20000);
      }
      localJSONObject.put("msg", this.errorStr);
      localJSONObject.put("partner", Configuration.getProperty("partner"));
      this.loading = ProgressDialog.show(this, null, getString(2131166159));
      this.loading.setOnKeyListener(new DialogInterface.OnKeyListener()
      {
        public boolean onKey(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
        {
          if (paramAnonymousInt == 4) {
            paramAnonymousDialogInterface.dismiss();
          }
          return false;
        }
      });
      new Thread()
      {
        public void run()
        {
          setName("ErrorActivity_onSubmitError");
          ErrorActivity.this.isKill = false;
          ErrorActivity.this.doPost("crash", localJSONObject);
        }
      }.start();
      if (!this.isRestart) {
        break label229;
      }
      Toast.makeText(this, getString(2131166160), 1).show();
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      if (!this.isRestart) {
        break label164;
      }
      Toast.makeText(this, getString(2131166160), 1).show();
      for (;;)
      {
        finish();
        return;
        label164:
        Toast.makeText(this, getString(2131166161), 1).show();
      }
    }
    finally
    {
      for (;;)
      {
        if (this.isRestart) {
          Toast.makeText(this, getString(2131166160), 1).show();
        }
        for (;;)
        {
          finish();
          throw localObject;
          Toast.makeText(this, getString(2131166161), 1).show();
        }
        label229:
        Toast.makeText(this, getString(2131166161), 1).show();
      }
    }
    finish();
  }
  
  private void setSettingTime()
  {
    try
    {
      int i = CommonUtil.getIntFromPreference("sleep_setting_time", 0);
      if ((i > 0) && (Settings.System.putInt(getContentResolver(), "screen_off_timeout", i))) {
        CommonUtil.putIntToPreference("sleep_setting_time", 0);
      }
      return;
    }
    catch (Throwable localThrowable) {}
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().setFlags(1024, 1024);
    requestWindowFeature(1);
    this.user = getIntent().getStringExtra("user");
    this.errorStr = getIntent().getStringExtra("error");
    if (isContainsPlug()) {
      CommonUtil.setPlugOn(false);
    }
    setSettingTime();
    this.msg = getString(2131166155);
    if (0 != 0)
    {
      setTheme(16973835);
      setContentView(2130903059);
      findViewById(2131493022).setVisibility(0);
      this.textView = ((TextView)findViewById(2131493019));
      this.btnSubmit = ((Button)findViewById(2131493023));
      this.btnCancel = ((Button)findViewById(2131493024));
      this.checkBox = ((CheckBox)findViewById(2131493020));
      this.editText = ((EditText)findViewById(2131493021));
      onActivity();
    }
    for (;;)
    {
      this.checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
      {
        public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          ErrorActivity.this.isRestart = paramAnonymousBoolean;
        }
      });
      Toast.makeText(this, this.msg, 1).show();
      return;
      setContentView(2130903040);
      findViewById(2131492884).setVisibility(8);
      View localView = ImageUtil.inflate(2130903059, null);
      this.editText = ((EditText)localView.findViewById(2131493021));
      this.checkBox = ((CheckBox)localView.findViewById(2131493020));
      this.isRestart = this.checkBox.isChecked();
      onDialog(localView);
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    killProcess();
    return false;
  }
  
  protected void onStop()
  {
    if (this.isKill) {
      killProcess();
    }
    super.onStop();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.ErrorActivity
 * JD-Core Version:    0.7.0.1
 */