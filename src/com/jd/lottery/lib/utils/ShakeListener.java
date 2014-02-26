package com.jd.lottery.lib.utils;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Vibrator;

public class ShakeListener
  implements SensorEventListener
{
  private static final int SPEED_SHRESHOLD = 4000;
  private static final int UPTATE_INTERVAL_TIME = 70;
  String TAG = "ShakeListener";
  private long lastUpdateTime;
  private float lastX;
  private float lastY;
  private float lastZ;
  private Context mContext;
  private OnShakeListener onShakeListener;
  private Sensor sensor;
  private SensorManager sensorManager;
  
  public ShakeListener(Context paramContext)
  {
    this.mContext = paramContext;
    start();
  }
  
  public void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
  
  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    long l1 = System.currentTimeMillis();
    long l2 = l1 - this.lastUpdateTime;
    if (l2 < 70L) {}
    float f4;
    float f5;
    float f6;
    do
    {
      return;
      this.lastUpdateTime = l1;
      float f1 = paramSensorEvent.values[0];
      float f2 = paramSensorEvent.values[1];
      float f3 = paramSensorEvent.values[2];
      f4 = f1 - this.lastX;
      f5 = f2 - this.lastY;
      f6 = f3 - this.lastZ;
      this.lastX = f1;
      this.lastY = f2;
      this.lastZ = f3;
    } while (10000.0D * (Math.sqrt(f4 * f4 + f5 * f5 + f6 * f6) / l2) < 4000.0D);
    ((Vibrator)this.mContext.getSystemService("vibrator")).vibrate(100L);
    this.onShakeListener.onShake();
  }
  
  public void setOnShakeListener(OnShakeListener paramOnShakeListener)
  {
    this.onShakeListener = paramOnShakeListener;
  }
  
  public void start()
  {
    this.sensorManager = ((SensorManager)this.mContext.getSystemService("sensor"));
    if (this.sensorManager != null) {
      this.sensor = this.sensorManager.getDefaultSensor(1);
    }
    if (this.sensor != null) {
      this.sensorManager.registerListener(this, this.sensor, 1);
    }
  }
  
  public void stop()
  {
    this.sensorManager.unregisterListener(this);
  }
  
  public static abstract interface OnShakeListener
  {
    public abstract void onShake();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.utils.ShakeListener
 * JD-Core Version:    0.7.0.1
 */