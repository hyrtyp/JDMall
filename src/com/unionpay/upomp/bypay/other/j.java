package com.unionpay.upomp.bypay.other;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.widget.TextView;
import com.unionpay.upomp.bypay.activity.PayItActivity;
import com.unionpay.upomp.bypay.util.Utils;

class j
  implements DialogInterface.OnClickListener
{
  j(fi paramfi) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str;
    if (eh.c[eh.g].equals("00")) {
      str = fi.a(this.a).getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_debitcard"));
    }
    for (;;)
    {
      PayItActivity.a(fi.a(this.a)).setText(eh.b[eh.g] + "-" + str + "-" + PayItActivity.a(fi.a(this.a), eh.e[eh.g], 4));
      PayItActivity.b(fi.a(this.a)).setText(Utils.a(eh.e[eh.g], 6, 4));
      PayItActivity.c(fi.a(this.a)).setText(Utils.a(eh.f[eh.g], 3, 3));
      eh.q = eh.e[eh.g];
      eh.S = eh.f[eh.g];
      return;
      if (eh.c[eh.g].equals("01")) {
        str = fi.a(this.a).getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_creditcard"));
      } else {
        str = fi.a(this.a).getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_cardunknown"));
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.j
 * JD-Core Version:    0.7.0.1
 */