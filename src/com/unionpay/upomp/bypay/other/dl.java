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
import com.unionpay.upomp.bypay.activity.GetpassActivity;
import com.unionpay.upomp.bypay.util.Utils;

public class dl
  implements View.OnFocusChangeListener
{
  public dl(GetpassActivity paramGetpassActivity) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    new Intent();
    if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_username_getpass")) && (paramView.isFocused())) {
      GetpassActivity.a(this.a, 0);
    }
    do
    {
      return;
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_telnum_getpass")) && (paramView.isFocused()))
      {
        GetpassActivity.a(this.a, 1);
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_validcode_getpass")) && (paramView.isFocused()))
      {
        GetpassActivity.a(this.a, 2);
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_validcode_getpass")) && (paramView.isFocused()))
      {
        GetpassActivity.a(this.a, 2);
        if (eh.h.booleanValue())
        {
          GetpassActivity.a(this.a, GetpassActivity.a().getText().toString());
          if (Utils.n(GetpassActivity.a(this.a)).booleanValue())
          {
            GetpassActivity.a(this.a).setText("60");
            eh.a.b(GetpassActivity.a(this.a));
            new cb(this.a).execute(new Integer[0]);
          }
          GetpassActivity.b().setText("");
          GetpassActivity.b().requestFocus();
          ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(GetpassActivity.b(), 2);
          return;
        }
        ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(GetpassActivity.b(), 2);
        Utils.a(this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_please")) + eh.v + this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_sendMac")));
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_webvalidcode_getpass")) && (paramView.isFocused()))
      {
        GetpassActivity.a(this.a, 3);
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "iv_webvalidcode_getpass")) && (paramView.isFocused()))
      {
        GetpassActivity.a(this.a, 3);
        GetpassActivity.a().setVisibility(8);
        GetpassActivity.a().setVisibility(0);
        Utils.a(GetpassActivity.a(), GetpassActivity.a());
        GetpassActivity.c().setText("");
        GetpassActivity.c().requestFocus();
        ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(GetpassActivity.c(), 2);
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_question_result_getpass")) && (paramView.isFocused()))
      {
        GetpassActivity.a(this.a, 4);
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_newpass_getpass")) && (paramView.isFocused()))
      {
        GetpassActivity.a(this.a, 5);
        Utils.a(this.a, this.a.findViewById(Utils.getResourceId(Utils.a, "id", "btn_newpass_getpass")), Utils.getResourceId(Utils.a, "id", "btn_newpass_getpass"), 12, true, null, GetpassActivity.a(), this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_utils_inputnewpsw_hint")));
        return;
      }
    } while ((paramView.getId() != Utils.getResourceId(Utils.a, "id", "btn_confirm_newpass_getpass")) || (!paramView.isFocused()));
    GetpassActivity.a(this.a, 6);
    Utils.a(this.a, this.a.findViewById(Utils.getResourceId(Utils.a, "id", "btn_confirm_newpass_getpass")), Utils.getResourceId(Utils.a, "id", "btn_confirm_newpass_getpass"), 12, true, null, null, this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_utils_inputenternewpsw_hint")));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.dl
 * JD-Core Version:    0.7.0.1
 */