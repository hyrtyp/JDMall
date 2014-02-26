package com.unionpay.upomp.bypay.activity;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.unionpay.upomp.bypay.other.bi;
import com.unionpay.upomp.bypay.other.bk;
import com.unionpay.upomp.bypay.other.bm;
import com.unionpay.upomp.bypay.other.bp;
import com.unionpay.upomp.bypay.other.eh;
import com.unionpay.upomp.bypay.util.Utils;

public class CardInfoActivity
  extends Activity
  implements View.OnClickListener
{
  private Button jdField_a_of_type_AndroidWidgetButton;
  private TextView jdField_a_of_type_AndroidWidgetTextView;
  private Boolean jdField_a_of_type_JavaLangBoolean = Boolean.valueOf(true);
  private Button jdField_b_of_type_AndroidWidgetButton;
  private TextView jdField_b_of_type_AndroidWidgetTextView;
  private Button jdField_c_of_type_AndroidWidgetButton;
  private TextView jdField_c_of_type_AndroidWidgetTextView;
  private Button jdField_d_of_type_AndroidWidgetButton;
  private TextView jdField_d_of_type_AndroidWidgetTextView;
  
  private void a()
  {
    Utils.a(Utils.getResourceId(Utils.a, "id", "tv_header"), getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_cardmanage")));
    this.jdField_a_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.a, "id", "btn_del_card_info")));
    this.jdField_a_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_b_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.a, "id", "btn_default_card_info")));
    if ((eh.g[eh.jdField_e_of_type_Int].equals("1")) || (eh.jdField_b_of_type_JavaLangString.equals("1")))
    {
      this.jdField_b_of_type_AndroidWidgetButton.setBackgroundResource(Utils.getResourceId(Utils.a, "drawable", "upomp_bypay_card_btn_1a"));
      this.jdField_a_of_type_JavaLangBoolean = Boolean.valueOf(false);
    }
    this.jdField_b_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_c_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.a, "id", "btn_balance_card_info")));
    this.jdField_c_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_d_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.a, "id", "btn_return_card_info")));
    this.jdField_d_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_d_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_pay_alert_content_card_info")));
    this.jdField_d_of_type_AndroidWidgetTextView.setText(getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_cardinfo_hint1")));
    this.jdField_a_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_card_id_content")));
    this.jdField_a_of_type_AndroidWidgetTextView.setText(eh.jdField_b_of_type_ArrayOfJavaLangString[eh.jdField_e_of_type_Int]);
    this.jdField_b_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_card_type_content")));
    String str;
    if (eh.c[eh.jdField_e_of_type_Int].equals("00")) {
      str = getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_debitcard"));
    }
    for (;;)
    {
      this.jdField_b_of_type_AndroidWidgetTextView.setText(str);
      this.jdField_c_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_card_num_content")));
      eh.aG = eh.jdField_b_of_type_ArrayOfJavaLangString[eh.jdField_e_of_type_Int];
      eh.aC = eh.c[eh.jdField_e_of_type_Int];
      eh.aD = eh.jdField_e_of_type_ArrayOfJavaLangString[eh.jdField_e_of_type_Int];
      eh.aE = eh.jdField_d_of_type_ArrayOfJavaLangString[eh.jdField_e_of_type_Int];
      eh.aF = eh.g[eh.jdField_e_of_type_Int];
      this.jdField_c_of_type_AndroidWidgetTextView.setText(Utils.a(eh.aD, 6, 4));
      return;
      if (eh.c[eh.jdField_e_of_type_Int].equals("01"))
      {
        str = getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_creditcard"));
        this.jdField_d_of_type_AndroidWidgetTextView.setText(getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_cardinfo_hint2")));
      }
      else
      {
        str = getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_cardunknown"));
      }
    }
  }
  
  public void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    if (paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_del_card_info")) {
      new AlertDialog.Builder(eh.jdField_a_of_type_AndroidContentContext).setTitle(getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_removecard"))).setMessage(getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_affirmremovecard")) + eh.aG + " " + Utils.b(eh.aC) + " " + Utils.a(eh.aD, 4) + "]").setPositiveButton(getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_affirm")), new bi(this)).setNegativeButton(getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_cancel")), new bk(this)).show();
    }
    do
    {
      return;
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_default_card_info")) && (this.jdField_a_of_type_JavaLangBoolean.booleanValue()))
      {
        new AlertDialog.Builder(eh.jdField_a_of_type_AndroidContentContext).setTitle(getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_changedefultcard"))).setMessage(getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_affirmchangedefultcard")) + eh.aG + " " + Utils.b(eh.aC) + " " + Utils.a(eh.aD, 4) + "]").setPositiveButton(getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_affirm")), new bm(this)).setNegativeButton(getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_cancel")), new bp(this)).show();
        return;
      }
      if (paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_balance_card_info"))
      {
        eh.jdField_d_of_type_Byte = 0;
        localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, CheckCardBalanceActivity.class);
        eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
        eh.jdField_a_of_type_AndroidAppActivity.finish();
        return;
      }
    } while (paramView.getId() != Utils.getResourceId(Utils.a, "id", "btn_return_card_info"));
    localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, CardMainActivity.class);
    eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
    eh.jdField_a_of_type_AndroidAppActivity.finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    eh.p = 2;
    setContentView(Utils.getResourceId(Utils.a, "layout", "upomp_bypay_card_info"));
    eh.jdField_a_of_type_AndroidContentContext = this;
    eh.jdField_a_of_type_AndroidAppActivity = this;
    a();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      Intent localIntent = new Intent();
      localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, CardMainActivity.class);
      eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
      eh.jdField_a_of_type_AndroidAppActivity.finish();
    }
    return false;
  }
  
  public void onResume()
  {
    super.onResume();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.activity.CardInfoActivity
 * JD-Core Version:    0.7.0.1
 */