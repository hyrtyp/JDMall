package com.unionpay.upomp.bypay.other;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.unionpay.upomp.bypay.util.Utils;

public class an
  implements DialogInterface.OnClickListener
{
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    if (eh.d)
    {
      Utils.a(eh.b, eh.c);
      eh.d = false;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.an
 * JD-Core Version:    0.7.0.1
 */