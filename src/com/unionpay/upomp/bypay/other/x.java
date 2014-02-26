package com.unionpay.upomp.bypay.other;

import android.app.Activity;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.PopupWindow;
import com.unionpay.upomp.bypay.util.Utils;

public class x
  implements View.OnClickListener
{
  public x(View paramView, int paramInt, PopupWindow paramPopupWindow) {}
  
  public void onClick(View paramView)
  {
    Utils.c();
    eh.P = Utils.a();
    Button localButton = (Button)this.jdField_a_of_type_AndroidViewView.findViewById(this.jdField_a_of_type_Int);
    localButton.setText(Utils.a());
    localButton.setTransformationMethod(PasswordTransformationMethod.getInstance());
    if (eh.jdField_a_of_type_AndroidWidgetEditText != null)
    {
      eh.jdField_a_of_type_AndroidWidgetEditText.requestFocus();
      ((InputMethodManager)eh.jdField_a_of_type_AndroidAppActivity.getSystemService("input_method")).toggleSoftInput(0, 2);
    }
    for (;;)
    {
      Utils.b(1, 0);
      this.jdField_a_of_type_AndroidWidgetPopupWindow.dismiss();
      return;
      if (eh.jdField_a_of_type_AndroidWidgetButton != null) {
        eh.jdField_a_of_type_AndroidWidgetButton.requestFocus();
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.x
 * JD-Core Version:    0.7.0.1
 */