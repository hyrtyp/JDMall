package com.jingdong.app.mall.utils;

import android.app.Activity;
import android.content.Intent;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.app.mall.more.AboutActivity;
import com.jingdong.app.mall.more.FeedbackActivity;
import com.jingdong.app.mall.more.HistoryListActivity;
import com.jingdong.app.mall.more.SettingActivity;

public class JumpUtil
{
  public static final int FLAG_ABOUT = 4;
  public static final int FLAG_BROWSING_HISTORY = 1;
  public static final int FLAG_FEEDBACK = 3;
  public static final int FLAG_HELP = 5;
  public static final int FLAG_SETTING = 2;
  private static final String TAG = "JumpUtil";
  
  public static void jumpToActivity(int paramInt, Activity paramActivity)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 1: 
      paramActivity.startActivity(new Intent(paramActivity, HistoryListActivity.class));
      return;
    case 2: 
      paramActivity.startActivity(new Intent(paramActivity, SettingActivity.class));
      return;
    case 3: 
      paramActivity.startActivity(new Intent(paramActivity, FeedbackActivity.class));
      return;
    case 4: 
      paramActivity.startActivity(new Intent(paramActivity, AboutActivity.class));
      return;
    }
    Intent localIntent = new Intent(paramActivity, WebActivity.class);
    localIntent.putExtra("url", MyApplication.getInstance().getCurrentMyActivity().getStringFromPreference("helpurl"));
    paramActivity.startActivity(localIntent);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.JumpUtil
 * JD-Core Version:    0.7.0.1
 */