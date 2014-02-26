package com.unionpay.upomp.bypay.other;

import android.os.AsyncTask;
import android.util.Log;
import com.unionpay.upomp.bypay.activity.SplashActivity;
import com.unionpay.upomp.bypay.util.Utils;

public class fl
  extends AsyncTask
{
  String jdField_a_of_type_JavaLangString = Utils.a(eh.am, "02", eh.ax);
  
  public fl(SplashActivity paramSplashActivity) {}
  
  protected a a(Integer... paramVarArgs)
  {
    Log.i("ggl", "UserJudgeClass");
    ag localag = new ag(null, this.jdField_a_of_type_JavaLangString);
    eh.jdField_a_of_type_ComUnionpayUpompBypayOtherFv = new fv(eh.jdField_a_of_type_AndroidContentContext);
    eh.jdField_a_of_type_ComUnionpayUpompBypayOtherFv.a(localag);
    int i = 0;
    for (;;)
    {
      try
      {
        if (eh.ay == null)
        {
          boolean bool = eh.jdField_a_of_type_Boolean;
          if (bool) {
            continue;
          }
        }
      }
      catch (Exception localException)
      {
        dw localdw;
        continue;
      }
      if (eh.jdField_a_of_type_Boolean) {
        continue;
      }
      return null;
      Thread.sleep(1000L);
      i++;
      if (i <= 10) {}
    }
    if (i > 10) {
      return null;
    }
    if ((eh.ay == null) || (eh.ay.equals(""))) {
      return null;
    }
    ae.jdField_a_of_type_JavaLangString = "userjudge_tag";
    localdw = (dw)ae.a(eh.ay, new dw());
    eh.ay = null;
    return localdw.a();
  }
  
  protected void a(a parama)
  {
    super.onPostExecute(parama);
    if (!eh.jdField_a_of_type_Boolean) {
      return;
    }
    if (parama == null)
    {
      new cz(this.jdField_a_of_type_ComUnionpayUpompBypayActivitySplashActivity).execute(new Integer[0]);
      return;
    }
    if (parama.b().equals("0000"))
    {
      Utils.a("userjudge", "content", parama.a());
      Utils.a("userjudge", "isExist", "true");
    }
    new cz(this.jdField_a_of_type_ComUnionpayUpompBypayActivitySplashActivity).execute(new Integer[0]);
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.fl
 * JD-Core Version:    0.7.0.1
 */