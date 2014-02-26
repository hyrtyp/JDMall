package com.jd.droidlib.fragment.sherlock;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.actionbarsherlock.app.SherlockListFragment;
import com.jd.droidlib.Injector;

public class ListFragment
  extends SherlockListFragment
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
    Injector.inject(localView, this);
    this.injected = true;
    return localView;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.fragment.sherlock.ListFragment
 * JD-Core Version:    0.7.0.1
 */