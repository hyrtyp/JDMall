package com.unionpay.upomp.bypay.other;

import android.content.res.Resources;
import android.os.AsyncTask;
import com.unionpay.upomp.bypay.activity.RegisterActivity;
import com.unionpay.upomp.bypay.util.Utils;

public class eb
  extends AsyncTask
{
  public eb(RegisterActivity paramRegisterActivity) {}
  
  protected cp a(Integer... paramVarArgs)
  {
    dw localdw = Utils.a("register_tag", Utils.a(RegisterActivity.a(this.a), RegisterActivity.b(this.a), RegisterActivity.c(this.a), RegisterActivity.d(this.a), RegisterActivity.e(this.a), RegisterActivity.f(this.a), RegisterActivity.g(this.a), RegisterActivity.h(this.a), RegisterActivity.i(this.a)));
    eh.aM = null;
    if (localdw != null) {
      return localdw.a();
    }
    return null;
  }
  
  protected void a(cp paramcp)
  {
    super.onPostExecute(paramcp);
    Utils.a();
    if (!eh.jdField_a_of_type_Boolean) {
      return;
    }
    if (paramcp == null)
    {
      RegisterActivity.a();
      Utils.showOKDialog(this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_linkerror")));
      return;
    }
    if (paramcp.b().equals("0000"))
    {
      eh.O = paramcp.a();
      eh.R = paramcp.d();
      RegisterActivity.a(this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_prompt")), this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_registeractivity_succeed")));
      return;
    }
    RegisterActivity.a();
    Utils.showOKDialog(this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), paramcp.c() + "|" + paramcp.b());
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    eh.jdField_a_of_type_JavaLangString = "register";
    Utils.a(eh.jdField_a_of_type_AndroidContentContext, 0);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.eb
 * JD-Core Version:    0.7.0.1
 */