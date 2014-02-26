package com.unionpay.upomp.bypay.other;

import android.content.res.Resources;
import android.os.AsyncTask;
import com.unionpay.upomp.bypay.activity.PayItActivity;
import com.unionpay.upomp.bypay.util.Utils;

public class dz
  extends AsyncTask
{
  public dz(PayItActivity paramPayItActivity) {}
  
  protected ef a(Integer... paramVarArgs)
  {
    PayItActivity.b(this.a, Utils.f(PayItActivity.d(this.a)));
    dw localdw = Utils.a("login_tag", Utils.b(PayItActivity.e(this.a), PayItActivity.d(this.a), PayItActivity.f(this.a)));
    eh.aM = null;
    ef localef = null;
    if (localdw != null) {
      localef = localdw.a();
    }
    return localef;
  }
  
  protected void a(ef paramef)
  {
    super.onPostExecute(paramef);
    Utils.a();
    if (!eh.jdField_a_of_type_Boolean) {
      return;
    }
    if (paramef == null)
    {
      PayItActivity.d();
      Utils.showOKDialog(this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_linkerror")));
      return;
    }
    if (paramef.b().equals("0000"))
    {
      eh.O = paramef.a();
      eh.X = paramef.e();
      new es(this.a).execute(new Integer[0]);
      return;
    }
    PayItActivity.d();
    Utils.showOKDialog(this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), paramef.b() + " : " + paramef.c());
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    eh.jdField_a_of_type_JavaLangString = "loginauth";
    Utils.a(eh.jdField_a_of_type_AndroidContentContext, 0);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.dz
 * JD-Core Version:    0.7.0.1
 */