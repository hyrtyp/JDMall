package com.unionpay.upomp.bypay.other;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.AsyncTask;
import com.unionpay.upomp.bypay.activity.CardBalanceResultActivity;
import com.unionpay.upomp.bypay.activity.CheckCardBalanceActivity;
import com.unionpay.upomp.bypay.util.Utils;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ek
  extends AsyncTask
{
  String jdField_a_of_type_JavaLangString;
  
  public ek(CheckCardBalanceActivity paramCheckCardBalanceActivity)
  {
    this.jdField_a_of_type_JavaLangString = Utils.c(eh.O, CheckCardBalanceActivity.a(paramCheckCardBalanceActivity), CheckCardBalanceActivity.b(paramCheckCardBalanceActivity), CheckCardBalanceActivity.c(paramCheckCardBalanceActivity));
  }
  
  protected d a(Integer... paramVarArgs)
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
      ae.jdField_a_of_type_JavaLangString = "checkcardbalance_tag";
      d locald = ((dw)ae.a(eh.aM, new dw())).a();
      eh.aM = null;
      return locald;
    }
  }
  
  protected void a(d paramd)
  {
    
    if (!eh.jdField_a_of_type_Boolean) {
      return;
    }
    if (paramd == null)
    {
      CheckCardBalanceActivity.a();
      Utils.showOKDialog(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCheckCardBalanceActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), this.jdField_a_of_type_ComUnionpayUpompBypayActivityCheckCardBalanceActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_linkerror")));
      return;
    }
    if (paramd.b().equals("0000"))
    {
      eh.jdField_a_of_type_JavaLangBoolean = Boolean.valueOf(true);
      eh.jdField_c_of_type_JavaLangString = paramd.a();
      Intent localIntent2 = new Intent();
      localIntent2.setClass(eh.jdField_a_of_type_AndroidContentContext, CardBalanceResultActivity.class);
      eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent2);
      eh.jdField_a_of_type_AndroidAppActivity.finish();
      return;
    }
    if (paramd.b().equals("5309"))
    {
      if (eh.j)
      {
        eh.d = true;
        eh.b = 1;
      }
      for (eh.jdField_c_of_type_Int = 0;; eh.jdField_c_of_type_Int = 0)
      {
        Utils.showOKDialog(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCheckCardBalanceActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), paramd.c() + "|" + paramd.b());
        return;
        eh.d = true;
        eh.b = 0;
      }
    }
    eh.jdField_a_of_type_JavaLangBoolean = Boolean.valueOf(false);
    eh.jdField_c_of_type_JavaLangString = paramd.c();
    Intent localIntent1 = new Intent();
    localIntent1.setClass(eh.jdField_a_of_type_AndroidContentContext, CardBalanceResultActivity.class);
    eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent1);
    eh.jdField_a_of_type_AndroidAppActivity.finish();
  }
  
  protected void onPreExecute()
  {
    eh.jdField_a_of_type_JavaLangString = "checkcardbalance";
    Utils.a(eh.jdField_a_of_type_AndroidContentContext, 0);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.ek
 * JD-Core Version:    0.7.0.1
 */