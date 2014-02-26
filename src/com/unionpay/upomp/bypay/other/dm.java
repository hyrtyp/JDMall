package com.unionpay.upomp.bypay.other;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.Button;
import android.widget.RelativeLayout;
import com.unionpay.upomp.bypay.activity.RegisterActivity;
import java.util.List;

public class dm
  implements MenuItem.OnMenuItemClickListener
{
  public dm(RegisterActivity paramRegisterActivity) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    eh.l = paramMenuItem.getItemId();
    RegisterActivity.a(this.a).setText(((String)eh.a.get(eh.l)).toString());
    if (eh.l == -1 + eh.a.size())
    {
      RegisterActivity.a(this.a).setVisibility(0);
      return false;
    }
    RegisterActivity.a(this.a).setVisibility(8);
    return false;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.dm
 * JD-Core Version:    0.7.0.1
 */