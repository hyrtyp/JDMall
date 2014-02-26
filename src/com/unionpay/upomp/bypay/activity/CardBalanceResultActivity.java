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

public class CardBalanceResultActivity
  extends Activity
  implements View.OnClickListener
{
  private Button jdField_a_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_a_of_type_AndroidWidgetRelativeLayout;
  private TextView jdField_a_of_type_AndroidWidgetTextView;
  private RelativeLayout jdField_b_of_type_AndroidWidgetRelativeLayout;
  private TextView jdField_b_of_type_AndroidWidgetTextView;
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_return_card_balance_result"))
    {
      Intent localIntent = new Intent();
      localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, CardMainActivity.class);
      eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
      eh.jdField_a_of_type_AndroidAppActivity.finish();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    eh.p = 2;
    setContentView(Utils.getResourceId(Utils.a, "layout", "upomp_bypay_card_balance_result"));
    eh.jdField_a_of_type_AndroidContentContext = this;
    eh.jdField_a_of_type_AndroidAppActivity = this;
    Utils.a(Utils.getResourceId(Utils.a, "id", "tv_header"), getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_cardmanage")));
    this.jdField_a_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.a, "id", "rl_card_balance_result_success")));
    this.jdField_b_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.a, "id", "rl_card_balance_result_failure")));
    this.jdField_a_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_card_balance_result_success_content")));
    this.jdField_b_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_card_balance_result_success_title")));
    this.jdField_a_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.a, "id", "btn_return_card_balance_result")));
    this.jdField_a_of_type_AndroidWidgetButton.setOnClickListener(this);
    if (eh.jdField_a_of_type_JavaLangBoolean.booleanValue())
    {
      this.jdField_a_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
      this.jdField_b_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_b_of_type_AndroidWidgetTextView.setText(getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_balanceresult_balancesucceed")));
      this.jdField_a_of_type_AndroidWidgetTextView.setText(getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_balanceresult_balancenumber")) + eh.c + getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_balanceresult_yuan")));
      return;
    }
    this.jdField_a_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
    this.jdField_b_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_b_of_type_AndroidWidgetTextView.setText(getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_balanceresult_balancefail")));
    this.jdField_a_of_type_AndroidWidgetTextView.setText(getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_failcause")) + eh.c + getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_gantan")));
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
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.activity.CardBalanceResultActivity
 * JD-Core Version:    0.7.0.1
 */