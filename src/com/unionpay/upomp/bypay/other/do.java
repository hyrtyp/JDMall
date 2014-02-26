package com.unionpay.upomp.bypay.other;

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
import com.unionpay.upomp.bypay.activity.RegisterActivity;
import com.unionpay.upomp.bypay.util.Utils;

public class do
  implements View.OnFocusChangeListener
{
  public do(RegisterActivity paramRegisterActivity) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    new Intent();
    if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_username_register")) && (paramView.isFocused())) {
      RegisterActivity.a(this.a, 0);
    }
    do
    {
      return;
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_userpass_register")) && (paramView.isFocused()))
      {
        RegisterActivity.a(this.a, 1);
        Utils.a(this.a, this.a.findViewById(Utils.getResourceId(Utils.a, "id", "et_userpass_register")), Utils.getResourceId(Utils.a, "id", "et_userpass_register"), 12, true, null, RegisterActivity.a(), this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_utils_inputpsw_hint")));
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_userpass_re_register")) && (paramView.isFocused()))
      {
        RegisterActivity.a(this.a, 2);
        Utils.a(this.a, this.a.findViewById(Utils.getResourceId(Utils.a, "id", "et_userpass_re_register")), Utils.getResourceId(Utils.a, "id", "et_userpass_re_register"), 12, true, RegisterActivity.a(), null, this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_utils_inputenterpsw_hint")));
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_telnum_register")) && (paramView.isFocused()))
      {
        RegisterActivity.a(this.a, 3);
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_validcode_register")) && (paramView.isFocused()))
      {
        RegisterActivity.a(this.a, 4);
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_validcode_register")) && (paramView.isFocused()))
      {
        RegisterActivity.a(this.a, 4);
        if (eh.h.booleanValue())
        {
          if (Utils.n(RegisterActivity.a().getText().toString()).booleanValue())
          {
            RegisterActivity.b(this.a).setText("60");
            eh.a.b(RegisterActivity.b(this.a));
            new ba(this.a).execute(new Integer[0]);
          }
          RegisterActivity.b().setText("");
          RegisterActivity.b().requestFocus();
          ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(RegisterActivity.b(), 2);
          return;
        }
        ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(RegisterActivity.b(), 2);
        Utils.a(this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_please")) + eh.v + this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_sendMac")));
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_email_register")) && (paramView.isFocused()))
      {
        RegisterActivity.a(this.a, 5);
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_welcome_register")) && (paramView.isFocused()))
      {
        RegisterActivity.a(this.a, 6);
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "spnr_question_register")) && (paramView.isFocused()))
      {
        RegisterActivity.a(this.a, 7);
        paramView.showContextMenu();
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_question_register")) && (paramView.isFocused()))
      {
        RegisterActivity.a(this.a, 8);
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_result_register")) && (paramView.isFocused()))
      {
        RegisterActivity.a(this.a, 9);
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_webvalidcode_register")) && (paramView.isFocused()))
      {
        RegisterActivity.a(this.a, 10);
        return;
      }
    } while ((paramView.getId() != Utils.getResourceId(Utils.a, "id", "iv_webvalidcode_register")) || (!paramView.isFocused()));
    RegisterActivity.a(this.a, 10);
    RegisterActivity.a().setVisibility(8);
    RegisterActivity.a().setVisibility(0);
    Utils.a(RegisterActivity.a(), RegisterActivity.a());
    RegisterActivity.c().setText("");
    RegisterActivity.c().requestFocus();
    ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(RegisterActivity.c(), 2);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.do
 * JD-Core Version:    0.7.0.1
 */