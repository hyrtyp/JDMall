package com.jd.droidlib.activity.sherlock;

import android.content.Intent;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import com.actionbarsherlock.app.SherlockPreferenceActivity;
import com.jd.droidlib.Injector;
import com.jd.droidlib.bus.EventBus;
import com.jd.droidlib.contract.Injectable;

public class PreferenceActivity
  extends SherlockPreferenceActivity
  implements Injectable
{
  public void addPreferencesFromIntent(Intent paramIntent)
  {
    super.addPreferencesFromIntent(paramIntent);
  }
  
  public void addPreferencesFromResource(int paramInt)
  {
    super.addPreferencesFromResource(paramInt);
  }
  
  public Preference findPreference(CharSequence paramCharSequence)
  {
    return super.findPreference(paramCharSequence);
  }
  
  public PreferenceManager getPreferenceManager()
  {
    return super.getPreferenceManager();
  }
  
  public PreferenceScreen getPreferenceScreen()
  {
    return super.getPreferenceScreen();
  }
  
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
  
  public boolean onPreferenceTreeClick(PreferenceScreen paramPreferenceScreen, Preference paramPreference)
  {
    return super.onPreferenceTreeClick(paramPreferenceScreen, paramPreference);
  }
  
  protected void onResume()
  {
    super.onResume();
    EventBus.registerAnnotatedReceiver(this);
  }
  
  public void setPreferenceScreen(PreferenceScreen paramPreferenceScreen)
  {
    super.setPreferenceScreen(paramPreferenceScreen);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.activity.sherlock.PreferenceActivity
 * JD-Core Version:    0.7.0.1
 */