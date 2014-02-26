package com.jingdong.lib.zxing.client.android;

import android.app.Activity;
import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.os.Bundle;
import android.os.Handler;
import android.os.Vibrator;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.Toast;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.jingdong.app.mall.barcode.BarcodeActivity;
import com.jingdong.app.mall.barcode.BarcodeInputActivity;
import com.jingdong.lib.zxing.client.android.camera.CameraManager;
import java.io.IOException;
import java.util.Vector;

public class CaptureActivity
  extends Activity
  implements SurfaceHolder.Callback
{
  private static final float BEEP_VOLUME = 0.1F;
  private static final long VIBRATE_DURATION = 200L;
  private static CaptureActivity mCaptureActivity;
  private final MediaPlayer.OnCompletionListener beepListener = new MediaPlayer.OnCompletionListener()
  {
    public void onCompletion(MediaPlayer paramAnonymousMediaPlayer)
    {
      paramAnonymousMediaPlayer.seekTo(0);
    }
  };
  private String characterSet;
  private Vector<BarcodeFormat> decodeFormats;
  private CaptureActivityHandler handler;
  private boolean hasSurface;
  private InactivityTimer inactivityTimer;
  private MediaPlayer mediaPlayer;
  private boolean playBeep;
  private boolean vibrate;
  private ViewfinderView viewfinderView;
  
  public static void closeScanApp()
  {
    if (mCaptureActivity != null)
    {
      if (mCaptureActivity.inactivityTimer != null) {
        mCaptureActivity.inactivityTimer.shutdown();
      }
      mCaptureActivity.finish();
    }
  }
  
  private void initBeepSound()
  {
    AssetFileDescriptor localAssetFileDescriptor;
    if ((this.playBeep) && (this.mediaPlayer == null))
    {
      setVolumeControlStream(3);
      this.mediaPlayer = new MediaPlayer();
      this.mediaPlayer.setAudioStreamType(3);
      this.mediaPlayer.setOnCompletionListener(this.beepListener);
      localAssetFileDescriptor = getResources().openRawResourceFd(2131099648);
    }
    try
    {
      this.mediaPlayer.setDataSource(localAssetFileDescriptor.getFileDescriptor(), localAssetFileDescriptor.getStartOffset(), localAssetFileDescriptor.getLength());
      localAssetFileDescriptor.close();
      this.mediaPlayer.setVolume(0.1F, 0.1F);
      this.mediaPlayer.prepare();
      return;
    }
    catch (IOException localIOException)
    {
      this.mediaPlayer = null;
    }
  }
  
  private void initCamera(SurfaceHolder paramSurfaceHolder)
  {
    try
    {
      CameraManager.get().openDriver(paramSurfaceHolder);
      if (this.handler == null) {
        this.handler = new CaptureActivityHandler(this, this.decodeFormats, this.characterSet);
      }
      return;
    }
    catch (IOException localIOException) {}catch (RuntimeException localRuntimeException) {}
  }
  
  private void playBeepSoundAndVibrate()
  {
    if ((this.playBeep) && (this.mediaPlayer != null)) {
      this.mediaPlayer.start();
    }
    if (this.vibrate) {
      ((Vibrator)getSystemService("vibrator")).vibrate(200L);
    }
  }
  
  public void drawViewfinder()
  {
    this.viewfinderView.drawViewfinder();
  }
  
  public Handler getHandler()
  {
    return this.handler;
  }
  
  public ViewfinderView getViewfinderView()
  {
    return this.viewfinderView;
  }
  
  public void handleDecode(Result paramResult)
  {
    this.inactivityTimer.onActivity();
    playBeepSoundAndVibrate();
    String str1 = paramResult.getText();
    String str2 = paramResult.getBarcodeFormat().name();
    if (str1.equals("")) {
      Toast.makeText(this, "Scan failed!", 0).show();
    }
    for (;;)
    {
      finish();
      return;
      Intent localIntent = new Intent(this, BarcodeActivity.class);
      Bundle localBundle = new Bundle();
      localBundle.putString("SCAN_RESULT", str1);
      localBundle.putString("SCAN_RESULT_FORMAT", str2);
      localIntent.putExtras(localBundle);
      localIntent.putExtra("com.jingdong.lib.zxing.client.android.SCAN", 1);
      startActivity(localIntent);
      finish();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903041);
    getWindow().addFlags(128);
    CameraManager.init(getApplication());
    this.viewfinderView = ((ViewfinderView)findViewById(2131492892));
    ImageView localImageView = (ImageView)findViewById(2131492893);
    Button localButton1 = (Button)findViewById(2131492895);
    Button localButton2 = (Button)findViewById(2131492894);
    View.OnClickListener local2 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        switch (paramAnonymousView.getId())
        {
        default: 
          return;
        case 2131492893: 
          CaptureActivity.this.finish();
          return;
        case 2131492895: 
          Intent localIntent = new Intent(CaptureActivity.this, BarcodeInputActivity.class);
          CaptureActivity.this.startActivity(localIntent);
          return;
        }
        CaptureActivity.this.startActivity(new Intent(CaptureActivity.this, BarcodeActivity.class));
      }
    };
    localImageView.setOnClickListener(local2);
    localButton1.setOnClickListener(local2);
    localButton2.setOnClickListener(local2);
    this.hasSurface = false;
    this.inactivityTimer = new InactivityTimer(this);
    mCaptureActivity = this;
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    this.inactivityTimer.shutdown();
    mCaptureActivity = null;
  }
  
  protected void onPause()
  {
    super.onPause();
    if (this.handler != null)
    {
      this.handler.quitSynchronously();
      this.handler = null;
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    SurfaceView localSurfaceView = (SurfaceView)findViewById(2131492891);
    this.viewfinderView.setVisibility(0);
    SurfaceHolder localSurfaceHolder = localSurfaceView.getHolder();
    if (this.hasSurface) {
      initCamera(localSurfaceHolder);
    }
    for (;;)
    {
      this.decodeFormats = null;
      this.characterSet = null;
      this.playBeep = true;
      if (((AudioManager)getSystemService("audio")).getRingerMode() != 2) {
        this.playBeep = false;
      }
      initBeepSound();
      this.vibrate = true;
      mCaptureActivity = this;
      return;
      localSurfaceHolder.addCallback(this);
      localSurfaceHolder.setType(3);
    }
  }
  
  protected void onStop()
  {
    super.onStop();
    CameraManager.get().closeDriver();
  }
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    if (!this.hasSurface)
    {
      this.hasSurface = true;
      initCamera(paramSurfaceHolder);
    }
  }
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    this.hasSurface = false;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.CaptureActivity
 * JD-Core Version:    0.7.0.1
 */