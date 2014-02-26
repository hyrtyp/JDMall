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
import com.unionpay.upomp.bypay.activity.AddCardActivity;
import com.unionpay.upomp.bypay.util.Utils;

public class aa
  implements View.OnFocusChangeListener
{
  public aa(AddCardActivity paramAddCardActivity) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    new Intent();
    if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_card_id_content_add_card")) && (paramView.isFocused()))
    {
      AddCardActivity.a(this.a, 1);
      if (AddCardActivity.a(this.a).booleanValue())
      {
        AddCardActivity.a(this.a, Boolean.valueOf(true));
        ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(paramView, 2);
      }
    }
    do
    {
      return;
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_card_pass_content_add_card")) && (paramView.isFocused()))
      {
        AddCardActivity.a(this.a, 2);
        ((InputMethodManager)this.a.getSystemService("input_method")).hideSoftInputFromWindow(AddCardActivity.c().getWindowToken(), 0);
        Utils.a(eh.jdField_a_of_type_AndroidContentContext, eh.jdField_a_of_type_AndroidAppActivity.findViewById(Utils.getResourceId(Utils.a, "id", "btn_card_pass_content_add_card")), Utils.getResourceId(Utils.a, "id", "btn_card_pass_content_add_card"), 6, false, AddCardActivity.a(), null, this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_utils_cardpsw_hint")));
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_mm_add_card")) && (paramView.isFocused()))
      {
        AddCardActivity.a(this.a, 3);
        paramView.showContextMenu();
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_yy_add_card")) && (paramView.isFocused()))
      {
        AddCardActivity.a(this.a, 3);
        paramView.showContextMenu();
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_cvn2_content_add_card")) && (paramView.isFocused()))
      {
        ((InputMethodManager)this.a.getSystemService("input_method")).hideSoftInputFromWindow(AddCardActivity.d().getWindowToken(), 0);
        AddCardActivity.a(this.a, 4);
        Utils.a(this.a, this.a.findViewById(Utils.getResourceId(Utils.a, "id", "et_cvn2_content_add_card")), Utils.getResourceId(Utils.a, "id", "et_cvn2_content_add_card"), 3, false, AddCardActivity.a(), null, this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_utils_cvn2_hint")));
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "tv_telnum_content_add_card")) && (paramView.isFocused()))
      {
        AddCardActivity.a(this.a, 5);
        return;
      }
      if ((paramView.getId() == Utils.getResourceId(Utils.a, "id", "et_mobilevalidcode_add_card")) && (paramView.isFocused()))
      {
        AddCardActivity.a(this.a, 6);
        return;
      }
    } while ((paramView.getId() != Utils.getResourceId(Utils.a, "id", "btn_mobilevalidcode_add_card")) || (!paramView.isFocused()));
    AddCardActivity.a(this.a, 6);
    if (eh.h.booleanValue())
    {
      String str = AddCardActivity.a().getText().toString();
      if (str.length() == 0) {
        str = eh.R;
      }
      if (Utils.n(str).booleanValue())
      {
        AddCardActivity.e().setText("60");
        eh.jdField_a_of_type_ComUnionpayUpompBypayOtherCt.b(AddCardActivity.e());
        new fn(this.a).execute(new Integer[0]);
      }
      AddCardActivity.b().setText("");
      AddCardActivity.b().requestFocus();
      ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(AddCardActivity.b(), 2);
      return;
    }
    ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(AddCardActivity.b(), 2);
    Utils.a(this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_please")) + eh.v + this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_sendMac")));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.aa
 * JD-Core Version:    0.7.0.1
 */