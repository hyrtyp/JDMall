package com.jingdong.app.mall.barcode;

import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.PreviewCallback;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import java.io.IOException;

public class SFHCamera
  implements SurfaceHolder.Callback
{
  private int height;
  private SurfaceHolder holder = null;
  private Camera.AutoFocusCallback mAutoFocusCallBack = new Camera.AutoFocusCallback()
  {
    public void onAutoFocus(boolean paramAnonymousBoolean, Camera paramAnonymousCamera)
    {
      if (paramAnonymousBoolean) {
        SFHCamera.this.mCamera.setOneShotPreviewCallback(SFHCamera.this.previewCallback);
      }
    }
  };
  private Camera mCamera;
  private Camera.PreviewCallback previewCallback;
  private int width;
  
  public SFHCamera(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, Camera.PreviewCallback paramPreviewCallback)
  {
    this.holder = paramSurfaceHolder;
    this.holder.addCallback(this);
    this.holder.setType(3);
    this.width = paramInt1;
    this.height = paramInt2;
    this.previewCallback = paramPreviewCallback;
  }
  
  public void AutoFocusAndPreviewCallback()
  {
    if (this.mCamera != null) {
      this.mCamera.autoFocus(this.mAutoFocusCallBack);
    }
  }
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    Camera.Parameters localParameters = this.mCamera.getParameters();
    localParameters.setPreviewSize(this.width, this.height);
    localParameters.setPictureFormat(256);
    this.mCamera.setParameters(localParameters);
    this.mCamera.startPreview();
  }
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    this.mCamera = Camera.open();
    try
    {
      this.mCamera.setPreviewDisplay(this.holder);
      return;
    }
    catch (IOException localIOException)
    {
      this.mCamera.release();
      this.mCamera = null;
    }
  }
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    this.mCamera.setPreviewCallback(null);
    this.mCamera.stopPreview();
    this.mCamera = null;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.barcode.SFHCamera
 * JD-Core Version:    0.7.0.1
 */