package com.jingdong.lib.zxing.client.android.camera;

import android.content.Context;
import android.graphics.Point;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.os.Build;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import java.lang.reflect.Method;
import java.util.regex.Pattern;

final class CameraConfigurationManager
{
  private static final Pattern COMMA_PATTERN = Pattern.compile(",");
  private static final int DESIRED_SHARPNESS = 30;
  private static final String TAG = CameraConfigurationManager.class.getSimpleName();
  private static final int TEN_DESIRED_ZOOM = 27;
  private Point cameraResolution;
  private final Context context;
  private int previewFormat;
  private String previewFormatString;
  private Point screenResolution;
  
  CameraConfigurationManager(Context paramContext)
  {
    this.context = paramContext;
  }
  
  private static int findBestMotZoomValue(CharSequence paramCharSequence, int paramInt)
  {
    int i = 0;
    String[] arrayOfString = COMMA_PATTERN.split(paramCharSequence);
    int j = arrayOfString.length;
    int k = 0;
    for (;;)
    {
      if (k >= j) {
        return i;
      }
      String str = arrayOfString[k].trim();
      try
      {
        double d = Double.parseDouble(str);
        int m = (int)(10.0D * d);
        if (Math.abs(paramInt - d) < Math.abs(paramInt - i)) {
          i = m;
        }
        k++;
      }
      catch (NumberFormatException localNumberFormatException) {}
    }
    return paramInt;
  }
  
  private static Point findBestPreviewSizeValue(CharSequence paramCharSequence, Point paramPoint)
  {
    int i = 0;
    int j = 0;
    int k = 2147483647;
    String[] arrayOfString = COMMA_PATTERN.split(paramCharSequence);
    int m = arrayOfString.length;
    int n = 0;
    if (n >= m)
    {
      if ((i > 0) && (j > 0)) {
        return new Point(i, j);
      }
    }
    else
    {
      String str = arrayOfString[n].trim();
      int i1 = str.indexOf('x');
      if (i1 < 0) {
        Log.w(TAG, "Bad preview-size: " + str);
      }
      for (;;)
      {
        int i2;
        int i3;
        int i4;
        for (;;)
        {
          n++;
          break;
          try
          {
            i2 = Integer.parseInt(str.substring(0, i1));
            i3 = Integer.parseInt(str.substring(i1 + 1));
            i4 = Math.abs(i2 - paramPoint.x) + Math.abs(i3 - paramPoint.y);
            if (i4 != 0) {
              break label197;
            }
            i = i2;
            j = i3;
          }
          catch (NumberFormatException localNumberFormatException)
          {
            Log.w(TAG, "Bad preview-size: " + str);
          }
        }
        continue;
        label197:
        if (i4 < k)
        {
          i = i2;
          j = i3;
          k = i4;
        }
      }
    }
    return null;
  }
  
  private static Point getCameraResolution(Camera.Parameters paramParameters, Point paramPoint)
  {
    String str = paramParameters.get("preview-size-values");
    if (str == null) {
      str = paramParameters.get("preview-size-value");
    }
    Point localPoint = null;
    if (str != null)
    {
      Log.d(TAG, "preview-size-values parameter: " + str);
      localPoint = findBestPreviewSizeValue(str, paramPoint);
    }
    if (localPoint == null) {
      localPoint = new Point(paramPoint.x >> 3 << 3, paramPoint.y >> 3 << 3);
    }
    return localPoint;
  }
  
  public static int getDesiredSharpness()
  {
    return 30;
  }
  
  private void setFlash(Camera.Parameters paramParameters)
  {
    if ((Build.MODEL.contains("Behold II")) && (CameraManager.SDK_INT == 3)) {
      paramParameters.set("flash-value", 1);
    }
    for (;;)
    {
      paramParameters.set("flash-mode", "off");
      return;
      paramParameters.set("flash-value", 2);
    }
  }
  
