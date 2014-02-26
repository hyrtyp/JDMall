package com.unionpay.upomp.bypay.other;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.Button;
import com.unionpay.upomp.bypay.activity.PayItActivity;

public class ez
  implements MenuItem.OnMenuItemClickListener
{
  public ez(PayItActivity paramPayItActivity) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    eh.o = paramMenuItem.getItemId();
    PayItActivity.a().setText(eh.q[eh.o]);
    return false;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.ez
 * JD-Core Version:    0.7.0.1
 */