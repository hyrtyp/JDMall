package com.unionpay.upomp.bypay.other;

import android.content.res.Resources;
import android.os.AsyncTask;
import com.unionpay.upomp.bypay.activity.PayItActivity;
import com.unionpay.upomp.bypay.util.Utils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

public class i
  extends AsyncTask
{
  public i(PayItActivity paramPayItActivity) {}
  
  protected String a(Integer... paramVarArgs)
  {
    int i = 0;
    Object localObject = Utils.d("02", "", "");
    try
    {
      String str = Utils.c((String)localObject);
      localObject = str;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        af localaf;
        int j;
        localException.printStackTrace();
        continue;
        if ((eh.jdField_a_of_type_ComUnionpayUpompBypayOtherAf == null) || (j > 240))
        {
          eh.jdField_a_of_type_ComUnionpayUpompBypayOtherAf = null;
          eh.e = new SimpleDateFormat("mmssSSS").format(new Date());
          return null;
        }
        j++;
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
        break label173;
      }
      eh.aM = null;
      return null;
      ae.a = "getbanklist_tag";
      localaz = ((dw)ae.a(eh.aM, new dw())).a();
      eh.aM = null;
      if (localaz.a() != null) {
        break label279;
      }
    }
    localaf = Utils.a("aIFpfWl9aXllg2SIZIhohmiIaHtogmiFaH5peWh6aYJkh2l+aIdogmiIaIdpeWh6aYJpfGh+aHxpfml7aH5kh2h8aIhohmSIaXppg2iDaYJkiGaAaHppfWh+Z4BoemmCZIhofWh+aHpohWSHaHpofGl9aIJoiGiH", (String)localObject);
    eh.jdField_a_of_type_ComUnionpayUpompBypayOtherAf = localaf;
    eh.jdField_a_of_type_ComUnionpayUpompBypayOtherFv = new fv(eh.jdField_a_of_type_AndroidContentContext);
    eh.jdField_a_of_type_ComUnionpayUpompBypayOtherFv.a(localaf);
    j = 0;
    if ((eh.aM != null) || (!eh.jdField_a_of_type_Boolean))
    {
      if (eh.jdField_a_of_type_Boolean) {
        break label152;
      }
      return null;
    }
    label152:
    label173:
    az localaz;
    int k = 0;
    eh.l = new String[k];
    eh.i = new String[k];
    eh.m = new String[k];
    eh.q = new String[k];
    int m = 0;
    label249:
    ArrayList localArrayList;
    if (m >= k) {
      localArrayList = new ArrayList();
    }
    for (;;)
    {
      if (i >= k)
      {
        eh.jdField_a_of_type_JavaUtilArrayList = localArrayList;
        return "ok";
        label279:
        k = localaz.a().size();
        break;
        eh.l[m] = ((ed)localaz.a().get(m)).b();
        eh.m[m] = ((ed)localaz.a().get(m)).a();
        eh.q[m] = ((ed)localaz.a().get(m)).b();
        m++;
        break label249;
      }
      HashMap localHashMap = new HashMap();
      localHashMap.put("icon", Integer.valueOf(Utils.getResourceId(Utils.a, "drawable", "upomp_bypay_icon")));
      localHashMap.put("bankname", eh.l[i]);
      localHashMap.put("bankid", eh.m[i]);
      localArrayList.add(localHashMap);
      i++;
    }
  }
  
  protected void a(String paramString)
  {
    
    if (!eh.jdField_a_of_type_Boolean) {
      return;
    }
    if (paramString == null)
    {
      Utils.showOKDialog(this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_error")), this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_pay_it_getlistfail")));
      PayItActivity.a(this.a, Boolean.valueOf(true));
      return;
    }
    eh.f = true;
    eh.n = "3";
    eh.k = 2;
    PayItActivity.a(this.a);
    PayItActivity.b(this.a, Boolean.valueOf(true));
    PayItActivity.c(this.a, Boolean.valueOf(true));
    PayItActivity.a(this.a, Boolean.valueOf(false));
  }
  
  protected void onPreExecute()
  {
    Utils.a(eh.jdField_a_of_type_AndroidContentContext, 0);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.i
 * JD-Core Version:    0.7.0.1
 */