package com.unionpay.upomp.bypay.other;

import android.content.res.Resources;
import android.os.AsyncTask;
import android.text.Editable;
import android.widget.EditText;
import android.widget.TextView;
import com.unionpay.upomp.bypay.activity.PayItActivity;
import com.unionpay.upomp.bypay.util.Utils;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ay
  extends AsyncTask
{
  public ay(PayItActivity paramPayItActivity) {}
  
  protected fm a(Integer... paramVarArgs)
  {
    String str1 = PayItActivity.a().getText().toString();
    if ((eh.l != null) && (!eh.l.equals("")) && ((str1 == null) || (str1.equals("")))) {
      str1 = eh.l;
    }
    Object localObject = Utils.c(str1, "1", "3");
    try
    {
      String str2 = Utils.c((String)localObject);
      localObject = str2;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        af localaf;
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
      if ((eh.aM == null) || (Utils.b(eh.aM))) {
        break label216;
      }
      eh.aM = null;
      return null;
      ae.a = "mobilevalid_tag";
      fm localfm = ((dw)ae.a(eh.aM, new dw())).a();
      eh.aM = null;
      return localfm;
    }
    localaf = Utils.a("aIFpfWl9aXllg2SIZIhohmiIaHtogmiFaH5peWh6aYJkh2l+aIdogmiIaIdpeWh6aYJpfGh+aHxpfml7aH5kh2h8aIhohmSIaXppg2iDaYJkiGaAaHppfWh+Z4BoemmCZIhofWh+aHpohWSHaHpofGl9aIJoiGiH", (String)localObject);
    eh.jdField_a_of_type_ComUnionpayUpompBypayOtherAf = localaf;
    eh.jdField_a_of_type_ComUnionpayUpompBypayOtherFv = new fv(eh.jdField_a_of_type_AndroidContentContext);
    eh.jdField_a_of_type_ComUnionpayUpompBypayOtherFv.a(localaf);
    i = 0;
    if ((eh.aM != null) || (!eh.jdField_a_of_type_Boolean))
    {
      if (eh.jdField_a_of_type_Boolean) {
        break label195;
      }
      return null;
    }
  }
  
  protected void a(fm paramfm)
  {
    if (!eh.jdField_a_of_type_Boolean) {
      return;
    }
    if (paramfm == null)
    {
      Utils.showOKDialog(this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_error")), this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_linkerror")));
      return;
    }
    if (paramfm.c().equals("0000"))
    {
      PayItActivity.a(this.a, paramfm.b());
      Utils.a(PayItActivity.b(), PayItActivity.b(this.a));
      String str = paramfm.a();
      PayItActivity.d(this.a).setText(str);
      return;
    }
    Utils.a(paramfm.d() + paramfm.c());
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.ay
 * JD-Core Version:    0.7.0.1
 */