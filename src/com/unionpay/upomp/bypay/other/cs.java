package com.unionpay.upomp.bypay.other;

import android.app.AlertDialog.Builder;
import android.content.res.Resources;
import android.os.AsyncTask;
import com.unionpay.upomp.bypay.activity.CardInfoActivity;
import com.unionpay.upomp.bypay.util.Utils;
import java.text.SimpleDateFormat;
import java.util.Date;

public class cs
  extends AsyncTask
{
  String jdField_a_of_type_JavaLangString = Utils.c(eh.O, eh.R, eh.aC, eh.aE, eh.aD);
  
  cs(CardInfoActivity paramCardInfoActivity) {}
  
  protected b a(Integer... paramVarArgs)
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
      ae.jdField_a_of_type_JavaLangString = "setdefaultcard_tag";
      b localb = ((dw)ae.a(eh.aM, new dw())).a();
      eh.aM = null;
      return localb;
    }
  }
  
  protected void a(b paramb)
  {
    
    if (!eh.jdField_a_of_type_Boolean) {
      return;
    }
    if (paramb == null)
    {
      Utils.showOKDialog(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardInfoActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardInfoActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_linkerror")));
      return;
    }
    if (paramb.a().equals("0000"))
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(eh.jdField_a_of_type_AndroidContentContext);
      localBuilder.setTitle(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardInfoActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_prompt")));
      localBuilder.setMessage(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardInfoActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_selectsucceed")));
      localBuilder.setPositiveButton("OK", new dy(this));
      localBuilder.show();
      return;
    }
    if (paramb.a().equals("5309"))
    {
      if (eh.j)
      {
        eh.d = true;
        eh.b = 1;
      }
      for (eh.c = 0;; eh.c = 0)
      {
        Utils.showOKDialog(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardInfoActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardInfoActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_selectfail")));
        return;
        eh.d = true;
        eh.b = 0;
      }
    }
    Utils.showOKDialog(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardInfoActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardInfoActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_selectfail")));
  }
  
  protected void onPreExecute()
  {
    Utils.a(eh.jdField_a_of_type_AndroidContentContext, 0);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.cs
 * JD-Core Version:    0.7.0.1
 */