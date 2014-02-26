package com.unionpay.upomp.bypay.activity;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.unionpay.upomp.bypay.other.eh;
import com.unionpay.upomp.bypay.util.Utils;

public class AccountMainActivity
  extends Activity
  implements View.OnClickListener
{
  private Button a;
  private Button b;
  
  private void a()
  {
    Utils.a(Utils.getResourceId(Utils.a, "id", "tv_header"), getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_accountmainactivity_header")));
    ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_username_content_account"))).setText(eh.O);
    ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_telnum_content_account"))).setText(Utils.a(eh.R, 3, 3));
    ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_email_content_account"))).setText(eh.W);
    this.a = ((Button)findViewById(Utils.getResourceId(Utils.a, "id", "btn_editinfo_account")));
    this.a.setOnClickListener(this);
    this.b = ((Button)findViewById(Utils.getResourceId(Utils.a, "id", "btn_editpass_account")));
    this.b.setOnClickListener(this);
    ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_welcome_account"))).setText(getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_welcome")) + eh.X);
  }
  
  public void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    if (paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_editinfo_account"))
    {
      localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, EditinfoActivity.class);
      eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
      eh.jdField_a_of_type_AndroidAppActivity.finish();
    }
    while (paramView.getId() != Utils.getResourceId(Utils.a, "id", "btn_editpass_account")) {
      return;
    }
    localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, EditpassActivity.class);
    eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
    eh.jdField_a_of_type_AndroidAppActivity.finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    eh.p = 1;
    setContentView(Utils.getResourceId(Utils.a, "layout", "upomp_bypay_account_main"));
    eh.jdField_a_of_type_AndroidContentContext = this;
    eh.jdField_a_of_type_AndroidAppActivity = this;
    a();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0)) {
      Utils.b();
    }
    return false;
  }
  
  public void onResume()
  {
    super.onResume();
    eh.c = true;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.activity.AccountMainActivity
 * JD-Core Version:    0.7.0.1
 */