package com.jingdong.lib.zxing.client.android.camera.open;

import android.hardware.Camera;

final class DefaultOpenCameraInterface
  implements OpenCameraInterface
{
  public Camera open()
  {
    return Camera.open();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.camera.open.DefaultOpenCameraInterface
 * JD-Core Version:    0.7.0.1
 */