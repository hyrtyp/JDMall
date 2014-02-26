package com.unionpay.upomp.bypay.other;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.AsyncTask;
import com.unionpay.upomp.bypay.activity.AccountMainActivity;
import com.unionpay.upomp.bypay.activity.LoginActivity;
import com.unionpay.upomp.bypay.util.Utils;

public class eg
  extends AsyncTask
{
  public eg(LoginActivity paramLoginActivity) {}
  
  protected ef a(Integer... paramVarArgs)
  {
    this.a.b = Utils.f(this.a.b);
    dw localdw = Utils.a("login_tag", Utils.b(this.a.jdField_a_of_type_JavaLangString, this.a.b, this.a.c));
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
      LoginActivity.a();
      Utils.showOKDialog(this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_linkerror")));
      return;
    }
    if (paramef.b().equals("0000"))
    {
      Utils.a(this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_loginactivity_loginsucceed")));
      eh.k = true;
      eh.O = paramef.a();
      eh.R = paramef.d();
      eh.W = paramef.f();
      eh.X = paramef.e();
      Intent localIntent = new Intent();
      localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, AccountMainActivity.class);
      eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
      eh.jdField_a_of_type_AndroidAppActivity.finish();
      return;
    }
    LoginActivity.a();
    Utils.showOKDialog(this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_loginactivity_loginfail")) + paramef.c());
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    eh.jdField_a_of_type_JavaLangString = "login";
    Utils.a(eh.jdField_a_of_type_AndroidContentContext, 0);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.eg
 * JD-Core Version:    0.7.0.1
 */