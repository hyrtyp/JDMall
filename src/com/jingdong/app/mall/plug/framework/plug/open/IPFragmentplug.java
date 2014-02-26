package com.jingdong.app.mall.plug.framework.plug.open;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;

public abstract interface IPFragmentplug
  extends IPlugInterface
{
  public abstract Fragment getFragment(Context paramContext, Bundle paramBundle);
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.plug.framework.plug.open.IPFragmentplug
 * JD-Core Version:    0.7.0.1
 */