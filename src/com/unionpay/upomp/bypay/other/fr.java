package com.unionpay.upomp.bypay.other;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.AsyncTask;
import com.unionpay.upomp.bypay.activity.AccountMainActivity;
import com.unionpay.upomp.bypay.activity.EditinfoActivity;
import com.unionpay.upomp.bypay.util.Utils;

public class fr
  extends AsyncTask
{
  public fr(EditinfoActivity paramEditinfoActivity) {}
  
  protected ea a(Integer... paramVarArgs)
  {
    EditinfoActivity.b(this.a, Utils.f(EditinfoActivity.b(this.a)));
    dw localdw = Utils.a("editinfo_tag", Utils.b(eh.O, EditinfoActivity.b(this.a), EditinfoActivity.c(this.a), EditinfoActivity.d(this.a), EditinfoActivity.e(this.a)));
    eh.aM = null;
    ea localea = null;
    if (localdw != null) {
      localea = localdw.a();
    }
    return localea;
  }
  
  protected void a(ea paramea)
  {
    super.onPostExecute(paramea);
    Utils.a();
    if (!eh.jdField_a_of_type_Boolean) {
      return;
    }
    if (paramea == null)
    {
      Utils.showOKDialog(this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_linkerror")));
      return;
    }
    Intent localIntent = new Intent();
    if (paramea.c().equals("0000"))
    {
      eh.O = paramea.a();
      if (paramea.b() == null)
      {
        EditinfoActivity.a();
        Utils.showOKDialog(this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_editinfoactivity_changetelfail")) + "\n" + paramea.d());
        return;
      }
      Utils.a(this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_editinfoactivity_changetelsucceed")));
      eh.R = paramea.b();
      localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, AccountMainActivity.class);
      eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
      eh.jdField_a_of_type_AndroidAppActivity.finish();
      return;
    }
    if (paramea.c().equals("5309"))
    {
      eh.d = true;
      eh.b = 0;
      eh.c = 0;
      EditinfoActivity.a();
      Utils.showOKDialog(this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), paramea.d() + "|" + paramea.c());
      return;
    }
    EditinfoActivity.a();
    Utils.showOKDialog(this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), paramea.d() + "|" + paramea.c());
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    eh.jdField_a_of_type_JavaLangString = "editinfo";
    Utils.a(eh.jdField_a_of_type_AndroidContentContext, 0);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.fr
 * JD-Core Version:    0.7.0.1
 */