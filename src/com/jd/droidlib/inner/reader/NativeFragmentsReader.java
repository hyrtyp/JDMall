package com.jd.droidlib.inner.reader;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Bundle;
import com.jd.droidlib.util.ResourceUtils;

public class NativeFragmentsReader
{
  static Fragment getFragment(Object paramObject, int paramInt, String paramString)
  {
    Activity localActivity = (Activity)paramObject;
    if (paramInt == 0) {
      paramInt = ResourceUtils.getResourceId(localActivity, paramString);
    }
    return localActivity.getFragmentManager().findFragmentById(paramInt);
  }
  
  static Bundle getFragmentArguments(Object paramObject)
  {
    return ((Fragment)paramObject).getArguments();
  }
  
  static Activity getParentActivity(Object paramObject)
  {
    return ((Fragment)paramObject).getActivity();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.reader.NativeFragmentsReader
 * JD-Core Version:    0.7.0.1
 */