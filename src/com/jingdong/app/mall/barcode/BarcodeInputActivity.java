package com.jingdong.app.mall.barcode;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.lib.zxing.client.android.CaptureActivity;

public class BarcodeInputActivity
  extends MyActivity
{
  private Button cancelButton;
  private EditText contentEdit;
  private Button okButton;
  
  private void findView()
  {
    this.contentEdit = ((EditText)findViewById(2131493175));
    this.okButton = ((Button)findViewById(2131493176));
    this.cancelButton = ((Button)findViewById(2131493177));
  }
  
  private void init()
  {
    this.okButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        BarcodeInputActivity.this.submit();
      }
    });
    this.cancelButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        BarcodeInputActivity.this.finish();
      }
    });
  }
  
  private void submit()
  {
    String str = this.contentEdit.getText();
    if ("".equals(str))
    {
      Toast.makeText(this, 2131165640, 0).show();
      return;
    }
    Intent localIntent = new Intent(this, BarcodeActivity.class);
    localIntent.putExtra("SCAN_RESULT", str);
    localIntent.putExtra("SCAN_RESULT_FORMAT", "input");
    localIntent.putExtra("com.jingdong.lib.zxing.client.android.SCAN", 2);
    startActivity(localIntent);
    CaptureActivity.closeScanApp();
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903085);
    findView();
    init();
    ((TextView)findViewById(2131492990)).setText("输入二维码/条码");
  }
  
  protected void onResume()
  {
    super.onResume();
    post(new Runnable()
    {
      public void run()
      {
        ((InputMethodManager)BarcodeInputActivity.this.getApplicationContext().getSystemService("input_method")).toggleSoftInput(0, 2);
      }
    }, 100);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.barcode.BarcodeInputActivity
 * JD-Core Version:    0.7.0.1
 */