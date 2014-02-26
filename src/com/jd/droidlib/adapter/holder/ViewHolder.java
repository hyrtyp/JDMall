package com.jd.droidlib.adapter.holder;

import android.view.View;
import com.jd.droidlib.Injector;

public abstract class ViewHolder
{
  public ViewHolder(View paramView)
  {
    Injector.inject(paramView, this);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.adapter.holder.ViewHolder
 * JD-Core Version:    0.7.0.1
 */