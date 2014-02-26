package com.unionpay.upomp.bypay.other;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.unionpay.upomp.bypay.activity.GetpassActivity;
import com.unionpay.upomp.bypay.activity.PayItActivity;
import com.unionpay.upomp.bypay.activity.RegisterActivity;
import com.unionpay.upomp.bypay.util.Utils;

public class fu
  implements View.OnFocusChangeListener
{
  public fu(PayItActivity paramPayItActivity) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    Intent localIntent = new Intent();
    if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_username_content_pay_auth_1")) && (paramView.isFocused())) {
      PayItActivity.b(this.a, 0);
    }
    do
    {
      return;
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_register_pay_auth_1")) && (paramView.isFocused()))
      {
        PayItActivity.b(this.a, 0);
        eh.f = Boolean.valueOf(true);
        eh.q = 1;
        localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, RegisterActivity.class);
        eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
        eh.jdField_a_of_type_AndroidAppActivity.finish();
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_pass_content_pay_auth_1")) && (paramView.isFocused()))
      {
        PayItActivity.b(this.a, 1);
        ((InputMethodManager)this.a.getSystemService("input_method")).hideSoftInputFromWindow(PayItActivity.d().getWindowToken(), 0);
        Utils.a(eh.jdField_a_of_type_AndroidContentContext, eh.jdField_a_of_type_AndroidAppActivity.findViewById(Utils.getResourceId(Utils.a, "id", "btn_pass_content_pay_auth_1")), Utils.getResourceId(Utils.a, "id", "btn_pass_content_pay_auth_1"), 12, true, PayItActivity.e(), null, this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_utils_inputpsw_hint")));
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_getpass_pay_auth_1")) && (paramView.isFocused()))
      {
        eh.g = Boolean.valueOf(true);
        eh.q = 1;
        localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, GetpassActivity.class);
        eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
        eh.jdField_a_of_type_AndroidAppActivity.finish();
        PayItActivity.b(this.a, 1);
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_webvalidcode_content_pay_auth_1")) && (paramView.isFocused()))
      {
        PayItActivity.b(this.a, 2);
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "iv_webvalidcode_content_pay_auth_1")) && (paramView.isFocused()))
      {
        PayItActivity.b(this.a, 2);
        PayItActivity.c().setVisibility(8);
        PayItActivity.c().setVisibility(0);
        Utils.a(PayItActivity.c(), PayItActivity.c());
        PayItActivity.e().setText("");
        PayItActivity.e().requestFocus();
        ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(PayItActivity.e(), 2);
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_choose_card_pay_auth_2")) && (paramView.isFocused()))
      {
        paramView.showContextMenu();
        PayItActivity.b(this.a, 3);
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_mobilevalidcode_content_pay_auth_2")) && (paramView.isFocused()))
      {
        PayItActivity.b(this.a, 5);
        return;
      }
    } while ((paramView.getId() != Utils.getResourceId(Utils.a, "id", "btn_mobilevalidcode_content_pay_auth_2")) || (!paramView.isFocused()));
    PayItActivity.b(this.a, 5);
    if (eh.h.booleanValue())
    {
      eh.h = Boolean.valueOf(false);
      if (Utils.n(eh.S).booleanValue())
      {
        PayItActivity.b(this.a).setText("60");
        eh.jdField_a_of_type_ComUnionpayUpompBypayOtherCt.b(PayItActivity.b(this.a));
        new cl(this.a).execute(new Integer[0]);
      }
      PayItActivity.f().setText("");
      PayItActivity.f().requestFocus();
      ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(PayItActivity.f(), 2);
      return;
    }
    ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(PayItActivity.f(), 2);
    Utils.a(this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_please")) + eh.v + this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_sendMac")));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.fu
 * JD-Core Version:    0.7.0.1
 */