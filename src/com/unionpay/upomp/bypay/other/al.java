package com.unionpay.upomp.bypay.other;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.unionpay.upomp.bypay.activity.AddCardActivity;

public class al
  implements TextWatcher
{
  private int jdField_a_of_type_Int = 0;
  private String jdField_a_of_type_JavaLangString = "";
  private boolean jdField_a_of_type_Boolean = true;
  private int jdField_b_of_type_Int = 0;
  private boolean jdField_b_of_type_Boolean = false;
  private int c = -1;
  private int d = 0;
  
  public al(AddCardActivity paramAddCardActivity) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    int i;
    String str1;
    int j;
    String str2;
    int k;
    label50:
    int m;
    if (this.jdField_b_of_type_Boolean)
    {
      if (this.d <= this.jdField_a_of_type_Int) {
        break label195;
      }
      i = 1;
      this.jdField_b_of_type_Boolean = false;
      str1 = "";
      j = 0;
      if (j < this.jdField_a_of_type_JavaLangString.length()) {
        break label200;
      }
      str2 = "";
      k = 0;
      if (k < str1.length()) {
        break label252;
      }
      m = AddCardActivity.c().getSelectionEnd();
      if ((paramEditable.length() != 5) && (paramEditable.length() != 10) && (paramEditable.length() != 15) && (paramEditable.length() != 20)) {
        break label602;
      }
    }
    label195:
    label200:
    label602:
    for (int n = 1;; n = 0)
    {
      AddCardActivity.c().setText(str2);
      if (m == paramEditable.length()) {
        if (this.d > this.jdField_a_of_type_Int)
        {
          EditText localEditText5 = AddCardActivity.c();
          int i7 = 0;
          if (n != 0) {
            i7 = 1;
          }
          localEditText5.setSelection(i7 + m);
        }
      }
      for (;;)
      {
        this.jdField_a_of_type_Boolean = true;
        this.c = str2.length();
        AddCardActivity.a(this.jdField_a_of_type_ComUnionpayUpompBypayActivityAddCardActivity, Boolean.valueOf(true));
        return;
        i = 0;
        break;
        if (this.jdField_a_of_type_JavaLangString.toCharArray()[j] == ' ') {}
        for (;;)
        {
          j++;
          break;
          str1 = str1 + this.jdField_a_of_type_JavaLangString.toCharArray()[j];
        }
        label252:
        str2 = str2 + str1.toCharArray()[k];
        if (((k == 3) || (k == 7) || (k == 11) || (k == 15)) && (k != -1 + str1.length())) {
          str2 = str2 + " ";
        }
        k++;
        break label50;
        if (this.d < this.jdField_a_of_type_Int)
        {
          EditText localEditText4 = AddCardActivity.c();
          int i5 = m - 1;
          int i6 = 0;
          if (i5 < 0) {}
          for (;;)
          {
            localEditText4.setSelection(i6);
            break;
            i6 = m - 1;
          }
        }
        if (this.d == this.jdField_a_of_type_Int)
        {
          EditText localEditText3 = AddCardActivity.c();
          int i4 = 0;
          if (n != 0) {
            i4 = 1;
          }
          localEditText3.setSelection(i4 + m);
          continue;
          if ((m == 5) || (m == 10) || (m == 15) || (m == 20))
          {
            if (i != 0) {
              AddCardActivity.c().setSelection(m + 1);
            } else {
              AddCardActivity.c().setSelection(m - 1);
            }
          }
          else if (this.d > this.jdField_a_of_type_Int)
          {
            EditText localEditText2 = AddCardActivity.c();
            int i3 = 0;
            if (n != 0) {
              i3 = 1;
            }
            localEditText2.setSelection(i3 + m);
          }
          else
          {
            if (this.d < this.jdField_a_of_type_Int)
            {
              EditText localEditText1 = AddCardActivity.c();
              int i1 = m - 1;
              int i2 = 0;
              if (i1 < 0) {}
              for (;;)
              {
                localEditText1.setSelection(i2);
                break;
                i2 = m - 1;
              }
            }
            if (this.d == this.jdField_a_of_type_Int) {
              AddCardActivity.c().setSelection(m);
            }
          }
        }
      }
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    this.jdField_a_of_type_Int = paramCharSequence.length();
  }
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    AddCardActivity.c().setInputType(2);
    this.jdField_a_of_type_JavaLangString = paramCharSequence.toString();
    this.d = paramCharSequence.length();
    if ((this.d != this.c) && (this.d > 3) && (!this.jdField_b_of_type_Boolean) && (this.jdField_a_of_type_Boolean))
    {
      this.c = this.d;
      this.jdField_b_of_type_Boolean = true;
      this.jdField_a_of_type_Boolean = false;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.al
 * JD-Core Version:    0.7.0.1
 */