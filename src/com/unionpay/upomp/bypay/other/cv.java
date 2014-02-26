package com.unionpay.upomp.bypay.other;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.unionpay.upomp.bypay.activity.GetpassActivity;
import com.unionpay.upomp.bypay.activity.LoginActivity;
import com.unionpay.upomp.bypay.util.Utils;

public class cv
  implements View.OnFocusChangeListener
{
  public cv(LoginActivity paramLoginActivity) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    Intent localIntent = new Intent();
    if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_username_login")) && (paramView.isFocused())) {
      LoginActivity.a(this.a, 0);
    }
    do
    {
      return;
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_userpass_login")) && (paramView.isFocused()))
      {
        LoginActivity.a(this.a, 1);
        Utils.a(this.a, this.a.findViewById(Utils.getResourceId(Utils.a, "id", "et_userpass_login")), Utils.getResourceId(Utils.a, "id", "et_userpass_login"), 12, true, LoginActivity.a(), null, this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_utils_inputpsw_hint")));
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_getpass")) && (paramView.isFocused()))
      {
        eh.f = Boolean.valueOf(false);
        localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, GetpassActivity.class);
        eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
        eh.jdField_a_of_type_AndroidAppActivity.finish();
        LoginActivity.a(this.a, 1);
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_webvalidcode_login")) && (paramView.isFocused()))
      {
        LoginActivity.a(this.a, 2);
        return;
      }
    } while ((paramView.getId() != Utils.getResourceId(Utils.a, "id", "iv_webvalidcode_login")) || (!paramView.isFocused()));
    LoginActivity.a(this.a, 2);
    LoginActivity.a().setVisibility(8);
    LoginActivity.a().setVisibility(0);
    Utils.a(LoginActivity.a(), LoginActivity.a());
    LoginActivity.a().setText("");
    LoginActivity.a().requestFocus();
    ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(LoginActivity.a(), 2);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.cv
 * JD-Core Version:    0.7.0.1
 */