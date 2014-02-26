package com.unionpay.upomp.bypay.other;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.unionpay.upomp.bypay.activity.LoginActivity;
import com.unionpay.upomp.bypay.activity.PayItActivity;

public class dq
  implements DialogInterface.OnClickListener
{
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    Intent localIntent = new Intent();
    if (eh.f.booleanValue())
    {
      eh.q = 0;
      eh.n = "2";
      eh.k = 1;
      localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, PayItActivity.class);
      eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
      eh.jdField_a_of_type_AndroidAppActivity.finish();
      return;
    }
    localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, LoginActivity.class);
    eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
    eh.jdField_a_of_type_AndroidAppActivity.finish();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.dq
 * JD-Core Version:    0.7.0.1
 */