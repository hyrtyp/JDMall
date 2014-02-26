package com.unionpay.upomp.bypay.other;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.Button;
import com.unionpay.upomp.bypay.activity.AddCardActivity;

public class y
  implements MenuItem.OnMenuItemClickListener
{
  public y(AddCardActivity paramAddCardActivity) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    eh.m = paramMenuItem.getItemId();
    AddCardActivity.a().setText("**");
    return false;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.y
 * JD-Core Version:    0.7.0.1
 */