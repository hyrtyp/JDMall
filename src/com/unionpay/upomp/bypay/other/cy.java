package com.unionpay.upomp.bypay.other;

import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.unionpay.upomp.bypay.activity.AccountMainActivity;
import com.unionpay.upomp.bypay.activity.CardMainActivity;
import com.unionpay.upomp.bypay.activity.LoginActivity;
import com.unionpay.upomp.bypay.activity.PayMainActivity;
import com.unionpay.upomp.bypay.activity.PayResultActivity;
import com.unionpay.upomp.bypay.util.UPOMP;
import com.unionpay.upomp.bypay.view.MainBottom;

public class cy
  extends Handler
{
  Intent jdField_a_of_type_AndroidContentIntent = new Intent();
  
  public cy(MainBottom paramMainBottom) {}
  
  public void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default: 
      return;
    case 0: 
      if (!UPOMP.payResult) {
        this.jdField_a_of_type_AndroidContentIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, PayMainActivity.class);
      }
      for (;;)
      {
        eh.jdField_a_of_type_AndroidAppActivity.startActivity(this.jdField_a_of_type_AndroidContentIntent);
        eh.jdField_a_of_type_AndroidAppActivity.finish();
        return;
        if (UPOMP.payResult) {
          this.jdField_a_of_type_AndroidContentIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, PayResultActivity.class);
        }
      }
    case 1: 
      com.unionpay.upomp.bypay.util.Utils.a = null;
      eh.aN = null;
      if (eh.k)
      {
        this.jdField_a_of_type_AndroidContentIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, AccountMainActivity.class);
        eh.jdField_a_of_type_AndroidAppActivity.startActivity(this.jdField_a_of_type_AndroidContentIntent);
        eh.jdField_a_of_type_AndroidAppActivity.finish();
        return;
      }
      this.jdField_a_of_type_AndroidContentIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, LoginActivity.class);
      eh.jdField_a_of_type_AndroidAppActivity.startActivity(this.jdField_a_of_type_AndroidContentIntent);
      eh.jdField_a_of_type_AndroidAppActivity.finish();
      return;
    }
    this.jdField_a_of_type_AndroidContentIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, CardMainActivity.class);
    eh.jdField_a_of_type_AndroidAppActivity.startActivity(this.jdField_a_of_type_AndroidContentIntent);
    eh.jdField_a_of_type_AndroidAppActivity.finish();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.cy
 * JD-Core Version:    0.7.0.1
 */