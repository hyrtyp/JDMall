package com.jd.droidlib.inner.fragments;

import android.support.v4.app.DialogFragment;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

public class SecretFragmentsSupportUtil
  extends SecretFragmentsUtil
{
  public static void dialogFragmentShowDialogFragment(FragmentActivity paramFragmentActivity, DialogFragment paramDialogFragment)
  {
    FragmentManager localFragmentManager = paramFragmentActivity.getSupportFragmentManager();
    String str = paramDialogFragment.getClass().getName();
    FragmentTransaction localFragmentTransaction = localFragmentManager.beginTransaction();
    Fragment localFragment = localFragmentManager.findFragmentByTag(str);
    if (localFragment != null) {
      localFragmentTransaction.remove(localFragment);
    }
    paramDialogFragment.show(localFragmentTransaction, str);
  }
  
  public static void fragmentActivitySetFragmentVisible(FragmentActivity paramFragmentActivity, boolean paramBoolean, Fragment... paramVarArgs)
  {
    FragmentTransaction localFragmentTransaction = paramFragmentActivity.getSupportFragmentManager().beginTransaction();
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
  
  public static void singleFragmentActivityAddFragmentToContentView(FragmentActivity paramFragmentActivity, Fragment paramFragment)
  {
    FragmentTransaction localFragmentTransaction = paramFragmentActivity.getSupportFragmentManager().beginTransaction();
    localFragmentTransaction.add(140584, paramFragment);
    localFragmentTransaction.commit();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.fragments.SecretFragmentsSupportUtil
 * JD-Core Version:    0.7.0.1
 */