package com.unionpay.upomp.bypay.other;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.inputmethod.InputMethodManager;
import com.unionpay.upomp.bypay.activity.PayItActivity;

public class fs
  implements View.OnTouchListener
{
  public fs(PayItActivity paramPayItActivity) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(paramView, 2);
    return false;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.fs
 * JD-Core Version:    0.7.0.1
 */