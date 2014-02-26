package com.jingdong.common.lbs;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import com.jingdong.common.MyApplication;
import com.jingdong.common.frame.IMainActivity;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class JdLocationManager
  implements ILocationManager
{
  private static final String CONTEXT_SERVICE = "location";
  private static final String TAG = "JdLocationManager";
  private static JdLocationManager jdLocationManager;
  private ILocationManager.UpdateLocationListener globlListener;
  private LocationListener locationListener = new LocationListener()
  {
    public void onLocationChanged(Location paramAnonymousLocation)
    {
      JdLocationManager.this.updateWithNewLocation(paramAnonymousLocation);
    }
    
    public void onProviderDisabled(String paramAnonymousString) {}
    
    public void onProviderEnabled(String paramAnonymousString)
    {
      if (JdLocationManager.this.mLocation != null) {
        JdLocationManager.this.updateWithNewLocation(JdLocationManager.this.mLocation);
      }
    }
    
    public void onStatusChanged(String paramAnonymousString, int paramAnonymousInt, Bundle paramAnonymousBundle)
    {
      if (JdLocationManager.this.mLocation != null) {
        JdLocationManager.this.updateWithNewLocation(JdLocationManager.this.mLocation);
      }
    }
  };
  private LocationManager locationManager;
  private Location mLocation = null;
  
  private JdLocationManager(Context paramContext)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("Context can not be null ! ");
    }
    this.locationManager = ((LocationManager)paramContext.getSystemService("location"));
  }
  
  public static JdLocationManager getInstance()
  {
    if (jdLocationManager == null) {
      jdLocationManager = new JdLocationManager(MyApplication.getInstance().getApplicationContext());
    }
    return jdLocationManager;
  }
  
  private void setLocationListener(final String paramString)
  {
    if ((MyApplication.getInstance().getMainFrameActivity() != null) && (MyApplication.getInstance().getMainFrameActivity().getHandler() != null)) {
      MyApplication.getInstance().getMainFrameActivity().getHandler().post(new Runnable()
      {
        public void run()
        {
          JdLocationManager.this.locationManager.requestLocationUpdates(paramString, 5000L, 0.0F, JdLocationManager.this.locationListener);
        }
      });
    }
  }
  
  private void updateWithNewLocation(Location paramLocation)
  {
    if (paramLocation != null) {}
    try
    {
      stopLocation();
      this.mLocation = paramLocation;
      HashMap localHashMap = new HashMap();
      localHashMap.put("lati", Double.valueOf(paramLocation.getLatitude()));
      localHashMap.put("longi", Double.valueOf(paramLocation.getLongitude()));
      if (this.globlListener != null)
      {
        this.globlListener.onFinish(localHashMap);
        this.globlListener = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public boolean isOpenGps()
  {
    try
    {
      boolean bool1 = this.locationManager.getAllProviders().contains("gps");
      boolean bool2 = false;
      if (bool1)
      {
        boolean bool3 = this.locationManager.isProviderEnabled("gps");
        bool2 = false;
        if (bool3) {
          bool2 = true;
        }
      }
      return bool2;
    }
    catch (Exception localException) {}
    return false;
  }
  
  public void requestLocation()
  {
    try
    {
      List localList = this.locationManager.getAllProviders();
      if ((localList.contains("gps")) && (this.locationManager.isProviderEnabled("gps"))) {
        setLocationListener("gps");
      }
      if ((localList.contains("network")) && (this.locationManager.isProviderEnabled("network"))) {
        setLocationListener("network");
      }
      return;
    }
    catch (Throwable localThrowable) {}
  }
  
  public void setUpdateLocationListener(ILocationManager.UpdateLocationListener paramUpdateLocationListener)
  {
    this.globlListener = paramUpdateLocationListener;
  }
  
  public void stopLocation()
  {
    this.locationManager.removeUpdates(this.locationListener);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.lbs.JdLocationManager
 * JD-Core Version:    0.7.0.1
 */