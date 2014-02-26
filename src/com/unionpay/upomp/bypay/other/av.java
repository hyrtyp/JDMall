package com.unionpay.upomp.bypay.other;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.unionpay.upomp.bypay.util.Utils;

public class av
  implements View.OnClickListener
{
  public av(EditText paramEditText) {}
  
  public void onClick(View paramView)
  {
    Utils.c();
    char[] arrayOfChar = Utils.a().toCharArray();
    if (arrayOfChar.length > 0) {
      Utils.b(Utils.a().substring(0, -1 + arrayOfChar.length));
    }
    this.a.setText(Utils.a());
    Utils.b(1, 0);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.av
 * JD-Core Version:    0.7.0.1
 */