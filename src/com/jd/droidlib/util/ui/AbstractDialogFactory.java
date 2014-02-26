package com.jd.droidlib.util.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.widget.Toast;

public class AbstractDialogFactory
{
  public static final String ERROR = "Error";
  protected final Context ctx;
  protected final LayoutInflater layoutInflater;
  
  public AbstractDialogFactory(Context paramContext)
  {
    this.ctx = paramContext;
    this.layoutInflater = LayoutInflater.from(paramContext);
  }
  
  public void showErrorToast()
  {
    showToast("Error");
  }
  
  public void showToast(int paramInt, Object... paramVarArgs)
  {
    showToast(this.ctx.getString(paramInt, paramVarArgs));
  }
  
  public void showToast(CharSequence paramCharSequence)
  {
    Toast.makeText(this.ctx, paramCharSequence, 0).show();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.util.ui.AbstractDialogFactory
 * JD-Core Version:    0.7.0.1
 */