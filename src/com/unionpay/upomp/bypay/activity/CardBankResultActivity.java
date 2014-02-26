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

public class CardBankResultActivity
  extends Activity
  implements View.OnClickListener
{
  private Button jdField_a_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_a_of_type_AndroidWidgetRelativeLayout;
  private TextView jdField_a_of_type_AndroidWidgetTextView;
  private Button jdField_b_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_b_of_type_AndroidWidgetRelativeLayout;
  private TextView jdField_b_of_type_AndroidWidgetTextView;
  private TextView c;
  private TextView d;
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_return_card_bank_result"))
    {
      localIntent1 = new Intent();
      if (eh.j)
      {
        localIntent1.setClass(eh.jdField_a_of_type_AndroidContentContext, PayItActivity.class);
        eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent1);
        eh.jdField_a_of_type_AndroidAppActivity.finish();
      }
    }
    while (paramView.getId() != Utils.getResourceId(Utils.a, "id", "btn_continue_card_bank_result"))
    {
      Intent localIntent1;
      return;
      localIntent1.setClass(eh.jdField_a_of_type_AndroidContentContext, CardMainActivity.class);
      eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent1);
      eh.jdField_a_of_type_AndroidAppActivity.finish();
      return;
    }
    Intent localIntent2 = new Intent();
    localIntent2.setClass(eh.jdField_a_of_type_AndroidContentContext, AddCardActivity.class);
    eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent2);
    eh.jdField_a_of_type_AndroidAppActivity.finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    eh.p = 2;
    setContentView(Utils.getResourceId(Utils.a, "layout", "upomp_bypay_card_bank_result"));
    eh.jdField_a_of_type_AndroidContentContext = this;
    eh.jdField_a_of_type_AndroidAppActivity = this;
    Utils.a(Utils.getResourceId(Utils.a, "id", "tv_header"), getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_addcard")));
    this.jdField_a_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.a, "id", "rl_card_bank_result_success")));
    this.jdField_b_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.a, "id", "rl_card_bank_result_failure")));
    this.jdField_a_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_type_card_bank_result_content")));
    this.jdField_b_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_pan_card_bank_result_content")));
    this.c = ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_tel_card_bank_result_content")));
    this.d = ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_card_bank_result_failure_content")));
    this.jdField_a_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.a, "id", "btn_return_card_bank_result")));
    this.jdField_a_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_b_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.a, "id", "btn_continue_card_bank_result")));
    this.jdField_b_of_type_AndroidWidgetButton.setOnClickListener(this);
    if (eh.b.booleanValue())
    {
      this.jdField_a_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
      this.jdField_b_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_a_of_type_AndroidWidgetTextView.setText(eh.aC);
      this.jdField_b_of_type_AndroidWidgetTextView.setText(Utils.a(eh.aA, 6, 4));
      this.c.setText(Utils.a(eh.aB, 3, 3));
      return;
    }
    this.jdField_a_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_b_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
    this.d.setText(getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_failcause")) + eh.d + getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_gantan")));
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    Intent localIntent;
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      localIntent = new Intent();
      if (eh.j)
      {
        localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, PayItActivity.class);
        eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
        eh.jdField_a_of_type_AndroidAppActivity.finish();
      }
    }
    else
    {
      return false;
    }
    localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, CardMainActivity.class);
    eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
    eh.jdField_a_of_type_AndroidAppActivity.finish();
    return false;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.activity.CardBankResultActivity
 * JD-Core Version:    0.7.0.1
 */