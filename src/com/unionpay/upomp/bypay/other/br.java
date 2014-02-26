package com.unionpay.upomp.bypay.other;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.unionpay.upomp.bypay.util.Utils;

public class br
  implements View.OnTouchListener
{
  public br(Button paramButton, int paramInt, RelativeLayout paramRelativeLayout, TextView paramTextView, EditText paramEditText) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default: 
      return false;
    case 0: 
      Utils.a(this.jdField_a_of_type_AndroidWidgetButton, this.jdField_a_of_type_Int, this.jdField_a_of_type_AndroidWidgetRelativeLayout, this.jdField_a_of_type_AndroidWidgetTextView, this.jdField_a_of_type_AndroidWidgetEditText);
      return true;
    }
    this.jdField_a_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    return true;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.br
 * JD-Core Version:    0.7.0.1
 */