package com.unionpay.upomp.bypay.other;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.unionpay.upomp.bypay.activity.CardInfoActivity;

public class bm
  implements DialogInterface.OnClickListener
{
  public bm(CardInfoActivity paramCardInfoActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    new cs(this.a).execute(new Integer[0]);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.bm
 * JD-Core Version:    0.7.0.1
 */