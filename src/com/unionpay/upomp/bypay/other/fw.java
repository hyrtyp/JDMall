package com.unionpay.upomp.bypay.other;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.AsyncTask;
import com.unionpay.upomp.bypay.activity.AddCardActivity;
import com.unionpay.upomp.bypay.activity.CardBankResultActivity;
import com.unionpay.upomp.bypay.util.Utils;
import java.text.SimpleDateFormat;
import java.util.Date;

public class fw
  extends AsyncTask
{
  String jdField_a_of_type_JavaLangString;
  
  public fw(AddCardActivity paramAddCardActivity)
  {
    this.jdField_a_of_type_JavaLangString = Utils.a(eh.O, AddCardActivity.a(paramAddCardActivity), AddCardActivity.b(paramAddCardActivity), AddCardActivity.c(paramAddCardActivity), "", AddCardActivity.d(paramAddCardActivity), AddCardActivity.e(paramAddCardActivity), AddCardActivity.f(paramAddCardActivity), AddCardActivity.g(paramAddCardActivity), AddCardActivity.h(paramAddCardActivity));
  }
  
  protected ab a(Integer... paramVarArgs)
  {
    try
    {
      this.jdField_a_of_type_JavaLangString = Utils.c(this.jdField_a_of_type_JavaLangString);
      af localaf = Utils.a("aIFpfWl9aXllg2SIZIhohmiIaHtogmiFaH5peWh6aYJkh2l+aIdogmiIaIdpeWh6aYJpfGh+aHxpfml7aH5kh2h8aIhohmSIaXppg2iDaYJkiGaAaHppfWh+Z4BoemmCZIhofWh+aHpohWSHaHpofGl9aIJoiGiH", this.jdField_a_of_type_JavaLangString);
      eh.jdField_a_of_type_ComUnionpayUpompBypayOtherAf = localaf;
      eh.jdField_a_of_type_ComUnionpayUpompBypayOtherFv = new fv(eh.jdField_a_of_type_AndroidContentContext);
      eh.jdField_a_of_type_ComUnionpayUpompBypayOtherFv.a(localaf);
      i = 0;
      if ((eh.aM != null) || (!eh.jdField_a_of_type_Boolean))
      {
        if (eh.jdField_a_of_type_Boolean) {
          break label140;
        }
        return null;
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        int i;
        localException.printStackTrace();
        continue;
        if ((eh.jdField_a_of_type_ComUnionpayUpompBypayOtherAf == null) || (i > 240))
        {
          eh.jdField_a_of_type_ComUnionpayUpompBypayOtherAf = null;
          eh.e = new SimpleDateFormat("mmssSSS").format(new Date());
          return null;
        }
        i++;
        try
        {
          Thread.sleep(500L);
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
      }
      label140:
      if ((eh.aM != null) && (!Utils.b(eh.aM)))
      {
        eh.aM = null;
        return null;
      }
      ae.jdField_a_of_type_JavaLangString = "bindbankcard_tag";
      ab localab = ((dw)ae.a(eh.aM, new dw())).a();
      eh.aM = null;
      return localab;
    }
  }
  
  protected void a(ab paramab)
  {
    
    if (!eh.jdField_a_of_type_Boolean) {
      return;
    }
    if (paramab == null)
    {
      if (AddCardActivity.c(this.jdField_a_of_type_ComUnionpayUpompBypayActivityAddCardActivity).equals("00")) {
        AddCardActivity.a();
      }
      for (;;)
      {
        Utils.showOKDialog(this.jdField_a_of_type_ComUnionpayUpompBypayActivityAddCardActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), this.jdField_a_of_type_ComUnionpayUpompBypayActivityAddCardActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_linkerror")));
        return;
        AddCardActivity.b();
      }
    }
    if (paramab.a().equals("0000"))
    {
      if (AddCardActivity.c(this.jdField_a_of_type_ComUnionpayUpompBypayActivityAddCardActivity).equals("00")) {}
      for (eh.aC = this.jdField_a_of_type_ComUnionpayUpompBypayActivityAddCardActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_debitcard"));; eh.aC = this.jdField_a_of_type_ComUnionpayUpompBypayActivityAddCardActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_creditcard")))
      {
        eh.aA = AddCardActivity.d(this.jdField_a_of_type_ComUnionpayUpompBypayActivityAddCardActivity);
        eh.aB = AddCardActivity.a(this.jdField_a_of_type_ComUnionpayUpompBypayActivityAddCardActivity);
        eh.jdField_b_of_type_JavaLangBoolean = Boolean.valueOf(true);
        eh.jdField_d_of_type_Int = 1;
        Intent localIntent2 = new Intent();
        localIntent2.setClass(eh.jdField_a_of_type_AndroidContentContext, CardBankResultActivity.class);
        eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent2);
        eh.jdField_a_of_type_AndroidAppActivity.finish();
        return;
      }
    }
    if (paramab.a().equals("5309"))
    {
      if (eh.j)
      {
        eh.jdField_d_of_type_Boolean = true;
        eh.jdField_b_of_type_Int = 1;
      }
      for (eh.c = 0;; eh.c = 0)
      {
        Utils.showOKDialog(this.jdField_a_of_type_ComUnionpayUpompBypayActivityAddCardActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), paramab.b() + "|" + paramab.a());
        return;
        eh.jdField_d_of_type_Boolean = true;
        eh.jdField_b_of_type_Int = 0;
      }
    }
    eh.jdField_b_of_type_JavaLangBoolean = Boolean.valueOf(false);
    eh.jdField_d_of_type_JavaLangString = paramab.b();
    eh.jdField_d_of_type_Int = 1;
    Intent localIntent1 = new Intent();
    localIntent1.setClass(eh.jdField_a_of_type_AndroidContentContext, CardBankResultActivity.class);
    eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent1);
    eh.jdField_a_of_type_AndroidAppActivity.finish();
  }
  
  protected void onPreExecute()
  {
    eh.jdField_a_of_type_JavaLangString = "addcard";
    Utils.b(eh.jdField_a_of_type_AndroidContentContext, 0);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.fw
 * JD-Core Version:    0.7.0.1
 */