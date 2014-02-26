package com.unionpay.upomp.bypay.other;

import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import com.unionpay.upomp.bypay.activity.PayItActivity;

public class ew
  implements View.OnCreateContextMenuListener
{
  public ew(PayItActivity paramPayItActivity) {}
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    for (int i = 0;; i++)
    {
      if (i >= eh.q.length) {
        return;
      }
      paramContextMenu.add(0, i, i, eh.q[i]).setOnMenuItemClickListener(this.a.c);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.ew
 * JD-Core Version:    0.7.0.1
 */