package com.unionpay.upomp.bypay.other;

import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import com.unionpay.upomp.bypay.activity.RegisterActivity;
import java.util.List;

public class dk
  implements View.OnCreateContextMenuListener
{
  public dk(RegisterActivity paramRegisterActivity) {}
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    for (int i = 0;; i++)
    {
      if (i >= eh.a.size()) {
        return;
      }
      paramContextMenu.add(0, i, i, ((String)eh.a.get(i)).toString()).setOnMenuItemClickListener(this.a.a);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.dk
 * JD-Core Version:    0.7.0.1
 */