package com.unionpay.upomp.bypay.other;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.AsyncTask;
import com.unionpay.upomp.bypay.activity.AccountMainActivity;
import com.unionpay.upomp.bypay.activity.GetpassActivity;
import com.unionpay.upomp.bypay.activity.LoginActivity;
import com.unionpay.upomp.bypay.activity.PayItActivity;
import com.unionpay.upomp.bypay.util.Utils;

public class as
  extends AsyncTask
{
  public as(GetpassActivity paramGetpassActivity) {}
  
  protected df a(Integer... paramVarArgs)
  {
    dw localdw = Utils.a("getpass_tag", Utils.a(GetpassActivity.b(this.a), GetpassActivity.e(this.a), GetpassActivity.f(this.a), GetpassActivity.d(this.a)));
    eh.aM = null;
    df localdf = null;
    if (localdw != null) {
      localdf = localdw.a();
    }
    return localdf;
  }
  
  protected void a(df paramdf)
  {
    super.onPostExecute(paramdf);
    Utils.a();
    if (!eh.jdField_a_of_type_Boolean) {
      return;
    }
    if (paramdf == null)
    {
      GetpassActivity.b();
      Utils.showOKDialog(this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_linkerror")));
      return;
    }
    if (paramdf.a().equals("0000"))
    {
      Utils.a(this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_changepswsucceed")));
      Intent localIntent = new Intent();
      if (eh.g.booleanValue())
      {
        localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, PayItActivity.class);
        eh.n = "2";
        eh.jdField_k_of_type_Int = 1;
        eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
        eh.jdField_a_of_type_AndroidAppActivity.finish();
        eh.q = 0;
        return;
      }
      if (eh.jdField_k_of_type_Boolean)
      {
        localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, AccountMainActivity.class);
        eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
        eh.jdField_a_of_type_AndroidAppActivity.finish();
        return;
      }
      localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, LoginActivity.class);
      eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
      eh.jdField_a_of_type_AndroidAppActivity.finish();
      return;
    }
    GetpassActivity.b();
    Utils.showOKDialog(this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), paramdf.b() + "|" + paramdf.a());
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    eh.jdField_a_of_type_JavaLangString = "getpass2";
    Utils.a(eh.jdField_a_of_type_AndroidContentContext, 0);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.as
 * JD-Core Version:    0.7.0.1
 */