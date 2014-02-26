package com.unionpay.upomp.bypay.other;

import android.content.res.Resources;
import android.os.AsyncTask;
import android.text.Editable;
import android.widget.EditText;
import com.unionpay.upomp.bypay.activity.AddCardActivity;
import com.unionpay.upomp.bypay.util.Utils;
import java.text.SimpleDateFormat;
import java.util.Date;

public class fn
  extends AsyncTask
{
  public fn(AddCardActivity paramAddCardActivity) {}
  
  protected fm a(Integer... paramVarArgs)
  {
    String str1 = AddCardActivity.a().getText().toString();
    if (str1.length() == 0) {
      str1 = eh.R;
    }
    Object localObject = Utils.c(str1, "0", "5");
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
        break label193;
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
        break label172;
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
      AddCardActivity.a(this.a, paramfm.b());
      Utils.a(AddCardActivity.b(), AddCardActivity.i(this.a));
    }
    for (;;)
    {
      paramfm.a();
      return;
      Utils.a(paramfm.d() + paramfm.c());
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.fn
 * JD-Core Version:    0.7.0.1
 */