package com.unionpay.upomp.bypay.other;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.unionpay.upomp.bypay.activity.CardInfoActivity;

public class bk
  implements DialogInterface.OnClickListener
{
  public bk(CardInfoActivity paramCardInfoActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.bk
 * JD-Core Version:    0.7.0.1
 */