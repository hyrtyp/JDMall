package com.jingdong.app.mall.amHelper;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RadioGroup.LayoutParams;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.search.ImageTools;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.ui.ExceptionDrawable;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.CustomOnAllListener;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.ImageUtil.InputWay;
import com.jingdong.common.utils.JDImageUtils;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.NetUtils;

public class AmHelperActivity
  extends MyActivity
{
  public final int DINNER = 16772610;
  public final int HOME = 16772608;
  public final int MEETING = 16772609;
  private String TAG = AmHelperActivity.class.getSimpleName();
  public final String TYPE_DINNER = "dinner";
  public final String TYPE_HOME = "home";
  public final String TYPE_MEETING = "meeting";
  private AmAnimationUtil amAnimationUtil;
  private ImageView am_enter;
  private ImageView content;
  private TextView contentTextView;
  private String currentUrl;
  private boolean isCanClickButton = true;
  private boolean isFirst = true;
  private boolean isLoader;
  private RadioGroup radioGroup;
  private Button refreshBtn;
  private RelativeLayout rockEnter;
  private ScrollView scrollView;
  private TextView textView;
  private String token;
  
  private void avoidMoreTimeClicked()
  {
    this.isCanClickButton = false;
    post(new Runnable()
    {
      public void run()
      {
        AmHelperActivity.this.isCanClickButton = true;
      }
    }, 3000);
  }
  
  private void createComponent(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      paramString = "home";
    }
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("getAnnualInfo");
    localHttpSetting.putJsonParam("pin", LoginUserBase.getLoginUserName());
    localHttpSetting.putJsonParam("pageType", paramString);
    if (TextUtils.isEmpty(this.token)) {}
    for (String str = "";; str = this.token)
    {
      localHttpSetting.putJsonParam("tk", str);
      localHttpSetting.setNotifyUser(true);
      localHttpSetting.setEffect(1);
      localHttpSetting.setListener(new HttpGroup.OnAllListener()
      {
        private String seat = "";
        private String type = "";
        private String url = "";
        private String urlLoc = "";
        
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          try
          {
            JSONObjectProxy localJSONObjectProxy1 = paramAnonymousHttpResponse.getJSONObject();
            final String str1 = localJSONObjectProxy1.getStringOrNull("sc");
            final String str2 = localJSONObjectProxy1.getStringOrNull("name");
            final String str3 = localJSONObjectProxy1.getStringOrNull("number");
            localJSONObjectProxy1.getStringOrNull("pin");
            localJSONObjectProxy1.getStringOrNull("tk");
            JSONArrayPoxy localJSONArrayPoxy = localJSONObjectProxy1.getJSONArrayOrNull("infos");
            if (localJSONArrayPoxy != null)
            {
              JSONObjectProxy localJSONObjectProxy2 = localJSONArrayPoxy.getJSONObjectOrNull(0);
              this.type = localJSONObjectProxy2.getStringOrNull("pageType");
              this.url = localJSONObjectProxy2.getStringOrNull("flowUrl");
              this.urlLoc = localJSONObjectProxy2.getStringOrNull("flowLoc");
              this.seat = localJSONObjectProxy2.getStringOrNull("seat");
            }
            AmHelperActivity.this.post(new Runnable()
            {
              public void run()
              {
                if ((TextUtils.isEmpty(str2)) && (TextUtils.isEmpty(str3))) {
                  AmHelperActivity.this.textView.setText("京东集团2014年会欢迎您！");
                }
                for (;;)
                {
                  if (!TextUtils.isEmpty(str1))
                  {
                    if (!str1.equals("0")) {
                      break label288;
                    }
                    if (TextUtils.isEmpty(AmHelperActivity.5.this.seat)) {
                      break label206;
                    }
                    AmHelperActivity.this.contentTextView.setText("您的座位：" + AmHelperActivity.5.this.seat);
                  }
                  try
                  {
                    label105:
                    if ((!TextUtils.isEmpty(AmHelperActivity.5.this.urlLoc)) && (NetUtils.getNetworkType().equals("wifi")))
                    {
                      AmHelperActivity.this.currentUrl = AmHelperActivity.5.this.urlLoc;
                      AmHelperActivity.this.setDrawable(AmHelperActivity.this.content, AmHelperActivity.5.this.urlLoc);
                    }
                    for (;;)
                    {
                      label173:
                      AmHelperActivity.this.isLoader = true;
                      return;
                      AmHelperActivity.this.setText(str2, str3);
                      break;
                      label206:
                      AmHelperActivity.this.contentTextView.setText("");
                      break label105;
                      if (!TextUtils.isEmpty(AmHelperActivity.5.this.url))
                      {
                        AmHelperActivity.this.currentUrl = AmHelperActivity.5.this.url;
                        AmHelperActivity.this.setDrawable(AmHelperActivity.this.content, AmHelperActivity.5.this.url);
                      }
                    }
                  }
                  catch (Throwable localThrowable)
                  {
                    break label173;
                  }
                }
                label288:
                Toast.makeText(AmHelperActivity.this, 2131166556, 1).show();
              }
            });
            return;
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
          }
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError)
        {
          AmHelperActivity.this.isLoader = false;
        }
        
        public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
        
        public void onStart() {}
      });
      getHttpGroupaAsynPool().add(localHttpSetting);
      return;
    }
  }
  
  private void findView()
  {
    RelativeLayout localRelativeLayout1 = (RelativeLayout)findViewById(2131492965);
    RelativeLayout localRelativeLayout2 = (RelativeLayout)findViewById(2131492972);
    try
    {
      localRelativeLayout1.setBackgroundDrawable(new BitmapDrawable(JDImageUtils.getBitmapWithJpg16(this, 2130837660)));
      try
      {
        label37:
        localRelativeLayout2.setBackgroundDrawable(new BitmapDrawable(ImageTools.reduce(getResources(), 2130837653, 2)));
        label58:
        this.content = ((ImageView)findViewById(2131492974));
        this.rockEnter = ((RelativeLayout)findViewById(2131492969));
        this.am_enter = ((ImageView)findViewById(2131492970));
        ImageView localImageView = (ImageView)findViewById(2131492968);
        this.textView = ((TextView)findViewById(2131492966));
        this.contentTextView = ((TextView)findViewById(2131492975));
        this.radioGroup = ((RadioGroup)findViewById(2131492967));
        this.scrollView = ((ScrollView)findViewById(2131492973));
        this.refreshBtn = ((Button)findViewById(2131492976));
        RadioGroup.LayoutParams localLayoutParams = new RadioGroup.LayoutParams(-2, -1);
        this.radioGroup.addView(getRadioButton(16772608, "年会首页", 2130837663), localLayoutParams);
        this.radioGroup.addView(getRadioButton(16772609, "会议流程"), localLayoutParams);
        this.radioGroup.addView(getRadioButton(16772610, "晚宴流程"), localLayoutParams);
        this.radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener()
        {
          public void onCheckedChanged(RadioGroup paramAnonymousRadioGroup, int paramAnonymousInt) {}
        });
        View.OnClickListener local2 = new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            switch (paramAnonymousView.getId())
            {
            default: 
            case 2131492969: 
              do
              {
                return;
              } while (!AmHelperActivity.this.isCanClickButton);
              AmHelperActivity.this.avoidMoreTimeClicked();
              Intent localIntent = new Intent(AmHelperActivity.this, AmShakeActivity.class);
              localIntent.putExtra("token", AmHelperActivity.this.token);
              AmHelperActivity.this.startActivityInFrame(localIntent);
              return;
            case 2131492968: 
              AmHelperActivity.this.finish();
              return;
            }
            AmHelperActivity.this.setDrawable(AmHelperActivity.this.content, AmHelperActivity.this.currentUrl);
          }
        };
        localImageView.setOnClickListener(local2);
        this.rockEnter.setOnClickListener(local2);
        this.refreshBtn.setOnClickListener(local2);
        return;
      }
      catch (Throwable localThrowable2)
      {
        break label58;
      }
    }
    catch (Throwable localThrowable1)
    {
      break label37;
    }
  }
  
  private RadioButton getRadioButton(int paramInt, String paramString)
  {
    return getRadioButton(paramInt, paramString, 0);
  }
  
  private RadioButton getRadioButton(int paramInt1, String paramString, final int paramInt2)
  {
    RadioButtonCenter localRadioButtonCenter = new RadioButtonCenter(this);
    localRadioButtonCenter.setId(paramInt1);
    localRadioButtonCenter.setGravity(17);
    int i = (int)getResources().getDimension(2131427701);
    localRadioButtonCenter.setPadding(i, 0, i, 0);
    if (paramInt2 > 0)
    {
      localRadioButtonCenter.setTextColor(0);
      localRadioButtonCenter.setButton(getResources().getDrawable(2130837663));
    }
    localRadioButtonCenter.setButtonDrawable(2130838616);
    localRadioButtonCenter.setText(paramString);
    localRadioButtonCenter.setBackgroundResource(2130837679);
    localRadioButtonCenter.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        RadioButtonCenter localRadioButtonCenter = (RadioButtonCenter)paramAnonymousCompoundButton;
        if (paramAnonymousBoolean)
        {
          if (paramInt2 > 0) {
            localRadioButtonCenter.setButton(AmHelperActivity.this.getResources().getDrawable(2130837662));
          }
          for (;;)
          {
            switch (paramAnonymousCompoundButton.getId())
            {
            default: 
              return;
              localRadioButtonCenter.setTextColor(-1);
            }
          }
          AmHelperActivity.this.createComponent("home");
          return;
          AmHelperActivity.this.createComponent("meeting");
          return;
          AmHelperActivity.this.createComponent("dinner");
          return;
        }
        if (paramInt2 > 0)
        {
          localRadioButtonCenter.setButton(AmHelperActivity.this.getResources().getDrawable(2130837661));
          return;
        }
        localRadioButtonCenter.setTextColor(-16777216);
      }
    });
    return localRadioButtonCenter;
  }
  
  private void setText(String paramString1, String paramString2)
  {
    TextView localTextView = this.textView;
    StringBuilder localStringBuilder1 = new StringBuilder("欢迎您, ");
    if (TextUtils.isEmpty(paramString1)) {
      paramString1 = "";
    }
    StringBuilder localStringBuilder2 = localStringBuilder1.append(paramString1).append(" 您的入场编号：");
    if (TextUtils.isEmpty(paramString2)) {
      paramString2 = "";
    }
    localTextView.setText(paramString2);
  }
  
  private void startAmAnim()
  {
    if ((this.rockEnter == null) && (this.rockEnter.getVisibility() == 8)) {
      return;
    }
    if (this.amAnimationUtil == null) {
      this.amAnimationUtil = new AmAnimationUtil();
    }
    this.amAnimationUtil.startAnimation(this, -1, new AmAnimationUtil.OnAnimationListener()
    {
      public void onStart(Animation paramAnonymousAnimation)
      {
        AmHelperActivity.this.am_enter.startAnimation(paramAnonymousAnimation);
      }
      
      public void onStop()
      {
        AmHelperActivity.this.am_enter.clearAnimation();
      }
    });
  }
  
  private void stopAmAnim()
  {
    if (this.amAnimationUtil != null) {
      this.amAnimationUtil.stopAnimation();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(ImageUtil.inflate(2130903048, null));
    findView();
    this.token = getIntent().getStringExtra("token");
    if (TextUtils.isEmpty(this.token)) {
      this.token = AmHelper.token;
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    setContentView(2130903306);
  }
  
  protected void onResume()
  {
    super.onResume();
    if (this.isFirst)
    {
      this.radioGroup.check(16772608);
      this.isFirst = false;
    }
    startAmAnim();
  }
  
  protected void onStop()
  {
    super.onStop();
    stopAmAnim();
  }
  
  public void setDrawable(final ImageView paramImageView, String paramString)
  {
    this.refreshBtn.setVisibility(8);
    paramImageView.setImageDrawable(new ExceptionDrawable(this, getResources().getString(2131165582)));
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setUrl(paramString);
    localHttpSetting.setType(5000);
    localHttpSetting.setEffect(0);
    localHttpSetting.setListener(new HttpGroup.CustomOnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        final BitmapDrawable localBitmapDrawable = new BitmapDrawable(ImageUtil.createBitmap(ImageUtil.InputWay.createInputWay(paramAnonymousHttpResponse), 0, 0));
        AmHelperActivity.this.post(new Runnable()
        {
          public void run()
          {
            if (localBitmapDrawable != null) {
              this.val$icon.setImageDrawable(localBitmapDrawable);
            }
          }
        });
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        AmHelperActivity.this.post(new Runnable()
        {
          public void run()
          {
            this.val$icon.setImageDrawable(AmHelperActivity.this.getResources().getDrawable(2130837656));
            AmHelperActivity.this.refreshBtn.setVisibility(0);
          }
        });
      }
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    getHttpGroupaAsynPool(5000).add(localHttpSetting);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.amHelper.AmHelperActivity
 * JD-Core Version:    0.7.0.1
 */