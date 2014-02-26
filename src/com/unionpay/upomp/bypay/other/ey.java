package com.unionpay.upomp.bypay.other;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.widget.PopupWindow;

public class ey
  implements View.OnKeyListener
{
  public ey(PopupWindow paramPopupWindow) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0)) {
      this.a.dismiss();
    }
    return false;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.ey
 * JD-Core Version:    0.7.0.1
 */