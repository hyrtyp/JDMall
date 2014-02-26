package com.unionpay.upomp.bypay.other;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.Button;
import com.unionpay.upomp.bypay.activity.CardInfoActivity;
import com.unionpay.upomp.bypay.util.Utils;

class dy
  implements DialogInterface.OnClickListener
{
  dy(cs paramcs) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    CardInfoActivity.a(cs.a(this.a)).setBackgroundResource(Utils.getResourceId(Utils.a, "drawable", "upomp_bypay_card_btn_1a"));
    CardInfoActivity.a(cs.a(this.a), Boolean.valueOf(false));
    paramDialogInterface.dismiss();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.dy
 * JD-Core Version:    0.7.0.1
 */