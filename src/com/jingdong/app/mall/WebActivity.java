package com.jingdong.app.mall;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.UrlQuerySanitizer;
import android.net.http.SslError;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.webkit.CacheManager;
import android.webkit.CacheManager.CacheResult;
import android.webkit.DownloadListener;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.jd.lottery.lib.utils.Util;
import com.jingdong.app.mall.login.LoginActivity;
import com.jingdong.app.mall.personel.PhotoUtils;
import com.jingdong.app.mall.utils.BarcodeUtil;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.LoginUser;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.ui.DialogController;
import com.jingdong.app.mall.web.WebJavaScript;
import com.jingdong.common.entity.DiscussImage;
import com.jingdong.common.entity.HomeLayout;
import com.jingdong.common.frame.IResumeListener;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.ui.WebUtils;
import com.jingdong.common.utils.CommonBase.BrowserUrlListener;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.GeoWebChromeClient;
import com.jingdong.common.utils.JLogUtil;
import com.jingdong.common.utils.NewJLogUtil;
import com.jingdong.common.utils.ReadContactsUtil;
import com.jingdong.common.utils.SDKUtils;
import com.jingdong.common.utils.URLParamMap;
import com.jingdong.common.utils.UserUtil;
import com.jingdong.common.utils.VoiceUtil;
import com.jingdong.common.utils.WebSettingsUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.Map;

