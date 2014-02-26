package com.jingdong.lib.zxing.client.android.camera.open;

import com.jingdong.lib.zxing.client.android.executor.PlatformSupportManager;

public final class OpenCameraManager
  extends PlatformSupportManager<OpenCameraInterface>
{
  public OpenCameraManager()
  {
    super(OpenCameraInterface.class, new DefaultOpenCameraInterface());
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.camera.open.OpenCameraManager
 * JD-Core Version:    0.7.0.1
 */