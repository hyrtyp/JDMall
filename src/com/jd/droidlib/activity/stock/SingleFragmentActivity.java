package com.jd.droidlib.activity.stock;

import android.app.Fragment;
import android.os.Bundle;
import com.jd.droidlib.inner.fragments.SecretFragmentsStockUtil;

public abstract class SingleFragmentActivity<F extends Fragment>
  extends FragmentActivity
{
  private F fragment;
  
  protected F getFragment()
  {
    return this.fragment;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.fragment = onCreateFragment();
    SecretFragmentsStockUtil.singleFragmentActivityAddFragmentToContentView(this, this.fragment);
  }
  
  protected abstract F onCreateFragment();
  
  public void onPreInject()
  {
    SecretFragmentsStockUtil.singleFragmentActivitySetContentView(this);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.activity.stock.SingleFragmentActivity
 * JD-Core Version:    0.7.0.1
 */