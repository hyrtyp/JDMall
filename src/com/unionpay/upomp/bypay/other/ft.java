package com.unionpay.upomp.bypay.other;

import android.app.Activity;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.unionpay.upomp.bypay.activity.AddCardActivity;
import com.unionpay.upomp.bypay.activity.CardMainActivity;
import com.unionpay.upomp.bypay.activity.CheckCardBalanceActivity;
import com.unionpay.upomp.bypay.activity.EditinfoActivity;
import com.unionpay.upomp.bypay.activity.EditpassActivity;
import com.unionpay.upomp.bypay.activity.GetpassActivity;
import com.unionpay.upomp.bypay.activity.LoginActivity;
import com.unionpay.upomp.bypay.activity.PayItActivity;
import com.unionpay.upomp.bypay.activity.RegisterActivity;
import com.unionpay.upomp.bypay.util.Utils;

class ft
  implements View.OnClickListener
{
  ft(bg parambg) {}
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_loading_dialog"))
    {
      if (eh.jdField_a_of_type_ComUnionpayUpompBypayOtherAf == null) {
        break label56;
      }
      eh.jdField_a_of_type_ComUnionpayUpompBypayOtherAf.jdField_a_of_type_Boolean = true;
      eh.jdField_a_of_type_ComUnionpayUpompBypayOtherAf = null;
      if (!eh.jdField_a_of_type_JavaLangString.equals("login")) {
        break label69;
      }
      LoginActivity.a();
    }
    for (;;)
    {
      this.a.dismiss();
      return;
      label56:
      if (eh.m) {
        break;
      }
      eh.m = true;
      break;
      label69:
      if (eh.jdField_a_of_type_JavaLangString.equals("register"))
      {
        RegisterActivity.a();
      }
      else if (eh.jdField_a_of_type_JavaLangString.equals("getpass1"))
      {
        GetpassActivity.a();
      }
      else if (eh.jdField_a_of_type_JavaLangString.equals("getpass2"))
      {
        GetpassActivity.b();
      }
      else if (eh.jdField_a_of_type_JavaLangString.equals("editpass"))
      {
        EditpassActivity.a();
      }
      else if (eh.jdField_a_of_type_JavaLangString.equals("editinfo"))
      {
        EditinfoActivity.a();
      }
      else if (eh.jdField_a_of_type_JavaLangString.equals("checkcardbalance"))
      {
        CheckCardBalanceActivity.a();
      }
      else if (eh.jdField_a_of_type_JavaLangString.equals("addcard"))
      {
        if (eh.aC.equals(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_debitcard")))) {
          AddCardActivity.a();
        } else {
          AddCardActivity.b();
        }
      }
      else if (eh.jdField_a_of_type_JavaLangString.equals("checkcardbalance"))
      {
        CheckCardBalanceActivity.a();
      }
      else if (eh.jdField_a_of_type_JavaLangString.equals("payit"))
      {
        if (eh.n.equals("1"))
        {
          if (eh.o.equals("1")) {
            PayItActivity.b();
          } else if (eh.o.equals("2")) {
            PayItActivity.c();
          }
        }
        else if (eh.n.equals("2")) {
          PayItActivity.e();
        } else if (eh.n.equals("3")) {
          PayItActivity.f();
        }
      }
      else if (eh.jdField_a_of_type_JavaLangString.equals("cardmain"))
      {
        CardMainActivity.jdField_a_of_type_Boolean = true;
        CardMainActivity.jdField_a_of_type_AndroidWidgetButton.setText(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_updatelist")));
      }
      else if (eh.jdField_a_of_type_JavaLangString.equals("loginauth"))
      {
        PayItActivity.d();
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.ft
 * JD-Core Version:    0.7.0.1
 */