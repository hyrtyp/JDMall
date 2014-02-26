package com.unionpay.upomp.bypay.other;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.content.res.Resources;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.unionpay.upomp.bypay.activity.AddCardActivity;
import com.unionpay.upomp.bypay.activity.PayItActivity;
import com.unionpay.upomp.bypay.util.Utils;

public class fi
  implements MenuItem.OnMenuItemClickListener
{
  public fi(PayItActivity paramPayItActivity) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    Intent localIntent = new Intent();
    if (paramMenuItem.getItemId() == 0)
    {
      eh.c = 1;
      eh.jdField_a_of_type_Int = 1;
      localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, AddCardActivity.class);
      eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
      eh.jdField_a_of_type_AndroidAppActivity.finish();
      eh.q = 2;
      eh.j = true;
    }
    if (paramMenuItem.getItemId() > 0)
    {
      eh.g = -1 + paramMenuItem.getItemId();
      new AlertDialog.Builder(eh.jdField_a_of_type_AndroidContentContext).setTitle(this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_pay_it_changecard"))).setMessage(this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_pay_it_yesornopay")) + eh.b[eh.g] + " " + Utils.a(eh.e[eh.g], 6, 4) + "]").setPositiveButton(this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_affirm")), new j(this)).setNegativeButton(this.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_cancel")), new l(this)).show();
    }
    return false;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.fi
 * JD-Core Version:    0.7.0.1
 */