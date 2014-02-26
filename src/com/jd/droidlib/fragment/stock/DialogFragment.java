package com.jd.droidlib.fragment.stock;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.jd.droidlib.Injector;
import com.jd.droidlib.inner.fragments.SecretFragmentsStockUtil;

public class DialogFragment
  extends android.app.DialogFragment
{
  private boolean injected;
  
  public final boolean isInjected()
  {
    return this.injected;
  }
  
  public View onCreateView(Bundle paramBundle, LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
  {
    return super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
  }
  
  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = onCreateView(paramBundle, paramLayoutInflater, paramViewGroup);
    if (localView != null)
    {
      Injector.inject(localView, this);
      this.injected = true;
      return localView;
    }
    Injector.inject(getDialog(), this);
    return localView;
  }
  
  public void show(Activity paramActivity)
  {
    SecretFragmentsStockUtil.dialogFragmentShowDialogFragment(paramActivity, this);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.fragment.stock.DialogFragment
 * JD-Core Version:    0.7.0.1
 */