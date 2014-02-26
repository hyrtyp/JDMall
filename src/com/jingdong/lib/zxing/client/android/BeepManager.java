package com.jingdong.lib.zxing.client.android;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.os.Vibrator;
import android.preference.PreferenceManager;
import android.util.Log;
import java.io.IOException;

final class BeepManager
{
  private static final float BEEP_VOLUME = 0.1F;
  private static final String TAG = BeepManager.class.getSimpleName();
  private static final long VIBRATE_DURATION = 200L;
  private final Activity activity;
  private MediaPlayer mediaPlayer;
  private boolean playBeep;
  private boolean vibrate;
  
  BeepManager(Activity paramActivity)
  {
    this.activity = paramActivity;
    this.mediaPlayer = null;
    updatePrefs();
  }
  
  private static MediaPlayer buildMediaPlayer(Context paramContext)
  {
    MediaPlayer localMediaPlayer = new MediaPlayer();
    localMediaPlayer.setAudioStreamType(3);
    localMediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener()
    {
      public void onCompletion(MediaPlayer paramAnonymousMediaPlayer)
      {
        paramAnonymousMediaPlayer.seekTo(0);
      }
    });
    AssetFileDescriptor localAssetFileDescriptor = paramContext.getResources().openRawResourceFd(2131099648);
    try
    {
      localMediaPlayer.setDataSource(localAssetFileDescriptor.getFileDescriptor(), localAssetFileDescriptor.getStartOffset(), localAssetFileDescriptor.getLength());
      localAssetFileDescriptor.close();
      localMediaPlayer.setVolume(0.1F, 0.1F);
      localMediaPlayer.prepare();
      return localMediaPlayer;
    }
    catch (IOException localIOException)
    {
      Log.w(TAG, localIOException);
    }
    return null;
  }
  
  private static boolean shouldBeep(SharedPreferences paramSharedPreferences, Context paramContext)
  {
    boolean bool = paramSharedPreferences.getBoolean("preferences_play_beep", true);
    if ((bool) && (((AudioManager)paramContext.getSystemService("audio")).getRingerMode() != 2)) {
      bool = false;
    }
    return bool;
  }
  
  void playBeepSoundAndVibrate()
  {
    if ((this.playBeep) && (this.mediaPlayer != null)) {
      this.mediaPlayer.start();
    }
    if (this.vibrate) {
      ((Vibrator)this.activity.getSystemService("vibrator")).vibrate(200L);
    }
  }
  
  void updatePrefs()
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.activity);
    this.playBeep = shouldBeep(localSharedPreferences, this.activity);
    this.vibrate = localSharedPreferences.getBoolean("preferences_vibrate", false);
    if ((this.playBeep) && (this.mediaPlayer == null))
    {
      this.activity.setVolumeControlStream(3);
      this.mediaPlayer = buildMediaPlayer(this.activity);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.BeepManager
 * JD-Core Version:    0.7.0.1
 */