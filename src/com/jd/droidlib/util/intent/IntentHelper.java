package com.jd.droidlib.util.intent;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.jd.droidlib.util.L;
import com.jd.droidlib.util.ui.AbstractDialogFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class IntentHelper
{
  public static ActivityInfo[] getIntentHandlers(Context paramContext, Intent paramIntent)
  {
    List localList = paramContext.getPackageManager().queryIntentActivities(paramIntent, 0);
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator;
    if (localList != null) {
      localIterator = localList.iterator();
    }
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return (ActivityInfo[])localArrayList.toArray(new ActivityInfo[localArrayList.size()]);
      }
      localArrayList.add(((ResolveInfo)localIterator.next()).activityInfo);
    }
  }
  
  public static boolean gotHandlerForIntent(Context paramContext, Intent paramIntent)
  {
    ResolveInfo localResolveInfo = paramContext.getPackageManager().resolveActivity(paramIntent, 0);
    boolean bool = false;
    if (localResolveInfo != null) {
      bool = true;
    }
    return bool;
  }
  
  public static void startActivityOrWarn(Context paramContext, Intent paramIntent)
  {
    startActivityOrWarn(paramContext, paramIntent, "Error");
  }
  
  public static void startActivityOrWarn(Context paramContext, Intent paramIntent, String paramString)
  {
    try
    {
      paramContext.startActivity(paramIntent);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      L.w(localActivityNotFoundException);
      new AbstractDialogFactory(paramContext).showToast(paramString);
    }
  }
  
  public static void startChooserOrWarn(Context paramContext, Intent paramIntent)
  {
    startChooserOrWarn(paramContext, paramIntent, null);
  }
  
  public static void startChooserOrWarn(Context paramContext, Intent paramIntent, String paramString)
  {
    startActivityOrWarn(paramContext, Intent.createChooser(paramIntent, paramString));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.util.intent.IntentHelper
 * JD-Core Version:    0.7.0.1
 */