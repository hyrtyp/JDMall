package com.jingdong.app.mall;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.pay.JDPay;
import com.jingdong.common.controller.ShoppingBaseController;
import com.jingdong.common.utils.pay.PayUtils;

public class MyApplication
  extends com.jingdong.common.MyApplication
{
  public static int runCount;
  
  public static MyApplication getInstance()
  {
    return (MyApplication)instance;
  }
  
  public MyActivity getCurrentMyActivity()
  {
    return (MyActivity)super.getCurrentMyActivity();
  }
  
  public Drawable getDefalutDrawble()
  {
    return getResources().getDrawable(2130837923);
  }
  
  public Class<?> getErrorActivityClass()
  {
    return ErrorActivity.class;
  }
  
  public Class<?> getMainActivityClass()
  {
    return MainFrameActivity.class;
  }
  
  public MainFrameActivity getMainFrameActivity()
  {
    if ((this.mainFrameActivity != null) && ((this.mainFrameActivity instanceof MainFrameActivity))) {
      return (MainFrameActivity)this.mainFrameActivity;
    }
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    runCount = 1 + runCount;
    ShoppingBaseController.setCommon(CommonUtil.getInstance());
    PayUtils.setPay(new JDPay());
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.MyApplication
 * JD-Core Version:    0.7.0.1
 */