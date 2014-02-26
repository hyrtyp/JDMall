package com.jd.droidlib.inner.fragments;

import android.app.Activity;
import android.app.DialogFragment;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;

public class SecretFragmentsStockUtil
  extends SecretFragmentsUtil
{
  public static void dialogFragmentShowDialogFragment(Activity paramActivity, DialogFragment paramDialogFragment)
  {
    FragmentManager localFragmentManager = paramActivity.getFragmentManager();
    String str = paramDialogFragment.getClass().getName();
    FragmentTransaction localFragmentTransaction = localFragmentManager.beginTransaction();
    Fragment localFragment = localFragmentManager.findFragmentByTag(str);
    if (localFragment != null) {
      localFragmentTransaction.remove(localFragment);
    }
    paramDialogFragment.show(localFragmentTransaction, str);
  }
  
  public static void fragmentActivitySetFragmentVisible(Activity paramActivity, boolean paramBoolean, Fragment... paramVarArgs)
  {
    FragmentTransaction localFragmentTransaction = paramActivity.getFragmentManager().beginTransaction();
    int i = paramVarArgs.length;
    int j = 0;
    if (j >= i)
    {
      localFragmentTransaction.commit();
      return;
    }
    Fragment localFragment = paramVarArgs[j];
    if (paramBoolean) {
      localFragmentTransaction.show(localFragment);
    }
    for (;;)
    {
      j++;
      break;
      localFragmentTransaction.hide(localFragment);
    }
  }
  
  public static void singleFragmentActivityAddFragmentToContentView(Activity paramActivity, Fragment paramFragment)
  {
    FragmentTransaction localFragmentTransaction = paramActivity.getFragmentManager().beginTransaction();
    localFragmentTransaction.add(140584, paramFragment);
    localFragmentTransaction.commit();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.fragments.SecretFragmentsStockUtil
 * JD-Core Version:    0.7.0.1
 */