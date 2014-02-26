package com.jd.droidlib.util.ui;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

public class ViewUtils
{
  public static <T extends View> T findViewById(Activity paramActivity, int paramInt)
  {
    return paramActivity.findViewById(paramInt);
  }
  
  public static <T extends View> T findViewById(View paramView, int paramInt)
  {
    return paramView.findViewById(paramInt);
  }
  
  public static void putCursorAfterLastSymbol(EditText paramEditText)
  {
    paramEditText.setSelection(paramEditText.getText().length());
  }
  
  public static void setEnabled(boolean paramBoolean, View... paramVarArgs)
  {
    int i = paramVarArgs.length;
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return;
      }
      paramVarArgs[j].setEnabled(paramBoolean);
    }
  }
  
  public static void setGone(boolean paramBoolean, View... paramVarArgs)
  {
    int i = paramVarArgs.length;
    int j = 0;
    if (j >= i) {
      return;
    }
    View localView = paramVarArgs[j];
    if (paramBoolean) {}
    for (int k = 8;; k = 0)
    {
      localView.setVisibility(k);
      j++;
      break;
    }
  }
  
  public static void setInvisible(boolean paramBoolean, View... paramVarArgs)
  {
    int i = paramVarArgs.length;
    int j = 0;
    if (j >= i) {
      return;
    }
    View localView = paramVarArgs[j];
    if (paramBoolean) {}
    for (int k = 4;; k = 0)
    {
      localView.setVisibility(k);
      j++;
      break;
    }
  }
  
  public static void setKeyboardVisible(View paramView, boolean paramBoolean)
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)paramView.getContext().getSystemService("input_method");
    if (paramBoolean)
    {
      localInputMethodManager.showSoftInput(paramView, 0);
      return;
    }
    localInputMethodManager.hideSoftInputFromWindow(paramView.getWindowToken(), 0);
  }
  
  public static void showKeyboard(View paramView)
  {
    new Handler(Looper.getMainLooper()).postDelayed(new Runnable()
    {
      public void run()
      {
        ViewUtils.setKeyboardVisible(ViewUtils.this, true);
      }
    }, 200L);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.util.ui.ViewUtils
 * JD-Core Version:    0.7.0.1
 */