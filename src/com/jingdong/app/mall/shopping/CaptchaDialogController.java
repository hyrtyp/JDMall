package com.jingdong.app.mall.shopping;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.jingdong.common.MyApplication;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.ui.DialogController;
import com.jingdong.common.ui.ExceptionDrawable;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.ImageUtil.InputWay;
import com.jingdong.common.utils.StatisticsReportUtil;
import java.util.Random;

public abstract class CaptchaDialogController
  extends DialogController
{
  private ImageView captchaImage;
  private EditText captchaInput;
  private String captchaKey;
  private final String captchaUrl;
  private IMyActivity currentMyActivity = MyApplication.getInstance().getCurrentMyActivity();
  private ExceptionDrawable loadingDrawable;
  private ExceptionDrawable noDrawable;
  private Button switchButton;
  private View view;
  
  public CaptchaDialogController(String paramString1, String paramString2)
  {
    this.captchaUrl = paramString1;
    this.loadingDrawable = new ExceptionDrawable(MyApplication.getInstance(), "加载中");
    this.noDrawable = new ExceptionDrawable(MyApplication.getInstance(), "加载失败");
    findView();
    bindImage();
    setTitle("需要验证码");
    if (TextUtils.isEmpty(paramString2)) {
      paramString2 = "请根据图片输入验证码。";
    }
    setMessage(paramString2);
    setPositiveButton("提交");
    setNeutralButton("取消");
    setNegativeButton("换一张");
    setCanBack(true);
    init(this.currentMyActivity.getThisActivity());
    this.currentMyActivity.post(new Runnable()
    {
      public void run()
      {
        CaptchaDialogController.this.show();
        CaptchaDialogController.this.switchButton = CaptchaDialogController.this.getButton(-2);
        if (CaptchaDialogController.this.switchButton != null) {
          CaptchaDialogController.this.switchButton.setClickable(false);
        }
      }
    });
  }
  
  private void bindImage()
  {
    this.currentMyActivity.post(new Runnable()
    {
      public void run()
      {
        CaptchaDialogController.this.captchaImage.setImageDrawable(CaptchaDialogController.this.loadingDrawable);
      }
    });
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setType(5000);
    localHttpSetting.setPriority(5000);
    localHttpSetting.setUrl(this.captchaUrl);
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(final HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        CaptchaDialogController.this.currentMyActivity.post(new Runnable()
        {
          public void run()
          {
            Bitmap localBitmap = ImageUtil.createBitmap(ImageUtil.InputWay.createInputWay(paramAnonymousHttpResponse), 0, 0);
            CaptchaDialogController.this.captchaImage.setImageDrawable(new BitmapDrawable(localBitmap));
            if (CaptchaDialogController.this.switchButton != null) {
              CaptchaDialogController.this.switchButton.setClickable(true);
            }
          }
        });
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        CaptchaDialogController.this.currentMyActivity.post(new Runnable()
        {
          public void run()
          {
            CaptchaDialogController.this.captchaImage.setImageDrawable(CaptchaDialogController.this.noDrawable);
            if (CaptchaDialogController.this.switchButton != null) {
              CaptchaDialogController.this.switchButton.setClickable(true);
            }
          }
        });
      }
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams)
      {
        CaptchaDialogController.this.captchaKey = (StatisticsReportUtil.readDeviceUUID() + CaptchaDialogController.this.randomText(6));
        paramAnonymousHttpSettingParams.putMapParams("key", CaptchaDialogController.this.captchaKey);
      }
    });
    this.currentMyActivity.getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private String randomText(int paramInt)
  {
    char[] arrayOfChar = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90 };
    StringBuilder localStringBuilder = new StringBuilder();
    Random localRandom = new Random();
    for (int i = 0;; i++)
    {
      if (i >= paramInt) {
        return localStringBuilder.toString();
      }
      localStringBuilder.append(arrayOfChar[localRandom.nextInt(arrayOfChar.length)]);
    }
  }
  
  public void findView()
  {
    this.currentMyActivity.post(new Runnable()
    {
      public void run()
      {
        RelativeLayout localRelativeLayout = new RelativeLayout(CaptchaDialogController.this.currentMyActivity.getThisActivity());
        CaptchaDialogController.this.setView(localRelativeLayout);
        CaptchaDialogController.this.view = ImageUtil.inflate(2130903092, localRelativeLayout);
        CaptchaDialogController.this.captchaImage = ((ImageView)CaptchaDialogController.this.view.findViewById(2131493197));
        CaptchaDialogController.this.captchaInput = ((EditText)CaptchaDialogController.this.view.findViewById(2131493198));
      }
    });
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    switch (paramInt)
    {
    case -3: 
    default: 
      return;
    case -1: 
      String str = this.captchaInput.getText().toString();
      if (TextUtils.isEmpty(str))
      {
        this.currentMyActivity.post(new Runnable()
        {
          public void run()
          {
            Toast.makeText(MyApplication.getInstance(), "验证码不能为空", 1).show();
            if (!CaptchaDialogController.this.alertDialog.isShowing()) {
              CaptchaDialogController.this.alertDialog.show();
            }
          }
        });
        return;
      }
      submit(str, this.captchaKey);
      return;
    }
    if (this.switchButton != null) {
      this.switchButton.setClickable(false);
    }
    bindImage();
    this.currentMyActivity.post(new Runnable()
    {
      public void run()
      {
        if (!CaptchaDialogController.this.alertDialog.isShowing()) {
          CaptchaDialogController.this.alertDialog.show();
        }
      }
    });
  }
  
  protected void submit(String paramString1, String paramString2) {}
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.CaptchaDialogController
 * JD-Core Version:    0.7.0.1
 */