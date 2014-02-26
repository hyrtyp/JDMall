package com.unionpay.upomp.bypay.other;

import android.content.res.Resources;
import android.os.AsyncTask;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.unionpay.upomp.bypay.activity.GetpassActivity;
import com.unionpay.upomp.bypay.util.Utils;

public class cn
  extends AsyncTask
{
  public cn(GetpassActivity paramGetpassActivity) {}
  
  protected er a(Integer... paramVarArgs)
  {
    dw localdw = Utils.a("question_tag", Utils.b(GetpassActivity.b(this.a), GetpassActivity.a(this.a), GetpassActivity.c(this.a), GetpassActivity.d(this.a)));
    eh.aM = null;
    er localer = null;
    if (localdw != null) {
      localer = localdw.a();
    }
    return localer;
  }
  
  protected void a(er paramer)
  {
    super.onPostExecute(paramer);
    Utils.a();
    if (!eh.jdField_a_of_type_Boolean) {
      return;
    }
    if (paramer == null)
    {
      GetpassActivity.a();
      Utils.showOKDialog(this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_linkerror")));
      return;
    }
    if (paramer.b().equals("0000"))
    {
      GetpassActivity.a(this.a).setText(paramer.a());
      eh.i = true;
      GetpassActivity.a(this.a).setVisibility(8);
      GetpassActivity.b(this.a).setVisibility(0);
      return;
    }
    GetpassActivity.a();
    Utils.showOKDialog(this.a.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), paramer.c() + "|" + paramer.b());
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    eh.jdField_a_of_type_JavaLangString = "getpass1";
    Utils.a(eh.jdField_a_of_type_AndroidContentContext, 0);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.cn
 * JD-Core Version:    0.7.0.1
 */