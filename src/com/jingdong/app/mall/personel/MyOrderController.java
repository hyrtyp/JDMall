package com.jingdong.app.mall.personel;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.ImageUtil.InputWay;

public class MyOrderController
{
  private static final String TAG = "PersonalController";
  private HttpGroup httpGroup;
  
  public MyOrderController(HttpGroup paramHttpGroup)
  {
    this.httpGroup = paramHttpGroup;
  }
  
  public void queryUserImage(String paramString, final ProductImageListener paramProductImageListener)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setType(5000);
    localHttpSetting.setUrl(paramString);
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        BitmapDrawable localBitmapDrawable = new BitmapDrawable(ImageUtil.createBitmap(ImageUtil.InputWay.createInputWay(paramAnonymousHttpResponse), 0, 0));
        paramProductImageListener.onFinish(localBitmapDrawable);
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        paramProductImageListener.onFinish(null);
      }
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    });
    localHttpSetting.setEffect(0);
    this.httpGroup.add(localHttpSetting);
  }
  
  public static abstract interface ProductImageListener
  {
    public abstract void onFinish(Drawable paramDrawable);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.personel.MyOrderController
 * JD-Core Version:    0.7.0.1
 */