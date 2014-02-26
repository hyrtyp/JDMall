package com.jd.droidlib.activity.stock;

import android.app.ActionBar;
import android.app.ActionBar.Tab;
import android.app.ActionBar.TabListener;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashSet;

public abstract class TabbedFragmentActivity
  extends FragmentActivity
{
  private static final String CURR_TAB = "_curr_tab";
  private int enterAnimation;
  private int exitAnimation;
  private final ArrayList<Fragment[]> fragmentsOnTab = new ArrayList();
  private final HashSet<Fragment> manuallyHiddenFragments = new HashSet();
  private final ActionBar.TabListener tabListener = new ActionBar.TabListener()
  {
    public void onTabReselected(ActionBar.Tab paramAnonymousTab, FragmentTransaction paramAnonymousFragmentTransaction) {}
    
    public void onTabSelected(ActionBar.Tab paramAnonymousTab, FragmentTransaction paramAnonymousFragmentTransaction)
    {
      TabbedFragmentActivity.this.showFragmentsForCurrentTab(paramAnonymousFragmentTransaction);
      TabbedFragmentActivity.this.onTabChanged(TabbedFragmentActivity.this.getCurrentTab());
    }
    
    public void onTabUnselected(ActionBar.Tab paramAnonymousTab, FragmentTransaction paramAnonymousFragmentTransaction) {}
  };
  
  private void showFragmentsForCurrentTab(FragmentTransaction paramFragmentTransaction)
  {
    int i = getCurrentTab();
    if ((this.enterAnimation != 0) && (this.exitAnimation != 0)) {
      paramFragmentTransaction.setCustomAnimations(this.enterAnimation, this.exitAnimation);
    }
    int j = 0;
    if (j >= this.fragmentsOnTab.size()) {
      return;
    }
    if (j == i) {}
    Fragment[] arrayOfFragment;
    int n;
    for (int k = 1;; k = 0)
    {
      arrayOfFragment = (Fragment[])this.fragmentsOnTab.get(j);
      int m = arrayOfFragment.length;
      n = 0;
      if (n < m) {
        break label94;
      }
      j++;
      break;
    }
    label94:
    Fragment localFragment = arrayOfFragment[n];
    if (k != 0) {
      if (!this.manuallyHiddenFragments.contains(localFragment)) {
        paramFragmentTransaction.show(localFragment);
      }
    }
    for (;;)
    {
      n++;
      break;
      paramFragmentTransaction.hide(localFragment);
    }
  }
  
  public void addTab(int paramInt, ActionBar.Tab paramTab, Fragment... paramVarArgs)
  {
    paramTab.setTabListener(this.tabListener);
    getActionBar().addTab(paramTab, paramInt);
    this.fragmentsOnTab.add(paramInt, paramVarArgs);
    FragmentTransaction localFragmentTransaction = getFragmentManager().beginTransaction();
    showFragmentsForCurrentTab(localFragmentTransaction);
    localFragmentTransaction.commit();
  }
  
  public void addTab(ActionBar.Tab paramTab, Fragment... paramVarArgs)
  {
    addTab(this.fragmentsOnTab.size(), paramTab, paramVarArgs);
  }
  
  public int getCurrentTab()
  {
    return getActionBar().getSelectedTab().getPosition();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getActionBar().setNavigationMode(2);
  }
  
  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    setCurrentTab(paramBundle.getInt("_curr_tab", 0));
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("_curr_tab", getCurrentTab());
  }
  
  protected void onTabChanged(int paramInt) {}
  
  public void setCurrentTab(int paramInt)
  {
    getActionBar().setSelectedNavigationItem(paramInt);
  }
  
  public void setCustomAnimations(int paramInt1, int paramInt2)
  {
    this.enterAnimation = paramInt1;
    this.exitAnimation = paramInt2;
  }
  
  public void setFragmentVisible(boolean paramBoolean, Fragment... paramVarArgs)
  {
    int i = paramVarArgs.length;
    int j = 0;
    if (j >= i) {
      return;
    }
    Fragment localFragment = paramVarArgs[j];
    Fragment[] arrayOfFragment;
    int m;
    if (paramBoolean)
    {
      this.manuallyHiddenFragments.remove(localFragment);
      arrayOfFragment = (Fragment[])this.fragmentsOnTab.get(getCurrentTab());
      int k = arrayOfFragment.length;
      m = 0;
      label57:
      if (m < k) {}
    }
    for (;;)
    {
      j++;
      break;
      if (localFragment == arrayOfFragment[m])
      {
        super.setFragmentVisible(true, new Fragment[] { localFragment });
      }
      else
      {
        m++;
        break label57;
        this.manuallyHiddenFragments.add(localFragment);
        super.setFragmentVisible(false, new Fragment[] { localFragment });
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.activity.stock.TabbedFragmentActivity
 * JD-Core Version:    0.7.0.1
 */