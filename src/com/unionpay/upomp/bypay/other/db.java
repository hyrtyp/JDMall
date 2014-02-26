package com.unionpay.upomp.bypay.other;

import android.content.Intent;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import com.unionpay.upomp.bypay.activity.EditpassActivity;
import com.unionpay.upomp.bypay.util.Utils;

public class db
  implements View.OnFocusChangeListener
{
  public db(EditpassActivity paramEditpassActivity) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    new Intent();
    if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_userpass_old_editpass")) && (paramView.isFocused()))
    {
      EditpassActivity.a(this.a, 0);
      Utils.a(this.a, this.a.findViewById(Utils.getResourceId(Utils.a, "id", "btn_userpass_old_editpass")), Utils.getResourceId(Utils.a, "id", "btn_userpass_old_editpass"), 12, true, null, EditpassActivity.a(), this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_editpassactivity_inputoldpsw_hint")));
    }
    do
    {
      return;
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_userpass_new_editpass")) && (paramView.isFocused()))
      {
        EditpassActivity.a(this.a, 1);
        Utils.a(this.a, this.a.findViewById(Utils.getResourceId(Utils.a, "id", "btn_userpass_new_editpass")), Utils.getResourceId(Utils.a, "id", "btn_userpass_new_editpass"), 12, true, null, EditpassActivity.b(), this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_utils_inputnewpsw_hint")));
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_userpass_re_editpass")) && (paramView.isFocused()))
      {
        EditpassActivity.a(this.a, 2);
        Utils.a(this.a, this.a.findViewById(Utils.getResourceId(Utils.a, "id", "btn_userpass_re_editpass")), Utils.getResourceId(Utils.a, "id", "btn_userpass_re_editpass"), 12, true, EditpassActivity.a(), null, this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_utils_inputenternewpsw_hint")));
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_validcode_editpass")) && (paramView.isFocused()))
      {
        EditpassActivity.a(this.a, 3);
        return;
      }
    } while ((paramView.getId() != Utils.getResourceId(Utils.a, "id", "btn_validcode_editpass")) || (!paramView.isFocused()));
    EditpassActivity.a(this.a, 3);
    if (eh.h.booleanValue())
    {
      eh.h = Boolean.valueOf(false);
      if (Utils.n(eh.R).booleanValue())
      {
        EditpassActivity.a(this.a).setText("60");
        eh.a.b(EditpassActivity.a(this.a));
        new em(this.a).execute(new Integer[0]);
      }
      for (;;)
      {
        EditpassActivity.a(this.a).setText("");
        EditpassActivity.a(this.a).requestFocus();
        ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(EditpassActivity.a(this.a), 2);
        return;
        eh.h = Boolean.valueOf(true);
      }
    }
    ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(EditpassActivity.a(this.a), 2);
    Utils.a(this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_please")) + eh.v + this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_sendMac")));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.db
 * JD-Core Version:    0.7.0.1
 */