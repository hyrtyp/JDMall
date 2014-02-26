package com.unionpay.upomp.bypay.other;

import android.content.res.Resources;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import com.unionpay.upomp.bypay.activity.PayItActivity;
import com.unionpay.upomp.bypay.util.Utils;

public class eq
  implements View.OnCreateContextMenuListener
{
  public eq(PayItActivity paramPayItActivity) {}
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    paramContextMenu.setHeaderTitle(this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_pay_it_selectcard")));
    paramContextMenu.add(0, 0, 0, this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_addcard"))).setOnMenuItemClickListener(this.a.d);
    int i = 0;
    if (i >= eh.h) {
      return;
    }
    int j = i + 1;
    int k = i + 1;
    StringBuilder localStringBuilder = new StringBuilder(String.valueOf(eh.b[i])).append("  ").append(Utils.a(eh.e[i], 6, 4)).append("  ");
    if (eh.g[i].equals("1")) {}
    for (String str = this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_pay_it_defultcard"));; str = "")
    {
      paramContextMenu.add(0, j, k, str).setOnMenuItemClickListener(this.a.d);
      i++;
      break;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.eq
 * JD-Core Version:    0.7.0.1
 */