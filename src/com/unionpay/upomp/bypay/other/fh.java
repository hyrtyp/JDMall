package com.unionpay.upomp.bypay.other;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.AsyncTask;
import com.unionpay.upomp.bypay.activity.AccountMainActivity;
import com.unionpay.upomp.bypay.activity.EditpassActivity;
import com.unionpay.upomp.bypay.util.Utils;

public class fh
  extends AsyncTask
{
  public fh(EditpassActivity paramEditpassActivity) {}
  
  protected o a(Integer... paramVarArgs)
  {
    boolean bool1 = EditpassActivity.a(this.a).equals("");
    o localo = null;
    if (!bool1)
    {
      boolean bool2 = EditpassActivity.b(this.a).equals("");
      localo = null;
      if (!bool2)
      {
        boolean bool3 = EditpassActivity.c(this.a).equals("");
        localo = null;
        if (!bool3)
        {
          dw localdw = Utils.a("editpass_tag", Utils.a(eh.O, EditpassActivity.a(this.a), EditpassActivity.b(this.a), eh.R, EditpassActivity.d(this.a)));
          eh.aM = null;
          localo = null;
          if (localdw != null) {
            localo = localdw.a();
          }
        }
      }
    }
    return localo;
  }
  
  protected void a(o paramo)
  {
    super.onPostExecute(paramo);
    Utils.a();
    if (!eh.jdField_a_of_type_Boolean) {
      return;
    }
    if (paramo == null)
    {
      EditpassActivity.a();
      Utils.showOKDialog(this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_linkerror")));
    }
    if (paramo.a().equals("0000"))
    {
      Utils.a(this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_changepswsucceed")));
      Intent localIntent = new Intent();
      localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, AccountMainActivity.class);
      eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
      eh.jdField_a_of_type_AndroidAppActivity.finish();
      return;
    }
    if (paramo.a().equals("5309"))
    {
      eh.d = true;
      eh.b = 0;
      eh.c = 0;
      EditpassActivity.a();
      Utils.showOKDialog(this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), paramo.b() + "|" + paramo.a());
      return;
    }
    EditpassActivity.a();
    Utils.showOKDialog(this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), paramo.b() + "|" + paramo.a());
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    eh.jdField_a_of_type_JavaLangString = "editpass";
    Utils.a(eh.jdField_a_of_type_AndroidContentContext, 0);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.fh
 * JD-Core Version:    0.7.0.1
 */