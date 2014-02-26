package com.jd.droidlib.activity.support;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.jd.droidlib.Injector;
import com.jd.droidlib.bus.EventBus;
import com.jd.droidlib.contract.Injectable;
import com.jd.droidlib.inner.fragments.SecretFragmentsSupportUtil;

public abstract class FragmentActivity
  extends android.support.v4.app.FragmentActivity
  implements Injectable
{
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
  
  public void setFragmentVisible(boolean paramBoolean, Fragment... paramVarArgs)
  {
    SecretFragmentsSupportUtil.fragmentActivitySetFragmentVisible(this, paramBoolean, paramVarArgs);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.activity.support.FragmentActivity
 * JD-Core Version:    0.7.0.1
 */