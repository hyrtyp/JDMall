package com.unionpay.upomp.bypay.other;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.Button;
import com.unionpay.upomp.bypay.activity.PayItActivity;
import java.util.Date;

public class fc
  implements MenuItem.OnMenuItemClickListener
{
  public fc(PayItActivity paramPayItActivity) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    eh.n = paramMenuItem.getItemId();
    for (int i = 0;; i++)
    {
      if (i >= 20) {}
      for (;;)
      {
        PayItActivity.b.setText("**");
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
 * Qualified Name:     com.unionpay.upomp.bypay.other.fc
 * JD-Core Version:    0.7.0.1
 */