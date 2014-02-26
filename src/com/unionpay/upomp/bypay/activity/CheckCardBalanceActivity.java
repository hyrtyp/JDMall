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
import com.unionpay.upomp.bypay.other.dh;
import com.unionpay.upomp.bypay.other.eh;
import com.unionpay.upomp.bypay.other.ek;
import com.unionpay.upomp.bypay.util.Utils;

public class CheckCardBalanceActivity
  extends Activity
  implements View.OnClickListener
{
  private static Button jdField_c_of_type_AndroidWidgetButton;
  private Button jdField_a_of_type_AndroidWidgetButton;
  private TextView jdField_a_of_type_AndroidWidgetTextView;
  private String jdField_a_of_type_JavaLangString = "";
  private Button jdField_b_of_type_AndroidWidgetButton;
  private String jdField_b_of_type_JavaLangString = "";
  private String jdField_c_of_type_JavaLangString = "";
  
  public static void a()
  {
    jdField_c_of_type_AndroidWidgetButton.setText("");
  }
  
  private void b()
  {
    Utils.a(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "tv_header"), getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_cardmanage")));
    this.jdField_a_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "tv_card_id_content_cb")));
    this.jdField_a_of_type_AndroidWidgetTextView.setText(Utils.a(eh.e[eh.u], 6, 4));
    this.jdField_a_of_type_JavaLangString = eh.e[eh.u];
    this.jdField_c_of_type_JavaLangString = eh.f[eh.u];
    jdField_c_of_type_AndroidWidgetButton = (Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_card_pass_balance"));
    jdField_c_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_a_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_check_cb")));
    this.jdField_a_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_b_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_return_cb")));
    this.jdField_b_of_type_AndroidWidgetButton.setOnClickListener(this);
  }
  
  public void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_check_cb"))
    {
      this.jdField_b_of_type_JavaLangString = jdField_c_of_type_AndroidWidgetButton.getText().toString();
      if (Utils.k(this.jdField_b_of_type_JavaLangString).booleanValue()) {}
    }
    do
    {
      return;
      try
      {
        this.jdField_b_of_type_JavaLangString = dh.a(this.jdField_b_of_type_JavaLangString, this.jdField_a_of_type_JavaLangString, eh.v);
        new ek(this).execute(new Integer[0]);
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException.printStackTrace();
        }
      }
      if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_return_cb"))
      {
        switch (eh.d)
        {
        default: 
          return;
        case 0: 
          localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, CardMainActivity.class);
          eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
          eh.jdField_a_of_type_AndroidAppActivity.finish();
          return;
        case 1: 
          localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, AccountMainActivity.class);
          eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
          eh.jdField_a_of_type_AndroidAppActivity.finish();
          return;
        }
        localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, GetpassActivity.class);
        eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
        eh.jdField_a_of_type_AndroidAppActivity.finish();
        return;
      }
    } while (paramView.getId() != Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_card_pass_balance"));
    Utils.a(this, findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_card_pass_balance")), Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_card_pass_balance"), 12, true, null, null, getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_cardpsw_hint")));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    eh.p = 2;
    setContentView(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "layout", "upomp_bypay_card_balance"));
    eh.jdField_a_of_type_AndroidContentContext = this;
    eh.jdField_a_of_type_AndroidAppActivity = this;
    b();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      Intent localIntent = new Intent();
      localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, CardInfoActivity.class);
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
 * Qualified Name:     com.unionpay.upomp.bypay.activity.CheckCardBalanceActivity
 * JD-Core Version:    0.7.0.1
 */