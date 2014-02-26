package com.unionpay.upomp.bypay.other;

import android.content.res.Resources;
import android.os.AsyncTask;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.unionpay.upomp.bypay.activity.PayItActivity;
import com.unionpay.upomp.bypay.util.Utils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

public class es
  extends AsyncTask
{
  String jdField_a_of_type_JavaLangString = Utils.a(eh.O);
  
  public es(PayItActivity paramPayItActivity) {}
  
  protected el a(Integer... paramVarArgs)
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
          eh.jdField_e_of_type_JavaLangString = new SimpleDateFormat("mmssSSS").format(new Date());
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
      ae.jdField_a_of_type_JavaLangString = "getbindcardlist_tag";
      el localel = ((dw)ae.a(eh.aM, new dw())).a();
      eh.aM = null;
      return localel;
    }
  }
  
  protected void a(el paramel)
  {
    if (!eh.jdField_a_of_type_Boolean) {
      return;
    }
    PayItActivity.a(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity, false);
    PayItActivity.c(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setText(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_addcard")));
    if (paramel == null)
    {
      Utils.a();
      Utils.showOKDialog(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_linkerror")));
      PayItActivity.a(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity, true);
      PayItActivity.c(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setText(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_updatelist")));
      return;
    }
    int j;
    label476:
    int k;
    label532:
    ArrayList localArrayList;
    int m;
    String str2;
    if (paramel.a().equals("0000"))
    {
      PayItActivity.a(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(8);
      int i = paramel.a().size();
      if (i == 0)
      {
        Utils.a();
        PayItActivity.b(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(0);
        ((TextView)this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity.findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "tv_welcome_pay_auth"))).setText(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_welcome")) + eh.X);
        PayItActivity.c(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(8);
        PayItActivity.d(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(8);
        PayItActivity.e(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(8);
        PayItActivity.f(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(8);
        PayItActivity.g(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(8);
        PayItActivity.h(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(8);
        PayItActivity.i(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(8);
        PayItActivity.j(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(0);
        PayItActivity.k(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(8);
        PayItActivity.l(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(8);
        PayItActivity.m(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(0);
        PayItActivity.n(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(8);
        return;
      }
      if (paramel.a().equals("5309"))
      {
        Utils.showOKDialog(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), paramel.b() + "|" + paramel.a());
        eh.k = 1;
        PayItActivity.a(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity);
      }
      j = 0;
      if (j >= i)
      {
        j = 0;
        eh.jdField_h_of_type_Int = i;
        eh.jdField_a_of_type_ArrayOfJavaLangString = new String[i];
        eh.b = new String[i];
        eh.c = new String[i];
        eh.d = new String[i];
        eh.jdField_e_of_type_ArrayOfJavaLangString = new String[i];
        eh.f = new String[i];
        eh.g = new String[i];
        k = 0;
        if (k < i) {
          break label1058;
        }
        localArrayList = new ArrayList();
        m = 0;
        if (m < i) {
          break label1225;
        }
        eh.S = ((ev)paramel.a().get(j)).f();
        if (!eh.c[j].equals("00")) {
          break label1455;
        }
        str2 = this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_debitcard"));
        label612:
        PayItActivity.a(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setText(eh.b[j] + "-" + str2 + "-" + PayItActivity.a(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity, eh.jdField_e_of_type_ArrayOfJavaLangString[j], 4));
        PayItActivity.b(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setText(Utils.a(eh.jdField_e_of_type_ArrayOfJavaLangString[j], 6, 4));
        PayItActivity.c(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setText(Utils.a(eh.f[j], 3, 3));
        eh.q = eh.jdField_e_of_type_ArrayOfJavaLangString[j];
        if ((eh.z != null) && ((eh.z == null) || (!eh.z.equals("1")))) {
          break label1521;
        }
        PayItActivity.d(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(8);
        PayItActivity.o(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(8);
        label770:
        PayItActivity.b(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(0);
        ((TextView)this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity.findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "tv_welcome_pay_auth"))).setText(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_welcome")) + eh.X);
        PayItActivity.c(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(8);
        PayItActivity.d(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(8);
        PayItActivity.e(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(8);
        PayItActivity.f(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(8);
        PayItActivity.g(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(8);
        PayItActivity.h(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(8);
        PayItActivity.i(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(8);
        eh.jdField_h_of_type_JavaLangBoolean = Boolean.valueOf(true);
        PayItActivity.b(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setText(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_get")));
        PayItActivity.j(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(0);
        PayItActivity.k(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(8);
        PayItActivity.l(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(0);
        PayItActivity.m(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(8);
        PayItActivity.n(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(8);
      }
    }
    for (;;)
    {
      Utils.a();
      return;
      if (((ev)paramel.a().get(j)).g().equals("1")) {
        break label476;
      }
      j++;
      break;
      label1058:
      eh.jdField_a_of_type_ArrayOfJavaLangString[k] = ((ev)paramel.a().get(k)).d();
      eh.b[k] = ((ev)paramel.a().get(k)).b();
      eh.c[k] = ((ev)paramel.a().get(k)).a();
      eh.d[k] = ((ev)paramel.a().get(k)).e();
      eh.jdField_e_of_type_ArrayOfJavaLangString[k] = ((ev)paramel.a().get(k)).c();
      eh.f[k] = ((ev)paramel.a().get(k)).f();
      eh.g[k] = ((ev)paramel.a().get(k)).g();
      k++;
      break label532;
      label1225:
      String str1;
      if (eh.c[m].equals("00")) {
        str1 = this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_debitcard"));
      }
      for (;;)
      {
        HashMap localHashMap = new HashMap();
        localHashMap.put("icon", Integer.valueOf(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_icon")));
        localHashMap.put("cardname", eh.b[m] + " - " + str1);
        localHashMap.put("cardid", eh.jdField_e_of_type_ArrayOfJavaLangString[m]);
        localHashMap.put("status", Integer.valueOf(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_icon")));
        localArrayList.add(localHashMap);
        m++;
        break;
        if (eh.c[m].equals("01")) {
          str1 = this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_creditcard"));
        } else {
          str1 = this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_cardunknown"));
        }
      }
      label1455:
      if (eh.c[j].equals("01"))
      {
        str2 = this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_creditcard"));
        break label612;
      }
      str2 = this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_cardunknown"));
      break label612;
      label1521:
      PayItActivity.d(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(0);
      PayItActivity.o(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity).setVisibility(0);
      break label770;
      Utils.showOKDialog(this.jdField_a_of_type_ComUnionpayUpompBypayActivityPayItActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), paramel.b() + "|" + paramel.a());
      PayItActivity.c().setVisibility(8);
      PayItActivity.c().setVisibility(0);
      Utils.a(PayItActivity.c(), PayItActivity.c());
    }
  }
  
  protected void onPreExecute()
  {
    Utils.a(eh.jdField_a_of_type_AndroidContentContext, 0);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.es
 * JD-Core Version:    0.7.0.1
 */