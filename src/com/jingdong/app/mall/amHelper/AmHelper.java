package com.jingdong.app.mall.amHelper;

import android.content.Context;
import android.content.res.AssetManager;
import android.media.SoundPool;
import com.jingdong.common.MyApplication;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class AmHelper
{
  public static final String ANNUAL_SCAN_KEN = "annualToken";
  public static final String PARAM_SUBCODE = "sc";
  public static final String PARAM_TOKEN = "tk";
  public static final String SHAKE_ANNUAL_MEETING_CHENCKED_IN_SHAKE = "checkedIn_Shake";
  public static final String SHAKE_ANNUAL_MEETING_CHENCKED_IN_TAP = "checkedIn_Tap";
  public static final String SHAKE_ANNUAL_MEETING_ENTRY_TAP = "entryTap";
  public static final String SHAKE_ANNUAL_MEETING_EVENT_ID = "JDAnnualMeeting";
  public static final String SHAKE_ANNUAL_MEETING_KEY = "eventType";
  public static final String SHAKE_ANNUAL_MEETING_RESULT_CLOSE_TAP = "resultCloseTap";
  public static final int SHAKE_DELAY_TIME = 2000;
  public static final int SHAKE_DELAY_TIME_CAN_SHAKE = 2100;
  public static final int SHAKE_DIALOG_CLOSE = 1;
  public static final int SHAKE_SOUND_MAX = 3;
  public static final int SHAKE_SOUND_TYPE_NOTHING = 2;
  public static final int SHAKE_SOUND_TYPE_SHAKEING = 0;
  public static final int SHAKE_SOUND_TYPE_SOMETHING = 1;
  private static final String TAG = AmHelper.class.getSimpleName();
  private static AmHelper instance;
  public static boolean isGoPersonel = false;
  public static boolean isShowDialog = true;
  public static String token = "";
  private Context mContext = MyApplication.getInstance().getApplicationContext();
  private SoundPool sndPool;
  private HashMap<Integer, Integer> soundPoolMap;
  
  private AmHelper()
  {
    loadSound();
  }
  
  public static AmHelper getInstance()
  {
    try
    {
      if (instance == null) {
        instance = new AmHelper();
      }
      AmHelper localAmHelper = instance;
      return localAmHelper;
    }
    finally {}
  }
  
  public static Map<String, String> getShakeParams(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("eventType", paramString);
    return localHashMap;
  }
  
  private void loadSound()
  {
    try
    {
      this.sndPool = new SoundPool(3, 1, 5);
      if (this.soundPoolMap == null)
      {
        this.soundPoolMap = new HashMap();
        new Thread()
        {
          public void run()
          {
            if ((AmHelper.this.mContext == null) || (AmHelper.this.mContext.getAssets() == null)) {
              return;
            }
            try
            {
              AmHelper.this.soundPoolMap.put(Integer.valueOf(0), Integer.valueOf(AmHelper.this.sndPool.load(AmHelper.this.mContext.getAssets().openFd("sound/shakeing.mp3"), 1)));
              AmHelper.this.soundPoolMap.put(Integer.valueOf(1), Integer.valueOf(AmHelper.this.sndPool.load(AmHelper.this.mContext.getAssets().openFd("sound/shake_something.mp3"), 1)));
              AmHelper.this.soundPoolMap.put(Integer.valueOf(2), Integer.valueOf(AmHelper.this.sndPool.load(AmHelper.this.mContext.getAssets().openFd("sound/shake_nothing.mp3"), 1)));
              return;
            }
            catch (IOException localIOException) {}
          }
        }.start();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void destroyAllData()
  {
    this.mContext = null;
    instance = null;
  }
  
  public void startShakeSound(int paramInt)
  {
    if ((this.sndPool != null) && (this.soundPoolMap != null) && (this.soundPoolMap.size() > paramInt)) {
      this.sndPool.play(((Integer)this.soundPoolMap.get(Integer.valueOf(paramInt))).intValue(), 0.5F, 0.5F, 0, 0, 1.0F);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.amHelper.AmHelper
 * JD-Core Version:    0.7.0.1
 */