package com.unionpay.upomp.bypay.other;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.Button;
import com.unionpay.upomp.bypay.activity.PayItActivity;

public class en
  implements MenuItem.OnMenuItemClickListener
{
  public en(PayItActivity paramPayItActivity) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    eh.m = paramMenuItem.getItemId();
    PayItActivity.a.setText("**");
    return false;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.en
 * JD-Core Version:    0.7.0.1
 */