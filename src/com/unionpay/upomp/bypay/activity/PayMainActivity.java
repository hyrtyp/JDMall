package com.unionpay.upomp.bypay.activity;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.unionpay.upomp.bypay.other.eh;
import com.unionpay.upomp.bypay.util.Utils;

public class PayMainActivity
  extends Activity
  implements View.OnClickListener
{
  private Button jdField_a_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_a_of_type_AndroidWidgetRelativeLayout;
  private TextView jdField_a_of_type_AndroidWidgetTextView;
  private Boolean jdField_a_of_type_JavaLangBoolean = Boolean.valueOf(true);
  private Button jdField_b_of_type_AndroidWidgetButton;
  private TextView jdField_b_of_type_AndroidWidgetTextView;
  private Boolean jdField_b_of_type_JavaLangBoolean = Boolean.valueOf(true);
  private TextView c;
  private TextView d;
  private TextView e;
  private TextView f;
  
  private String a(String paramString)
  {
    char[] arrayOfChar = paramString.toCharArray();
    String str = "";
    for (int i = 0;; i++)
    {
      if (i >= arrayOfChar.length) {
        return str;
      }
      str = str + arrayOfChar[i];
      if (i == 3) {
        str = str + "-";
      }
      if (i == 5) {
        str = str + "-";
      }
      if (i == 7) {
        str = str + " ";
      }
      if (i == 9) {
        str = str + ":";
      }
      if (i == 11) {
        str = str + ":";
      }
    }
  }
  
  private void a()
  {
    Utils.a(Utils.getResourceId(Utils.a, "id", "tv_header"), getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_pay_main_tradeverify")));
    this.jdField_a_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.a, "id", "rl_pay_main_content")));
    this.jdField_a_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
    this.jdField_a_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_merchant_name_content")));
    this.jdField_b_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_order_id_content")));
    this.c = ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_order_time_content")));
    this.d = ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_summary_price_content")));
    this.e = ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_trading_currency_content")));
    this.f = ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_transaction_types_content")));
    this.jdField_a_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.a, "id", "btn_pay")));
    this.jdField_a_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_b_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.a, "id", "btn_exit")));
    this.jdField_b_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_a_of_type_AndroidWidgetTextView.setText(eh.as);
    this.jdField_b_of_type_AndroidWidgetTextView.setText(eh.an);
    this.d.setText(Utils.l(eh.ao) + getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_yuan")));
    this.c.setText(a(eh.ap));
    this.e.setText(eh.aq);
    this.f.setText(eh.ar);
  }
  
  public void onClick(View paramView)
  {
    if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_pay")) && (this.jdField_a_of_type_JavaLangBoolean.booleanValue()))
    {
      this.jdField_a_of_type_JavaLangBoolean = Boolean.valueOf(false);
      localIntent = new Intent();
      eh.n = "1";
      eh.k = 0;
      localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, PayItActivity.class);
      eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
      eh.jdField_a_of_type_AndroidAppActivity.finish();
    }
    while ((paramView.getId() != Utils.getResourceId(Utils.a, "id", "btn_exit")) || (!this.jdField_b_of_type_JavaLangBoolean.booleanValue()))
    {
      Intent localIntent;
      return;
    }
    Utils.b();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(Utils.getResourceId(Utils.a, "layout", "upomp_bypay_pay_main"));
    eh.jdField_a_of_type_AndroidContentContext = this;
    eh.jdField_a_of_type_AndroidAppActivity = this;
    a();
    eh.p = 0;
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0)) {
      Utils.b();
    }
    return false;
  }
  
  protected void onResume()
  {
    super.onResume();
    eh.c = true;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.activity.PayMainActivity
 * JD-Core Version:    0.7.0.1
 */