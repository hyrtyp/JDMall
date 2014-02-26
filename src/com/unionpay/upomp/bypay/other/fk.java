package com.unionpay.upomp.bypay.other;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.text.Editable;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.unionpay.upomp.bypay.activity.PayItActivity;
import com.unionpay.upomp.bypay.util.Utils;

public class fk
  implements View.OnFocusChangeListener
{
  public fk(PayItActivity paramPayItActivity) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    new Intent();
    if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_telnum_content_pay_normal_1")) && (paramView.isFocused())) {
      PayItActivity.a(this.a, 0);
    }
    do
    {
      do
      {
        return;
        if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_mobilevalidcode_pay_normal_1")) && (paramView.isFocused()))
        {
          PayItActivity.a(this.a, 1);
          return;
        }
        if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_mobilevalidcode_pay_normal_1")) && (paramView.isFocused()))
        {
          if (eh.h.booleanValue())
          {
            eh.S = PayItActivity.a().getText().toString();
            if ((eh.l != null) && (!eh.l.equals("")) && ((eh.S == null) || (eh.S.equals("")))) {
              eh.S = eh.l;
            }
            if (Utils.n(eh.S).booleanValue())
            {
              PayItActivity.a(this.a).setText("60");
              eh.jdField_a_of_type_ComUnionpayUpompBypayOtherCt.b(PayItActivity.a(this.a));
              new ay(this.a).execute(new Integer[0]);
            }
            PayItActivity.b().setText("");
            PayItActivity.b().requestFocus();
            ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(PayItActivity.b(), 2);
          }
          for (;;)
          {
            PayItActivity.a(this.a, 1);
            return;
            ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(PayItActivity.b(), 2);
            Utils.a(this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_please")) + eh.v + this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_sendMac")));
          }
        }
        if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_webvalidcode_content_pay_normal_2_1")) && (paramView.isFocused()))
        {
          PayItActivity.a(this.a, 10);
          return;
        }
        if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "iv_webvalidcode_content_pay_normal_2_1")) && (paramView.isFocused()))
        {
          PayItActivity.a().setVisibility(8);
          PayItActivity.a().setVisibility(0);
          Utils.a(PayItActivity.a(), PayItActivity.a());
          PayItActivity.c().setText("");
          PayItActivity.c().requestFocus();
          ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(PayItActivity.c(), 2);
          PayItActivity.a(this.a, 10);
          return;
        }
        if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_webvalidcode_content_pay_normal_2_2")) && (paramView.isFocused()))
        {
          PayItActivity.a(this.a, 11);
          return;
        }
        if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "iv_webvalidcode_content_pay_normal_2_2")) && (paramView.isFocused()))
        {
          PayItActivity.b().setVisibility(8);
          PayItActivity.b().setVisibility(0);
          Utils.a(PayItActivity.b(), PayItActivity.b());
          PayItActivity.d().setText("");
          PayItActivity.d().requestFocus();
          ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(PayItActivity.d(), 2);
          PayItActivity.a(this.a, 11);
          return;
        }
        if ((paramView.getId() != Utils.getResourceId(Utils.a, "id", "et_card_id_content_pay_normal_2_1")) || (!paramView.isFocused())) {
          break;
        }
        PayItActivity.a(this.a, 4);
      } while (!this.a.a);
      ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(paramView, 2);
      return;
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_card_pass_content_pay_normal_2_1")) && (paramView.isFocused()))
      {
        PayItActivity.a(this.a, 5);
        ((InputMethodManager)this.a.getSystemService("input_method")).hideSoftInputFromWindow(PayItActivity.b().getWindowToken(), 0);
        Utils.a(eh.jdField_a_of_type_AndroidContentContext, eh.jdField_a_of_type_AndroidAppActivity.findViewById(Utils.getResourceId(Utils.a, "id", "btn_card_pass_content_pay_normal_2_1")), Utils.getResourceId(Utils.a, "id", "btn_card_pass_content_pay_normal_2_1"), 6, false, PayItActivity.c(), null, this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_utils_cardpsw_hint")));
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_card_id_content_pay_normal_2_2")) && (paramView.isFocused()))
      {
        if (this.a.b) {
          ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(paramView, 2);
        }
        PayItActivity.a(this.a, 6);
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_mm_pay_normal_2_2")) && (paramView.isFocused()))
      {
        PayItActivity.a(this.a, 7);
        paramView.showContextMenu();
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_yy_pay_normal_2_2")) && (paramView.isFocused()))
      {
        PayItActivity.a(this.a, 7);
        paramView.showContextMenu();
        return;
      }
    } while ((paramView.getId() != Utils.getResourceId(Utils.a, "id", "et_cvn2_content_pay_normal_2_2")) || (!paramView.isFocused()));
    ((InputMethodManager)this.a.getSystemService("input_method")).hideSoftInputFromWindow(PayItActivity.c().getWindowToken(), 0);
    PayItActivity.a(this.a, 8);
    Utils.a(this.a, this.a.findViewById(Utils.getResourceId(Utils.a, "id", "et_cvn2_content_pay_normal_2_2")), Utils.getResourceId(Utils.a, "id", "et_cvn2_content_pay_normal_2_2"), 3, false, PayItActivity.d(), null, this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_utils_cvn2_hint")));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.fk
 * JD-Core Version:    0.7.0.1
 */