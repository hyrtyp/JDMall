package com.unionpay.upomp.bypay.activity;

import android.content.res.Resources;
import android.os.AsyncTask;
import android.widget.Button;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import com.unionpay.upomp.bypay.other.ae;
import com.unionpay.upomp.bypay.other.af;
import com.unionpay.upomp.bypay.other.dw;
import com.unionpay.upomp.bypay.other.eh;
import com.unionpay.upomp.bypay.other.el;
import com.unionpay.upomp.bypay.other.ev;
import com.unionpay.upomp.bypay.other.fv;
import com.unionpay.upomp.bypay.util.Utils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

public class CardMainActivity$AsyncClass
  extends AsyncTask
{
  String jdField_a_of_type_JavaLangString = Utils.a(eh.O);
  
  public CardMainActivity$AsyncClass(CardMainActivity paramCardMainActivity) {}
  
  private String a(String paramString, int paramInt)
  {
    return paramString.substring(paramString.length() - paramInt);
  }
  
  protected el a(Integer... paramVarArgs)
  {
    int i = 0;
    CardMainActivity.jdField_a_of_type_Boolean = false;
    try
    {
      this.jdField_a_of_type_JavaLangString = Utils.c(this.jdField_a_of_type_JavaLangString);
      af localaf = Utils.a("aIFpfWl9aXllg2SIZIhohmiIaHtogmiFaH5peWh6aYJkh2l+aIdogmiIaIdpeWh6aYJpfGh+aHxpfml7aH5kh2h8aIhohmSIaXppg2iDaYJkiGaAaHppfWh+Z4BoemmCZIhofWh+aHpohWSHaHpofGl9aIJoiGiH", this.jdField_a_of_type_JavaLangString);
      eh.jdField_a_of_type_ComUnionpayUpompBypayOtherAf = localaf;
      eh.jdField_a_of_type_ComUnionpayUpompBypayOtherFv = new fv(eh.jdField_a_of_type_AndroidContentContext);
      eh.jdField_a_of_type_ComUnionpayUpompBypayOtherFv.a(localaf);
      if ((eh.aM != null) || (!eh.jdField_a_of_type_Boolean))
      {
        if (eh.jdField_a_of_type_Boolean) {
          break label145;
        }
        return null;
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
        continue;
        if ((eh.jdField_a_of_type_ComUnionpayUpompBypayOtherAf == null) || (i > 240))
        {
          eh.jdField_a_of_type_ComUnionpayUpompBypayOtherAf = null;
          eh.jdField_e_of_type_JavaLangString = new SimpleDateFormat("mmssSSS").format(new Date());
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
      label145:
      if ((eh.aM != null) && (!Utils.b(eh.aM)))
      {
        eh.aM = null;
        return null;
      }
      ae.jdField_a_of_type_JavaLangString = "getbindcardlist_tag";
      el localel = ((dw)ae.a(eh.aM, new dw())).a();
      eh.aM = null;
      return localel;
    }
  }
  
  protected void a(el paramel)
  {
    int i = 0;
    if (!eh.jdField_a_of_type_Boolean) {
      return;
    }
    CardMainActivity.jdField_a_of_type_AndroidWidgetButton.setText(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardMainActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_addcard")));
    Utils.a();
    if (paramel == null)
    {
      CardMainActivity.a(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardMainActivity).setVisibility(0);
      CardMainActivity.b(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardMainActivity).setVisibility(8);
      CardMainActivity.jdField_a_of_type_Boolean = true;
      CardMainActivity.jdField_a_of_type_AndroidWidgetButton.setText(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardMainActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_updatelist")));
      Utils.showOKDialog(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardMainActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardMainActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_linkerror")));
      return;
    }
    if (paramel.a().equals("5309"))
    {
      eh.jdField_d_of_type_Boolean = true;
      eh.jdField_b_of_type_Int = 0;
      eh.jdField_c_of_type_Int = 0;
      Utils.showOKDialog(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardMainActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), paramel.b() + "|" + paramel.a());
      return;
    }
    if ((!paramel.a().equals("0000")) && (!paramel.a().equals("9999")))
    {
      CardMainActivity.jdField_a_of_type_Boolean = true;
      CardMainActivity.jdField_a_of_type_AndroidWidgetButton.setText(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardMainActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_updatelist")));
      Utils.showOKDialog(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardMainActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), paramel.b() + "|" + paramel.a());
      return;
    }
    int j = paramel.a().size();
    int k;
    if (j == 0)
    {
      CardMainActivity.a(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardMainActivity).setVisibility(0);
      CardMainActivity.b(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardMainActivity).setVisibility(8);
      CardMainActivity.a(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardMainActivity).setVisibility(0);
      CardMainActivity.b(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardMainActivity).setVisibility(8);
      k = j;
      if (k < Integer.parseInt(eh.z)) {
        break label603;
      }
      CardMainActivity.jdField_a_of_type_AndroidWidgetButton.setVisibility(8);
      label405:
      eh.jdField_a_of_type_ArrayOfJavaLangString = new String[k];
      eh.jdField_b_of_type_ArrayOfJavaLangString = new String[k];
      eh.jdField_c_of_type_ArrayOfJavaLangString = new String[k];
      eh.jdField_d_of_type_ArrayOfJavaLangString = new String[k];
      eh.jdField_e_of_type_ArrayOfJavaLangString = new String[k];
      eh.f = new String[k];
      eh.g = new String[k];
    }
    ArrayList localArrayList;
    for (int m = 0;; m++)
    {
      if (m >= k)
      {
        localArrayList = new ArrayList();
        if (i < k) {
          break label780;
        }
        SimpleAdapter localSimpleAdapter = new SimpleAdapter(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardMainActivity, localArrayList, Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "layout", "upomp_bypay_card_list_item"), CardMainActivity.a(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardMainActivity), CardMainActivity.a(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardMainActivity));
        CardMainActivity.a(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardMainActivity).setAdapter(localSimpleAdapter);
        Utils.a();
        return;
        CardMainActivity.a(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardMainActivity).setVisibility(8);
        CardMainActivity.b(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardMainActivity).setVisibility(0);
        CardMainActivity.a(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardMainActivity).setVisibility(8);
        CardMainActivity.b(this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardMainActivity).setVisibility(0);
        k = paramel.a().size();
        break;
        label603:
        CardMainActivity.jdField_a_of_type_AndroidWidgetButton.setVisibility(0);
        break label405;
      }
      eh.jdField_a_of_type_ArrayOfJavaLangString[m] = ((ev)paramel.a().get(m)).d();
      eh.jdField_b_of_type_ArrayOfJavaLangString[m] = ((ev)paramel.a().get(m)).b();
      eh.jdField_c_of_type_ArrayOfJavaLangString[m] = ((ev)paramel.a().get(m)).a();
      eh.jdField_d_of_type_ArrayOfJavaLangString[m] = ((ev)paramel.a().get(m)).e();
      eh.jdField_e_of_type_ArrayOfJavaLangString[m] = ((ev)paramel.a().get(m)).c();
      eh.f[m] = ((ev)paramel.a().get(m)).f();
      eh.g[m] = ((ev)paramel.a().get(m)).g();
    }
    label780:
    String str;
    label817:
    HashMap localHashMap;
    if (eh.jdField_c_of_type_ArrayOfJavaLangString[i].equals("00"))
    {
      str = this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardMainActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_debitcard"));
      localHashMap = new HashMap();
      localHashMap.put("icon", Integer.valueOf(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_icon")));
      if (!eh.g[i].equals("1")) {
        break label1063;
      }
      localHashMap.put("cardname", eh.jdField_b_of_type_ArrayOfJavaLangString[i] + " - " + str + " - " + a(eh.jdField_e_of_type_ArrayOfJavaLangString[i], 4) + this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardMainActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_cardmainactivity_defultcard")));
    }
    for (;;)
    {
      localHashMap.put("cardid", eh.jdField_e_of_type_ArrayOfJavaLangString[i]);
      localHashMap.put("status", Integer.valueOf(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_icon")));
      localArrayList.add(localHashMap);
      i++;
      break;
      if (eh.jdField_c_of_type_ArrayOfJavaLangString[i].equals("01"))
      {
        str = this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardMainActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_creditcard"));
        break label817;
      }
      str = this.jdField_a_of_type_ComUnionpayUpompBypayActivityCardMainActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_cardunknown"));
      break label817;
      label1063:
      localHashMap.put("cardname", eh.jdField_b_of_type_ArrayOfJavaLangString[i] + " - " + str + " - " + a(eh.jdField_e_of_type_ArrayOfJavaLangString[i], 4));
    }
  }
  
  protected void onPreExecute()
  {
    eh.jdField_a_of_type_JavaLangString = "cardmain";
    Utils.a(eh.jdField_a_of_type_AndroidContentContext, 0);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.activity.CardMainActivity.AsyncClass
 * JD-Core Version:    0.7.0.1
 */