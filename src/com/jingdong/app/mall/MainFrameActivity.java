package com.jingdong.app.mall;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Process;
import android.provider.Settings.System;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.jingdong.app.mall.barcode.BarcodeActivity;
import com.jingdong.app.mall.broadcastReceiver.InterfaceBroadcastReceiver;
import com.jingdong.app.mall.broadcastReceiver.InterfaceBroadcastReceiver.Command;
import com.jingdong.app.mall.category.CategoryActivity;
import com.jingdong.app.mall.home.NewHomeActivity;
import com.jingdong.app.mall.login.LoginActivity;
import com.jingdong.app.mall.more.AboutActivity;
import com.jingdong.app.mall.more.FeedbackActivity;
import com.jingdong.app.mall.more.HistoryListActivity;
import com.jingdong.app.mall.more.SearchActivity;
import com.jingdong.app.mall.more.SettingActivity;
import com.jingdong.app.mall.personel.MyMessageShow;
import com.jingdong.app.mall.personel.MyWebMessage;
import com.jingdong.app.mall.personel.PersonelActivity;
import com.jingdong.app.mall.product.CommercialRuleActivity;
import com.jingdong.app.mall.product.LimitBuyListActivity;
import com.jingdong.app.mall.product.ProductListActivity;
import com.jingdong.app.mall.promotion.PromotionMessageActivity;
import com.jingdong.app.mall.promotion.PromotionProductListActivity;
import com.jingdong.app.mall.search.CameraPurchaseActivity;
import com.jingdong.app.mall.shopping.ShoppingCartNewActivity;
import com.jingdong.app.mall.shopping.ShoppingController;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.ReActivationUserManager;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.app.mall.utils.frame.ScrollableTabActivity;
import com.jingdong.app.mall.utils.frame.ScrollableTabActivity.ButtonAction;
import com.jingdong.app.mall.utils.frame.ScrollableTabActivity.ButtonStyle;
import com.jingdong.app.mall.utils.frame.TabBarButton.StateController;
import com.jingdong.common.entity.Commercial;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.frame.IMainActivity;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.lbs.LocManager;
import com.jingdong.common.login.SafetyManager;
import com.jingdong.common.secure.SecureNetwork;
import com.jingdong.common.utils.AlarmUtils;
import com.jingdong.common.utils.BitmapkitUtils;
import com.jingdong.common.utils.CommonBase.BrowserUrlListener;
import com.jingdong.common.utils.FileService;
import com.jingdong.common.utils.FileService.Directory;
import com.jingdong.common.utils.GlobalInitialization;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpGroupSetting;
import com.jingdong.common.utils.HttpGroup.HttpGroupaAsynPool;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.HttpGroupUtils;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.ImageUtil.InputWay;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MessageUtil;
import com.jingdong.common.utils.NewJLogUtil;
import com.jingdong.common.utils.NoImageUtils;
import com.jingdong.common.utils.PushMessageUtils;
import com.jingdong.common.utils.ShortCutUtils;
import com.jingdong.common.utils.URLParamMap;
import com.jingdong.lib.zxing.client.android.CaptureActivity;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONException;

