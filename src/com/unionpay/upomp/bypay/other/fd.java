package com.unionpay.upomp.bypay.other;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;

public class fd
  implements DialogInterface.OnClickListener
{
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    eh.c = Boolean.valueOf(true);
    if ((eh.al != null) && (!eh.al.equals("")))
    {
      Intent localIntent = new Intent(eh.al);
      Bundle localBundle = new Bundle();
      localBundle.putString("xml", eh.m);
      localIntent.putExtras(localBundle);
      eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
    }
    eh.jdField_a_of_type_Boolean = false;
    eh.jdField_a_of_type_AndroidAppActivity.finish();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.fd
 * JD-Core Version:    0.7.0.1
 */