package com.jd.droidlib.activity;

import android.os.Bundle;
import com.jd.droidlib.Injector;
import com.jd.droidlib.bus.EventBus;
import com.jd.droidlib.contract.Injectable;

public abstract class PreferenceActivity
  extends android.preference.PreferenceActivity
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
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.activity.PreferenceActivity
 * JD-Core Version:    0.7.0.1
 */