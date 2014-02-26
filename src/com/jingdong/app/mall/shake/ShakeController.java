package com.jingdong.app.mall.shake;

import android.graphics.Bitmap;
import android.os.Handler;
import android.text.TextUtils;
import android.widget.RelativeLayout;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.entity.ShakeBDInfo;
import com.jingdong.common.ui.HandlerRecycleBitmapDrawable;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.ImageUtil.InputWay;
import com.jingdong.common.utils.JSONObjectProxy;

public class ShakeController
{
  private static final String TAG = ShakeController.class.getSimpleName();
  private HttpGroup httpGroup;
  private ShakeBDInfo shakeBdInfo;
  
  public ShakeController(HttpGroup paramHttpGroup)
  {
    this.httpGroup = paramHttpGroup;
    this.shakeBdInfo = new ShakeBDInfo();
  }
  
  public static void loadHomeBackground(HttpGroup paramHttpGroup, MyActivity paramMyActivity, final RelativeLayout paramRelativeLayout1, final RelativeLayout paramRelativeLayout2, String paramString, final Bitmap paramBitmap)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setType(5000);
    localHttpSetting.setPriority(5000);
    localHttpSetting.setUrl(paramString);
    localHttpSetting.setCacheMode(0);
    localHttpSetting.setEffect(0);
    localHttpSetting.setAttempts(0);
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        final Bitmap localBitmap = ImageUtil.createBitmap(ImageUtil.InputWay.createInputWay(paramAnonymousHttpResponse), 0, 0);
        ShakeController.this.post(new Runnable()
        {
          public void run()
          {
            if (this.val$newLayout != null)
            {
              final HandlerRecycleBitmapDrawable localHandlerRecycleBitmapDrawable = new HandlerRecycleBitmapDrawable(localBitmap, this.val$myActivity);
              localHandlerRecycleBitmapDrawable.setNeedPadding(false);
              if (localHandlerRecycleBitmapDrawable != null) {
                new Handler().postDelayed(new Runnable()
                {
                  public void run()
                  {
                    this.val$newLayout.setBackgroundDrawable(localHandlerRecycleBitmapDrawable);
                    ShakeAnimationUtils.startHomeAlphaAnim(this.val$myActivity, this.val$originalLayout, this.val$newLayout, this.val$orginalBitmap);
                  }
                }, 0L);
              }
            }
          }
        });
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    });
    paramHttpGroup.add(localHttpSetting);
  }
  
  public ShakeBDInfo getShakeBDInfo()
  {
    return this.shakeBdInfo;
  }
  
  public void queryShakeBDInfo(final MyActivity paramMyActivity, final Runnable paramRunnable)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("getShakeBDInfo");
    localHttpSetting.setNotifyUser(true);
    localHttpSetting.setEffect(1);
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        if (localJSONObjectProxy != null)
        {
          ShakeController.this.shakeBdInfo = new ShakeBDInfo(localJSONObjectProxy, 1);
          paramMyActivity.post(new Runnable()
          {
            public void run()
            {
              if ((this.val$runnable != null) && (ShakeController.this.shakeBdInfo != null)) {
                this.val$runnable.run();
              }
            }
          });
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    });
    this.httpGroup.add(localHttpSetting);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shake.ShakeController
 * JD-Core Version:    0.7.0.1
 */