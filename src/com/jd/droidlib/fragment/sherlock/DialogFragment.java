package com.jd.droidlib.fragment.sherlock;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.actionbarsherlock.app.SherlockDialogFragment;
import com.jd.droidlib.Injector;
import com.jd.droidlib.inner.fragments.SecretFragmentsSupportUtil;

public class DialogFragment
  extends SherlockDialogFragment
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
    if (localView != null) {
      Injector.inject(localView, this);
    }
    for (;;)
    {
      this.injected = true;
      return localView;
      Injector.inject(getDialog(), this);
    }
  }
  
  public void show(FragmentActivity paramFragmentActivity)
  {
    SecretFragmentsSupportUtil.dialogFragmentShowDialogFragment(paramFragmentActivity, this);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.fragment.sherlock.DialogFragment
 * JD-Core Version:    0.7.0.1
 */