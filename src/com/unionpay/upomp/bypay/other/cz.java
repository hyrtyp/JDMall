package com.unionpay.upomp.bypay.other;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.unionpay.upomp.bypay.activity.PayMainActivity;
import com.unionpay.upomp.bypay.activity.SplashActivity;
import com.unionpay.upomp.bypay.util.Utils;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.xmlpull.v1.XmlPullParserException;

public class cz
  extends AsyncTask
{
  String jdField_a_of_type_JavaLangString = "";
  
  public cz(SplashActivity paramSplashActivity) {}
  
  private void a()
  {
    String str = Utils.g(Utils.c(eh.j, "content"));
    try
    {
      ae.jdField_a_of_type_JavaLangString = "config_tag";
      ao localao = ((dw)ae.a(str, new dw())).a();
      if (localao != null)
      {
        eh.y = localao.g();
        eh.z = localao.f();
        eh.K = localao.a();
        eh.A = localao.d();
        eh.B = localao.b();
        eh.C = localao.i();
        eh.D = localao.h();
        eh.v = localao.e();
        eh.E = localao.c();
        eh.jdField_a_of_type_JavaUtilList = localao.a();
        eh.jdField_a_of_type_JavaUtilList.add(this.jdField_a_of_type_ComUnionpayUpompBypayActivitySplashActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_splashactivity_custom")));
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  private boolean a()
  {
    String[] arrayOfString1 = eh.p;
    new String[arrayOfString1.length];
    String[] arrayOfString2 = new String[8];
    arrayOfString2[0] = p.b;
    arrayOfString2[1] = f.b;
    arrayOfString2[2] = c.b;
    arrayOfString2[3] = eh.i;
    arrayOfString2[4] = eh.aP;
    arrayOfString2[5] = c.d;
    arrayOfString2[6] = f.c;
    arrayOfString2[7] = p.c;
    String[] arrayOfString3 = a(arrayOfString1);
    int i = 0;
    String[] arrayOfString4;
    String[] arrayOfString5;
    String[] arrayOfString6;
    if (i >= arrayOfString1.length)
    {
      arrayOfString4 = p.a;
      new String[arrayOfString4.length];
      arrayOfString5 = new String[2];
      arrayOfString5[0] = c.c;
      arrayOfString5[1] = c.e;
      arrayOfString6 = b(arrayOfString4);
    }
    for (int j = 0;; j++)
    {
      boolean bool2;
      if (j >= arrayOfString4.length) {
        bool2 = true;
      }
      boolean bool3;
      do
      {
        boolean bool1;
        do
        {
          return bool2;
          bool1 = arrayOfString3[i].equals(arrayOfString2[i]);
          bool2 = false;
        } while (!bool1);
        i++;
        break;
        bool3 = arrayOfString6[j].equals(arrayOfString5[j]);
        bool2 = false;
      } while (!bool3);
    }
  }
  
  private byte[] a(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(1024);
    byte[] arrayOfByte = new byte[1024];
    for (;;)
    {
      try
      {
        i = paramInputStream.read(arrayOfByte);
        if (i >= 0) {
          continue;
        }
      }
      catch (IOException localIOException)
      {
        int i;
        continue;
      }
      return localByteArrayOutputStream.toByteArray();
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
  }
  
  private String[] a(String[] paramArrayOfString)
  {
    String[] arrayOfString = new String[paramArrayOfString.length];
    for (int i = 0;; i++)
    {
      if (i >= paramArrayOfString.length) {
        return arrayOfString;
      }
      StringBuffer localStringBuffer = new StringBuffer();
      XmlResourceParser localXmlResourceParser = eh.jdField_a_of_type_AndroidAppActivity.getResources().getXml(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "layout", paramArrayOfString[i]));
      do
      {
        for (;;)
        {
          try
          {
            j = localXmlResourceParser.next();
            if (j != 2) {
              continue;
            }
            localStringBuffer.append(localXmlResourceParser.getName() + localXmlResourceParser.getDepth());
            k = localXmlResourceParser.getAttributeCount();
            m = 0;
          }
          catch (XmlPullParserException localXmlPullParserException)
          {
            int j;
            localXmlPullParserException.printStackTrace();
            continue;
          }
          catch (IOException localIOException)
          {
            int k;
            int m;
            localIOException.printStackTrace();
            continue;
            if (m < k) {
              continue;
            }
            continue;
          }
          j = localXmlResourceParser.next();
        }
        localStringBuffer.append(localXmlResourceParser.getAttributeName(m) + localXmlResourceParser.getAttributeValue(m));
        m++;
        break label223;
      } while (j != 1);
      arrayOfString[i] = Utils.e(localStringBuffer.toString().replaceAll("@\\d*", "1"));
    }
  }
  
  private boolean b()
  {
    eh.F = Build.MODEL;
    eh.G = "Android " + Build.VERSION.RELEASE;
    eh.J = ((TelephonyManager)eh.jdField_a_of_type_AndroidAppActivity.getSystemService("phone")).getDeviceId();
    String str = Utils.b(eh.am, eh.K);
    try
    {
      af localaf2 = Utils.a("aIFpfWl9aXllg2SIZIhohmiIaHtogmiFaH5peWh6aYJkh2l+aIdogmiIaIdpeWh6aYJpfGh+aHxpfml7aH5kh2h8aIhohmSIaXppg2iDaYJkiGaAaHppfWh+Z4BoemmCZIhofWh+aHpohWSHaHpofGl9aIJoiGiH", Utils.c(str));
      localaf1 = localaf2;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        int i;
        localException.printStackTrace();
        af localaf1 = null;
        continue;
        if (i <= 240) {}
        try
        {
          if (eh.jdField_a_of_type_ComUnionpayUpompBypayOtherAf != null) {
            break label188;
          }
          eh.jdField_a_of_type_ComUnionpayUpompBypayOtherAf = null;
          eh.e = new SimpleDateFormat("mmssSSS").format(new Date());
          return false;
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
        continue;
        i++;
        Thread.sleep(500L);
      }
    }
    eh.jdField_a_of_type_ComUnionpayUpompBypayOtherAf = localaf1;
    eh.jdField_a_of_type_ComUnionpayUpompBypayOtherFv = new fv(eh.jdField_a_of_type_AndroidContentContext);
    eh.jdField_a_of_type_ComUnionpayUpompBypayOtherFv.a(localaf1);
    i = 0;
    if ((eh.aM != null) || (!eh.jdField_a_of_type_Boolean))
    {
      if (Utils.b(eh.aM)) {
        break label200;
      }
      eh.aM = null;
      return false;
    }
    label188:
    label200:
    return true;
  }
  
  private String[] b(String[] paramArrayOfString)
  {
    String[] arrayOfString = new String[paramArrayOfString.length];
    int i = 0;
    for (;;)
    {
      if (i >= paramArrayOfString.length) {
        return arrayOfString;
      }
      byte[] arrayOfByte = a(this.jdField_a_of_type_ComUnionpayUpompBypayActivitySplashActivity.getResources().openRawResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", paramArrayOfString[i])));
      try
      {
        arrayOfString[i] = Utils.e(new String(arrayOfByte, "utf-8"));
        i++;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        for (;;)
        {
          localUnsupportedEncodingException.printStackTrace();
        }
      }
    }
  }
  
  protected String a(Integer... paramVarArgs)
  {
    Log.i("ggl", "SplashClass");
    if (!a()) {
      return "validfiles";
    }
    if (this.jdField_a_of_type_ComUnionpayUpompBypayActivitySplashActivity.jdField_a_of_type_JavaLangString.equals("xml")) {
      return "xml";
    }
    if (this.jdField_a_of_type_ComUnionpayUpompBypayActivitySplashActivity.jdField_a_of_type_JavaLangString.equals("want")) {
      return "want";
    }
    if (!Utils.c(eh.j, "isExist").equals("true")) {}
    cx localcx;
    try
    {
      InputStream localInputStream = this.jdField_a_of_type_ComUnionpayUpompBypayActivitySplashActivity.getResources().getAssets().open("upomp_bypay_config.xml");
      DataInputStream localDataInputStream = new DataInputStream(localInputStream);
      byte[] arrayOfByte = new byte[localDataInputStream.available()];
      localDataInputStream.read(arrayOfByte);
      localDataInputStream.close();
      localInputStream.close();
      String str = new String(arrayOfByte, "UTF-8");
      Utils.a(eh.j, "content", str);
      Utils.a(eh.j, "isExist", "true");
      a();
      Log.i("ggl", "updateLocalConfig");
      localcx = null;
      i = 0;
      if ((i != 0) || (!eh.jdField_a_of_type_Boolean))
      {
        Log.i("ggl", "over");
        if (eh.jdField_a_of_type_Boolean) {
          break label448;
        }
        return null;
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        int i;
        localException.printStackTrace();
        continue;
        if (!b()) {
          return null;
        }
        ae.jdField_a_of_type_JavaLangString = "init_tag";
        dw localdw = (dw)ae.a(eh.aM, new dw());
        eh.aM = null;
        localcx = localdw.a();
        if (localcx == null) {
          return null;
        }
        if (!localcx.a().equals("0000")) {
          break;
        }
        if ((localcx.c() != null) && (!localcx.c().equals("")))
        {
          if (Utils.e(new String(p.a(localcx.c(), 0)) + eh.J).equals(localcx.d()))
          {
            Utils.a(eh.j, "content", Utils.h(new String(p.a(localcx.c(), 0))));
            a();
            i = 0;
          }
        }
        else {
          i = 1;
        }
      }
      this.jdField_a_of_type_JavaLangString = (localcx.a() + "|" + localcx.b());
      return "merchantError";
    }
    label448:
    eh.L = localcx.e();
    eh.I = localcx.a().a();
    Utils.a(eh.j, "pluginSerialNo", eh.I);
    return "done";
  }
  
  protected void a(String paramString)
  {
    if (!eh.jdField_a_of_type_Boolean) {}
    do
    {
      return;
      if (paramString == null)
      {
        Utils.b(this.jdField_a_of_type_ComUnionpayUpompBypayActivitySplashActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), this.jdField_a_of_type_ComUnionpayUpompBypayActivitySplashActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_linkerror")));
        return;
      }
      if (paramString.equals("merchantError"))
      {
        Utils.b(this.jdField_a_of_type_ComUnionpayUpompBypayActivitySplashActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), this.jdField_a_of_type_JavaLangString);
        return;
      }
      if (paramString.equals("validfiles"))
      {
        Utils.b(this.jdField_a_of_type_ComUnionpayUpompBypayActivitySplashActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), this.jdField_a_of_type_ComUnionpayUpompBypayActivitySplashActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_fileerror")));
        return;
      }
      if ((paramString.equals("xml")) || (paramString.equals("want")))
      {
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(eh.jdField_a_of_type_AndroidContentContext);
        localBuilder.setTitle(this.jdField_a_of_type_ComUnionpayUpompBypayActivitySplashActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")));
        localBuilder.setMessage(this.jdField_a_of_type_ComUnionpayUpompBypayActivitySplashActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_splashactivity_initfail")));
        localBuilder.setPositiveButton("OK", new cu(this));
        localBuilder.show();
        return;
      }
      if ((paramString == null) || (!paramString.equals("done"))) {
        break;
      }
      eh.m = "";
      eh.m += "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>";
      eh.m = eh.m + "<upomp application=\"UpClose.Rsp\" pluginVersion=\"" + eh.H + "\">";
      eh.m = eh.m + "<merchantId>" + eh.am + "</merchantId>";
      eh.m += "<respCode>0001</respCode>";
      eh.m = eh.m + "<respDesc>" + this.jdField_a_of_type_ComUnionpayUpompBypayActivitySplashActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_splashactivity_quit")) + "</respDesc>";
      eh.m += "</upomp>";
    } while (eh.c.booleanValue());
    Intent localIntent = new Intent(eh.jdField_a_of_type_AndroidContentContext, PayMainActivity.class);
    eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
    eh.jdField_a_of_type_AndroidAppActivity.finish();
    return;
    Utils.b(this.jdField_a_of_type_ComUnionpayUpompBypayActivitySplashActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), this.jdField_a_of_type_ComUnionpayUpompBypayActivitySplashActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_linkerror")));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.cz
 * JD-Core Version:    0.7.0.1
 */