package com.jingdong.app.mall.home;

import android.content.Intent;
import android.media.MediaPlayer;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.Vibrator;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.Button;
import android.widget.TextView;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.utils.DPIUtil;

public class PanicBuyingActivity
  extends MyActivity
{
  private Intent intent;
  private View.OnClickListener listener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      switch (paramAnonymousView.getId())
      {
      default: 
        return;
      case 2131494039: 
        Intent localIntent = new Intent(PanicBuyingActivity.this, PanicBuyingService.class);
        localIntent.setAction(PanicBuyingActivity.this.intent.getAction());
        PanicBuyingActivity.this.startService(localIntent);
        PanicBuyingActivity.this.finish();
        return;
      }
      PanicBuyingActivity.this.finish();
    }
  };
  
  private void toast()
  {
    try
    {
      Uri localUri = RingtoneManager.getDefaultUri(2);
      MediaPlayer localMediaPlayer = new MediaPlayer();
      localMediaPlayer.setDataSource(this, localUri);
      localMediaPlayer.setAudioStreamType(5);
      localMediaPlayer.setLooping(false);
      localMediaPlayer.prepare();
      localMediaPlayer.start();
      try
      {
        label45:
        ((Vibrator)getSystemService("vibrator")).vibrate(2000L);
        try
        {
          label60:
          ((PowerManager)getSystemService("power")).newWakeLock(268435482, "PanicBuyingActivity").acquire();
          return;
        }
        catch (Exception localException3) {}
      }
      catch (Exception localException2)
      {
        break label60;
      }
    }
    catch (Exception localException1)
    {
      break label45;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903241);
    WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
    localLayoutParams.height = (DPIUtil.getHeight() >> 1);
    localLayoutParams.width = (DPIUtil.getWidth() - 10 * DPIUtil.getWidth() / 100);
    TextView localTextView1 = (TextView)findViewById(2131494036);
    TextView localTextView2 = (TextView)findViewById(2131494037);
    TextView localTextView3 = (TextView)findViewById(2131494038);
    Button localButton1 = (Button)findViewById(2131494039);
    Button localButton2 = (Button)findViewById(2131494040);
    localButton1.setOnClickListener(this.listener);
    localButton2.setOnClickListener(this.listener);
    this.intent = getIntent();
    String str1 = this.intent.getExtras().getString("msg");
    String[] arrayOfString = this.intent.getExtras().getStringArray("list");
    int i = this.intent.getExtras().getInt("size", 1);
    localTextView1.setText("您预约的秒杀");
    String str2;
    int j;
    if ((arrayOfString != null) && (arrayOfString.length > 1))
    {
      str2 = "";
      j = 0;
      if ((j >= arrayOfString.length) || (j >= 1))
      {
        localTextView2.setText(str2);
        localTextView3.setText("等" + i + "样商品还有1分钟就要开始啦!\n赶快抢购吧!");
      }
    }
    for (;;)
    {
      toast();
      return;
      str2 = str2 + "“" + arrayOfString[j] + "”";
      j++;
      break;
      localTextView2.setText("“" + str1 + "”");
      localTextView3.setText("还有1分钟就要开始啦!赶快抢购吧!");
    }
  }
  
  protected void onStop()
  {
    super.onStop();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.home.PanicBuyingActivity
 * JD-Core Version:    0.7.0.1
 */