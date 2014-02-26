package com.unionpay.upomp.bypay.other;

import android.content.Intent;
import android.content.res.Resources;
import android.text.Editable;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import com.unionpay.upomp.bypay.activity.EditinfoActivity;
import com.unionpay.upomp.bypay.util.Utils;

public class ej
  implements View.OnFocusChangeListener
{
  public ej(EditinfoActivity paramEditinfoActivity) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    new Intent();
    if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_telnum_old_editinfo")) && (paramView.isFocused())) {
      EditinfoActivity.a(this.a, 0);
    }
    do
    {
      return;
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_telnum_new_editinfo")) && (paramView.isFocused()))
      {
        EditinfoActivity.a(this.a, 1);
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_validcode_editinfo")) && (paramView.isFocused()))
      {
        EditinfoActivity.a(this.a, 2);
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_validcode_editinfo")) && (paramView.isFocused()))
      {
        EditinfoActivity.a(this.a, 2);
        if (eh.h.booleanValue())
        {
          String str = EditinfoActivity.a().getText().toString();
          EditinfoActivity.a(this.a, EditinfoActivity.b().getText().toString());
          if ((EditinfoActivity.a(this.a).equals(str)) && (EditinfoActivity.a(this.a) != null) && (EditinfoActivity.a(this.a).equals("")))
          {
            Utils.showOKDialog(this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_error")), this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_editinfoactivity_nochange")));
            return;
          }
          if (Utils.n(EditinfoActivity.a(this.a)).booleanValue())
          {
            EditinfoActivity.a(this.a).setText("60");
            eh.a.b(EditinfoActivity.a(this.a));
            new cw(this.a).execute(new Integer[0]);
          }
          EditinfoActivity.c().setText("");
          EditinfoActivity.c().requestFocus();
          ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(EditinfoActivity.c(), 2);
          return;
        }
        ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(EditinfoActivity.c(), 2);
        Utils.a(this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_please")) + eh.v + this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_sendMac")));
        return;
      }
    } while ((paramView.getId() != Utils.getResourceId(Utils.a, "id", "et_userpass_editinfo")) || (!paramView.isFocused()));
    EditinfoActivity.a(this.a, 3);
    Utils.a(this.a, this.a.findViewById(Utils.getResourceId(Utils.a, "id", "et_userpass_editinfo")), Utils.getResourceId(Utils.a, "id", "et_userpass_editinfo"), 12, true, EditinfoActivity.a(), null, this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_utils_inputpsw_hint")));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.ej
 * JD-Core Version:    0.7.0.1
 */