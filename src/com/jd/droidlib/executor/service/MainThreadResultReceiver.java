package com.jd.droidlib.executor.service;

import android.os.Handler;
import android.os.Looper;
import android.os.ResultReceiver;

public class MainThreadResultReceiver
  extends ResultReceiver
{
  public MainThreadResultReceiver()
  {
    super(new Handler(Looper.getMainLooper()));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.executor.service.MainThreadResultReceiver
 * JD-Core Version:    0.7.0.1
 */