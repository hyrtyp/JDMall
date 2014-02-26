package com.unionpay.upomp.bypay.other;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.Button;
import com.unionpay.upomp.bypay.activity.AddCardActivity;
import java.util.Date;

public class ad
  implements MenuItem.OnMenuItemClickListener
{
  public ad(AddCardActivity paramAddCardActivity) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    eh.n = paramMenuItem.getItemId();
    for (int i = 0;; i++)
    {
      if (i >= 20) {}
      for (;;)
      {
        AddCardActivity.b().setText("**");
        return false;
        if (i != eh.n) {
          break;
        }
        eh.aL = i + (1900 + new Date().getYear());
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.ad
 * JD-Core Version:    0.7.0.1
 */