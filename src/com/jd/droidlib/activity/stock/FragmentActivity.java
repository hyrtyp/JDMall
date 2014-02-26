package com.jd.droidlib.activity.stock;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import com.jd.droidlib.Injector;
import com.jd.droidlib.bus.EventBus;
import com.jd.droidlib.contract.Injectable;
import com.jd.droidlib.inner.fragments.SecretFragmentsStockUtil;

public abstract class FragmentActivity
  extends Activity
  implements Injectable
{
  private boolean isLoading;
  private View loadingIndicator;
  private MenuItem reloadMenuItem;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    onPreInject();
    Injector.inject(this);
  }
  
  protected void onPause()
  {
    super.onPause();
    EventBus.unregisterAnnotatedReceiver(this);
  }
  
  public void onPreInject() {}
  
  protected void onResume()
  {
    super.onResume();
    EventBus.registerAnnotatedReceiver(this);
  }
  
  public final void setActionBarLoadingIndicatorVisible(boolean paramBoolean)
  {
    this.isLoading = paramBoolean;
    if (this.reloadMenuItem != null)
    {
      MenuItem localMenuItem = this.reloadMenuItem;
      if (paramBoolean) {}
      for (View localView = this.loadingIndicator;; localView = null)
      {
        localMenuItem.setActionView(localView);
        return;
      }
    }
    super.setProgressBarIndeterminateVisibility(paramBoolean);
  }
  
  public final void setActionBarReloadMenuItem(MenuItem paramMenuItem)
  {
    this.reloadMenuItem = paramMenuItem;
    if ((paramMenuItem != null) && (this.loadingIndicator == null)) {
      this.loadingIndicator = SecretFragmentsStockUtil.fragmentActivityBuildLoadingIndicator(this);
    }
    setActionBarLoadingIndicatorVisible(this.isLoading);
  }
  
  public void setFragmentVisible(boolean paramBoolean, Fragment... paramVarArgs)
  {
    SecretFragmentsStockUtil.fragmentActivitySetFragmentVisible(this, paramBoolean, paramVarArgs);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.activity.stock.FragmentActivity
 * JD-Core Version:    0.7.0.1
 */