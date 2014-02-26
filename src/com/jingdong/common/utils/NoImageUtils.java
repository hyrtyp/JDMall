package com.jingdong.common.utils;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.widget.ImageView;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.frame.IResumeListener;
import com.jingdong.common.res.StringUtil;
import com.jingdong.common.ui.ExceptionDrawable;

public class NoImageUtils
{
  public static void initImageView(IMyActivity paramIMyActivity, final HttpGroup paramHttpGroup, final ImageView paramImageView, final String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {
      paramIMyActivity.addResumeListener(new IResumeListener()
      {
        public void onResume()
        {
          NoImageUtils.initImageView(NoImageUtils.this, paramHttpGroup, paramImageView, paramString, false);
        }
      });
    }
    if (needNoImage()) {
      paramImageView.setOnLongClickListener(new View.OnLongClickListener()
      {
        public boolean onLongClick(View paramAnonymousView)
        {
          NoImageUtils.loadImage(true, NoImageUtils.this, paramHttpGroup, paramImageView, paramString);
          return true;
        }
      });
    }
    for (;;)
    {
      loadImage(false, paramIMyActivity, paramHttpGroup, paramImageView, paramString);
      return;
      paramImageView.setOnLongClickListener(null);
      paramImageView.setLongClickable(false);
    }
  }
  
  public static boolean isNeedAlertDialog()
  {
    String str = StringUtil.no_image_alert_dialog_key;
    return CommonUtil.getJdSharedPreferences().getBoolean(str, true);
  }
  
  public static void loadImage(boolean paramBoolean, IMyActivity paramIMyActivity, HttpGroup paramHttpGroup, final ImageView paramImageView, String paramString)
  {
    if ((!paramBoolean) && (needNoImage())) {}
    for (final boolean bool = true;; bool = false)
    {
      HttpGroup.OnCommonListener local3 = new HttpGroup.OnCommonListener()
      {
        public void onEnd(final HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          NoImageUtils.this.post(new Runnable()
          {
            public void run()
            {
              Bitmap localBitmap = ImageUtil.createBitmap(ImageUtil.InputWay.createInputWay(paramAnonymousHttpResponse), 0, 0);
              this.val$imageView.setImageDrawable(new BitmapDrawable(localBitmap));
              this.val$imageView.invalidate();
            }
          });
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError)
        {
          NoImageUtils.this.post(new Runnable()
          {
            public void run()
            {
              if (this.val$useCache)
              {
                this.val$imageView.setImageDrawable(new ExceptionDrawable(this.val$myActivity.getThisActivity(), StringUtil.need_long_click));
                return;
              }
              this.val$imageView.setImageDrawable(new ExceptionDrawable(this.val$myActivity.getThisActivity(), StringUtil.no_image));
            }
          });
        }
        
        public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
      };
      HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setType(5000);
      localHttpSetting.setUrl(paramString);
      localHttpSetting.setListener(local3);
      if (bool) {
        localHttpSetting.setCacheMode(1);
      }
      paramHttpGroup.add(localHttpSetting);
      return;
    }
  }
  
  public static boolean needNoImage()
  {
    String str = StringUtil.no_image_switch_key;
    boolean bool1 = CommonUtil.getJdSharedPreferences().getBoolean(str, false);
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = NetUtils.isWifi();
      bool2 = false;
      if (!bool3) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  public static void setIfNeedAlertDialog(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = CommonUtil.getJdSharedPreferences().edit();
    localEditor.putBoolean(StringUtil.no_image_alert_dialog_key, paramBoolean);
    localEditor.commit();
  }
  
  public static void setIfNeedNoImage(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = CommonUtil.getJdSharedPreferences().edit();
    localEditor.putBoolean(StringUtil.no_image_switch_key, paramBoolean);
    localEditor.commit();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.NoImageUtils
 * JD-Core Version:    0.7.0.1
 */