public class WebActivity
  extends MyActivity
  implements DownloadListener
{
  public static final String IS_USE_CACHE = "isUseCache";
  public static final String IS_USE_RIGHT_BUTTON = "isUseRightButton";
  public static final String JD_GET_HTML_CODE_OBJ = "jd_android_obj";
  public static final String KEY_FROM = "from";
  private static final String LOGIN_PATH = "/user/login.action";
  private static final int SDK_2_1 = 7;
  private final String TAG = "WebActivity";
  public ImageView back;
  private BindGiftcard bindGiftcard = new BindGiftcard();
  private RelativeLayout bottomMenuLayout;
  private Button closeButton;
  public ImageView fresh;
  private AlphaAnimation hideProgressAnimation;
  private ImageView imageViewBg;
  private boolean isFromGame = false;
  private boolean isFromNF = false;
  private boolean isFromPopularity = false;
  private PlayGame jdGame = new PlayGame();
  private ProgressBar loadingBar;
  private boolean loginFlag = false;
  private boolean loginStateSynchro = false;
  private ModifyPwd modifyPwd = new ModifyPwd();
  public ImageView next;
  private String oldUrl;
  private float perWidth = DPIUtil.getWidth() / 100.0F;
  private Uri photoUri;
  private ImageView progressImage;
  private RelativeLayout progressImageNormalLayout;
  private RefreshCache refreshCache = new RefreshCache();
  private RelativeLayout titleLayout;
  private RelativeLayout titleRelativeLayout;
  private TextView titleView;
  private String url;
  private WebView webView;
  
  private void findView()
  {
    this.closeButton = ((Button)findViewById(2131494684));
    this.titleView = ((TextView)findViewById(2131492990));
    this.progressImage = new ImageView(this);
    this.titleRelativeLayout = ((RelativeLayout)findViewById(2131493162));
    this.progressImageNormalLayout = ((RelativeLayout)findViewById(2131493160));
    this.back = ((ImageView)findViewById(2131493164));
    this.next = ((ImageView)findViewById(2131493165));
    this.fresh = ((ImageView)findViewById(2131493166));
    this.titleLayout = ((RelativeLayout)findViewById(2131493159));
    this.bottomMenuLayout = ((RelativeLayout)findViewById(2131493163));
  }
  
  private Animation getHideProgressAnimation()
  {
    if (this.hideProgressAnimation == null)
    {
      this.hideProgressAnimation = new AlphaAnimation(1.0F, 0.1F);
      this.hideProgressAnimation.setDuration(1000L);
      this.hideProgressAnimation.setAnimationListener(new Animation.AnimationListener()
      {
        public void onAnimationEnd(Animation paramAnonymousAnimation)
        {
          WebActivity.this.progressImage.setVisibility(8);
          WebActivity.this.titleRelativeLayout.setVisibility(8);
          WebActivity.this.progressImageNormalLayout.setVisibility(8);
        }
        
        public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
        
        public void onAnimationStart(Animation paramAnonymousAnimation) {}
      });
    }
    return this.hideProgressAnimation;
  }
  
  private Map<String, String> getUrlMap(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("url", paramString);
    return localHashMap;
  }
  
  private void hideLoadingBar()
  {
    post(new Runnable()
    {
      public void run()
      {
        if (WebActivity.this.loadingBar != null) {
          WebActivity.this.loadingBar.setVisibility(8);
        }
      }
    });
  }
  
  private void initData()
  {
    this.url = getIntent().getExtras().getString("url");
  }
  
  private void initMenuView()
  {
    if (this.webView.canGoBack()) {
      this.back.setEnabled(true);
    }
    while (this.webView.canGoForward())
    {
      this.next.setEnabled(true);
      return;
      this.back.setEnabled(false);
    }
    this.next.setEnabled(false);
  }
  
  private void loginCallback(final Uri paramUri)
  {
    addResumeListener(new IResumeListener()
    {
      public void onResume()
      {
        WebActivity.this.removeResumeListener(this);
        if (!LoginUserBase.hasLogin())
        {
          WebActivity.this.loginFlag = false;
          return;
        }
        if (WebActivity.this.getIntent() != null)
        {
          String str = WebActivity.this.getIntent().getStringExtra("from");
          if ((!TextUtils.isEmpty(str)) && ("from_ebook".equals(str)))
          {
            WebActivity.this.loginStateSynchro(paramUri, "ebook_login");
            return;
          }
        }
        WebActivity.this.loginStateSynchro(paramUri);
      }
    });
  }
  
  private void loginStateSynchro(Uri paramUri)
  {
    loginStateSynchro(paramUri, "login");
  }
  
  private void loginStateSynchro(Uri paramUri, String paramString)
  {
    URLParamMap localURLParamMap = new URLParamMap();
    localURLParamMap.put(paramUri);
    CommonUtil.queryBrowserUrl(paramString, localURLParamMap, new CommonBase.BrowserUrlListener()
    {
      public void onComplete(final String paramAnonymousString)
      {
        WebActivity.this.post(new Runnable()
        {
          public void run()
          {
            WebActivity.this.webView.loadUrl(paramAnonymousString);
            WebActivity.this.loginFlag = false;
          }
        });
      }
    });
  }
  
  private void optionTitleBg()
  {
    if (this.isFromPopularity)
    {
      this.imageViewBg = ((ImageView)findViewById(2131494358));
      this.imageViewBg.setBackgroundResource(2130838237);
      if (this.closeButton != null) {
        this.closeButton.setBackgroundResource(2130838238);
      }
    }
  }
  
  private void setScreenOrientation()
  {
    if ((TextUtils.equals(getIntent().getStringExtra("orientation"), "screen_land")) && (getRequestedOrientation() != 0))
    {
      setRequestedOrientation(0);
      this.titleLayout.setVisibility(8);
      this.bottomMenuLayout.setVisibility(8);
    }
  }
  
  private void setlistener()
  {
    this.back.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        WebActivity.this.webView.goBack();
      }
    });
    this.next.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        WebActivity.this.webView.goForward();
      }
    });
    this.fresh.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        WebActivity.this.webView.reload();
      }
    });
  }
  
  private void showLoadingBar()
  {
    post(new Runnable()
    {
      public void run()
      {
        if (WebActivity.this.loadingBar != null) {
          WebActivity.this.loadingBar.setVisibility(0);
        }
      }
    });
  }
  
  protected void hideImageProgress()
  {
    setImageProgress(100);
    this.progressImage.startAnimation(getHideProgressAnimation());
    hideLoadingBar();
  }
  
  protected final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (1100 == paramInt1) {
      if (paramInt2 == -1) {
        ReadContactsUtil.handleContacts(this, paramIntent, this.webView);
      }
    }
    label182:
    for (;;)
    {
      return;
      if (1234 == paramInt1)
      {
        if (-1 == paramInt2) {
          VoiceUtil.handleVoiceResult(this, paramIntent, this.webView);
        }
      }
      else if (1235 == paramInt1)
      {
        if (-1 == paramInt2) {
          BarcodeUtil.handleBarcodeResult(this, paramIntent, this.webView);
        }
      }
      else if (paramInt2 == -1)
      {
        DiscussImage localDiscussImage;
        if ((paramIntent != null) && (paramIntent.getData() != null))
        {
          this.photoUri = paramIntent.getData();
          if (this.photoUri == null) {
            continue;
          }
          localDiscussImage = null;
          switch (paramInt1)
          {
          }
        }
        for (;;)
        {
          if (localDiscussImage == null) {
            break label182;
          }
          PhotoUtils.submitPhoto(this.webView, this, localDiscussImage);
          return;
          this.photoUri = PhotoUtils.getPhotoUri();
          break;
          localDiscussImage = DiscussImage.createDiscussImage(this, this.photoUri);
          continue;
          localDiscussImage = DiscussImage.createDiscussImage(this, this.photoUri);
        }
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903082);
    findView();
    initData();
    Intent localIntent = getIntent();
    this.isFromNF = localIntent.getBooleanExtra("isFromNF", false);
    this.isFromGame = localIntent.getBooleanExtra("isFromGame", false);
    this.isFromPopularity = localIntent.getBooleanExtra("popularity_key", false);
    optionTitleBg();
    setScreenOrientation();
    if ((localIntent != null) && (localIntent.getBooleanExtra("isUseRightButton", true)))
    {
      this.closeButton.setText(2131166158);
      this.closeButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (WebActivity.this.isFromNF) {
            CommonUtil.getInstance().goToMainFrameActivity(WebActivity.this, MainFrameActivity.class);
          }
          WebActivity.this.stopLoading();
          WebActivity.this.finish();
        }
      });
      this.closeButton.setVisibility(0);
    }
    this.webView = new WebView(this);
    this.webView.setScrollBarStyle(33554432);
    this.webView.getSettings().setJavaScriptEnabled(true);
    this.webView.setDownloadListener(this);
    this.webView.addJavascriptInterface(this.refreshCache, "jd_android_obj");
    this.webView.addJavascriptInterface(new StartCamera(), "JDClient");
    this.webView.addJavascriptInterface(this.bindGiftcard, "bindGiftcard");
    this.webView.addJavascriptInterface(this.modifyPwd, "modifyPwd");
    this.webView.addJavascriptInterface(this.jdGame, "playGame");
    this.webView.addJavascriptInterface(new WebJavaScript(this), "JdAndroid");
    this.webView.requestFocus();
    this.webView.getSettings().setBuiltInZoomControls(false);
    if (SDKUtils.isSDKVersionMoreThan20()) {
      WebUtils.setNoCache(this.webView);
    }
    if ((localIntent != null) && (localIntent.getBooleanExtra("isUseCache", false)))
    {
      this.webView.getSettings().setCacheMode(-1);
      post(new Runnable()
      {
        public void run()
        {
          WebActivity.this.oldUrl = WebActivity.this.url;
          WebActivity.this.webView.loadUrl(WebActivity.this.url);
          if (NewJLogUtil.isUseNewJLog())
          {
            NewJLogUtil.onJMAEvent(WebActivity.this.getBaseContext(), "WebActivity", WebActivity.this.getUrlMap(WebActivity.this.url));
            return;
          }
          JLogUtil.onJaVisit(WebActivity.this.getBaseContext(), WebActivity.this.url, WebActivity.this.getParamsString());
        }
      });
      this.webView.setWebViewClient(new WebViewClient()
      {
        private boolean checkUrl(String paramAnonymousString)
        {
          Uri localUri = Uri.parse(paramAnonymousString);
          if ("/user/login.action".equals(localUri.getPath()))
          {
            if (WebActivity.this.loginFlag) {
              return true;
            }
            WebActivity.this.loginFlag = true;
            if (LoginUserBase.hasLogin())
            {
              if (WebActivity.this.loginStateSynchro)
              {
                DialogController localDialogController = new DialogController();
                localDialogController.setTitle(WebActivity.this.getString(2131165609));
                localDialogController.setMessage(WebActivity.this.getString(2131166232));
                localDialogController.setNeutralButton(WebActivity.this.getString(2131165517));
                localDialogController.init(WebActivity.this);
                localDialogController.show();
                WebActivity.this.loginStateSynchro = false;
                return true;
              }
              WebActivity.this.loginStateSynchro = true;
              WebActivity.this.loginStateSynchro(localUri);
              return true;
            }
            WebActivity.this.loginCallback(localUri);
            Intent localIntent = new Intent(WebActivity.this, LoginActivity.class);
            localIntent.putExtra("com.360buy:singleInstanceFlag", true);
            localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
            WebActivity.this.startActivityInFrame(localIntent);
            return true;
          }
          if ("_blank".equals(new UrlQuerySanitizer(localUri.toString()).getValue("target")))
          {
            CommonUtil.toBrowser(localUri);
            return true;
          }
          if (paramAnonymousString.endsWith(".apk"))
          {
            CommonUtil.toBrowser(localUri);
            return true;
          }
          return false;
        }
        
        private boolean checkUrl2(Uri paramAnonymousUri)
        {
          String str = paramAnonymousUri.getScheme();
          if ((!str.equals("http")) && (!str.equals("https")))
          {
            Intent localIntent = new Intent("android.intent.action.VIEW", paramAnonymousUri);
            localIntent.addCategory("android.intent.category.BROWSABLE");
            WebActivity.this.startActivityNoException(localIntent);
            return true;
          }
          return false;
        }
        
        private boolean lotteryCheck(String paramAnonymousString)
        {
          if ((TextUtils.isEmpty(paramAnonymousString)) || (!HomeLayout.hasNativeLottery)) {}
          for (;;)
          {
            return false;
            try
            {
              if (Util.shouldRedirect(paramAnonymousString))
              {
                Intent localIntent = new Intent("android.intent.action.LOTTERY_MAIN");
                localIntent.setFlags(67108864);
                localIntent.putExtra("FROM", paramAnonymousString);
                WebActivity.this.finish();
                WebActivity.this.startActivity(localIntent);
                return true;
              }
            }
            catch (Exception localException) {}
          }
          return false;
        }
        
        public void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
        {
          WebActivity.this.hideImageProgress();
          if ((WebActivity.this.loginStateSynchro) && (!"/user/login.action".equals(Uri.parse(paramAnonymousString).getPath()))) {
            WebActivity.this.loginStateSynchro = false;
          }
          super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
          WebActivity.this.initMenuView();
        }
        
        public void onPageStarted(WebView paramAnonymousWebView, String paramAnonymousString, Bitmap paramAnonymousBitmap)
        {
          if (checkUrl2(Uri.parse(paramAnonymousString)))
          {
            WebActivity.this.webView.stopLoading();
            return;
          }
          if (checkUrl(paramAnonymousString))
          {
            WebActivity.this.webView.stopLoading();
            return;
          }
          WebActivity.this.showImagePregress();
          if (!TextUtils.isEmpty(WebActivity.this.oldUrl)) {
            paramAnonymousWebView.loadUrl("javascript:window.jd_android_obj.save('" + WebActivity.this.oldUrl + "', '<head>' + document.getElementsByTagName('html')[0].innerHTML+'</head>');");
          }
          WebActivity.this.oldUrl = paramAnonymousString;
          super.onPageStarted(paramAnonymousWebView, paramAnonymousString, paramAnonymousBitmap);
        }
        
        public void onReceivedError(WebView paramAnonymousWebView, int paramAnonymousInt, String paramAnonymousString1, String paramAnonymousString2)
        {
          WebView.enablePlatformNotifications();
          super.onReceivedError(paramAnonymousWebView, paramAnonymousInt, paramAnonymousString1, paramAnonymousString2);
        }
        
        public void onReceivedSslError(WebView paramAnonymousWebView, SslErrorHandler paramAnonymousSslErrorHandler, SslError paramAnonymousSslError)
        {
          paramAnonymousSslErrorHandler.proceed();
        }
        
        public boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
        {
          if (NewJLogUtil.isUseNewJLog())
          {
            NewJLogUtil.onJMAEvent(WebActivity.this.getBaseContext(), "WebActivity", WebActivity.this.getUrlMap(paramAnonymousString));
            if (!lotteryCheck(paramAnonymousString)) {
              break label58;
            }
          }
          label58:
          while ((checkUrl2(Uri.parse(paramAnonymousString))) || (checkUrl(paramAnonymousString)))
          {
            return true;
            JLogUtil.onJaVisit(WebActivity.this.getBaseContext(), paramAnonymousString, WebActivity.this.getParamsString());
            break;
          }
          WebActivity.this.showImagePregress();
          return super.shouldOverrideUrlLoading(paramAnonymousWebView, paramAnonymousString);
        }
      });
      if (Integer.valueOf(Build.VERSION.SDK).intValue() < 5) {
        break label501;
      }
      new WebSettingsUtils().setGeolocationEnabled(this.webView.getSettings());
      this.webView.setWebChromeClient(new GeoWebChromeClient()
      {
        public void onProgressChanged(WebView paramAnonymousWebView, int paramAnonymousInt)
        {
          super.onProgressChanged(paramAnonymousWebView, paramAnonymousInt);
          WebActivity.this.setImageProgress(paramAnonymousInt);
        }
        
        public void onReceivedTitle(WebView paramAnonymousWebView, String paramAnonymousString)
        {
          if (!TextUtils.isEmpty(paramAnonymousString)) {
            WebActivity.this.titleView.setText(paramAnonymousString);
          }
          for (;;)
          {
            super.onReceivedTitle(paramAnonymousWebView, paramAnonymousString);
            return;
            WebActivity.this.titleView.setText(2131165185);
          }
        }
      });
    }
    for (;;)
    {
      ViewGroup localViewGroup = (ViewGroup)findViewById(2131493161);
      RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(-1, -1);
      this.webView.setLayoutParams(localLayoutParams1);
      localViewGroup.addView(this.webView);
      this.loadingBar = new ProgressBar(this);
      RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams2.addRule(13, -1);
      this.loadingBar.setLayoutParams(localLayoutParams2);
      this.loadingBar.setVisibility(8);
      localViewGroup.addView(this.loadingBar);
      initMenuView();
      setlistener();
      return;
      this.webView.getSettings().setCacheMode(2);
      break;
      label501:
      this.webView.setWebChromeClient(new WebChromeClient()
      {
        public void onProgressChanged(WebView paramAnonymousWebView, int paramAnonymousInt)
        {
          super.onProgressChanged(paramAnonymousWebView, paramAnonymousInt);
          WebActivity.this.setImageProgress(paramAnonymousInt);
        }
        
        public void onReceivedTitle(WebView paramAnonymousWebView, String paramAnonymousString)
        {
          if (!TextUtils.isEmpty(paramAnonymousString)) {
            WebActivity.this.titleView.setText(paramAnonymousString);
          }
          for (;;)
          {
            super.onReceivedTitle(paramAnonymousWebView, paramAnonymousString);
            return;
            WebActivity.this.titleView.setText(2131165185);
          }
        }
      });
    }
  }
  
  public void onDownloadStart(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    CommonUtil.toBrowser(Uri.parse(paramString1));
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (this.isFromGame))
    {
      finish();
      return true;
    }
    if ((paramInt == 4) && (this.webView.canGoBack()))
    {
      this.webView.goBack();
      return true;
    }
    if ((paramInt == 4) && (this.isFromNF))
    {
      CommonUtil.getInstance().goToMainFrameActivity(this, MainFrameActivity.class);
      finish();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onResume()
  {
    super.onResume();
    WebView.enablePlatformNotifications();
  }
  
  protected void onStop()
  {
    super.onStop();
    WebView.disablePlatformNotifications();
    try
    {
      this.webView.loadUrl("javascript:musicStop()");
      return;
    }
    catch (Exception localException) {}
  }
  
  public void reload()
  {
    this.webView.reload();
  }
  
  public void setImageProgress(int paramInt)
  {
    int i = (int)(this.perWidth * paramInt);
    this.progressImage.setLayoutParams(new RelativeLayout.LayoutParams(i, getResources().getDimensionPixelSize(2131427445)));
    this.titleRelativeLayout.removeAllViews();
    this.titleRelativeLayout.addView(this.progressImage);
  }
  
  protected void showImagePregress()
  {
    this.titleRelativeLayout.setVisibility(0);
    this.progressImageNormalLayout.setVisibility(0);
    this.progressImage.setBackgroundResource(2130838570);
    this.progressImage.setVisibility(0);
    showLoadingBar();
  }
  
  public void stopLoading()
  {
    if (this.webView != null) {}
    try
    {
      this.webView.goBack();
      return;
    }
    catch (Exception localException) {}
  }
  
  final class BindGiftcard
  {
    BindGiftcard() {}
    
    public void onBindFinish(boolean paramBoolean)
    {
      WebActivity.this.post(new Runnable()
      {
        public void run()
        {
          WebActivity.this.finish();
        }
      });
    }
  }
  
  final class ModifyPwd
  {
    ModifyPwd() {}
    
    public void onClearLoginInfo()
    {
      UserUtil.onLogout(WebActivity.this);
    }
    
    public void onModifyPwd(boolean paramBoolean)
    {
      if (paramBoolean) {
        WebActivity.this.post(new Runnable()
        {
          public void run()
          {
            WebActivity.this.finish();
            Intent localIntent = new Intent(WebActivity.this, LoginActivity.class);
            localIntent.putExtra("com.360buy:singleInstanceFlag", true);
            localIntent.putExtra("com.360buy:loginResendFlag", 1);
            localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
            CommonUtil.getInstance().startActivityInFrame(WebActivity.this, localIntent);
          }
        });
      }
    }
  }
  
  final class PlayGame
  {
    PlayGame() {}
    
    private void loginCallBack()
    {
      try
      {
        WebActivity.this.webView.loadUrl("javascript:loginCallback('" + LoginUserBase.getLoginUserCert() + "', '<head>' + document.getElementsByTagName('html')[0].innerHTML+'</head>');");
        return;
      }
      catch (Exception localException) {}
    }
    
    public void beginFighter()
    {
      if (LoginUserBase.hasLogin())
      {
        loginCallBack();
        return;
      }
      Runnable local1 = new Runnable()
      {
        public void run()
        {
          WebActivity.PlayGame.this.loginCallBack();
        }
      };
      if (WebActivity.this.getRequestedOrientation() != 1) {
        WebActivity.this.setRequestedOrientation(1);
      }
      LoginUser.getInstance().executeLoginRunnable(WebActivity.this, local1);
    }
    
    public void beginShare(String paramString)
    {
      Intent localIntent = new Intent("android.intent.action.SEND");
      localIntent.setType("text/plain");
      localIntent.putExtra("android.intent.extra.TEXT", paramString);
      WebActivity.this.startActivity(Intent.createChooser(localIntent, "分享到："));
    }
    
    public void endFighter()
    {
      WebActivity.this.post(new Runnable()
      {
        public void run()
        {
          WebActivity.this.finish();
        }
      });
    }
  }
  
  final class RefreshCache
  {
    RefreshCache() {}
    
    public void save(String paramString1, String paramString2)
    {
      CacheManager.CacheResult localCacheResult = CacheManager.getCacheFile(paramString1, null);
      if (localCacheResult == null) {}
      for (;;)
      {
        return;
        try
        {
          String str = localCacheResult.getLocalPath();
          File localFile = new File(CacheManager.getCacheFileBaseDir(), str);
          if (localFile == null) {
            continue;
          }
          boolean bool = localFile.exists();
          if (!bool) {
            continue;
          }
          try
          {
            FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
            localFileOutputStream.write(paramString2.getBytes("utf-8"));
            localFileOutputStream.close();
            return;
          }
          catch (Throwable localThrowable)
          {
            System.gc();
            return;
          }
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    }
  }
  
  final class StartCamera
  {
    StartCamera() {}
    
    public void openCamera()
    {
      PhotoUtils.chooseUploadPhotoWay(WebActivity.this);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.WebActivity
 * JD-Core Version:    0.7.0.1
 */