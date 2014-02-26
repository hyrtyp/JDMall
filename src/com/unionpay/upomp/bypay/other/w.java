package com.unionpay.upomp.bypay.other;

import android.content.res.Resources;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import com.unionpay.upomp.bypay.activity.AddCardActivity;
import com.unionpay.upomp.bypay.util.Utils;
import java.util.Date;

public class w
  implements View.OnCreateContextMenuListener
{
  public w(AddCardActivity paramAddCardActivity) {}
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    int i = 1900 + new Date().getYear();
    for (int j = 0;; j++)
    {
      if (j >= 20) {
        return;
      }
      paramContextMenu.setHeaderTitle(this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_pay_it_selectyy")));
      paramContextMenu.add(0, j, j, i + j).setOnMenuItemClickListener(this.a.b);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.w
 * JD-Core Version:    0.7.0.1
 */