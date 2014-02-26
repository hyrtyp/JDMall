package com.unionpay.upomp.bypay.other;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.unionpay.upomp.bypay.util.Utils;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;

public class c
  extends AsyncTask
{
  public static String a;
  public static String b = "SoQa5/JiRRKvuhX7XPk2lg==";
  public static String c = "hX1MuJUm2lxESlIjeWEjdg==";
  public static String d = "ihTAIZManhHyTTyPjdeovA==";
  public static String e = "5tKCXLwzUGJ0BWCmHi2JUA==";
  private Drawable jdField_a_of_type_AndroidGraphicsDrawableDrawable;
  private ImageView jdField_a_of_type_AndroidWidgetImageView;
  private ProgressBar jdField_a_of_type_AndroidWidgetProgressBar;
  private String f;
  
  static
  {
    jdField_a_of_type_JavaLangString = "cLpNaLz6";
  }
  
  public c(ImageView paramImageView, ProgressBar paramProgressBar)
  {
    this.jdField_a_of_type_AndroidWidgetImageView = paramImageView;
    this.jdField_a_of_type_AndroidWidgetProgressBar = paramProgressBar;
  }
  
  protected String a(String... paramVarArgs)
  {
    int i = 0;
    Object localObject = Utils.a("", "");
    String str1 = eh.f;
    try
    {
      String str2 = Utils.c((String)localObject);
      localObject = str2;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        bh localbh;
        int j;
        localException.printStackTrace();
        continue;
        if (!str1.equals(eh.f)) {
          return null;
        }
        if ((eh.jdField_a_of_type_ComUnionpayUpompBypayOtherBh == null) || (j > 60))
        {
          eh.jdField_a_of_type_ComUnionpayUpompBypayOtherBh = null;
          eh.f = new SimpleDateFormat("mmssSSS").format(new Date());
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
      if (eh.aN != null) {
        break label182;
      }
      return null;
      if (Utils.c(eh.aN)) {
        break label197;
      }
      eh.aN = null;
      return null;
      if (eh.aN == null) {
        break label413;
      }
      ae.jdField_a_of_type_JavaLangString = "webvalid_tag";
      bo localbo = ((dw)ae.a(eh.aN, new dw())).a();
      eh.aN = null;
      if ((localbo == null) || (!localbo.b().equals("0000"))) {
        break label390;
      }
      this.f = (Utils.i("aIFpfWl9aXllg2SIZIhohmiIaHtogmiFaH5peWh6aYJkh2l+aIdogmiIaIdpeWh6aYJpfGh+aHxpfml7aH5kh2h8aIhohg==") + localbo.a() + "?sessionId=" + eh.L);
      try
      {
        URL localURL = new URL(this.f);
        InputStream localInputStream1 = localURL.openStream();
        for (;;)
        {
          if (localInputStream1.read() == -1)
          {
            if (i != 0) {
              break;
            }
            localInputStream1.close();
            return "session";
          }
          i++;
        }
        localInputStream1.close();
        InputStream localInputStream2 = localURL.openStream();
        if (this.jdField_a_of_type_AndroidGraphicsDrawableDrawable == null) {
          this.jdField_a_of_type_AndroidGraphicsDrawableDrawable = Drawable.createFromStream(localInputStream2, "test");
        }
        return "ok";
      }
      catch (MalformedURLException localMalformedURLException)
      {
        localMalformedURLException.printStackTrace();
        return null;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        return null;
      }
      if ((localbo == null) || (!localbo.b().equals("0058"))) {
        break label411;
      }
      return "session";
      return null;
    }
    localbh = new bh(null, "aIFpfWl9aXllg2SIZIhohmiIaHtogmiFaH5peWh6aYJkh2l+aIdogmiIaIdpeWh6aYJpfGh+aHxpfml7aH5kh2h8aIhohmSIaXppg2iDaYJkiGaAaHppfWh+Z4BoemmCZIhofWh+aHpohWSHaHpofGl9aIJoiGiH", (String)localObject, str1);
    eh.jdField_a_of_type_ComUnionpayUpompBypayOtherBh = localbh;
    eh.jdField_a_of_type_ComUnionpayUpompBypayOtherFv = new fv(eh.jdField_a_of_type_AndroidContentContext);
    eh.jdField_a_of_type_ComUnionpayUpompBypayOtherFv.a(localbh);
    j = 0;
    if ((eh.aN != null) || (!eh.jdField_a_of_type_Boolean))
    {
      if (eh.jdField_a_of_type_Boolean) {
        break label174;
      }
      return null;
    }
    label174:
    label182:
    label197:
    return null;
  }
  
  protected void a(String paramString)
  {
    super.onPostExecute(paramString);
    if (!eh.jdField_a_of_type_Boolean) {}
    do
    {
      do
      {
        return;
        if ((paramString != null) && (paramString.equals("session")))
        {
          Utils.a(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_sessionhint")));
          this.jdField_a_of_type_AndroidWidgetImageView.setImageResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_btn_webv"));
          this.jdField_a_of_type_AndroidWidgetImageView.setVisibility(0);
          this.jdField_a_of_type_AndroidWidgetProgressBar.setVisibility(8);
          return;
        }
        if (paramString == null) {
          break;
        }
      } while (this.jdField_a_of_type_AndroidWidgetImageView == null);
      this.jdField_a_of_type_AndroidWidgetImageView.setImageDrawable(this.jdField_a_of_type_AndroidGraphicsDrawableDrawable);
      this.jdField_a_of_type_AndroidWidgetImageView.setVisibility(0);
    } while (this.jdField_a_of_type_AndroidWidgetProgressBar == null);
    this.jdField_a_of_type_AndroidWidgetProgressBar.setVisibility(8);
    return;
    this.jdField_a_of_type_AndroidWidgetImageView.setImageResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_btn_newweb"));
    this.jdField_a_of_type_AndroidWidgetImageView.setVisibility(0);
    this.jdField_a_of_type_AndroidWidgetProgressBar.setVisibility(8);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.c
 * JD-Core Version:    0.7.0.1
 */