public class MainFrameActivity
  extends ScrollableTabActivity
  implements IMainActivity
{
  public static final String CRAZYBUY_GLOBALINITTOKEN = "com.360buy:crazyBuyGlobalInitToken";
  private static final String GUIDED_TAG = "com.jingdong.app.mall.MainActivity";
  public static final String JDNEWS_GLOBALINITTOKEN = "com.360buy:jdNewsGlobalInitToken";
  public static final String MODULE_ID = "moduleId";
  private static TabBarButton.StateController carStateController;
  private static BitmapkitUtils mBitmapkitUtils;
  private static ArrayList<String> needBackToHomeClassName = new ArrayList();
  public static boolean needStartImage = false;
  private final int CHECK_STARTIMAGE_WAITTIME = 30000;
  final int REQUEST_SEARCH_CODE = 272;
  private final int STARTIMAGE_AVALIABLE = 3;
  private final int STARTIMAGE_NOT_FOUND = 1;
  private final int STARTIMAGE_OUT_OF_DATE = 2;
  private final String START_IMAGE_NAME = "startimage.image";
  private final String TAG = MainFrameActivity.class.getSimpleName();
  private Intent galleryRebootData;
  private Integer galleryRebootResultCode;
  private RelativeLayout imageViewLayout;
  private boolean isCancleCheckAlways_Finish_Activities;
  private boolean isGuided;
  private boolean isShow = false;
  private boolean isSlideScreenState;
  private boolean isStartPhotoState;
  private Date leaveTime;
  private String mEndTime = "";
  private Handler mHandler;
  private String mStartImageUrl = "";
  private String mStartTime = "";
  private ViewGroup modal;
  private Runnable resume = null;
  private ViewGroup rootFrameLayout;
  private ViewGroup rootView;
  private int targetActivityState;
  private final Set<String> tokens = new HashSet();
  
  static
  {
    needBackToHomeClassName.add(CategoryActivity.class.getName());
    needBackToHomeClassName.add(ShoppingCartNewActivity.class.getName());
    needBackToHomeClassName.add(PersonelActivity.class.getName());
  }
  
  private void checkAlways_Finish_Activities()
  {
    if (this.isCancleCheckAlways_Finish_Activities) {
      return;
    }
    switch (Settings.System.getInt(getContentResolver(), "always_finish_activities", 0))
    {
    default: 
      return;
    }
    DialogInterface.OnClickListener local3 = new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        switch (paramAnonymousInt)
        {
        default: 
          return;
        case -2: 
          MainFrameActivity.this.isCancleCheckAlways_Finish_Activities = true;
          paramAnonymousDialogInterface.dismiss();
          return;
        }
        try
        {
          Intent localIntent = new Intent("android.settings.APPLICATION_DEVELOPMENT_SETTINGS");
          MainFrameActivity.this.startActivity(localIntent);
          return;
        }
        catch (Exception localException) {}
      }
    };
    AlertDialog localAlertDialog = new AlertDialog.Builder(this).create();
    localAlertDialog.setTitle(2131165598);
    localAlertDialog.setMessage(getText(2131166419));
    localAlertDialog.setButton(-1, getString(2131166420), local3);
    localAlertDialog.setButton(-2, getString(2131165601), local3);
    localAlertDialog.show();
  }
  
  public static void clearCache()
  {
    new Thread()
    {
      public void run()
      {
        setName("MainFrameActivity_clearCache");
        Process.setThreadPriority(19);
        FileService.clearCacheFiles();
        FileService.clearInternalCacheImages();
      }
    }.start();
  }
  
  private void forwardActivity(Bundle paramBundle)
  {
    String str1 = paramBundle.getString("activityId");
    if (TextUtils.isEmpty(str1)) {}
    for (;;)
    {
      return;
      String str2 = paramBundle.getString("type");
      Bundle localBundle = new Bundle();
      localBundle.putString("activityId", str1);
      localBundle.putString("comeFrom", "m_destination");
      String str3 = paramBundle.getString("title");
      localBundle.putString("name", str3);
      localBundle.putString("title", str3);
      localBundle.putString("landPageId", paramBundle.getString("landPageId"));
      Intent localIntent;
      if ("1".equals(str2))
      {
        localIntent = new Intent(this, PromotionProductListActivity.class);
        localBundle.putString("content", paramBundle.getString("content"));
      }
      while (localIntent != null)
      {
        localIntent.putExtras(localBundle);
        localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
        startSubActivity(localIntent);
        return;
        boolean bool = "2".equals(str2);
        localIntent = null;
        if (bool)
        {
          localIntent = new Intent(this, ProductListActivity.class);
          Commercial localCommercial = new Commercial();
          localCommercial.setId(str1);
          localCommercial.setTitle(str3);
          localIntent.putExtra("commercial", localCommercial);
        }
      }
    }
  }
  
  private void forwardGetCoupon(Bundle paramBundle)
  {
    String str1 = paramBundle.getString("action");
    String str2 = paramBundle.getString("url");
    if ((TextUtils.isEmpty(str1)) || (TextUtils.isEmpty(str2))) {
      return;
    }
    URLParamMap localURLParamMap = new URLParamMap();
    localURLParamMap.put("to", str2);
    CommonUtil.queryBrowserUrl(str1, localURLParamMap, new CommonBase.BrowserUrlListener()
    {
      public void onComplete(final String paramAnonymousString)
      {
        MainFrameActivity.this.runOnUiThread(new Runnable()
        {
          public void run()
          {
            Intent localIntent = new Intent(MainFrameActivity.this, WebActivity.class);
            localIntent.putExtra("url", paramAnonymousString);
            MainFrameActivity.this.startSubActivity(localIntent);
          }
        });
      }
    });
  }
  
  private void forwardLoginActivity(Bundle paramBundle)
  {
    Intent localIntent = new Intent(this, LoginActivity.class);
    localIntent.putExtra("com.360buy:singleInstanceFlag", true);
    localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
    String str = paramBundle.getString("from");
    if ((!TextUtils.isEmpty(str)) && ("jdgame".equals(str))) {
      localIntent.putExtra("com.360buy:loginResendFlag", 2);
    }
    if (paramBundle != null) {
      localIntent.putExtras(paramBundle);
    }
    startSubActivity(localIntent);
  }
  
  private void forwardM(Bundle paramBundle)
  {
    String str = paramBundle.getString("action");
    if (TextUtils.isEmpty(str)) {
      return;
    }
    CommonUtil.queryBrowserUrl(str, new URLParamMap(), new CommonBase.BrowserUrlListener()
    {
      public void onComplete(final String paramAnonymousString)
      {
        MainFrameActivity.this.runOnUiThread(new Runnable()
        {
          public void run()
          {
            Intent localIntent = new Intent(MainFrameActivity.this, WebActivity.class);
            localIntent.putExtra("url", paramAnonymousString);
            MainFrameActivity.this.startSubActivity(localIntent);
          }
        });
      }
    });
  }
  
  private void forwardMyJd(Bundle paramBundle)
  {
    if ((MyApplication.getInstance().getCurrentMyActivity() instanceof PersonelActivity)) {
      return;
    }
    Intent localIntent = new Intent(this, PersonelActivity.class);
    if (paramBundle != null) {
      localIntent.putExtras(paramBundle);
    }
    localIntent.putExtra("com.360buy:navigationDisplayFlag", 0);
    localIntent.putExtra("com.360buy:singleInstanceFlag", true);
    localIntent.putExtra("com.360buy:navigationFlag", true);
    localIntent.putExtra("com.360buy:navigationId", 4);
    localIntent.putExtra("com.360buy:useHistoryFlag", true);
    startSubActivity(localIntent);
  }
  
  private void forwardProductDetail(Bundle paramBundle)
  {
    String str = paramBundle.getString("skuId");
    if (TextUtils.isEmpty(str)) {
      return;
    }
    try
    {
      StartActivityUtils.startProductDetailActivity(this, Long.valueOf(str), null, SourceEntity.getMDestinationSource(paramBundle.getString("landPageId")));
      return;
    }
    catch (Exception localException) {}
  }
  
  private void forwardPromotion(Bundle paramBundle)
  {
    String str = paramBundle.getString("promotionId");
    if (TextUtils.isEmpty(str)) {
      return;
    }
    Intent localIntent = new Intent(this, PromotionMessageActivity.class);
    Bundle localBundle = new Bundle();
    localBundle.putString("promotion_id", str);
    localBundle.putString("name", paramBundle.getString("title"));
    localBundle.putString("comeFrom", "m_destination");
    localBundle.putString("landPageId", paramBundle.getString("landPageId"));
    localIntent.putExtras(localBundle);
    localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
    startSubActivity(localIntent);
  }
  
  private void forwardShoppingCart(Bundle paramBundle)
  {
    String str1 = paramBundle.getString("skuId");
    String str2 = paramBundle.getString("packsId");
    if ((TextUtils.isEmpty(str1)) && (TextUtils.isEmpty(str2))) {}
    int i;
    int j;
    MyActivity localMyActivity;
    do
    {
      return;
      i = initCartNum(paramBundle, "skuNum");
      j = initCartNum(paramBundle, "packsNum");
      localMyActivity = MyApplication.getInstance().getCurrentMyActivity();
    } while (localMyActivity == null);
    ShoppingController.addProductOrPack(localMyActivity, str1, i, str2, j, SourceEntity.getMDestinationSource(paramBundle.getString("landPageId")));
  }
  
  private void forwardTextContainer(Bundle paramBundle)
  {
    Intent localIntent = new Intent(this, CommercialRuleActivity.class);
    Bundle localBundle = new Bundle();
    localBundle.putString("title", paramBundle.getString("title"));
    localBundle.putString("detail", paramBundle.getString("content"));
    localIntent.putExtras(localBundle);
    startSubActivity(localIntent);
  }
  
  public static TabBarButton.StateController getCarStateController()
  {
    return carStateController;
  }
  
  public static byte[] getImage(String paramString)
    throws Exception
  {
    HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL(paramString).openConnection();
    localHttpURLConnection.setConnectTimeout(20000);
    localHttpURLConnection.setRequestMethod("GET");
    InputStream localInputStream = localHttpURLConnection.getInputStream();
    if (localHttpURLConnection.getResponseCode() == 200) {
      return readStream(localInputStream);
    }
    return null;
  }
  
  private boolean globalInit()
  {
    getHandler().postDelayed(new Runnable()
    {
      public void run()
      {
        if ((CommonUtil.getJdSharedPreferences().getBoolean("showCost", true)) && (com.jingdong.common.config.Configuration.getBooleanProperty("costHint").booleanValue())) {
          MainFrameActivity.this.showHintDialog();
        }
      }
    }, 100L);
    loadHomeActivity();
    return true;
  }
  
  private int initCartNum(Bundle paramBundle, String paramString)
  {
    String str = paramBundle.get(paramString);
    boolean bool = TextUtils.isEmpty(str);
    i = 0;
    if (!bool) {}
    try
    {
      int j = Integer.parseInt(str);
      i = j;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        i = 0;
      }
    }
    if (i < 1) {
      i = 1;
    }
    return i;
  }
  
  private void initNetwork()
  {
    new Thread()
    {
      public void run()
      {
        setName("MainFrameActivity_initNetwork");
        GlobalInitialization.initNetwork(false);
      }
    }.start();
  }
  
  private void initPushMsgAlarm()
  {
    if (MessageUtil.getMsgMode()) {
      return;
    }
    if (!TextUtils.isEmpty(PushMessageUtils.getDeviceTokenFromLocal()))
    {
      AlarmUtils.alarmPushMsgTask(this, -1L);
      return;
    }
    new Handler().postDelayed(new Runnable()
    {
      public void run()
      {
        PushMessageUtils.regPushMessageToken(new HttpGroup.OnCommonListener()
        {
          public void onEnd(HttpGroup.HttpResponse paramAnonymous2HttpResponse)
          {
            AlarmUtils.alarmPushMsgTask(MainFrameActivity.this, -1L);
          }
          
          public void onError(HttpGroup.HttpError paramAnonymous2HttpError)
          {
            AlarmUtils.alarmPushMsgTask(MainFrameActivity.this, -1L);
          }
          
          public void onReady(HttpGroup.HttpSettingParams paramAnonymous2HttpSettingParams) {}
        }, null, null);
      }
    }, PushMessageUtils.getDefaultGetTokenDelay());
  }
  
  private void loadHomeActivity()
  {
    navigationInit(-1);
    deleteToken("");
    if (!this.isGuided) {
      addGuideImage();
    }
    this.isStartPhotoState = true;
  }
  
  public static void menuItemClick(int paramInt, Activity paramActivity)
  {
    if (paramActivity == null) {
      return;
    }
    switch (paramInt)
    {
    default: 
      return;
    case 2131492867: 
      if ((paramActivity instanceof MyActivity)) {}
      for (ScrollableTabActivity localScrollableTabActivity = (ScrollableTabActivity)paramActivity.getParent();; localScrollableTabActivity = (ScrollableTabActivity)paramActivity)
      {
        localScrollableTabActivity.startActivityForResult(new Intent(localScrollableTabActivity, SearchActivity.class), 272);
        return;
      }
    case 2131492868: 
      paramActivity.startActivity(new Intent(paramActivity, SettingActivity.class));
      return;
    case 2131492869: 
      paramActivity.startActivity(new Intent(paramActivity, HistoryListActivity.class));
      return;
    case 2131492870: 
      paramActivity.startActivity(new Intent(paramActivity, FeedbackActivity.class));
      return;
    case 2131492872: 
      paramActivity.startActivity(new Intent(paramActivity, AboutActivity.class));
      return;
    case 2131492871: 
      Intent localIntent = new Intent(paramActivity, WebActivity.class);
      localIntent.putExtra("url", MyApplication.getInstance().getCurrentMyActivity().getStringFromPreference("helpurl"));
      paramActivity.startActivity(localIntent);
      return;
    }
    MyApplication.exitDialog();
  }
  
  private void notifyTokenChange()
  {
    if (this.tokens.size() <= 0) {
      initPushMsgAlarm();
    }
  }
  
  public static byte[] readStream(InputStream paramInputStream)
    throws Exception
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte[1024];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i == -1)
      {
        localByteArrayOutputStream.close();
        paramInputStream.close();
        return localByteArrayOutputStream.toByteArray();
      }
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
  }
  
  private void removeRootView()
  {
    this.rootFrameLayout.removeView(this.modal);
    this.rootFrameLayout.invalidate();
    this.modal = null;
  }
  
  public static void setCarStateController(TabBarButton.StateController paramStateController)
  {
    carStateController = paramStateController;
  }
  
  private void setOSSetting()
  {
    try
    {
      Resources localResources = getResources();
      android.content.res.Configuration localConfiguration = localResources.getConfiguration();
      localConfiguration.fontScale = 1.0F;
      localResources.updateConfiguration(localConfiguration, localResources.getDisplayMetrics());
      return;
    }
    catch (Throwable localThrowable) {}
  }
  
  private void showBarcodeActivity(Bundle paramBundle)
  {
    if ((MyApplication.getInstance().getCurrentMyActivity() instanceof BarcodeActivity)) {
      return;
    }
    Intent localIntent = new Intent(this, CaptureActivity.class);
    if (paramBundle != null) {
      localIntent.putExtras(paramBundle);
    }
    startActivity(localIntent);
  }
  
  private void showHintDialog()
  {
    final AlertDialog localAlertDialog = new AlertDialog.Builder(this).create();
    localAlertDialog.setTitle(2131165609);
    View localView = ImageUtil.inflate(2130903109, new RelativeLayout(this));
    CheckBox localCheckBox = (CheckBox)localView.findViewById(2131493312);
    localCheckBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        switch (paramAnonymousCompoundButton.getId())
        {
        default: 
          return;
        }
        SharedPreferences localSharedPreferences = CommonUtil.getJdSharedPreferences();
        if (paramAnonymousBoolean)
        {
          localSharedPreferences.edit().putBoolean("showCost", false).commit();
          return;
        }
        localSharedPreferences.edit().putBoolean("showCost", true).commit();
      }
    });
    localCheckBox.setChecked(false);
    localAlertDialog.setView(localView);
    localAlertDialog.setButton(getText(2131165517), new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        localAlertDialog.dismiss();
      }
    });
    localAlertDialog.setButton2(getText(2131165601), new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt) {}
    });
    localAlertDialog.setOnKeyListener(new DialogInterface.OnKeyListener()
    {
      public boolean onKey(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        return true;
      }
    });
    localAlertDialog.show();
  }
  
  private void showLimitBuyListActivity(Bundle paramBundle)
  {
    if ((MyApplication.getInstance().getCurrentMyActivity() instanceof LimitBuyListActivity)) {
      return;
    }
    Intent localIntent = new Intent(this, LimitBuyListActivity.class);
    if (paramBundle != null) {
      localIntent.putExtras(paramBundle);
    }
    localIntent.putExtra("com.360buy:clearHistoryFlag", true);
    localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
    startSubActivity(localIntent);
  }
  
  private void showSearchActivity(Bundle paramBundle)
  {
    if ((MyApplication.getInstance().getCurrentMyActivity() instanceof SearchActivity)) {
      return;
    }
    Intent localIntent = new Intent(this, SearchActivity.class);
    if (paramBundle != null) {
      localIntent.putExtras(paramBundle);
    }
    startActivityForResult(localIntent, 272);
  }
  
  public static void validatCartIcon()
  {
    TabBarButton.StateController localStateController = getCarStateController();
    if (localStateController == null) {}
    for (;;)
    {
      return;
      int i = ShoppingController.getProductCount();
      if (i == 0) {}
      for (final Integer localInteger = null; (MyApplication.getInstance().getMainFrameActivity() != null) && (MyApplication.getInstance().getMainFrameActivity().getHandler() != null); localInteger = Integer.valueOf(i))
      {
        MyApplication.getInstance().getMainFrameActivity().getHandler().post(new Runnable()
        {
          public void run()
          {
            MainFrameActivity.this.setNum(localInteger);
          }
        });
        return;
      }
    }
  }
  
  public void addGuideImage()
  {
    if ((!this.isSlideScreenState) || (!this.isStartPhotoState)) {}
    do
    {
      return;
      this.rootView = ((ViewGroup)getWindow().peekDecorView());
    } while ((this.rootView == null) || (2130837891 == 0));
    this.imageViewLayout = new RelativeLayout(this);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(getResources().getDimensionPixelOffset(2131427461), getResources().getDimensionPixelOffset(2131427462));
    localLayoutParams.addRule(13);
    ImageView localImageView = new ImageView(this);
    localImageView.setImageResource(2130837891);
    this.imageViewLayout.addView(localImageView, localLayoutParams);
    this.imageViewLayout.setBackgroundColor(getResources().getColor(2131296341));
    this.imageViewLayout.getBackground().setAlpha(200);
    CommonUtil.setIsGuided("com.jingdong.app.mall.MainActivity");
    this.imageViewLayout.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        switch (paramAnonymousMotionEvent.getAction())
        {
        }
        for (;;)
        {
          return true;
          MainFrameActivity.this.removeGuideView();
        }
      }
    });
    this.rootView.addView(this.imageViewLayout, new ViewGroup.LayoutParams(-1, -1));
    this.rootView.invalidate();
  }
  
  public void checkSlideScreenState()
  {
    if (!this.isGuided)
    {
      this.isSlideScreenState = true;
      addGuideImage();
    }
  }
  
  public boolean checkStartImage()
  {
    new Timer().schedule(new TimerTask()
    {
      public void run()
      {
        int i = MainFrameActivity.this.getStartImageState();
        MainFrameActivity.this.freshNewStartImageByHttp(i);
      }
    }, 30000L);
    return true;
  }
  
  public void checkTargetActivity()
  {
    SharedPreferences localSharedPreferences = CommonUtil.getJdSharedPreferences();
    String str1 = localSharedPreferences.getString("cameraFilePath", null);
    String str2 = localSharedPreferences.getString("photoType", null);
    int i = localSharedPreferences.getInt("photoTypeIndex", 0);
    if (!TextUtils.isEmpty(str1))
    {
      Intent localIntent1 = new Intent(this, CameraPurchaseActivity.class);
      localIntent1.putExtra("cameraPath", str1);
      localIntent1.putExtra("categoryTypeArray", str2);
      localIntent1.putExtra("categoryTypeIndex", i);
      startActivity(localIntent1);
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      localEditor.remove("cameraFilePath");
      localEditor.remove("photoType");
      localEditor.remove("photoTypeIndex");
      localEditor.commit();
      return;
    }
    if (this.galleryRebootResultCode != null)
    {
      Intent localIntent2 = new Intent(this, CameraPurchaseActivity.class);
      localIntent2.putExtra("galleryData", this.galleryRebootData);
      localIntent2.putExtra("categoryTypeArray", str2);
      localIntent2.putExtra("categoryTypeIndex", i);
      startActivity(localIntent2);
      localSharedPreferences.edit().remove("photoType").commit();
      localSharedPreferences.edit().remove("photoTypeIndex").commit();
      return;
    }
    if (getIntent().getExtras() != null)
    {
      InterfaceBroadcastReceiver.Command localCommand = InterfaceBroadcastReceiver.Command.createCommand(getIntent());
      if (localCommand != null) {
        toTargetActivity(localCommand);
      }
    }
    LocManager.getInstance().startLocationService();
  }
  
  public String createToken(String paramString)
  {
    this.tokens.add(paramString);
    return paramString;
  }
  
  public void deleteToken(String paramString)
  {
    this.tokens.remove(paramString);
    notifyTokenChange();
  }
  
  public void finish()
  {
    Activity localActivity = getCurrentActivity();
    if (localActivity != null)
    {
      Class localClass = localActivity.getClass();
      if (localClass != null)
      {
        String str = localClass.getName();
        if ((!TextUtils.isEmpty(str)) && (needBackToHomeClassName.contains(str)))
        {
          toHomeActivity();
          return;
        }
      }
    }
    super.finish();
  }
  
  public void freshNewStartImageByHttp(int paramInt)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("start");
    localHttpSetting.setEffect(0);
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        final FileService.Directory localDirectory = FileService.getDirectory(4);
        JSONObjectProxy localJSONObjectProxy1 = paramAnonymousHttpResponse.getJSONObject();
        Boolean localBoolean = Boolean.valueOf(false);
        try
        {
          JSONArrayPoxy localJSONArrayPoxy = localJSONObjectProxy1.getJSONArrayOrNull("images");
          if ((localJSONArrayPoxy == null) || (localJSONArrayPoxy.length() <= 0)) {
            break label96;
          }
          JSONObjectProxy localJSONObjectProxy2 = localJSONArrayPoxy.getJSONObjectOrNull(0);
          MainFrameActivity.this.mStartImageUrl = localJSONObjectProxy2.getString("url");
          MainFrameActivity.this.mStartTime = localJSONObjectProxy2.getString("onlineTime");
          MainFrameActivity.this.mEndTime = localJSONObjectProxy2.getString("referralsTime");
        }
        catch (JSONException localJSONException)
        {
          for (;;)
          {
            label96:
            SharedPreferences.Editor localEditor;
            localBoolean = Boolean.valueOf(true);
          }
          HttpGroup.HttpGroupSetting localHttpGroupSetting = new HttpGroup.HttpGroupSetting();
          localHttpGroupSetting.setType(5000);
          HttpGroup.HttpGroupaAsynPool localHttpGroupaAsynPool = new HttpGroup.HttpGroupaAsynPool(localHttpGroupSetting);
          HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
          localHttpSetting.setEffect(0);
          localHttpSetting.setNotifyUser(false);
          localHttpSetting.setUrl(MainFrameActivity.this.mStartImageUrl);
          localHttpSetting.setListener(new HttpGroup.OnCommonListener()
          {
            public void onEnd(HttpGroup.HttpResponse paramAnonymous2HttpResponse)
            {
              Bitmap localBitmap = ImageUtil.createBitmap(ImageUtil.InputWay.createInputWay(paramAnonymous2HttpResponse), 0, 0);
              ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
              byte[] arrayOfByte = null;
              if (localBitmap != null)
              {
                localBitmap.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
                localBitmap.recycle();
                arrayOfByte = localByteArrayOutputStream.toByteArray();
              }
              if (Boolean.valueOf(FileService.saveToSDCard(localDirectory, "startimage.image", arrayOfByte)).booleanValue())
              {
                SharedPreferences.Editor localEditor = CommonUtil.getJdSharedPreferences().edit();
                localEditor.putString("imageurl", MainFrameActivity.this.mStartImageUrl);
                localEditor.putString("imagepath", localDirectory.getPath());
                localEditor.putString("beginTime", MainFrameActivity.this.mStartTime);
                localEditor.putString("endTime", MainFrameActivity.this.mEndTime);
                localEditor.commit();
              }
            }
            
            public void onError(HttpGroup.HttpError paramAnonymous2HttpError) {}
            
            public void onReady(HttpGroup.HttpSettingParams paramAnonymous2HttpSettingParams) {}
          });
          localHttpGroupaAsynPool.add(localHttpSetting);
        }
        if (localBoolean.booleanValue())
        {
          return;
          localEditor = CommonUtil.getJdSharedPreferences().edit();
          localEditor.putString("imageurl", "");
          localEditor.putString("imagepath", "");
          localEditor.putString("beginTime", "");
          localEditor.putString("endTime", "");
          localEditor.commit();
          return;
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    });
    HttpGroupUtils.getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  public IMyActivity getCurrentMyActivity()
  {
    return MyApplication.getInstance().getCurrentMyActivity();
  }
  
  public Handler getHandler()
  {
    return this.mHandler;
  }
  
  public int getStartImageState()
  {
    if (CommonUtil.getJdSharedPreferences().getString("imagepath", "").trim().equals("")) {
      return 1;
    }
    if (isStartImageOutOfDate()) {
      return 2;
    }
    return 3;
  }
  
  public Activity getThisActivity()
  {
    return this;
  }
  
  public boolean hasTargetActivity()
  {
    if (1 == this.targetActivityState) {
      return true;
    }
    if ((this.targetActivityState == 0) && (getIntent().getExtras() != null) && (InterfaceBroadcastReceiver.Command.createCommand(getIntent()) != null))
    {
      this.targetActivityState = 1;
      return true;
    }
    return false;
  }
  
  protected void initNoImage(DialogInterface paramDialogInterface, CheckBox paramCheckBox)
  {
    if (paramCheckBox.isChecked()) {
      NoImageUtils.setIfNeedAlertDialog(false);
    }
    for (;;)
    {
      paramDialogInterface.cancel();
      loadHomeActivity();
      return;
      NoImageUtils.setIfNeedAlertDialog(true);
    }
  }
  
  public boolean isStartImageBetweenDate()
  {
    SharedPreferences localSharedPreferences = CommonUtil.getJdSharedPreferences();
    String str1 = localSharedPreferences.getString("endTime", "");
    String str2 = localSharedPreferences.getString("beginTime", "");
    if (str1.equals("")) {}
    do
    {
      return false;
      Date localDate1 = new Date();
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
      Date localDate2 = null;
      try
      {
        localDate2 = localSimpleDateFormat.parse(str2);
        Date localDate4 = localSimpleDateFormat.parse(str1);
        localDate3 = localDate4;
      }
      catch (ParseException localParseException)
      {
        for (;;)
        {
          Date localDate3 = null;
        }
      }
    } while ((localDate3 == null) || (localDate2 == null) || (!localDate1.after(localDate2)) || (!localDate3.after(localDate1)));
    return true;
  }
  
  public boolean isStartImageBetweenHttpDate(String paramString1, String paramString2)
  {
    if (paramString2.equals("")) {}
    do
    {
      return false;
      Date localDate1 = new Date();
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
      Date localDate2 = null;
      try
      {
        localDate2 = localSimpleDateFormat.parse(paramString1);
        Date localDate4 = localSimpleDateFormat.parse(paramString2);
        localDate3 = localDate4;
      }
      catch (ParseException localParseException)
      {
        for (;;)
        {
          Date localDate3 = null;
        }
      }
    } while ((localDate3 == null) || (localDate2 == null) || (!localDate1.after(localDate2)) || (!localDate3.after(localDate1)));
    return true;
  }
  
  public boolean isStartImageOutOfDate()
  {
    String str = CommonUtil.getJdSharedPreferences().getString("endTime", "");
    if (str.equals("")) {}
    do
    {
      return true;
      Date localDate1 = new Date();
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
      try
      {
        Date localDate3 = localSimpleDateFormat.parse(str);
        localDate2 = localDate3;
      }
      catch (ParseException localParseException)
      {
        for (;;)
        {
          localParseException.printStackTrace();
          Date localDate2 = null;
        }
      }
    } while ((localDate2 == null) || (localDate1.after(localDate2)));
    return false;
  }
  
  public void navigationInit(int paramInt)
  {
    Intent localIntent1 = new Intent(this, NewHomeActivity.class);
    localIntent1.putExtra("com.360buy:singleInstanceFlag", true);
    localIntent1.putExtra("com.360buy:navigationFlag", true);
    localIntent1.putExtra("com.360buy:navigationId", 0);
    localIntent1.putExtra("moduleId", paramInt);
    addTab(new ScrollableTabActivity.ButtonStyle(this, "", 2130837986, 2130837985), new ScrollableTabActivity.ButtonAction(this, localIntent1, true, true));
    new ScrollableTabActivity.ButtonStyle(this, "", 2130837990, 2130837989);
    new ScrollableTabActivity.ButtonAction(this, new Runnable()
    {
      public void run()
      {
        MainFrameActivity.this.showSearchActivity(null);
      }
    }, false);
    Intent localIntent2 = new Intent(this, CategoryActivity.class);
    localIntent2.putExtra("com.360buy:navigationFlag", true);
    localIntent2.putExtra("com.360buy:navigationId", 2);
    localIntent2.putExtra("com.360buy:singleInstanceFlag", true);
    localIntent2.putExtra("com.360buy:useHistoryFlag", true);
    addTab(new ScrollableTabActivity.ButtonStyle(this, "", 2130837984, 2130837983), new ScrollableTabActivity.ButtonAction(this, localIntent2));
    Intent localIntent3 = new Intent(this, ShoppingCartNewActivity.class);
    localIntent3.putExtra("com.360buy:singleInstanceFlag", true);
    localIntent3.putExtra("com.360buy:navigationFlag", true);
    localIntent3.putExtra("com.360buy:navigationId", 3);
    localIntent3.putExtra("com.360buy:useHistoryFlag", true);
    addTab(new ScrollableTabActivity.ButtonStyle(this, "", 2130837982, 2130837981), new ScrollableTabActivity.ButtonAction(this, localIntent3));
    Intent localIntent4 = new Intent(this, PersonelActivity.class);
    localIntent4.putExtra("com.360buy:singleInstanceFlag", true);
    localIntent4.putExtra("com.360buy:navigationFlag", true);
    localIntent4.putExtra("com.360buy:navigationId", 4);
    localIntent4.putExtra("com.360buy:useHistoryFlag", true);
    addTab(new ScrollableTabActivity.ButtonStyle(this, "", 2130837988, 2130837987), new ScrollableTabActivity.ButtonAction(this, localIntent4));
    commit();
    validatCartIcon();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((272 == paramInt1) && (-1 == paramInt2))
    {
      Intent localIntent = new Intent(this, ProductListActivity.class);
      Bundle localBundle = paramIntent.getExtras();
      localIntent.putExtras(localBundle);
      localIntent.putExtra("sortKey", 5);
      if (localBundle != null) {
        localIntent.putExtra("source", new SourceEntity("search", localBundle.getString("keyWord")));
      }
      StartActivityUtils.startProductListActivity(this, localIntent);
      return;
    }
    if (paramInt1 == 12)
    {
      if (getCurrentActivity() == null) {
        break label134;
      }
      Activity localActivity = getCurrentActivity();
      if ((localActivity instanceof CameraPurchaseActivity)) {
        ((CameraPurchaseActivity)localActivity).onActivityResult(paramInt1, paramInt2, paramIntent);
      }
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      label134:
      this.galleryRebootData = paramIntent;
      this.galleryRebootResultCode = Integer.valueOf(paramInt2);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    com.jingdong.common.utils.TimerUntil.startTime = System.currentTimeMillis();
    MyApplication.getInstance().setMainFrameActivity(this);
    setOSSetting();
    this.mHandler = new Handler();
    super.onCreate(paramBundle);
    MyApplication.runCount = 1 + MyApplication.runCount;
    getHandler().postDelayed(new Runnable()
    {
      public void run()
      {
        NewJLogUtil.JaInit(MainFrameActivity.this.getBaseContext());
        SecureNetwork.doPreparation(false, false);
        MainFrameActivity.clearCache();
        ShortCutUtils.deleteOldJdAppShortCut(MainFrameActivity.this);
        SharedPreferences localSharedPreferences = CommonUtil.getJdSharedPreferences();
        if ((!localSharedPreferences.getBoolean("add_short_cut_flag_new", false)) && (com.jingdong.common.config.Configuration.getBooleanProperty("applicationShortcut").booleanValue())) {
          ShortCutUtils.addSortcutForJdApp(MainFrameActivity.this);
        }
        MainFrameActivity.this.isGuided = CommonUtil.activityIsGuided("com.jingdong.app.mall.MainActivity");
        MyApplication.networkSetting();
        SafetyManager.initEncryptKey();
        long l = localSharedPreferences.getLong("appUseTime", 0L);
        localSharedPreferences.edit().remove("appUseTime").commit();
        if (l > 0L) {
          MainFrameActivity.this.submitAppUseTime(l);
        }
        MainFrameActivity.this.initNetwork();
        if ((CommonUtil.getBooleanFromPreference(MainFrameActivity.this.getString(2131166126), Boolean.valueOf(true)).booleanValue()) && (MessageUtil.getMsgMode())) {
          MessageUtil.openMsgService();
        }
      }
    }, 100L);
    int i = getIntent().getIntExtra("moduleId", -1);
    if (needStartImage)
    {
      needStartImage = false;
      if (!globalInit()) {
        return;
      }
      checkStartImage();
    }
    for (;;)
    {
      new ReActivationUserManager(getApplicationContext()).startReActivationUserTask();
      return;
      navigationInit(i);
      deleteToken("");
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    if (this.tokens.size() <= 0) {
      getMenuInflater().inflate(2131558400, paramMenu);
    }
    if (!this.isGuided) {
      removeGuideView();
    }
    return true;
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 84)
    {
      String str1 = NewHomeActivity.class.getSimpleName();
      String str2 = PersonelActivity.class.getSimpleName();
      Activity localActivity = getCurrentActivity();
      if (localActivity == null) {}
      String str3;
      do
      {
        return true;
        str3 = localActivity.getClass().getSimpleName();
      } while ((str1.equals(str3)) || (str2.equals(str3)));
      showSearchActivity(null);
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    menuItemClick(paramMenuItem.getItemId(), this);
    return true;
  }
  
  protected void onPause()
  {
    this.isShow = false;
    this.leaveTime = new Date();
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
    try
    {
      this.isShow = true;
      getHandler().postDelayed(new Runnable()
      {
        public void run()
        {
          if ((MainFrameActivity.this.leaveTime != null) && (new Date().getTime() - MainFrameActivity.this.leaveTime.getTime() > com.jingdong.common.config.Configuration.getIntegerProperty("leaveTimeGap").intValue())) {
            GlobalInitialization.regDevice();
          }
          LocManager.getInstance().onResume();
        }
      }, 100L);
      if (this.resume != null)
      {
        getHandler().post(this.resume);
        this.resume = null;
      }
      checkAlways_Finish_Activities();
      return;
    }
    catch (Exception localException) {}
  }
  
  protected void onStop()
  {
    try
    {
      super.onStop();
      LocManager.getInstance().onStop();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public boolean removeGuideView()
  {
    if ((!this.isGuided) && (this.imageViewLayout != null) && (this.rootView != null) && (this.rootView.isShown()))
    {
      this.rootView.removeView(this.imageViewLayout);
      this.rootView = null;
      this.imageViewLayout = null;
      this.isGuided = true;
      return true;
    }
    return false;
  }
  
  public void submitAppUseTime(long paramLong)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("appUseTime");
    localHttpSetting.putJsonParam("useTime", paramLong);
    localHttpSetting.setEffect(0);
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse) {}
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    });
    HttpGroupUtils.getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  public void toHomeActivity()
  {
    if (getCurrentActivity().getClass() != NewHomeActivity.class)
    {
      Intent localIntent = new Intent(this, NewHomeActivity.class);
      localIntent.putExtra("com.360buy:singleInstanceFlag", true);
      startSubActivity(localIntent);
    }
  }
  
  public void toShoppingCart(boolean paramBoolean)
  {
    if (getCurrentActivity().getClass() != ShoppingCartNewActivity.class)
    {
      Intent localIntent = new Intent(this, ShoppingCartNewActivity.class);
      localIntent.putExtra("com.360buy:singleInstanceFlag", true);
      if (paramBoolean)
      {
        localIntent.putExtra("com.360buy:navigationFlag", true);
        localIntent.putExtra("com.360buy:navigationId", 3);
      }
      startSubActivity(localIntent);
    }
  }
  
  public void toTargetActivity(InterfaceBroadcastReceiver.Command paramCommand)
  {
    InterfaceBroadcastReceiver.cps();
    int i = paramCommand.getModuleId();
    final Bundle localBundle = paramCommand.getOutBundle();
    MyActivity localMyActivity = MyApplication.getInstance().getCurrentMyActivity();
    switch (i)
    {
    }
    for (;;)
    {
      this.targetActivityState = 2;
      return;
      String str2 = localBundle.getString("a");
      if ((localMyActivity != null) && (!TextUtils.isEmpty(str2)))
      {
        URLParamMap localURLParamMap = new URLParamMap();
        localURLParamMap.put("to", str2);
        CommonUtil.getInstance().forwardWebActivity(localMyActivity, "to", localURLParamMap);
        continue;
        startSubActivity(new Intent(this, MyMessageShow.class));
        continue;
        startSubActivity(new Intent(this, MyWebMessage.class));
        continue;
        toHomeActivity();
        continue;
        if (!this.isShow)
        {
          this.resume = new Runnable()
          {
            public void run()
            {
              MainFrameActivity.this.showSearchActivity(localBundle);
            }
          };
        }
        else
        {
          showSearchActivity(localBundle);
          continue;
          String str1 = localBundle.getString("unionId");
          if (TextUtils.isEmpty(str1)) {}
          for (SourceEntity localSourceEntity = new SourceEntity("widget", null);; localSourceEntity = new SourceEntity("cps", str1))
          {
            StartActivityUtils.startProductDetailActivity(this, localBundle, localSourceEntity);
            break;
          }
          CommonUtil.getInstance().toClient(localBundle.getString("tokenKey"));
          continue;
          if (!this.isShow)
          {
            this.resume = new Runnable()
            {
              public void run()
              {
                MainFrameActivity.this.showBarcodeActivity(localBundle);
              }
            };
          }
          else
          {
            showBarcodeActivity(localBundle);
            continue;
            showLimitBuyListActivity(localBundle);
            continue;
            forwardLoginActivity(localBundle);
            continue;
            CommonUtil.getInstance().forwardWebActivityWithWidget(localMyActivity, "chongzhi");
            continue;
            CommonUtil.getInstance().forwardWebActivityWithWidget(localMyActivity, "tuan");
            continue;
            CommonUtil.getInstance().forwardWebActivityWithWidget(localMyActivity, "lottery");
            continue;
            if (!this.isShow)
            {
              this.resume = new Runnable()
              {
                public void run()
                {
                  MainFrameActivity.this.forwardProductDetail(localBundle);
                }
              };
            }
            else
            {
              forwardProductDetail(localBundle);
              continue;
              forwardShoppingCart(localBundle);
              continue;
              forwardActivity(localBundle);
              continue;
              forwardPromotion(localBundle);
              continue;
              forwardTextContainer(localBundle);
              continue;
              forwardGetCoupon(localBundle);
              continue;
              forwardM(localBundle);
              continue;
              forwardMyJd(localBundle);
            }
          }
        }
      }
    }
  }
  
  public void validateCartIcon() {}
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.MainFrameActivity
 * JD-Core Version:    0.7.0.1
 */