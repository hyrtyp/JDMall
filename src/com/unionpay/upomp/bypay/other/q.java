package com.unionpay.upomp.bypay.other;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.RelativeLayout;
import com.unionpay.upomp.bypay.util.Utils;

public class q
  implements View.OnClickListener
{
  public q(RelativeLayout paramRelativeLayout1, RelativeLayout paramRelativeLayout2, RelativeLayout paramRelativeLayout3, Button paramButton1, Button paramButton2, Button paramButton3) {}
  
  public void onClick(View paramView)
  {
    Utils.c();
    Utils.a(3);
    this.jdField_a_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_b_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_c_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
    this.jdField_a_of_type_AndroidWidgetButton.setBackgroundColor(0);
    this.jdField_b_of_type_AndroidWidgetButton.setBackgroundColor(0);
    this.jdField_c_of_type_AndroidWidgetButton.setBackgroundResource(Utils.getResourceId(Utils.a, "drawable", "upomp_bypay_keyboard_btn1_on"));
    Utils.b(1, 0);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.q
 * JD-Core Version:    0.7.0.1
 */