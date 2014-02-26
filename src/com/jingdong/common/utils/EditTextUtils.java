package com.jingdong.common.utils;

import android.content.Intent;
import android.widget.EditText;
import android.widget.TextView;

public class EditTextUtils
{
  public static void setTextViewText(TextView paramTextView, Intent paramIntent, String paramString)
  {
    String str1 = paramIntent.getStringExtra("title");
    if ((str1 != null) && (str1.length() != 0)) {}
    for (String str2 = str1;; str2 = paramString)
    {
      paramTextView.setText(str2);
      return;
    }
  }
  
  public static void setTextWithSelection(EditText paramEditText, String paramString)
  {
    paramEditText.setText(paramString);
    paramEditText.setSelection(paramString.length());
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.EditTextUtils
 * JD-Core Version:    0.7.0.1
 */