package com.jd.droidlib.inner.reader;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import com.jd.droidlib.util.ResourceUtils;

public class SupportFragmentsReader
{
  static Fragment getFragment(Object paramObject, int paramInt, String paramString)
  {
    FragmentActivity localFragmentActivity = (FragmentActivity)paramObject;
    if (paramInt == 0) {
      paramInt = ResourceUtils.getResourceId(localFragmentActivity, paramString);
    }
    return localFragmentActivity.getSupportFragmentManager().findFragmentById(paramInt);
  }
  
  static Bundle getFragmentArguments(Object paramObject)
  {
    return ((Fragment)paramObject).getArguments();
  }
  
  static Activity getParentActivity(Object paramObject)
  {
    return ((Fragment)paramObject).getActivity();
  }
  
  static boolean isSupportObject(Object paramObject)
  {
    return ((paramObject instanceof FragmentActivity)) || ((paramObject instanceof Fragment));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.reader.SupportFragmentsReader
 * JD-Core Version:    0.7.0.1
 */