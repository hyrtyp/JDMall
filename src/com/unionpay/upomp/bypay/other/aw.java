package com.unionpay.upomp.bypay.other;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.unionpay.upomp.bypay.util.Utils;

public class aw
  implements View.OnClickListener
{
  public aw(Button paramButton, View paramView) {}
  
  public void onClick(View paramView)
  {
    Utils.c();
    eh.h = true ^ eh.h;
    if (eh.h) {
      this.jdField_a_of_type_AndroidWidgetButton.setBackgroundResource(Utils.getResourceId(Utils.a, "drawable", "upomp_bypay_keyboard_letter_a2"));
    }
    for (;;)
    {
      Utils.b(1, 0);
      Utils.a(this.jdField_a_of_type_AndroidViewView);
      return;
      this.jdField_a_of_type_AndroidWidgetButton.setBackgroundResource(Utils.getResourceId(Utils.a, "drawable", "upomp_bypay_keyboard_letter_a1"));
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.aw
 * JD-Core Version:    0.7.0.1
 */