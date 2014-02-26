package com.unionpay.upomp.bypay.other;

import android.content.res.Resources;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import com.unionpay.upomp.bypay.activity.PayItActivity;
import com.unionpay.upomp.bypay.util.Utils;

public class ep
  implements View.OnCreateContextMenuListener
{
  public ep(PayItActivity paramPayItActivity) {}
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    for (int i = 0;; i++)
    {
      if (i >= 12) {
        return;
      }
      paramContextMenu.setHeaderTitle(this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_pay_it_selectmm")));
      paramContextMenu.add(0, i, i, eh.n[i]).setOnMenuItemClickListener(this.a.a);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.ep
 * JD-Core Version:    0.7.0.1
 */