package com.jingdong.app.mall.web;

import com.jingdong.app.mall.utils.BarcodeUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.utils.ReadContactsUtil;
import com.jingdong.common.utils.VoiceUtil;

public final class WebJavaScript
{
  private static final String TAG = "WebJavaScript";
  private MyActivity webActivity;
  
  public WebJavaScript(MyActivity paramMyActivity)
  {
    this.webActivity = paramMyActivity;
  }
  
  public void barcodeCallBack()
  {
    if (this.webActivity == null) {
      return;
    }
    BarcodeUtil.scanBarcode(this.webActivity);
  }
  
  public void callContacts()
  {
    if (this.webActivity == null) {
      return;
    }
    ReadContactsUtil.readContacts(this.webActivity);
  }
  
  public void satisfactionCallBack(final boolean paramBoolean)
  {
    if (this.webActivity != null) {
      this.webActivity.post(new Runnable()
      {
        public void run()
        {
          if (paramBoolean)
          {
            WebJavaScript.this.webActivity.setResult(-1);
            WebJavaScript.this.webActivity.finish();
          }
        }
      });
    }
  }
  
  public void takeCouponCallBack()
  {
    if (this.webActivity != null) {
      this.webActivity.post(new Runnable()
      {
        public void run()
        {
          WebJavaScript.this.webActivity.finish();
        }
      });
    }
  }
  
  public void voiceCallBack()
  {
    if (this.webActivity == null) {
      return;
    }
    VoiceUtil.showVoiceDialog(this.webActivity);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.web.WebJavaScript
 * JD-Core Version:    0.7.0.1
 */