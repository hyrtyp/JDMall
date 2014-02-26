package com.jingdong.lib.zxing.client.android;

import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.jingdong.lib.zxing.client.android.camera.CameraManager;
import java.util.Vector;

public final class CaptureActivityHandler
  extends Handler
{
  private static final String TAG = CaptureActivityHandler.class.getSimpleName();
  private final CaptureActivity activity;
  private final DecodeThread decodeThread;
  private State state;
  
  public CaptureActivityHandler(CaptureActivity paramCaptureActivity, Vector<BarcodeFormat> paramVector, String paramString)
  {
    this.activity = paramCaptureActivity;
    this.decodeThread = new DecodeThread(paramCaptureActivity, paramVector, paramString, new ViewfinderResultPointCallback(paramCaptureActivity.getViewfinderView()));
    this.decodeThread.start();
    this.state = State.SUCCESS;
    CameraManager.get().startPreview();
    restartPreviewAndDecode();
  }
  
  private void restartPreviewAndDecode()
  {
    if (this.state == State.SUCCESS)
    {
      this.state = State.PREVIEW;
      CameraManager.get().requestPreviewFrame(this.decodeThread.getHandler(), 2131492877);
      CameraManager.get().requestAutoFocus(this, 2131492876);
      this.activity.drawViewfinder();
    }
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    case 2131492877: 
    case 2131492881: 
    default: 
    case 2131492876: 
      do
      {
        return;
      } while (this.state != State.PREVIEW);
      CameraManager.get().requestAutoFocus(this, 2131492876);
      return;
    case 2131492882: 
      Log.d(TAG, "Got restart preview message");
      restartPreviewAndDecode();
      return;
    case 2131492879: 
      Log.d(TAG, "Got decode succeeded message");
      this.state = State.SUCCESS;
      paramMessage.getData();
      this.activity.handleDecode((Result)paramMessage.obj);
      return;
    case 2131492878: 
      this.state = State.PREVIEW;
      CameraManager.get().requestPreviewFrame(this.decodeThread.getHandler(), 2131492877);
      return;
    case 2131492883: 
      Log.d(TAG, "Got return scan result message");
      this.activity.setResult(-1, (Intent)paramMessage.obj);
      this.activity.finish();
      return;
    }
    Log.d(TAG, "Got product query message");
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse((String)paramMessage.obj));
    localIntent.addFlags(524288);
    this.activity.startActivity(localIntent);
  }
  
  public void quitSynchronously()
  {
    this.state = State.DONE;
    CameraManager.get().stopPreview();
    Message.obtain(this.decodeThread.getHandler(), 2131492881).sendToTarget();
    try
    {
      this.decodeThread.join();
      label35:
      removeMessages(2131492879);
      removeMessages(2131492878);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      break label35;
    }
  }
  
  private static enum State
  {
    DONE,  SUCCESS,  PREVIEW;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.CaptureActivityHandler
 * JD-Core Version:    0.7.0.1
 */