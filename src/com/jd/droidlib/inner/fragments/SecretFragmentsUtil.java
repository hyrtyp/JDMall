package com.jd.droidlib.inner.fragments;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ProgressBar;
import com.jd.droidlib.util.ResourceUtils;

public class SecretFragmentsUtil
{
  protected static final int CONTENT_VIEW_ID = 140584;
  
  public static View fragmentActivityBuildLoadingIndicator(Context paramContext)
  {
    int i;
    int j;
    if ((0xF & paramContext.getResources().getConfiguration().screenLayout) > 2)
    {
      i = 1;
      if (Build.VERSION.SDK_INT <= 10) {
        break label106;
      }
      j = 1;
      label29:
      if ((i == 0) || (j == 0)) {
        break label111;
      }
    }
    label106:
    label111:
    for (int k = 64;; k = 56)
    {
      FrameLayout localFrameLayout = new FrameLayout(paramContext);
      localFrameLayout.setMinimumWidth(ResourceUtils.dpToPx(paramContext, k));
      ProgressBar localProgressBar = new ProgressBar(paramContext);
      int m = ResourceUtils.dpToPx(paramContext, 32);
      localFrameLayout.addView(localProgressBar, new FrameLayout.LayoutParams(m, m, 17));
      return localFrameLayout;
      i = 0;
      break;
      j = 0;
      break label29;
    }
  }
  
  public static void singleFragmentActivitySetContentView(Activity paramActivity)
  {
    FrameLayout localFrameLayout = new FrameLayout(paramActivity);
    localFrameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    localFrameLayout.setId(140584);
    paramActivity.setContentView(localFrameLayout);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.fragments.SecretFragmentsUtil
 * JD-Core Version:    0.7.0.1
 */