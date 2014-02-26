package com.jd.droidlib.activity.support;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.jd.droidlib.inner.fragments.SecretFragmentsSupportUtil;

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
    SecretFragmentsSupportUtil.singleFragmentActivityAddFragmentToContentView(this, this.fragment);
  }
  
  protected abstract F onCreateFragment();
  
  public void onPreInject()
  {
    SecretFragmentsSupportUtil.singleFragmentActivitySetContentView(this);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.activity.support.SingleFragmentActivity
 * JD-Core Version:    0.7.0.1
 */