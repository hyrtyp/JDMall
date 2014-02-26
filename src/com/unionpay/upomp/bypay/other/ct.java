package com.unionpay.upomp.bypay.other;

import android.widget.Button;

public class ct
{
  private Button jdField_a_of_type_AndroidWidgetButton = null;
  private e jdField_a_of_type_ComUnionpayUpompBypayOtherE;
  private et jdField_a_of_type_ComUnionpayUpompBypayOtherEt;
  
  public void a(Button paramButton)
  {
    this.jdField_a_of_type_AndroidWidgetButton = paramButton;
  }
  
  public void b(Button paramButton)
  {
    eh.h = Boolean.valueOf(false);
    a(paramButton);
    this.jdField_a_of_type_ComUnionpayUpompBypayOtherEt = new et(this);
    this.jdField_a_of_type_ComUnionpayUpompBypayOtherE = new e(this);
    new Thread(this.jdField_a_of_type_ComUnionpayUpompBypayOtherE).start();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.ct
 * JD-Core Version:    0.7.0.1
 */