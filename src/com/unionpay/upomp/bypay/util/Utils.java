package com.unionpay.upomp.bypay.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.os.Vibrator;
import android.view.LayoutInflater;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.unionpay.upomp.bypay.activity.LoginActivity;
import com.unionpay.upomp.bypay.activity.PayItActivity;
import com.unionpay.upomp.bypay.other.ac;
import com.unionpay.upomp.bypay.other.ae;
import com.unionpay.upomp.bypay.other.af;
import com.unionpay.upomp.bypay.other.ai;
import com.unionpay.upomp.bypay.other.ak;
import com.unionpay.upomp.bypay.other.am;
import com.unionpay.upomp.bypay.other.an;
import com.unionpay.upomp.bypay.other.ap;
import com.unionpay.upomp.bypay.other.aq;
import com.unionpay.upomp.bypay.other.ar;
import com.unionpay.upomp.bypay.other.at;
import com.unionpay.upomp.bypay.other.au;
import com.unionpay.upomp.bypay.other.av;
import com.unionpay.upomp.bypay.other.aw;
import com.unionpay.upomp.bypay.other.ax;
import com.unionpay.upomp.bypay.other.bb;
import com.unionpay.upomp.bypay.other.bc;
import com.unionpay.upomp.bypay.other.bd;
import com.unionpay.upomp.bypay.other.bf;
import com.unionpay.upomp.bypay.other.bg;
import com.unionpay.upomp.bypay.other.bj;
import com.unionpay.upomp.bypay.other.bl;
import com.unionpay.upomp.bypay.other.bn;
import com.unionpay.upomp.bypay.other.bq;
import com.unionpay.upomp.bypay.other.br;
import com.unionpay.upomp.bypay.other.bt;
import com.unionpay.upomp.bypay.other.bu;
import com.unionpay.upomp.bypay.other.bv;
import com.unionpay.upomp.bypay.other.bx;
import com.unionpay.upomp.bypay.other.by;
import com.unionpay.upomp.bypay.other.c;
import com.unionpay.upomp.bypay.other.ca;
import com.unionpay.upomp.bypay.other.cc;
import com.unionpay.upomp.bypay.other.cd;
import com.unionpay.upomp.bypay.other.ce;
import com.unionpay.upomp.bypay.other.cf;
import com.unionpay.upomp.bypay.other.cg;
import com.unionpay.upomp.bypay.other.ch;
import com.unionpay.upomp.bypay.other.ci;
import com.unionpay.upomp.bypay.other.cj;
import com.unionpay.upomp.bypay.other.ck;
import com.unionpay.upomp.bypay.other.cm;
import com.unionpay.upomp.bypay.other.da;
import com.unionpay.upomp.bypay.other.dc;
import com.unionpay.upomp.bypay.other.de;
import com.unionpay.upomp.bypay.other.dg;
import com.unionpay.upomp.bypay.other.dj;
import com.unionpay.upomp.bypay.other.dn;
import com.unionpay.upomp.bypay.other.dp;
import com.unionpay.upomp.bypay.other.dr;
import com.unionpay.upomp.bypay.other.ds;
import com.unionpay.upomp.bypay.other.dt;
import com.unionpay.upomp.bypay.other.du;
import com.unionpay.upomp.bypay.other.dv;
import com.unionpay.upomp.bypay.other.dw;
import com.unionpay.upomp.bypay.other.eh;
import com.unionpay.upomp.bypay.other.eo;
import com.unionpay.upomp.bypay.other.ex;
import com.unionpay.upomp.bypay.other.ey;
import com.unionpay.upomp.bypay.other.f;
import com.unionpay.upomp.bypay.other.fb;
import com.unionpay.upomp.bypay.other.fd;
import com.unionpay.upomp.bypay.other.fe;
import com.unionpay.upomp.bypay.other.ff;
import com.unionpay.upomp.bypay.other.fg;
import com.unionpay.upomp.bypay.other.fj;
import com.unionpay.upomp.bypay.other.fv;
import com.unionpay.upomp.bypay.other.p;
import com.unionpay.upomp.bypay.other.q;
import com.unionpay.upomp.bypay.other.r;
import com.unionpay.upomp.bypay.other.t;
import com.unionpay.upomp.bypay.other.v;
import com.unionpay.upomp.bypay.other.x;
import com.unionpay.upomp.bypay.other.z;
import java.lang.reflect.Field;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Utils
{
  private static int a;
  public static Dialog a;
  public static c a;
  public static String a;
  public static byte[] a;
  private static String b;
  
  static
  {
    jdField_a_of_type_JavaLangString = "com.unionpay.upomp.bypay.R";
    jdField_a_of_type_ComUnionpayUpompBypayOtherC = null;
    b = "";
    jdField_a_of_type_Int = 0;
  }
  
  public static Boolean A(String paramString)
  {
    if (a(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_cvn2")));
      return Boolean.valueOf(false);
    }
    if (!a(0, paramString, 3).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_cvn2fail")));
      return Boolean.valueOf(false);
    }
    return Boolean.valueOf(true);
  }
  
  public static af a(String paramString1, String paramString2)
  {
    eh.e = new SimpleDateFormat("mmssSSS").format(new Date());
    String str1 = eh.e;
    String str2 = i(paramString1);
    switch (eh.jdField_a_of_type_Byte)
    {
    default: 
      return null;
    }
    return new af(null, str2, paramString2, str1);
  }
  
  public static dw a(String paramString1, String paramString2)
  {
    try
    {
      String str = c(paramString2);
      paramString2 = str;
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
      label139:
      if ((eh.aM == null) || (b(eh.aM))) {
        break label160;
      }
      eh.aM = null;
      return null;
      label160:
      ae.jdField_a_of_type_JavaLangString = paramString1;
      dw localdw = (dw)ae.a(eh.aM, new dw());
      eh.aM = null;
      return localdw;
    }
    localaf = a("aIFpfWl9aXllg2SIZIhohmiIaHtogmiFaH5peWh6aYJkh2l+aIdogmiIaIdpeWh6aYJpfGh+aHxpfml7aH5kh2h8aIhohmSIaXppg2iDaYJkiGaAaHppfWh+Z4BoemmCZIhofWh+aHpohWSHaHpofGl9aIJoiGiH", paramString2);
    eh.jdField_a_of_type_ComUnionpayUpompBypayOtherAf = localaf;
    eh.jdField_a_of_type_ComUnionpayUpompBypayOtherFv = new fv(eh.jdField_a_of_type_AndroidContentContext);
    eh.jdField_a_of_type_ComUnionpayUpompBypayOtherFv.a(localaf);
    i = 0;
    eh.aM = null;
    if ((eh.aM != null) || (!eh.jdField_a_of_type_Boolean))
    {
      if (eh.jdField_a_of_type_Boolean) {
        break label139;
      }
      return null;
    }
  }
  
  public static Boolean a(int paramInt1, String paramString, int paramInt2)
  {
    switch (paramInt1)
    {
    }
    do
    {
      do
      {
        do
        {
          return Boolean.valueOf(false);
        } while ((paramString.length() >= paramInt2) || (paramString.length() <= 0));
        return Boolean.valueOf(true);
      } while (paramString.length() != paramInt2);
      return Boolean.valueOf(true);
    } while (paramString.length() <= paramInt2);
    return Boolean.valueOf(true);
  }
  
  public static Boolean a(String paramString)
  {
    if ((paramString == null) || (paramString.equals(""))) {
      return Boolean.valueOf(true);
    }
    return Boolean.valueOf(false);
  }
  
  public static Boolean a(String paramString1, String paramString2)
  {
    if (a(paramString2).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputenterpsw")));
      return Boolean.valueOf(false);
    }
    if (!paramString1.equals(paramString2))
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_twopswfail")));
      return Boolean.valueOf(false);
    }
    return Boolean.valueOf(true);
  }
  
  public static String a(String paramString)
  {
    eh.w = "GetPanBankBindList.Req";
    return new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>")).append("<upomp application=\"").append(eh.w).append("\" version=\"").append(eh.x).append("\" terminalModel=\"").append(eh.F).append("\" terminalOs=\"").append(eh.G).append("\" pluginVersion =\"").append(eh.H).append("\" pluginSerialNo =\"").append(eh.I).append("\" terminalPhysicalNo=\"").append(eh.J).append("\"").append(">").toString())).append("<loginName>").append(paramString).append("</loginName>").toString())).append("<respCode></respCode>").toString())).append("<respDesc></respDesc>").toString())).append("<msgExt></msgExt>").toString())).append("<misc></misc>").toString() + "</upomp>";
  }
  
  public static String a(String paramString, int paramInt)
  {
    return paramString.substring(paramString.length() - paramInt);
  }
  
  public static String a(String paramString, int paramInt1, int paramInt2)
  {
    int i = 0;
    if (paramString == null) {
      paramString = "";
    }
    while (paramString.length() < 8) {
      return paramString;
    }
    String str = "";
    char[] arrayOfChar = paramString.toCharArray();
    if (arrayOfChar.length == 11) {}
    int k;
    for (int j = 5;; j = 4)
    {
      k = 0;
      if (k < arrayOfChar.length) {
        break;
      }
      return str;
    }
    if (k < paramInt1) {
      str = str + arrayOfChar[k];
    }
    for (;;)
    {
      k++;
      break;
      if (k > -1 + (arrayOfChar.length - paramInt2))
      {
        str = str + arrayOfChar[k];
      }
      else
      {
        i++;
        if (i <= j) {
          str = str + "*";
        }
      }
    }
  }
  
  public static String a(String paramString1, String paramString2)
  {
    eh.w = "GetVerifyCode.Req";
    return new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>")).append("<upomp application=\"").append(eh.w).append("\" version=\"").append(eh.x).append("\" terminalModel=\"").append(eh.F).append("\" terminalOs=\"").append(eh.G).append("\" pluginVersion =\"").append(eh.H).append("\" pluginSerialNo =\"").append(eh.I).append("\" terminalPhysicalNo=\"").append(eh.J).append("\"").append(">").toString())).append("<validateCodeUrl></validateCodeUrl>").toString())).append("<respCode></respCode>").toString())).append("<respDesc></respDesc>").toString())).append("<msgExt>").append(paramString1).append("</msgExt>").toString())).append("<misc>").append(paramString2).append("</misc>").toString() + "</upomp>";
  }
  
  public static String a(String paramString1, String paramString2, String paramString3)
  {
    return "http://t.bypay.cn/validplugin/validate!validPlugin.ac?merchantID=" + paramString1 + "&platform=" + paramString2 + "&version=" + paramString3;
  }
  
  public static String a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    eh.w = "UserResetPwd.Req";
    return new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>")).append("<upomp application=\"").append(eh.w).append("\" version=\"").append(eh.x).append("\" terminalModel=\"").append(eh.F).append("\" terminalOs=\"").append(eh.G).append("\" pluginVersion =\"").append(eh.H).append("\" pluginSerialNo =\"").append(eh.I).append("\" terminalPhysicalNo=\"").append(eh.J).append("\"").append(">").toString())).append("<loginName>").append(paramString1).append("</loginName>").toString())).append("<newPassword>").append(paramString2).append("</newPassword>").toString())).append("<secureAnswer>").append(paramString3).append("</secureAnswer>").toString())).append("<email></email>").toString())).append("<msgExt></msgExt>").toString())).append("<misc></misc>").toString())).append("<respCode></respCode>").toString())).append("<respDesc></respDesc>").toString() + "</upomp>";
  }
  
  public static String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    eh.w = "UserUpdatePwd.Req";
    return new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>")).append("<upomp application=\"").append(eh.w).append("\" version=\"").append(eh.x).append("\" terminalModel=\"").append(eh.F).append("\" terminalOs=\"").append(eh.G).append("\" pluginVersion =\"").append(eh.H).append("\" pluginSerialNo =\"").append(eh.I).append("\" terminalPhysicalNo=\"").append(eh.J).append("\"").append(">").toString())).append("<loginName>").append(paramString1).append("</loginName>").toString())).append("<mobileNumber>").append(paramString4).append("</mobileNumber>").toString())).append("<mobileMac>").append(paramString5).append("</mobileMac>").toString())).append("<password>").append(paramString2).append("</password>").toString())).append("<newPassword>").append(paramString3).append("</newPassword>").toString())).append("<respCode></respCode>").toString())).append("<respDesc></respDesc>").toString())).append("<msgExt></msgExt>").toString())).append("<misc></misc>").toString() + "</upomp>";
  }
  
  public static String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9)
  {
    eh.w = "UserRegister.Req";
    return new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>")).append("<upomp application=\"").append(eh.w).append("\" version=\"").append(eh.x).append("\" terminalModel=\"").append(eh.F).append("\" terminalOs=\"").append(eh.G).append("\" pluginVersion =\"").append(eh.H).append("\" pluginSerialNo =\"").append(eh.I).append("\" terminalPhysicalNo=\"").append(eh.J).append("\"").append(">").toString())).append("<loginName>").append(paramString1).append("</loginName>").toString())).append("<password>").append(paramString2).append("</password>").toString())).append("<mobileNumber>").append(paramString3).append("</mobileNumber>").toString())).append("<mobileMac>").append(paramString4).append("</mobileMac>").toString())).append("<validateCode>").append(paramString5).append("</validateCode>").toString())).append("<email>").append(paramString6).append("</email>").toString())).append("<welcome>").append(paramString7).append("</welcome>").toString())).append("<secureQuestion>").append(paramString8).append("</secureQuestion>").toString())).append("<secureAnswer>").append(paramString9).append("</secureAnswer>").toString())).append("<respCode></respCode>").toString())).append("<respDesc></respDesc>").toString())).append("<msgExt></msgExt>").toString())).append("<misc></misc>").toString() + "</upomp>";
  }
  
  public static String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10)
  {
    eh.w = "PanBankBind.Req";
    return new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>")).append("<upomp application=\"").append(eh.w).append("\" version=\"").append(eh.x).append("\" terminalModel=\"").append(eh.F).append("\" terminalOs=\"").append(eh.G).append("\" pluginVersion =\"").append(eh.H).append("\" pluginSerialNo =\"").append(eh.I).append("\" terminalPhysicalNo=\"").append(eh.J).append("\"").append(">").toString())).append("<loginName>").append(paramString1).append("</loginName>").toString())).append("<mobileNumber>").append(paramString2).append("</mobileNumber>").toString())).append("<mobileMac>").append(paramString3).append("</mobileMac>").toString())).append("<panType>").append(paramString4).append("</panType>").toString())).append("<panBankId>").append(paramString5).append("</panBankId>").toString())).append("<pan>").append(paramString6).append("</pan>").toString())).append("<pin>").append(paramString7).append("</pin>").toString())).append("<panDate>").append(paramString8).append("</panDate>").toString())).append("<cvn2>").append(paramString9).append("</cvn2>").toString())).append("<isDefault>").append(paramString10).append("</isDefault>").toString())).append("<respCode></respCode>").toString())).append("<respDesc></respDesc>").toString())).append("<msgExt></msgExt>").toString())).append("<misc></misc>").toString() + "</upomp>";
  }
  
  public static String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, String paramString11, String paramString12, String paramString13, String paramString14, String paramString15, String paramString16, String paramString17, String paramString18, String paramString19, String paramString20)
  {
    eh.w = "CommonPay.Req";
    String str1 = new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>")).append("<upomp application=\"").append(eh.w).append("\" version=\"").append(eh.x).append("\" pluginVersion=\"").append(eh.H).append("\" terminalModel=\"").append(eh.F).append("\" terminalOs=\"").append(eh.G).append("\" pluginSerialNo =\"").append(eh.I).append("\" terminalPhysicalNo=\"").append(eh.J).append("\"").append(">").toString())).append("<payType>").append(paramString1).append("</payType>").toString())).append("<loginName>").append(paramString19).append("</loginName>").toString())).append("<password>").append(paramString20).append("</password>").toString())).append("<mobileNumber>").append(paramString2).append("</mobileNumber>").toString())).append("<mobileMac>").append(paramString3).append("</mobileMac>").toString())).append("<validateCode>").append(paramString4).append("</validateCode>").toString())).append("<pan>").append(paramString5).append("</pan>").toString())).append("<pin>").append(paramString6).append("</pin>").toString())).append("<panDate>").append(paramString7).append("</panDate>").toString())).append("<cvn2>").append(paramString8).append("</cvn2>").toString())).append("<merchantName>").append(paramString9).append("</merchantName>").toString())).append("<merchantId>").append(paramString10).append("</merchantId>").toString())).append("<merchantOrderId>").append(paramString11).append("</merchantOrderId>").toString())).append("<merchantOrderTime>").append(paramString12).append("</merchantOrderTime>").toString())).append("<merchantOrderAmt>").append(paramString13).append("</merchantOrderAmt>").toString())).append("<merchantOrderDesc>").append(paramString14).append("</merchantOrderDesc>").toString())).append("<transTimeout>").append(paramString15).append("</transTimeout>").toString())).append("<sign>").append(paramString16).append("</sign>").toString())).append("<merchantPublicCert>").append(eh.ak).append("</merchantPublicCert>").toString())).append("<msgExt>").append(paramString17).append("</msgExt>").toString())).append("<misc>").append(paramString18).append("</misc>").toString())).append("<backEndUrl>").append(eh.az).append("</backEndUrl>").toString())).append("<settleDate></settleDate><setlAmt></setlAmt><setlCurrency></setlCurrency><converRate></converRate><cupsQid></cupsQid><cupsTraceNum></cupsTraceNum><cupsTraceTime></cupsTraceTime><cupsRespCode></cupsRespCode><respCode></respCode><respDesc></respDesc>").toString() + "</upomp>";
    String str2 = "";
    for (int i = 0;; i++)
    {
      if (i >= str1.toCharArray().length) {
        return str1;
      }
      if ((str1.charAt(i) != '\r') && (str1.charAt(i) != '\n')) {
        str2 = str2 + str1.charAt(i);
      }
    }
  }
  
  public static String a(String paramString, byte[] paramArrayOfByte)
  {
    Object localObject = paramString.getBytes();
    try
    {
      byte[] arrayOfByte = f.b((byte[])localObject, paramArrayOfByte);
      localObject = arrayOfByte;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
    return p.a((byte[])localObject, 0);
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    i = 0;
    try
    {
      byte[] arrayOfByte2 = dv.a(paramArrayOfByte, p.a(eh.A.getBytes(), 0));
      arrayOfByte1 = arrayOfByte2;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        String str1;
        String str2;
        localException.printStackTrace();
        byte[] arrayOfByte1 = null;
        continue;
        if ((str1.charAt(i) != '\r') && (str1.charAt(i) != '\n')) {
          str2 = str2 + str1.charAt(i);
        }
        i++;
      }
    }
    str1 = p.a(arrayOfByte1, 0);
    str2 = "";
    if (i >= str1.toCharArray().length) {
      return str2;
    }
  }
  
  public static void a()
  {
    if (jdField_a_of_type_AndroidAppDialog != null) {
      jdField_a_of_type_AndroidAppDialog.dismiss();
    }
  }
  
  public static void a(int paramInt1, int paramInt2)
  {
    eh.jdField_k_of_type_Boolean = false;
    eh.O = "";
    eh.R = "";
    eh.W = "";
    eh.X = "";
    eh.P = "";
    Intent localIntent = new Intent();
    switch (paramInt1)
    {
    default: 
      return;
    case 0: 
      eh.q = 1;
      localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, LoginActivity.class);
      eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
      eh.jdField_a_of_type_AndroidAppActivity.finish();
      return;
    }
    eh.jdField_k_of_type_Int = 1;
    eh.q = 0;
    eh.j = false;
    switch (paramInt2)
    {
    default: 
      return;
    }
    localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, PayItActivity.class);
    eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
    eh.jdField_a_of_type_AndroidAppActivity.finish();
  }
  
  public static void a(int paramInt, String paramString)
  {
    if (paramInt != 0)
    {
      TextView localTextView = (TextView)eh.jdField_a_of_type_AndroidAppActivity.findViewById(paramInt);
      if (paramString != null) {
        localTextView.setText(paramString);
      }
    }
  }
  
  public static void a(Context paramContext, int paramInt)
  {
    jdField_a_of_type_AndroidAppDialog = new bg(paramContext, getResourceId(jdField_a_of_type_JavaLangString, "style", "upomp_bypay_MyDialog"), getResourceId(jdField_a_of_type_JavaLangString, "layout", "upomp_bypay_loading_dialog"), true);
    jdField_a_of_type_AndroidAppDialog.setOnCancelListener(new eo());
    jdField_a_of_type_AndroidAppDialog.show();
  }
  
  public static void a(Context paramContext, View paramView, int paramInt1, int paramInt2, boolean paramBoolean, EditText paramEditText, Button paramButton, String paramString)
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)eh.jdField_a_of_type_AndroidAppActivity.getSystemService("input_method");
    View localView1 = eh.jdField_a_of_type_AndroidAppActivity.getCurrentFocus();
    if (localView1 != null) {
      localInputMethodManager.hideSoftInputFromWindow(localView1.getWindowToken(), 0);
    }
    eh.jdField_a_of_type_AndroidWidgetEditText = paramEditText;
    eh.jdField_a_of_type_AndroidWidgetButton = paramButton;
    View localView2 = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(getResourceId(jdField_a_of_type_JavaLangString, "layout", "upomp_bypay_keyboard"), null, false);
    eh.jdField_h_of_type_Boolean = false;
    d(localView2);
    jdField_a_of_type_Int = 1;
    c(localView2);
    e(localView2);
    PopupWindow localPopupWindow = new PopupWindow(localView2, -2, -2, true);
    localView2.setFocusable(true);
    localView2.setFocusableInTouchMode(true);
    localView2.setOnKeyListener(new ey(localPopupWindow));
    RelativeLayout localRelativeLayout1 = (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_number"));
    RelativeLayout localRelativeLayout2 = (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_letter"));
    RelativeLayout localRelativeLayout3 = (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_symbol"));
    Button localButton1 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_num"));
    Button localButton2 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_letter"));
    Button localButton3 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_symbol"));
    EditText localEditText = (EditText)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "et_psw_window"));
    localEditText.setHint(paramString);
    b = ((Button)paramView.findViewById(paramInt1)).getText().toString();
    localEditText.setText(b);
    Button localButton4 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_key0"));
    RelativeLayout localRelativeLayout4 = (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_key0_toast"));
    TextView localTextView1 = (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_key0_toast"));
    localButton4.setOnTouchListener(new fg(localButton4, paramInt2, localRelativeLayout4, localTextView1, localEditText));
    Button localButton5 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_key1"));
    RelativeLayout localRelativeLayout5 = (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_key1_toast"));
    TextView localTextView2 = (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_key1_toast"));
    localButton5.setOnTouchListener(new fj(localButton5, paramInt2, localRelativeLayout5, localTextView2, localEditText));
    Button localButton6 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_key2"));
    RelativeLayout localRelativeLayout6 = (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_key2_toast"));
    TextView localTextView3 = (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_key2_toast"));
    localButton6.setOnTouchListener(new fe(localButton6, paramInt2, localRelativeLayout6, localTextView3, localEditText));
    Button localButton7 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_key3"));
    RelativeLayout localRelativeLayout7 = (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_key3_toast"));
    TextView localTextView4 = (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_key3_toast"));
    localButton7.setOnTouchListener(new ff(localButton7, paramInt2, localRelativeLayout7, localTextView4, localEditText));
    Button localButton8 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_key4"));
    RelativeLayout localRelativeLayout8 = (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_key4_toast"));
    TextView localTextView5 = (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_key4_toast"));
    localButton8.setOnTouchListener(new dj(localButton8, paramInt2, localRelativeLayout8, localTextView5, localEditText));
    Button localButton9 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_key5"));
    RelativeLayout localRelativeLayout9 = (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_key5_toast"));
    TextView localTextView6 = (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_key5_toast"));
    localButton9.setOnTouchListener(new dp(localButton9, paramInt2, localRelativeLayout9, localTextView6, localEditText));
    Button localButton10 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_key6"));
    RelativeLayout localRelativeLayout10 = (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_key6_toast"));
    TextView localTextView7 = (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_key6_toast"));
    localButton10.setOnTouchListener(new dn(localButton10, paramInt2, localRelativeLayout10, localTextView7, localEditText));
    Button localButton11 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_key7"));
    RelativeLayout localRelativeLayout11 = (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_key7_toast"));
    TextView localTextView8 = (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_key7_toast"));
    localButton11.setOnTouchListener(new ds(localButton11, paramInt2, localRelativeLayout11, localTextView8, localEditText));
    Button localButton12 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_key8"));
    RelativeLayout localRelativeLayout12 = (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_key8_toast"));
    TextView localTextView9 = (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_key8_toast"));
    localButton12.setOnTouchListener(new dr(localButton12, paramInt2, localRelativeLayout12, localTextView9, localEditText));
    Button localButton13 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_key9"));
    RelativeLayout localRelativeLayout13 = (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_key9_toast"));
    TextView localTextView10 = (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_key9_toast"));
    localButton13.setOnTouchListener(new du(localButton13, paramInt2, localRelativeLayout13, localTextView10, localEditText));
    ((Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_backspace"))).setOnClickListener(new dt(localEditText));
    Button localButton14 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyQ"));
    localButton14.setOnTouchListener(new de(localButton14, paramInt2, (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_keyQ_toast")), (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_keyQ_toast")), localEditText));
    Button localButton15 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyW"));
    localButton15.setOnTouchListener(new dc(localButton15, paramInt2, (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_keyW_toast")), (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_keyW_toast")), localEditText));
    Button localButton16 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyE"));
    localButton16.setOnTouchListener(new dg(localButton16, paramInt2, (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_keyE_toast")), (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_keyE_toast")), localEditText));
    Button localButton17 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyR"));
    localButton17.setOnTouchListener(new ca(localButton17, paramInt2, (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_keyR_toast")), (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_keyR_toast")), localEditText));
    Button localButton18 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyT"));
    localButton18.setOnTouchListener(new cc(localButton18, paramInt2, (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_keyT_toast")), (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_keyT_toast")), localEditText));
    Button localButton19 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyY"));
    localButton19.setOnTouchListener(new cd(localButton19, paramInt2, (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_keyY_toast")), (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_keyY_toast")), localEditText));
    Button localButton20 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyU"));
    localButton20.setOnTouchListener(new ce(localButton20, paramInt2, (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_keyU_toast")), (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_keyU_toast")), localEditText));
    Button localButton21 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyI"));
    localButton21.setOnTouchListener(new cf(localButton21, paramInt2, (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_keyI_toast")), (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_keyI_toast")), localEditText));
    Button localButton22 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyO"));
    localButton22.setOnTouchListener(new cg(localButton22, paramInt2, (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_keyO_toast")), (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_keyO_toast")), localEditText));
    Button localButton23 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyP"));
    localButton23.setOnTouchListener(new ch(localButton23, paramInt2, (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_keyP_toast")), (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_keyP_toast")), localEditText));
    Button localButton24 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyA"));
    localButton24.setOnTouchListener(new ci(localButton24, paramInt2, (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_keyA_toast")), (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_keyA_toast")), localEditText));
    Button localButton25 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyS"));
    localButton25.setOnTouchListener(new cj(localButton25, paramInt2, (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_keyS_toast")), (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_keyS_toast")), localEditText));
    Button localButton26 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyD"));
    localButton26.setOnTouchListener(new ck(localButton26, paramInt2, (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_keyD_toast")), (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_keyD_toast")), localEditText));
    Button localButton27 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyF"));
    localButton27.setOnTouchListener(new cm(localButton27, paramInt2, (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_keyF_toast")), (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_keyF_toast")), localEditText));
    Button localButton28 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyG"));
    localButton28.setOnTouchListener(new bl(localButton28, paramInt2, (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_keyG_toast")), (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_keyG_toast")), localEditText));
    Button localButton29 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyH"));
    localButton29.setOnTouchListener(new bn(localButton29, paramInt2, (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_keyH_toast")), (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_keyH_toast")), localEditText));
    Button localButton30 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyJ"));
    localButton30.setOnTouchListener(new bf(localButton30, paramInt2, (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_keyJ_toast")), (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_keyJ_toast")), localEditText));
    Button localButton31 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyK"));
    localButton31.setOnTouchListener(new bj(localButton31, paramInt2, (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_keyK_toast")), (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_keyK_toast")), localEditText));
    Button localButton32 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyL"));
    localButton32.setOnTouchListener(new bt(localButton32, paramInt2, (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_keyL_toast")), (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_keyL_toast")), localEditText));
    Button localButton33 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyZ"));
    localButton33.setOnTouchListener(new bu(localButton33, paramInt2, (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_keyZ_toast")), (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_keyZ_toast")), localEditText));
    Button localButton34 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyX"));
    localButton34.setOnTouchListener(new bq(localButton34, paramInt2, (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_keyX_toast")), (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_keyX_toast")), localEditText));
    Button localButton35 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyC"));
    localButton35.setOnTouchListener(new br(localButton35, paramInt2, (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_keyC_toast")), (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_keyC_toast")), localEditText));
    Button localButton36 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyV"));
    localButton36.setOnTouchListener(new bv(localButton36, paramInt2, (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_keyV_toast")), (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_keyV_toast")), localEditText));
    Button localButton37 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyB"));
    localButton37.setOnTouchListener(new by(localButton37, paramInt2, (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_keyB_toast")), (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_keyB_toast")), localEditText));
    Button localButton38 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyN"));
    localButton38.setOnTouchListener(new bx(localButton38, paramInt2, (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_keyN_toast")), (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_keyN_toast")), localEditText));
    Button localButton39 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyM"));
    localButton39.setOnTouchListener(new au(localButton39, paramInt2, (RelativeLayout)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "rl_keyM_toast")), (TextView)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "tv_keyM_toast")), localEditText));
    ((Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_letter_backspace"))).setOnClickListener(new av(localEditText));
    Button localButton40 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_letter_size"));
    localButton40.setOnClickListener(new aw(localButton40, localView2));
    Button localButton41 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_symbol_0"));
    localButton41.setOnTouchListener(new ax(localButton41, paramInt2, localRelativeLayout4, localTextView1, localEditText));
    Button localButton42 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_symbol_1"));
    localButton42.setOnTouchListener(new ap(localButton42, paramInt2, localRelativeLayout5, localTextView2, localEditText));
    Button localButton43 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_symbol_2"));
    localButton43.setOnTouchListener(new aq(localButton43, paramInt2, localRelativeLayout6, localTextView3, localEditText));
    Button localButton44 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_symbol_3"));
    localButton44.setOnTouchListener(new ar(localButton44, paramInt2, localRelativeLayout7, localTextView4, localEditText));
    Button localButton45 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_symbol_4"));
    localButton45.setOnTouchListener(new at(localButton45, paramInt2, localRelativeLayout8, localTextView5, localEditText));
    Button localButton46 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_symbol_5"));
    localButton46.setOnTouchListener(new bb(localButton46, paramInt2, localRelativeLayout9, localTextView6, localEditText));
    Button localButton47 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_symbol_6"));
    localButton47.setOnTouchListener(new bd(localButton47, paramInt2, localRelativeLayout10, localTextView7, localEditText));
    Button localButton48 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_symbol_7"));
    localButton48.setOnTouchListener(new bc(localButton48, paramInt2, localRelativeLayout11, localTextView8, localEditText));
    Button localButton49 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_symbol_8"));
    localButton49.setOnTouchListener(new z(localButton49, paramInt2, localRelativeLayout12, localTextView9, localEditText));
    Button localButton50 = (Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_symbol_9"));
    localButton50.setOnTouchListener(new ac(localButton50, paramInt2, localRelativeLayout13, localTextView10, localEditText));
    ((Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_symbol_backspace"))).setOnClickListener(new v(localEditText));
    ((Button)localView2.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_enter"))).setOnClickListener(new x(paramView, paramInt1, localPopupWindow));
    localButton1.setOnClickListener(new r(localView2, localRelativeLayout1, localRelativeLayout2, localRelativeLayout3, localButton1, localButton2, localButton3));
    localButton2.setEnabled(paramBoolean);
    localButton2.setOnClickListener(new t(localButton40, localView2, localRelativeLayout1, localRelativeLayout2, localRelativeLayout3, localButton1, localButton2, localButton3));
    localButton3.setEnabled(paramBoolean);
    localButton3.setOnClickListener(new q(localRelativeLayout1, localRelativeLayout2, localRelativeLayout3, localButton1, localButton2, localButton3));
    localPopupWindow.showAtLocation(paramView, 80, 0, 0);
  }
  
  public static void a(Button paramButton, int paramInt, RelativeLayout paramRelativeLayout, TextView paramTextView, EditText paramEditText)
  {
    String str = paramButton.getText().toString();
    paramRelativeLayout.setVisibility(0);
    c(1, 0);
    paramTextView.setText(str);
    c();
    if (b.length() >= paramInt) {
      return;
    }
    b += str;
    paramEditText.setText(b);
  }
  
  public static void a(EditText paramEditText, String paramString)
  {
    if (eh.d.booleanValue()) {
      paramEditText.setText(paramString);
    }
  }
  
  public static void a(ImageView paramImageView, ProgressBar paramProgressBar)
  {
    jdField_a_of_type_ComUnionpayUpompBypayOtherC = null;
    eh.aN = null;
    paramImageView.setVisibility(8);
    paramProgressBar.setVisibility(0);
    eh.f = new SimpleDateFormat("mmssSSS").format(new Date());
    jdField_a_of_type_ComUnionpayUpompBypayOtherC = new c(paramImageView, paramProgressBar);
    jdField_a_of_type_ComUnionpayUpompBypayOtherC.execute(new String[] { "" });
  }
  
  public static void a(String paramString)
  {
    Toast.makeText(eh.jdField_a_of_type_AndroidContentContext, paramString, 0).show();
  }
  
  public static void a(String paramString1, String paramString2)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(eh.jdField_a_of_type_AndroidContentContext);
    localBuilder.setTitle(paramString1);
    localBuilder.setMessage(paramString2);
    localBuilder.setPositiveButton("是", new am());
    localBuilder.setNegativeButton("否", new ak());
    localBuilder.show();
  }
  
  public static void a(String paramString1, String paramString2, String paramString3)
  {
    SharedPreferences localSharedPreferences = eh.jdField_a_of_type_AndroidAppActivity.getSharedPreferences(paramString1, 0);
    if (localSharedPreferences != null) {
      localSharedPreferences.edit().putString(paramString2, paramString3).commit();
    }
  }
  
  public static boolean a(String paramString)
  {
    return true;
  }
  
  private static boolean a(char[] paramArrayOfChar1, char[] paramArrayOfChar2)
  {
    int i = 0;
    if (i >= paramArrayOfChar1.length) {
      return false;
    }
    for (int j = 0;; j++)
    {
      if (j >= paramArrayOfChar2.length)
      {
        i++;
        break;
      }
      if (paramArrayOfChar1[i] == paramArrayOfChar2[j]) {
        return true;
      }
    }
  }
  
  public static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    try
    {
      byte[] arrayOfByte = f.a(paramArrayOfByte1, paramArrayOfByte2);
      return arrayOfByte;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
  
  private static String[] a(String[] paramArrayOfString, int paramInt1, int paramInt2)
  {
    String str = paramArrayOfString[paramInt1];
    paramArrayOfString[paramInt1] = paramArrayOfString[paramInt2];
    paramArrayOfString[paramInt2] = str;
    return paramArrayOfString;
  }
  
  public static Boolean b(String paramString)
  {
    if ((paramString.length() >= 6) && (paramString.length() <= 20)) {
      return Boolean.valueOf(true);
    }
    return Boolean.valueOf(false);
  }
  
  public static Boolean b(String paramString1, String paramString2)
  {
    if (a(paramString2).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputenternewpsw")));
      return Boolean.valueOf(false);
    }
    if (!paramString1.equals(paramString2))
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_twonewpswfail")));
      return Boolean.valueOf(false);
    }
    return Boolean.valueOf(true);
  }
  
  public static String b(String paramString)
  {
    if (paramString.equals("00")) {
      return eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_debitcard"));
    }
    if (paramString.equals("01")) {
      return eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_creditcard"));
    }
    return eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_cardunknown"));
  }
  
  public static String b(String paramString1, String paramString2)
  {
    eh.w = "PluginInit.Req";
    return new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>")).append("<upomp application=\"").append(eh.w).append("\" version=\"").append(eh.x).append("\" pluginVersion=\"").append(eh.H).append("\" terminalModel=\"").append(eh.F).append("\" terminalOs=\"").append(eh.G).append("\" pluginSerialNo =\"").append(eh.I).append("\" terminalPhysicalNo=\"").append(eh.J).append("\"").append(">").toString())).append("<merchantId>").append(paramString1).append("</merchantId>").toString())).append("<sessionID></sessionID>").toString())).append("<configVersion>").append(paramString2).append("</configVersion>").toString())).append("<configFile></configFile>").toString())).append("<configFileHash></configFileHash>").toString())).append("<msgExt></msgExt>").toString())).append("<misc></misc>").toString())).append("<respCode></respCode>").toString())).append("<respDesc></respDesc>").toString() + "</upomp>";
  }
  
  public static String b(String paramString1, String paramString2, String paramString3)
  {
    eh.w = "UserLogin.Req";
    return new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>")).append("<upomp application=\"").append(eh.w).append("\" version=\"").append(eh.x).append("\" terminalModel=\"").append(eh.F).append("\" terminalOs=\"").append(eh.G).append("\" pluginVersion =\"").append(eh.H).append("\" pluginSerialNo =\"").append(eh.I).append("\" terminalPhysicalNo=\"").append(eh.J).append("\"").append(">").toString())).append("<loginName>").append(paramString1).append("</loginName>").toString())).append("<password>").append(paramString2).append("</password>").toString())).append("<validateCode>").append(paramString3).append("</validateCode>").toString())).append("<mobileNumber></mobileNumber>").toString())).append("<email></email>").toString())).append("<welcome></welcome>").toString())).append("<respCode></respCode>").toString())).append("<respDesc></respDesc>").toString())).append("<msgExt></msgExt>").toString())).append("<misc></misc>").toString() + "</upomp>";
  }
  
  public static String b(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    eh.w = "GetSecureQuestion.Req";
    return new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>")).append("<upomp application=\"").append(eh.w).append("\" version=\"").append(eh.x).append("\" terminalModel=\"").append(eh.F).append("\" terminalOs=\"").append(eh.G).append("\" pluginVersion =\"").append(eh.H).append("\" pluginSerialNo =\"").append(eh.I).append("\" terminalPhysicalNo=\"").append(eh.J).append("\"").append(">").toString())).append("<loginName>").append(paramString1).append("</loginName>").toString())).append("<mobileNumber>").append(paramString2).append("</mobileNumber>").toString())).append("<mobileMac>").append(paramString3).append("</mobileMac>").toString())).append("<secureQuestion></secureQuestion>").toString())).append("<validateCode>").append(paramString4).append("</validateCode>").toString())).append("<respCode></respCode>").toString())).append("<respDesc></respDesc>").toString())).append("<msgExt></msgExt>").toString())).append("<misc></misc>").toString() + "</upomp>";
  }
  
  public static String b(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    eh.w = "UpdateMobileNumber.Req";
    return new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>")).append("<upomp application=\"").append(eh.w).append("\" version=\"").append(eh.x).append("\" terminalModel=\"").append(eh.F).append("\" terminalOs=\"").append(eh.G).append("\" pluginVersion =\"").append(eh.H).append("\" pluginSerialNo =\"").append(eh.I).append("\" terminalPhysicalNo=\"").append(eh.J).append("\"").append(">").toString())).append("<loginName>").append(paramString1).append("</loginName>").toString())).append("<password>").append(paramString2).append("</password>").toString())).append("<mobileNumber>").append(paramString3).append("</mobileNumber>").toString())).append("<newMobileNumber>").append(paramString4).append("</newMobileNumber>").toString())).append("<mobileMac>").append(paramString5).append("</mobileMac>").toString())).append("<respCode></respCode>").toString())).append("<respDesc></respDesc>").toString())).append("<msgExt></msgExt>").toString())).append("<misc></misc>").toString() + "</upomp>";
  }
  
  public static void b()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(eh.jdField_a_of_type_AndroidContentContext);
    localBuilder.setMessage(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_enterquit")));
    localBuilder.setTitle(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_prompt")));
    localBuilder.setPositiveButton(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_affirm")), new fd());
    localBuilder.setNegativeButton(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_cancel")), new ex());
    localBuilder.create().show();
  }
  
  public static void b(Context paramContext, int paramInt)
  {
    jdField_a_of_type_AndroidAppDialog = new bg(paramContext, getResourceId(jdField_a_of_type_JavaLangString, "style", "upomp_bypay_MyDialog"), getResourceId(jdField_a_of_type_JavaLangString, "layout", "upomp_bypay_loading1_dialog"), false);
    jdField_a_of_type_AndroidAppDialog.setOnCancelListener(new fb());
    jdField_a_of_type_AndroidAppDialog.show();
  }
  
  public static void b(String paramString1, String paramString2)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(eh.jdField_a_of_type_AndroidContentContext);
    localBuilder.setTitle(paramString1);
    localBuilder.setMessage(paramString2);
    localBuilder.setPositiveButton("OK", new ai());
    localBuilder.show();
  }
  
  private static boolean b(int paramInt)
  {
    if (paramInt != jdField_a_of_type_Int)
    {
      jdField_a_of_type_Int = paramInt;
      return false;
    }
    return true;
  }
  
  public static boolean b(String paramString)
  {
    if (paramString == null) {}
    for (;;)
    {
      return false;
      String[] arrayOfString = paramString.split("\\|");
      if (arrayOfString.length == 3)
      {
        if (arrayOfString[0].equals("0")) {
          try
          {
            new String(p.a(arrayOfString[2], 0), "UTF-8");
            eh.aM = null;
            return false;
          }
          catch (Exception localException2)
          {
            localException2.printStackTrace();
            return false;
          }
        }
        if (arrayOfString[0].equals("1")) {}
        try
        {
          String str = new String(a(p.a(arrayOfString[1], 0), jdField_a_of_type_ArrayOfByte), "UTF-8");
          if (e(str).equals(arrayOfString[2]))
          {
            eh.aM = str;
            return true;
          }
        }
        catch (Exception localException1)
        {
          localException1.printStackTrace();
        }
      }
    }
    return false;
  }
  
  public static Boolean c(String paramString)
  {
    if ((paramString.length() >= 6) && (paramString.length() <= 12)) {
      return Boolean.valueOf(true);
    }
    return Boolean.valueOf(false);
  }
  
  public static String c(String paramString)
  {
    jdField_a_of_type_ArrayOfByte = f.b();
    return d(eh.B) + "|" + a(jdField_a_of_type_ArrayOfByte) + "|" + a(paramString, jdField_a_of_type_ArrayOfByte) + "|" + e(paramString);
  }
  
  public static String c(String paramString1, String paramString2)
  {
    SharedPreferences localSharedPreferences = eh.jdField_a_of_type_AndroidAppActivity.getSharedPreferences(paramString1, 0);
    String str = null;
    if (localSharedPreferences != null) {
      str = localSharedPreferences.getString(paramString2, "");
    }
    return str;
  }
  
  public static String c(String paramString1, String paramString2, String paramString3)
  {
    eh.w = "GetMobileMac.Req";
    return new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>")).append("<upomp application=\"").append(eh.w).append("\" version=\"").append(eh.x).append("\" terminalModel=\"").append(eh.F).append("\" terminalOs=\"").append(eh.G).append("\" pluginVersion =\"").append(eh.H).append("\" pluginSerialNo =\"").append(eh.I).append("\" terminalPhysicalNo=\"").append(eh.J).append("\"").append(">").toString())).append("<mobileNumber>").append(paramString1).append("</mobileNumber>").toString())).append("<secureInfo>").append(paramString2).append("</secureInfo>").toString())).append("<mobileMac></mobileMac>").toString())).append("<respCode></respCode>").toString())).append("<respDesc></respDesc>").toString())).append("<msgExt></msgExt>").toString())).append("<misc>").append(paramString3).append("</misc>").toString() + "</upomp>";
  }
  
  public static String c(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    eh.w = "BalanceEnquiry.Req";
    return new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>")).append("<upomp application=\"").append(eh.w).append("\" version=\"").append(eh.x).append("\" terminalModel=\"").append(eh.F).append("\" terminalOs=\"").append(eh.G).append("\" pluginVersion =\"").append(eh.H).append("\" pluginSerialNo =\"").append(eh.I).append("\" terminalPhysicalNo=\"").append(eh.J).append("\"").append(">").toString())).append("<loginName>").append(paramString1).append("</loginName>").toString())).append("<mobileNumber>").append(paramString2).append("</mobileNumber>").toString())).append("<pan>").append(paramString3).append("</pan>").toString())).append("<pin>").append(paramString4).append("</pin>").toString())).append("<balance></balance>").toString())).append("<currency></currency>").toString())).append("<cupsQid></cupsQid>").toString())).append("<cupsTraceNum></cupsTraceNum>").toString())).append("<cupsTraceTime></cupsTraceTime>").toString())).append("<cupsRespCode></cupsRespCode>").toString())).append("<respCode></respCode>").toString())).append("<respDesc></respDesc>").toString())).append("<msgExt></msgExt>").toString())).append("<misc></misc>").toString() + "</upomp>";
  }
  
  public static String c(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    eh.w = "DefaultPanSet.Req";
    return new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>")).append("<upomp application=\"").append(eh.w).append("\" version=\"").append(eh.x).append("\" terminalModel=\"").append(eh.F).append("\" terminalOs=\"").append(eh.G).append("\" pluginVersion =\"").append(eh.H).append("\" pluginSerialNo =\"").append(eh.I).append("\" terminalPhysicalNo=\"").append(eh.J).append("\"").append(">").toString())).append("<loginName>").append(paramString1).append("</loginName>").toString())).append("<mobileNumber>").append(paramString2).append("</mobileNumber>").toString())).append("<panType>").append(paramString3).append("</panType>").toString())).append("<bindId>").append(paramString4).append("</bindId>").toString())).append("<pan>").append(paramString5).append("</pan>").toString())).append("<respCode></respCode>").toString())).append("<respDesc></respDesc>").toString())).append("<msgExt></msgExt>").toString())).append("<misc></misc>").toString() + "</upomp>";
  }
  
  public static void c()
  {
    ((Vibrator)eh.jdField_a_of_type_AndroidAppActivity.getSystemService("vibrator")).vibrate(new long[] { 50L, 50L }, -1);
  }
  
  private static void c(int paramInt1, int paramInt2) {}
  
  private static void c(View paramView)
  {
    String[] arrayOfString = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9" };
    for (int i = 0;; i++)
    {
      if (i >= 10)
      {
        Button localButton1 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_key0"));
        localButton1.setText(arrayOfString[0]);
        localButton1.setTextSize(20.0F);
        Button localButton2 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_key1"));
        localButton2.setText(arrayOfString[1]);
        localButton2.setTextSize(20.0F);
        Button localButton3 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_key2"));
        localButton3.setText(arrayOfString[2]);
        localButton3.setTextSize(20.0F);
        Button localButton4 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_key3"));
        localButton4.setText(arrayOfString[3]);
        localButton4.setTextSize(20.0F);
        Button localButton5 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_key4"));
        localButton5.setText(arrayOfString[4]);
        localButton5.setTextSize(20.0F);
        Button localButton6 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_key5"));
        localButton6.setText(arrayOfString[5]);
        localButton6.setTextSize(20.0F);
        Button localButton7 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_key6"));
        localButton7.setText(arrayOfString[6]);
        localButton7.setTextSize(20.0F);
        Button localButton8 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_key7"));
        localButton8.setText(arrayOfString[7]);
        localButton8.setTextSize(20.0F);
        Button localButton9 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_key8"));
        localButton9.setText(arrayOfString[8]);
        localButton9.setTextSize(20.0F);
        Button localButton10 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_key9"));
        localButton10.setText(arrayOfString[9]);
        localButton10.setTextSize(20.0F);
        return;
      }
      Random localRandom = new Random();
      arrayOfString = a(arrayOfString, localRandom.nextInt(10), localRandom.nextInt(10));
    }
  }
  
  public static boolean c(String paramString)
  {
    if (paramString == null) {}
    for (;;)
    {
      return false;
      String[] arrayOfString = paramString.split("\\|");
      if (arrayOfString[0].equals("0")) {
        try
        {
          new String(p.a(arrayOfString[2], 0), "UTF-8");
          eh.aN = null;
          return false;
        }
        catch (Exception localException2)
        {
          localException2.printStackTrace();
          return false;
        }
      }
      if (arrayOfString[0].equals("1")) {}
      try
      {
        String str = new String(a(p.a(arrayOfString[1], 0), jdField_a_of_type_ArrayOfByte), "UTF-8");
        if (e(str).equals(arrayOfString[2]))
        {
          eh.aN = str;
          return true;
        }
      }
      catch (Exception localException1)
      {
        localException1.printStackTrace();
      }
    }
    return false;
  }
  
  public static Boolean d(String paramString)
  {
    if (paramString.length() == 4) {
      return Boolean.valueOf(true);
    }
    return Boolean.valueOf(false);
  }
  
  public static String d(String paramString)
  {
    return p.a(paramString.getBytes(), 0);
  }
  
  public static String d(String paramString1, String paramString2, String paramString3)
  {
    eh.w = "GetBankList.Req";
    return new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>")).append("<upomp application=\"").append(eh.w).append("\" version=\"").append(eh.x).append("\" terminalModel=\"").append(eh.F).append("\" terminalOs=\"").append(eh.G).append("\" pluginVersion =\"").append(eh.H).append("\" pluginSerialNo =\"").append(eh.I).append("\" terminalPhysicalNo=\"").append(eh.J).append("\"").append(">").toString())).append("<panType>").append(paramString1).append("</panType>").toString())).append("<msgExt>").append(paramString2).append("</msgExt>").toString())).append("<misc>").append(paramString3).append("</misc><respCode></respCode><respDesc></respDesc>").toString() + "</upomp>";
  }
  
  public static String d(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    eh.w = "PanDelete.Req";
    return new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>")).append("<upomp application=\"").append(eh.w).append("\" version=\"").append(eh.x).append("\" terminalModel=\"").append(eh.F).append("\" terminalOs=\"").append(eh.G).append("\" pluginVersion =\"").append(eh.H).append("\" pluginSerialNo =\"").append(eh.I).append("\" terminalPhysicalNo=\"").append(eh.J).append("\"").append(">").toString())).append("<loginName>").append(paramString1).append("</loginName>").toString())).append("<mobileNumber>").append(paramString2).append("</mobileNumber>").toString())).append("<bindId>").append(paramString3).append("</bindId>").toString())).append("<isDefault>").append(paramString5).append("</isDefault>").toString())).append("<pan>").append(paramString4).append("</pan>").toString())).append("<respCode></respCode>").toString())).append("<respDesc></respDesc>").toString())).append("<msgExt></msgExt>").toString())).append("<misc></misc>").toString() + "</upomp>";
  }
  
  private static void d(View paramView)
  {
    String[] arrayOfString1 = { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z" };
    String[] arrayOfString2 = { "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z" };
    if (eh.jdField_h_of_type_Boolean) {
      arrayOfString2 = arrayOfString1;
    }
    Button localButton1 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyA"));
    localButton1.setText(arrayOfString2[0]);
    localButton1.setTextSize(20.0F);
    Button localButton2 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyB"));
    localButton2.setText(arrayOfString2[1]);
    localButton2.setTextSize(20.0F);
    Button localButton3 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyC"));
    localButton3.setText(arrayOfString2[2]);
    localButton3.setTextSize(20.0F);
    Button localButton4 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyD"));
    localButton4.setText(arrayOfString2[3]);
    localButton4.setTextSize(20.0F);
    Button localButton5 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyE"));
    localButton5.setText(arrayOfString2[4]);
    localButton5.setTextSize(20.0F);
    Button localButton6 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyF"));
    localButton6.setText(arrayOfString2[5]);
    localButton6.setTextSize(20.0F);
    Button localButton7 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyG"));
    localButton7.setText(arrayOfString2[6]);
    localButton7.setTextSize(20.0F);
    Button localButton8 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyH"));
    localButton8.setText(arrayOfString2[7]);
    localButton8.setTextSize(20.0F);
    Button localButton9 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyI"));
    localButton9.setText(arrayOfString2[8]);
    localButton9.setTextSize(20.0F);
    Button localButton10 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyJ"));
    localButton10.setText(arrayOfString2[9]);
    localButton10.setTextSize(20.0F);
    Button localButton11 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyK"));
    localButton11.setText(arrayOfString2[10]);
    localButton11.setTextSize(20.0F);
    Button localButton12 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyL"));
    localButton12.setText(arrayOfString2[11]);
    localButton12.setTextSize(20.0F);
    Button localButton13 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyM"));
    localButton13.setText(arrayOfString2[12]);
    localButton13.setTextSize(20.0F);
    Button localButton14 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyN"));
    localButton14.setText(arrayOfString2[13]);
    localButton14.setTextSize(20.0F);
    Button localButton15 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyO"));
    localButton15.setText(arrayOfString2[14]);
    localButton15.setTextSize(20.0F);
    Button localButton16 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyP"));
    localButton16.setText(arrayOfString2[15]);
    localButton16.setTextSize(20.0F);
    Button localButton17 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyQ"));
    localButton17.setText(arrayOfString2[16]);
    localButton17.setTextSize(20.0F);
    Button localButton18 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyR"));
    localButton18.setText(arrayOfString2[17]);
    localButton18.setTextSize(20.0F);
    Button localButton19 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyS"));
    localButton19.setText(arrayOfString2[18]);
    localButton19.setTextSize(20.0F);
    Button localButton20 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyT"));
    localButton20.setText(arrayOfString2[19]);
    localButton20.setTextSize(20.0F);
    Button localButton21 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyU"));
    localButton21.setText(arrayOfString2[20]);
    localButton21.setTextSize(20.0F);
    Button localButton22 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyV"));
    localButton22.setText(arrayOfString2[21]);
    localButton22.setTextSize(20.0F);
    Button localButton23 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyW"));
    localButton23.setText(arrayOfString2[22]);
    localButton23.setTextSize(20.0F);
    Button localButton24 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyX"));
    localButton24.setText(arrayOfString2[23]);
    localButton24.setTextSize(20.0F);
    Button localButton25 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyY"));
    localButton25.setText(arrayOfString2[24]);
    localButton25.setTextSize(20.0F);
    Button localButton26 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_keyZ"));
    localButton26.setText(arrayOfString2[25]);
    localButton26.setTextSize(20.0F);
  }
  
  public static boolean d(String paramString)
  {
    char[] arrayOfChar1 = { 33, 64, 35, 36, 37, 94, 38, 42, 40, 41 };
    char[] arrayOfChar2 = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57 };
    char[] arrayOfChar3 = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122 };
    char[] arrayOfChar4 = paramString.toCharArray();
    boolean bool1 = a(arrayOfChar1, arrayOfChar4);
    boolean bool2 = a(arrayOfChar3, arrayOfChar4);
    if (a(arrayOfChar2, arrayOfChar4)) {}
    for (int i = 1;; i = 0)
    {
      if (bool2) {
        i++;
      }
      if (bool1) {
        i++;
      }
      return i >= 2;
    }
  }
  
  public static Boolean e(String paramString)
  {
    if ((paramString.length() >= 4) && (paramString.length() <= 6)) {
      return Boolean.valueOf(true);
    }
    return Boolean.valueOf(false);
  }
  
  public static String e(String paramString)
  {
    return k(p.a(da.a(paramString.getBytes()), 0));
  }
  
  private static void e(View paramView)
  {
    String[] arrayOfString = { "!", "@", "#", "$", "%", "^", "&", "*", "(", ")" };
    Button localButton1 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_symbol_0"));
    localButton1.setText(arrayOfString[0]);
    localButton1.setTextSize(20.0F);
    Button localButton2 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_symbol_1"));
    localButton2.setText(arrayOfString[1]);
    localButton2.setTextSize(20.0F);
    Button localButton3 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_symbol_2"));
    localButton3.setText(arrayOfString[2]);
    localButton3.setTextSize(20.0F);
    Button localButton4 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_symbol_3"));
    localButton4.setText(arrayOfString[3]);
    localButton4.setTextSize(20.0F);
    Button localButton5 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_symbol_4"));
    localButton5.setText(arrayOfString[4]);
    localButton5.setTextSize(20.0F);
    Button localButton6 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_symbol_5"));
    localButton6.setText(arrayOfString[5]);
    localButton6.setTextSize(20.0F);
    Button localButton7 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_symbol_6"));
    localButton7.setText(arrayOfString[6]);
    localButton7.setTextSize(20.0F);
    Button localButton8 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_symbol_7"));
    localButton8.setText(arrayOfString[7]);
    localButton8.setTextSize(20.0F);
    Button localButton9 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_symbol_8"));
    localButton9.setText(arrayOfString[8]);
    localButton9.setTextSize(20.0F);
    Button localButton10 = (Button)paramView.findViewById(getResourceId(jdField_a_of_type_JavaLangString, "id", "btn_symbol_9"));
    localButton10.setText(arrayOfString[9]);
    localButton10.setTextSize(20.0F);
  }
  
  public static Boolean f(String paramString)
  {
    if ((paramString.length() >= 13) && (paramString.length() <= 19)) {
      return Boolean.valueOf(true);
    }
    return Boolean.valueOf(false);
  }
  
  public static String f(String paramString)
  {
    i = 0;
    try
    {
      byte[] arrayOfByte2 = dv.a(paramString.getBytes(), p.a(eh.A.getBytes(), 0));
      arrayOfByte1 = arrayOfByte2;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        String str1;
        String str2;
        localException.printStackTrace();
        byte[] arrayOfByte1 = null;
        continue;
        if ((str1.charAt(i) != '\r') && (str1.charAt(i) != '\n')) {
          str2 = str2 + str1.charAt(i);
        }
        i++;
      }
    }
    str1 = p.a(arrayOfByte1, 0);
    str2 = "";
    if (i >= str1.toCharArray().length) {
      return str2;
    }
  }
  
  public static Boolean g(String paramString)
  {
    if ((paramString.length() >= 2) && (paramString.length() <= 16)) {
      return Boolean.valueOf(true);
    }
    return Boolean.valueOf(false);
  }
  
  public static String g(String paramString)
  {
    for (;;)
    {
      int i;
      int j;
      try
      {
        char[] arrayOfChar1 = eh.jdField_h_of_type_JavaLangString.toCharArray();
        char[] arrayOfChar2 = p.jdField_a_of_type_JavaLangString.toCharArray();
        char[] arrayOfChar3 = f.jdField_a_of_type_JavaLangString.toCharArray();
        char[] arrayOfChar4 = c.jdField_a_of_type_JavaLangString.toCharArray();
        if (arrayOfChar1.length > arrayOfChar2.length)
        {
          i = arrayOfChar1.length;
          if (arrayOfChar3.length > arrayOfChar4.length)
          {
            j = arrayOfChar3.length;
            break label178;
            if (k < m) {
              continue;
            }
            byte[] arrayOfByte = p.a((String)localObject, 0);
            return new String(a(p.a(paramString, 0), arrayOfByte));
          }
        }
        else
        {
          i = arrayOfChar2.length;
          continue;
        }
        j = arrayOfChar4.length;
        break label178;
        String str = localObject + arrayOfChar1[k] + arrayOfChar2[k] + arrayOfChar3[k] + arrayOfChar4[k];
        localObject = str;
        k++;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return "";
      }
      int m = j;
      continue;
      label178:
      Object localObject = "";
      int k = 0;
      if (i > j) {
        m = i;
      }
    }
  }
  
  public static int getResourceId(String paramString1, String paramString2, String paramString3)
  {
    if ((paramString1 != null) && (paramString2 != null) && (paramString3 != null)) {
      try
      {
        Class localClass = Class.forName(paramString1 + "$" + paramString2);
        int i = Integer.parseInt(localClass.getField(paramString3).get(localClass.newInstance()).toString());
        return i;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    return -1;
  }
  
  public static Boolean h(String paramString)
  {
    if (paramString.length() == 6) {
      return Boolean.valueOf(true);
    }
    return Boolean.valueOf(false);
  }
  
  public static String h(String paramString)
  {
    for (;;)
    {
      int i;
      int j;
      try
      {
        char[] arrayOfChar1 = eh.jdField_h_of_type_JavaLangString.toCharArray();
        char[] arrayOfChar2 = p.jdField_a_of_type_JavaLangString.toCharArray();
        char[] arrayOfChar3 = f.jdField_a_of_type_JavaLangString.toCharArray();
        char[] arrayOfChar4 = c.jdField_a_of_type_JavaLangString.toCharArray();
        if (arrayOfChar1.length > arrayOfChar2.length)
        {
          i = arrayOfChar1.length;
          if (arrayOfChar3.length > arrayOfChar4.length)
          {
            j = arrayOfChar3.length;
            break label170;
            if (k < m) {
              continue;
            }
            byte[] arrayOfByte = p.a((String)localObject, 0);
            return p.a(f.b(paramString.getBytes(), arrayOfByte), 0);
          }
        }
        else
        {
          i = arrayOfChar2.length;
          continue;
        }
        j = arrayOfChar4.length;
        break label170;
        String str = localObject + arrayOfChar1[k] + arrayOfChar2[k] + arrayOfChar3[k] + arrayOfChar4[k];
        localObject = str;
        k++;
      }
      catch (Exception localException)
      {
        return "";
      }
      int m = j;
      continue;
      label170:
      Object localObject = "";
      int k = 0;
      if (i > j) {
        m = i;
      }
    }
  }
  
  public static Boolean i(String paramString)
  {
    if (a(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputusername")));
      return Boolean.valueOf(false);
    }
    if ((!d(paramString)) || (!b(paramString).booleanValue()))
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputusernamefail")));
      return Boolean.valueOf(false);
    }
    return Boolean.valueOf(true);
  }
  
  public static String i(String paramString)
  {
    int i = 0;
    byte[] arrayOfByte1 = p.a(paramString, 0);
    byte[] arrayOfByte2 = new byte[arrayOfByte1.length / 2];
    for (;;)
    {
      if (i >= arrayOfByte2.length) {
        return new String(arrayOfByte2);
      }
      int j = (byte)(-98 + arrayOfByte1[(i * 2)]);
      int k = (byte)(-121 + arrayOfByte1[(1 + i * 2)]);
      arrayOfByte2[i] = ((byte)(j << 4 | k & 0xF));
      i++;
    }
  }
  
  public static Boolean j(String paramString)
  {
    if (a(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputloginusername")));
      return Boolean.valueOf(false);
    }
    if (!b(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputusernamefail")));
      return Boolean.valueOf(false);
    }
    return Boolean.valueOf(true);
  }
  
  public static String j(String paramString)
  {
    String str = "";
    for (int i = 0;; i++)
    {
      if (i >= paramString.toCharArray().length) {
        return str;
      }
      if (paramString.charAt(i) != ' ') {
        str = str + paramString.charAt(i);
      }
    }
  }
  
  public static Boolean k(String paramString)
  {
    if (a(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputloginpsw")));
      return Boolean.valueOf(false);
    }
    if (!c(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputloginpswinfo")));
      return Boolean.valueOf(false);
    }
    return Boolean.valueOf(true);
  }
  
  public static String k(String paramString)
  {
    String str = "";
    for (int i = 0;; i++)
    {
      if (i >= paramString.toCharArray().length) {
        return str.replace("\r", "").replace("\n", "");
      }
      if ((paramString.charAt(i) != '\r') && (paramString.charAt(i) != '\n')) {
        str = str + paramString.charAt(i);
      }
    }
  }
  
  public static Boolean l(String paramString)
  {
    if (a(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputpsw")));
      return Boolean.valueOf(false);
    }
    if ((!d(paramString)) || (!c(paramString).booleanValue()))
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputpswfail")));
      return Boolean.valueOf(false);
    }
    return Boolean.valueOf(true);
  }
  
  public static String l(String paramString)
  {
    if ((paramString != null) && (!paramString.equals(""))) {
      return new DecimalFormat("#0.00").format(Double.parseDouble(paramString) / 100.0D);
    }
    return null;
  }
  
  public static Boolean m(String paramString)
  {
    if (a(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputnewpsw")));
      return Boolean.valueOf(false);
    }
    if ((!d(paramString)) || (!c(paramString).booleanValue()))
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputnewpswfail")));
      return Boolean.valueOf(false);
    }
    return Boolean.valueOf(true);
  }
  
  public static Boolean n(String paramString)
  {
    if (a(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputtel")));
      return Boolean.valueOf(false);
    }
    if (!Pattern.compile("^(1[3,4,5,8])\\d{9}$").matcher(paramString).matches())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputtelfail")));
      return Boolean.valueOf(false);
    }
    return Boolean.valueOf(true);
  }
  
  public static Boolean o(String paramString)
  {
    if (a(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputnewtel")));
      return Boolean.valueOf(false);
    }
    if (!Pattern.compile("^(1[3,4,5,8])\\d{9}$").matcher(paramString).matches())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputnewtelfail")));
      return Boolean.valueOf(false);
    }
    return Boolean.valueOf(true);
  }
  
  public static Boolean p(String paramString)
  {
    if (a(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputmac")));
      return Boolean.valueOf(false);
    }
    if (!e(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputmacfail")));
      return Boolean.valueOf(false);
    }
    return Boolean.valueOf(true);
  }
  
  public static Boolean q(String paramString)
  {
    if ((paramString == null) || (paramString.equals("")))
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputwebvalidcode")));
      return Boolean.valueOf(false);
    }
    if (!d(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputwebvalidcodefail")));
      return Boolean.valueOf(false);
    }
    return Boolean.valueOf(true);
  }
  
  public static Boolean r(String paramString)
  {
    if (a(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputemail")));
      return Boolean.valueOf(false);
    }
    if (!Pattern.compile("^[\\w-]+(\\.[\\w-]+)*@[\\w-]+(\\.[\\w-]+)+$").matcher(paramString).matches())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputemailfail")));
      return Boolean.valueOf(false);
    }
    return Boolean.valueOf(true);
  }
  
  public static Boolean s(String paramString)
  {
    if (a(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_welcome")));
      return Boolean.valueOf(false);
    }
    if (!g(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_welcomefail")));
      return Boolean.valueOf(false);
    }
    return Boolean.valueOf(true);
  }
  
  public static void setPackageName(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(paramString);
    localStringBuffer.append(".R");
    jdField_a_of_type_JavaLangString = localStringBuffer.toString();
  }
  
  public static void showOKDialog(String paramString1, String paramString2)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(eh.jdField_a_of_type_AndroidContentContext);
    localBuilder.setTitle(paramString1);
    localBuilder.setMessage(paramString2);
    localBuilder.setPositiveButton("OK", new an());
    localBuilder.show();
  }
  
  public static Boolean t(String paramString)
  {
    if ((a(paramString).booleanValue()) || (eh.l == -1))
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_question")));
      return Boolean.valueOf(false);
    }
    return Boolean.valueOf(true);
  }
  
  public static Boolean u(String paramString)
  {
    if ((a(paramString).booleanValue()) || (eh.l == -1))
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_myquestion")));
      return Boolean.valueOf(false);
    }
    if (!g(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_myquestionfail")));
      return Boolean.valueOf(false);
    }
    return Boolean.valueOf(true);
  }
  
  public static Boolean v(String paramString)
  {
    if (a(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_questionresult")));
      return Boolean.valueOf(false);
    }
    if (!g(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_questionresultfail")));
      return Boolean.valueOf(false);
    }
    return Boolean.valueOf(true);
  }
  
  public static Boolean w(String paramString)
  {
    if (a(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_cardid")));
      return Boolean.valueOf(false);
    }
    if (!f(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_cardidfail")));
      return Boolean.valueOf(false);
    }
    return Boolean.valueOf(true);
  }
  
  public static Boolean x(String paramString)
  {
    if (a(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_cardpsw")));
      return Boolean.valueOf(false);
    }
    if (!h(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_cardpswfail")));
      return Boolean.valueOf(false);
    }
    return Boolean.valueOf(true);
  }
  
  public static Boolean y(String paramString)
  {
    if (a(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_valuecardid")));
      return Boolean.valueOf(false);
    }
    if (!f(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_valuecardidfail")));
      return Boolean.valueOf(false);
    }
    return Boolean.valueOf(true);
  }
  
  public static Boolean z(String paramString)
  {
    if (a(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_valuecardpsw")));
      return Boolean.valueOf(false);
    }
    if (!h(paramString).booleanValue())
    {
      showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(getResourceId(jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_valuecardpswfail")));
      return Boolean.valueOf(false);
    }
    return Boolean.valueOf(true);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.util.Utils
 * JD-Core Version:    0.7.0.1
 */