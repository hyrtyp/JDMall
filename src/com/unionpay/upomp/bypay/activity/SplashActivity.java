package com.unionpay.upomp.bypay.activity;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import com.unionpay.upomp.bypay.other.ae;
import com.unionpay.upomp.bypay.other.cz;
import com.unionpay.upomp.bypay.other.dw;
import com.unionpay.upomp.bypay.other.eh;
import com.unionpay.upomp.bypay.other.fl;
import com.unionpay.upomp.bypay.other.h;
import com.unionpay.upomp.bypay.util.Utils;

public class SplashActivity
  extends Activity
{
  public String a = "";
  private String b = "";
  
  private String a()
  {
    Bundle localBundle = getIntent().getExtras();
    if (localBundle != null)
    {
      this.b = localBundle.getString("xml");
      Log.i("ggl", this.b);
      if ((this.b == null) || (this.b.equals("")) || (this.b.equals("null"))) {
        return "xml";
      }
      Utils.k(this.b);
      eh.al = localBundle.getString("pkg");
      ae.a = "localconfigdata_tag";
      h localh = ((dw)ae.a(this.b.trim(), new dw())).a();
      eh.at = localh.i();
      eh.u = localh.j();
      if ((eh.u == null) || (eh.u.equals("")) || (eh.u.equals("null"))) {
        eh.u = "";
      }
      eh.am = localh.c();
      if ((eh.am == null) || (eh.am.equals(""))) {
        return "want";
      }
      eh.an = localh.d();
      if ((eh.an == null) || (eh.an.equals(""))) {
        return "want";
      }
      eh.ao = localh.h();
      if ((eh.ao == null) || (eh.ao.equals(""))) {
        return "want";
      }
      eh.ap = localh.e();
      if ((eh.ap == null) || (eh.ap.equals(""))) {
        return "want";
      }
      eh.as = localh.g();
      if ((eh.as == null) || (eh.as.equals(""))) {
        return "want";
      }
      eh.az = localh.a();
      eh.aj = localh.f();
      if ((eh.aj == null) || (eh.aj.equals(""))) {
        return "want";
      }
      eh.ak = localh.b();
      if ((eh.ak == null) || (eh.ak.equals(""))) {
        return "want";
      }
      eh.aq = getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_splashactivity_rmb"));
      eh.ar = getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_splashactivity_pay"));
    }
    return "ok";
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(Utils.getResourceId(Utils.a, "layout", "upomp_bypay_splash"));
    eh.jdField_a_of_type_AndroidAppActivity = this;
    eh.jdField_a_of_type_AndroidContentContext = this;
    eh.m = "";
    eh.m += "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>";
    eh.m = eh.m + "<upomp application=\"UpClose.Rsp\" pluginVersion=\"" + eh.H + "\">";
    eh.m = eh.m + "<merchantId>" + eh.am + "</merchantId>";
    eh.m += "<respCode>0001</respCode>";
    eh.m = eh.m + "<respDesc>" + getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_splashactivity_quit")) + "</respDesc>";
    eh.m += "</upomp>";
    this.a = a();
    if (Utils.c("userjudge", "isExist").equals("true"))
    {
      if (Utils.c("userjudge", "merchantId").equals(eh.am))
      {
        new cz(this).execute(new Integer[0]);
        return;
      }
      new fl(this).execute(new Integer[0]);
      return;
    }
    new fl(this).execute(new Integer[0]);
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0)) {
      Utils.b();
    }
    return false;
  }
  
  protected void onResume()
  {
    super.onResume();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.activity.SplashActivity
 * JD-Core Version:    0.7.0.1
 */