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
import com.unionpay.upomp.bypay.activity.PayItActivity;
import com.unionpay.upomp.bypay.util.Utils;

public class fz
  implements View.OnFocusChangeListener
{
  public fz(PayItActivity paramPayItActivity) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    new Intent();
    if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "spnr_bank_vc_pay_valuecard")) && (paramView.isFocused()))
    {
      PayItActivity.c(this.a, 0);
      paramView.showContextMenu();
    }
    do
    {
      return;
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_card_id_content_vc_pay_valuecard")) && (paramView.isFocused()))
      {
        if (this.a.c) {
          ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(paramView, 2);
        }
        PayItActivity.c(this.a, 1);
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_card_pass_content_vc_pay_valuecard")) && (paramView.isFocused()))
      {
        PayItActivity.c(this.a, 2);
        ((InputMethodManager)this.a.getSystemService("input_method")).hideSoftInputFromWindow(PayItActivity.e().getWindowToken(), 0);
        Utils.a(eh.jdField_a_of_type_AndroidContentContext, eh.jdField_a_of_type_AndroidAppActivity.findViewById(Utils.getResourceId(Utils.a, "id", "btn_card_pass_content_vc_pay_valuecard")), Utils.getResourceId(Utils.a, "id", "btn_card_pass_content_vc_pay_valuecard"), 6, false, PayItActivity.g(), null, this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_utils_valuecardpsw_hint")));
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_webvalidcode_content_pay_valuecard")) && (paramView.isFocused()))
      {
        PayItActivity.c(this.a, 3);
        return;
      }
    } while ((paramView.getId() != Utils.getResourceId(Utils.a, "id", "iv_webvalidcode_content_pay_valuecard")) || (!paramView.isFocused()));
    PayItActivity.c(this.a, 3);
    PayItActivity.d().setVisibility(8);
    PayItActivity.d().setVisibility(0);
    Utils.a(PayItActivity.d(), PayItActivity.d());
    PayItActivity.g().setText("");
    PayItActivity.g().requestFocus();
    ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(PayItActivity.g(), 2);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.fz
 * JD-Core Version:    0.7.0.1
 */