  private void setZoom(Camera.Parameters paramParameters)
  {
    String str1 = paramParameters.get("zoom-supported");
    if ((str1 != null) && (!Boolean.parseBoolean(str1))) {}
    int i;
    label154:
    do
    {
      return;
      i = 27;
      str2 = paramParameters.get("max-zoom");
      if (str2 != null) {}
      try
      {
        double d = Double.parseDouble(str2);
        int n = (int)(10.0D * d);
        if (i > n) {
          i = n;
        }
      }
      catch (NumberFormatException localNumberFormatException3)
      {
        for (;;)
        {
          Log.w(TAG, "Bad max-zoom: " + str2);
        }
      }
      str3 = paramParameters.get("taking-picture-zoom-max");
      if (str3 != null) {}
      try
      {
        int m = Integer.parseInt(str3);
        if (i > m) {
          i = m;
        }
      }
      catch (NumberFormatException localNumberFormatException2)
      {
        for (;;)
        {
          String str4;
          String str5;
          Log.w(TAG, "Bad taking-picture-zoom-max: " + str3);
        }
      }
      str4 = paramParameters.get("mot-zoom-values");
      if (str4 != null) {
        i = findBestMotZoomValue(str4, i);
      }
      str5 = paramParameters.get("mot-zoom-step");
      if (str5 != null) {}
      try
      {
        int j = (int)(10.0D * Double.parseDouble(str5.trim()));
        if (j > 1)
        {
          int k = i % j;
          i -= k;
        }
      }
      catch (NumberFormatException localNumberFormatException1)
      {
        break label154;
      }
      if ((str2 != null) || (str4 != null)) {
        paramParameters.set("zoom", String.valueOf(i / 10.0D));
      }
    } while (str3 == null);
    paramParameters.set("taking-picture-zoom", i);
  }
  
  Point getCameraResolution()
  {
    return this.cameraResolution;
  }
  
  int getPreviewFormat()
  {
    return this.previewFormat;
  }
  
  String getPreviewFormatString()
  {
    return this.previewFormatString;
  }
  
  Point getScreenResolution()
  {
    return this.screenResolution;
  }
  
  void initFromCameraParameters(Camera paramCamera)
  {
    Camera.Parameters localParameters = paramCamera.getParameters();
    this.previewFormat = localParameters.getPreviewFormat();
    this.previewFormatString = localParameters.get("preview-format");
    Log.d(TAG, "Default preview format: " + this.previewFormat + '/' + this.previewFormatString);
    Display localDisplay = ((WindowManager)this.context.getSystemService("window")).getDefaultDisplay();
    this.screenResolution = new Point(localDisplay.getWidth(), localDisplay.getHeight());
    Log.d(TAG, "Screen resolution: " + this.screenResolution);
    this.cameraResolution = getCameraResolution(localParameters, this.screenResolution);
    Point localPoint = new Point();
    localPoint.x = this.screenResolution.x;
    localPoint.y = this.screenResolution.y;
    if (this.screenResolution.x < this.screenResolution.y)
    {
      localPoint.x = this.screenResolution.y;
      localPoint.y = this.screenResolution.x;
    }
    this.cameraResolution = getCameraResolution(localParameters, localPoint);
    Log.d(TAG, "Camera resolution: " + this.screenResolution);
  }
  
  void setDesiredCameraParameters(Camera paramCamera)
  {
    Camera.Parameters localParameters = paramCamera.getParameters();
    Log.d(TAG, "Setting preview size: " + this.cameraResolution);
    localParameters.setPreviewSize(this.cameraResolution.x, this.cameraResolution.y);
    setFlash(localParameters);
    setZoom(localParameters);
    setDisplayOrientation(paramCamera, 90);
    paramCamera.setParameters(localParameters);
  }
  
  protected void setDisplayOrientation(Camera paramCamera, int paramInt)
  {
    try
    {
      Class localClass = paramCamera.getClass();
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Integer.TYPE;
      Method localMethod = localClass.getMethod("setDisplayOrientation", arrayOfClass);
      if (localMethod != null)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(paramInt);
        localMethod.invoke(paramCamera, arrayOfObject);
      }
      return;
    }
    catch (Exception localException) {}
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.camera.CameraConfigurationManager
 * JD-Core Version:    0.7.0.1
 */