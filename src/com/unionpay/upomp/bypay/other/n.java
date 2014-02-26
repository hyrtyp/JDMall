package com.unionpay.upomp.bypay.other;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.unionpay.upomp.bypay.activity.CardMainActivity;

class n
  implements DialogInterface.OnClickListener
{
  n(dd paramdd) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    Intent localIntent = new Intent();
    localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, CardMainActivity.class);
    eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
    eh.jdField_a_of_type_AndroidAppActivity.finish();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.n
 * JD-Core Version:    0.7.0.1
 */