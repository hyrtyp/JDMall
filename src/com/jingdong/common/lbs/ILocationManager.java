package com.jingdong.common.lbs;

import java.util.Map;

public abstract interface ILocationManager
{
  public static final int LOCATION_TIME_SPAN = 5000;
  
  public abstract boolean isOpenGps();
  
  public abstract void requestLocation();
  
  public abstract void setUpdateLocationListener(UpdateLocationListener paramUpdateLocationListener);
  
  public abstract void stopLocation();
  
  public static abstract interface UpdateLocationListener
  {
    public abstract void onFinish(Map<String, Double> paramMap);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.lbs.ILocationManager
 * JD-Core Version:    0.7.0.1
 */