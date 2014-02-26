package com.jingdong.app.mall.personel;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.Resources.Theme;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Animation;
import android.view.inputmethod.InputMethodManager;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.Gallery;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.ViewSwitcher.ViewFactory;
import com.jingdong.app.mall.HomeSharedToPersionActivity;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.app.mall.amHelper.AmAnimationUtil;
import com.jingdong.app.mall.amHelper.AmAnimationUtil.OnAnimationListener;
import com.jingdong.app.mall.amHelper.AmCheckinActivity;
import com.jingdong.app.mall.amHelper.AmHelper;
import com.jingdong.app.mall.amHelper.AmHelperActivity;
import com.jingdong.app.mall.home.NewHomeActivity;
import com.jingdong.app.mall.login.LoginActivity;
import com.jingdong.app.mall.more.MoreActivity;
import com.jingdong.app.mall.plug.framework.dynamicloader.PlugClassLoader;
import com.jingdong.app.mall.plug.framework.dynamicloader.PlugResources;
import com.jingdong.app.mall.plug.framework.plug.open.IPFragmentplug;
import com.jingdong.app.mall.shopping.EasyGoAddrListActivity;
import com.jingdong.app.mall.utils.CirculationGalleryAdapter;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.LoginUser;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.app.mall.utils.ui.TriangleLineDrawable;
import com.jingdong.app.mall.utils.ui.view.AdapterItemView;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.entity.JdOrderStat;
import com.jingdong.common.entity.NewUserInfoLabelsMode;
import com.jingdong.common.entity.NewUserInfoMode;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.login.LoginUserBase.LoginRequestListener;
import com.jingdong.common.login.SafetyManager;
import com.jingdong.common.plug.MergeSwitcher;
import com.jingdong.common.utils.CommonBase.BrowserUrlListener;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.CustomOnAllListener;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.HttpGroupUtils;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.ImageUtil.InputWay;
import com.jingdong.common.utils.JDStringUtils;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.PushMessageUtils;
import com.jingdong.common.utils.ShakeUtils;
import com.jingdong.common.utils.URLParamMap;
import com.jingdong.common.utils.UserUtil;
import com.jingdong.common.utils.cache.GlobalImageCache;
import com.novoda.imageloader.core.cache.LruBitmapCache;
import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class PersonelActivity
  extends MyActivity
  implements AdapterView.OnItemClickListener, ViewSwitcher.ViewFactory, View.OnTouchListener
{
  public static final String BALANCE = "balance";
  public static final String BALANCE_TYPE = "queryBalance";
  private static final int CAMERA_PICTURE = 2;
  private static final int CUT_PICTURE = 3;
  public static final int DRAWER_MAX_WIDTH = 100;
  public static final int DRAWER_MIN_WIDTH = 1;
  public static final int GET_IMG_DONE = 257;
  private static final float HEAD_RATE = 0.28F;
  public static final String JINGBEAN = "jingBean";
  public static final String JINGBEAN_TYPE = "queryJingBean";
  private static final int LOCAL_PICTURE = 1;
  public static final int MOVE_WIDTH = 10;
  private static final String PACKAGE_NAME = "com.jd.plug.personel";
  private static final String PERSONAL_JINGDONG_BEAN_TIP = "personal_jingdong_bean_tip";
  private static final String PERSONAL_ONLINE_TIP = "personal_online_tip";
  public static final String TAG = "PersonelActivity";
  private static final float ZERO = 1.0E-004F;
  public static boolean annual_switch = true;
  private AlertDialog alertDialog;
  private AmAnimationUtil amAnimationUtil;
  private ImageView am_enter;
  private AssetManager assetManager;
  private boolean canMove = false;
  private PlugClassLoader classLoader;
  private LinearLayout clickLoginForNormal;
  private Button clickToLogin;
  private View convertView = null;
  private TextView couponsTextView;
  private boolean drawerUseable = false;
  private String fragmentName;
  private RelativeLayout galleryLayout;
  private RelativeLayout guessLayout;
  private ArrayList<Product> guessProductlist;
  private RelativeLayout guessRelativeLayout;
  private int headHeight;
  private RelativeLayout headReleatLayout;
  private IPFragmentplug iplug = null;
  private boolean isCanClickButton = true;
  private boolean isDrawerOpen = false;
  private boolean isLoadedOrderInfo;
  private boolean isNormal = true;
  private boolean isQuerying = false;
  private boolean isStartAnim = false;
  private JSONObject jPin = null;
  private JSONArrayPoxy jsonRecomandArray = null;
  private String keyWord;
  private final LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1, 1.0F);
  private View leftArrow;
  private boolean loaded;
  private Runnable loginAfterRunnable = new Runnable()
  {
    public void run()
    {
      PersonelActivity.this.notLoginLayout.setVisibility(8);
      PersonelActivity.this.logoutBtn.setVisibility(0);
      PersonelActivity.this.loginInfoLayout.setVisibility(0);
      if ((PersonelActivity.this.oldPin != null) && (!PersonelActivity.this.oldPin.equals(LoginUserBase.getLoginUserName())))
      {
        PersonelActivity.this.mUserClass.setText("");
        PersonelActivity.this.mScore.setText("");
        if (PersonelActivity.this.guessProductlist != null)
        {
          PersonelActivity.this.guessLayout.setVisibility(8);
          PersonelActivity.this.guessProductlist.clear();
        }
      }
      PersonelActivity.this.oldPin = LoginUserBase.getLoginUserName();
      if (!PersonelActivity.this.userPhotoUpload.getFirstUploadSucess()) {
        PersonelActivity.this.setDefaultUserPhoto();
      }
      PersonelActivity.this.scankey = PersonelActivity.this.getScankey();
      if ((PersonelActivity.this.useLoginForMeeting) && (PersonelActivity.annual_switch))
      {
        PersonelActivity.this.startAmAnimation();
        PersonelActivity.this.queryAnnualInfo();
      }
      PersonelActivity.this.queryNewUserInfo();
      if ((PersonelActivity.this.guessProductlist != null) && (PersonelActivity.this.guessProductlist.size() > 0)) {
        PersonelActivity.this.setRecomandList(PersonelActivity.this.guessProductlist, 0);
      }
      for (;;)
      {
        PersonelActivity.this.loadUnreadMessage();
        if (PersonelActivity.this.drawerUseable) {
          PersonelActivity.this.getOneMonthOrder();
        }
        return;
        PersonelActivity.this.getRecomandProduct();
      }
    }
  };
  private RelativeLayout loginInfoLayout;
  private Button logoutBtn;
  private Gallery mDrawerGallery;
  private Gallery mGallery;
  private GestureDetector mGesture = null;
  private ImageView mImgView;
  private ArrayList<NewUserInfoLabelsMode> mNewUserInfoLabelsModeList;
  private NewUserInfoMode mNewUserInfoMode;
  private TextView mSayHello;
  private TextView mScore;
  private ScrollView mScrollView;
  private int mScrollY = 0;
  private TextView mUserClass;
  private Gallery mUserGallery;
  private Integer mUserScore;
  private RelativeLayout meetingAssistantIcon;
  private Button meetingLoginBtn;
  private EditText meetingPassWordEdit;
  private EditText meetingUseNameEdit;
  private PlugResources myResources;
  int nCurrentIndex = 0;
  int nLength = 0;
  private LinearLayout notLoginForMeeeting;
  private RelativeLayout notLoginLayout;
  private String oldPin;
  private boolean onScrolling = false;
  private RelativeLayout orderDrawer;
  private Button orderDrawerHandle;
  private LinearLayout orderInfoListLayout;
  private TextView orderView;
  private LinearLayout personelUserCoupon;
  private ImageView productImg;
  private TextView productJdPriceView;
  private TextView productMarketPriceView;
  private TextView productTextView;
  private Resources resources;
  private View rightArrow;
  private FrameLayout rootView;
  private String scankey;
  private HomeSharedToPersionActivity shared;
  private String spin = "pin";
  private Resources.Theme theme;
  private ImageView tipImageView;
  private ImageView tipOnlineServerImagetView;
  private TextView unreadMessageTextView;
  private boolean upOrDown = false;
  private boolean useLoginForMeeting = false;
  private UserPhotoUpload userPhotoUpload;
  
  private void avoidMoreTimeClicked()
  {
    this.isCanClickButton = false;
    post(new Runnable()
    {
      public void run()
      {
        PersonelActivity.this.isCanClickButton = true;
      }
    }, 3000);
  }
  
  private void createOrderInfo(List<JdOrderStat> paramList)
  {
    this.orderInfoListLayout.removeAllViews();
    AdapterItemView localAdapterItemView;
    final JdOrderStat localJdOrderStat;
    for (int i = 0;; i++)
    {
      if (i >= paramList.size())
      {
        this.orderInfoListLayout.setVisibility(0);
        this.isLoadedOrderInfo = true;
        return;
      }
      localAdapterItemView = new AdapterItemView(this);
      localJdOrderStat = (JdOrderStat)paramList.get(i);
      if (localJdOrderStat != null) {
        break;
      }
    }
    localAdapterItemView.setData(localJdOrderStat);
    View localView = localAdapterItemView.getView();
    localView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Runnable local1 = new Runnable()
        {
          public void run()
          {
            Intent localIntent = new Intent(PersonelActivity.this, MyOrderInfoListActivity.class);
            localIntent.putExtra("functionId", this.val$jdOrderStat.getFunctionId());
            localIntent.putExtra("title", this.val$jdOrderStat.getName());
            localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
            PersonelActivity.this.startActivityInFrame(localIntent);
          }
        };
        LoginUser.getInstance().executeLoginRunnable(PersonelActivity.this, local1);
      }
    });
    if (i == 0)
    {
      localView.setBackgroundResource(2130838025);
      localAdapterItemView.setLineVisibility(0);
    }
    for (;;)
    {
      localView.setLayoutParams(new LinearLayout.LayoutParams(-1, (int)(43.0F * DPIUtil.getDensity())));
      this.orderInfoListLayout.addView(localView);
      break;
      if (i == -1 + paramList.size())
      {
        localView.setBackgroundResource(2130838026);
      }
      else
      {
        localView.setBackgroundResource(2130838027);
        localAdapterItemView.setLineVisibility(0);
      }
    }
  }
  
  private void findViews()
  {
    this.unreadMessageTextView = ((TextView)findViewById(2131494100));
    this.orderInfoListLayout = ((LinearLayout)findViewById(2131494084));
    this.loginInfoLayout = ((RelativeLayout)findViewById(2131494070));
    this.notLoginLayout = ((RelativeLayout)findViewById(2131494078));
    this.clickToLogin = ((Button)findViewById(2131494081));
    this.orderView = ((TextView)findViewById(2131494083));
    this.headReleatLayout = ((RelativeLayout)findViewById(2131494069));
    this.personelUserCoupon = ((LinearLayout)findViewById(2131494071));
    this.headHeight = ((int)(0.28F * DPIUtil.getHeight()));
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, this.headHeight);
    this.headReleatLayout.setLayoutParams(localLayoutParams);
    this.tipOnlineServerImagetView = ((ImageView)findViewById(2131494121));
    if (!CommonUtil.activityIsGuided("personal_online_tip")) {
      optionsViewVisibility(0);
    }
    this.notLoginForMeeeting = ((LinearLayout)findViewById(2131494082));
    this.clickLoginForNormal = ((LinearLayout)findViewById(2131494079));
    this.meetingAssistantIcon = ((RelativeLayout)findViewById(2131494077));
    this.meetingUseNameEdit = ((EditText)findViewById(2131494131));
    this.meetingPassWordEdit = ((EditText)findViewById(2131494132));
    this.am_enter = ((ImageView)findViewById(2131492970));
    this.meetingLoginBtn = ((Button)findViewById(2131494133));
  }
  
  private void getOneMonthOrder()
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("oneMonthOrder");
    localHttpSetting.putJsonParam("page", "1");
    localHttpSetting.putJsonParam("pagesize", "50");
    localHttpSetting.setListener(new HttpGroup.CustomOnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        try
        {
          ArrayList localArrayList = Product.toList(paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("orderList"), 6);
          if ((localArrayList != null) && (localArrayList.size() > 0)) {
            PersonelActivity.this.setOrderList(localArrayList);
          }
          return;
        }
        catch (Exception localException) {}
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    localHttpSetting.setNotifyUser(true);
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void getRecomandProduct()
  {
    try
    {
      HttpGroup.CustomOnAllListener local12 = new HttpGroup.CustomOnAllListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          try
          {
            PersonelActivity.this.jsonRecomandArray = paramAnonymousHttpResponse.getJSONObject().getJSONArray("wareInfoList");
            ArrayList localArrayList = Product.toList(PersonelActivity.this.jsonRecomandArray, 4);
            if ((localArrayList != null) && (localArrayList.size() > 0))
            {
              PersonelActivity.this.guessProductlist = localArrayList;
              PersonelActivity.this.setRecomandList(PersonelActivity.this.guessProductlist, PersonelActivity.this.nCurrentIndex);
            }
            return;
          }
          catch (JSONException localJSONException)
          {
            localJSONException.printStackTrace();
          }
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
        
        public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
        
        public void onStart() {}
      };
      HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setFunctionId("recommend");
      localHttpSetting.setListener(local12);
      localHttpSetting.setJsonParams(this.jPin);
      localHttpSetting.setLocalFileCache(true);
      localHttpSetting.setLocalFileCacheTime(1800000L);
      getHttpGroupaAsynPool().add(localHttpSetting);
      return;
    }
    catch (Exception localException) {}
  }
  
  private String getScankey()
  {
    Object localObject = "";
    try
    {
      String str = getIntent().getExtras().getString("scanTokey");
      localObject = str;
    }
    catch (Exception localException)
    {
      label20:
      break label20;
    }
    if (TextUtils.isEmpty((CharSequence)localObject)) {
      localObject = CommonUtil.getStringFromPreference("annualToken", "");
    }
    if (TextUtils.isEmpty((CharSequence)localObject))
    {
      this.useLoginForMeeting = false;
      return localObject;
    }
    annual_switch = true;
    this.useLoginForMeeting = true;
    return localObject;
  }
  
  private void handleMeetingEntrance(JSONObjectProxy paramJSONObjectProxy)
  {
    String str1 = paramJSONObjectProxy.getStringOrNull("sc");
    final String str2 = paramJSONObjectProxy.getStringOrNull("tk");
    final String str3 = paramJSONObjectProxy.getStringOrNull("name");
    final String str4 = paramJSONObjectProxy.getStringOrNull("isCheckedIn");
    AmHelper.token = str2;
    int i;
    if (!TextUtils.isEmpty(str1)) {
      if (str1.equals("-1"))
      {
        annual_switch = true;
        i = 0;
        post(new Runnable()
        {
          public void run()
          {
            if (AmHelper.isShowDialog)
            {
              PersonelActivity.this.isNormal = false;
              PersonelActivity.this.logout(PersonelActivity.this.getString(2131166555), PersonelActivity.this.getString(2131165609));
            }
          }
        });
      }
    }
    while (i != 0)
    {
      post(new Runnable()
      {
        public void run()
        {
          if (PersonelActivity.this.isStartAnim)
          {
            PersonelActivity.this.meetingAssistantIcon.setVisibility(0);
            PersonelActivity.this.startAmAnimation();
          }
          PersonelActivity.this.meetingAssistantIcon.setOnClickListener(new View.OnClickListener()
          {
            public void onClick(View paramAnonymous2View)
            {
              if (!PersonelActivity.this.isCanClickButton) {}
              do
              {
                return;
                PersonelActivity.this.avoidMoreTimeClicked();
                ShakeUtils.onJMAEvent(PersonelActivity.this.getBaseContext(), "JDAnnualMeeting", AmHelper.getShakeParams("entryTap"));
                if ((!TextUtils.isEmpty(this.val$isCheckin)) && (this.val$isCheckin.equals("1")))
                {
                  Intent localIntent2 = new Intent(PersonelActivity.this, AmHelperActivity.class);
                  localIntent2.putExtra("name", this.val$name);
                  localIntent2.putExtra("token", this.val$meetingToken);
                  PersonelActivity.this.startActivity(localIntent2);
                  return;
                }
              } while ((TextUtils.isEmpty(this.val$isCheckin)) || (!this.val$isCheckin.equals("0")));
              Intent localIntent1 = new Intent(PersonelActivity.this, AmCheckinActivity.class);
              localIntent1.putExtra("name", this.val$name);
              localIntent1.putExtra("token", this.val$meetingToken);
              PersonelActivity.this.startActivity(localIntent1);
            }
          });
        }
      });
      return;
      if (str1.equals("0"))
      {
        annual_switch = true;
        i = 1;
      }
      else if (str1.equals("1"))
      {
        annual_switch = false;
        CommonUtil.putStringToPreference("annualToken", "");
        this.useLoginForMeeting = false;
        i = 0;
      }
      else
      {
        i = 0;
        continue;
        i = 0;
      }
    }
    post(new Runnable()
    {
      public void run()
      {
        PersonelActivity.this.meetingAssistantIcon.setVisibility(8);
      }
    });
  }
  
  private void init()
  {
    if (!LoginUserBase.hasLogin())
    {
      LoginUserBase.executeLoginRunnableForCheckNetwork(this, this.loginAfterRunnable);
      this.loginInfoLayout.setVisibility(8);
      this.logoutBtn.setVisibility(8);
      this.notLoginLayout.setVisibility(0);
      this.scankey = getScankey();
      if (this.useLoginForMeeting)
      {
        this.clickLoginForNormal.setVisibility(8);
        this.notLoginForMeeeting.setVisibility(0);
      }
      for (;;)
      {
        RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, (int)(0.28F * DPIUtil.getHeight()));
        this.notLoginLayout.setLayoutParams(localLayoutParams);
        this.unreadMessageTextView.setText("");
        this.unreadMessageTextView.setVisibility(8);
        this.clickToLogin.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            PersonelActivity.this.post(new Runnable()
            {
              public void run()
              {
                PersonelActivity.this.startToLoginActivity(1);
              }
            });
          }
        });
        if (this.guessProductlist != null) {
          this.guessProductlist.clear();
        }
        this.guessLayout.setVisibility(8);
        this.meetingUseNameEdit.setText("");
        this.meetingPassWordEdit.setText("");
        if ((this.mScrollView != null) && (this.mScrollView.getScrollY() > 0)) {
          this.mScrollView.scrollTo(0, 0);
        }
        return;
        this.clickLoginForNormal.setVisibility(0);
        this.notLoginForMeeeting.setVisibility(8);
      }
    }
    this.loginAfterRunnable.run();
  }
  
  private void initComponent()
  {
    this.shared = new HomeSharedToPersionActivity();
    ((TextView)findViewById(2131492990)).setText(2131165825);
    Button localButton = (Button)findViewById(2131494684);
    localButton.setText(getString(2131166490));
    localButton.setVisibility(0);
    ClickListener localClickListener = new ClickListener(null);
    localButton.setOnClickListener(localClickListener);
    RelativeLayout localRelativeLayout1 = (RelativeLayout)findViewById(2131494097);
    RelativeLayout localRelativeLayout2 = (RelativeLayout)findViewById(2131494087);
    RelativeLayout localRelativeLayout3 = (RelativeLayout)findViewById(2131494092);
    RelativeLayout localRelativeLayout4 = (RelativeLayout)findViewById(2131492866);
    RelativeLayout localRelativeLayout5 = (RelativeLayout)findViewById(2131494113);
    RelativeLayout localRelativeLayout6 = (RelativeLayout)findViewById(2131494107);
    RelativeLayout localRelativeLayout7 = (RelativeLayout)findViewById(2131494118);
    this.guessLayout = ((RelativeLayout)findViewById(2131494123));
    localRelativeLayout1.setOnClickListener(localClickListener);
    localRelativeLayout2.setOnClickListener(localClickListener);
    localRelativeLayout3.setOnClickListener(localClickListener);
    localRelativeLayout4.setOnClickListener(localClickListener);
    localRelativeLayout5.setOnClickListener(localClickListener);
    localRelativeLayout6.setOnClickListener(localClickListener);
    localRelativeLayout7.setOnClickListener(localClickListener);
    if (this.drawerUseable)
    {
      this.orderDrawerHandle = ((Button)findViewById(2131494067));
      this.orderDrawerHandle.setVisibility(0);
      this.orderDrawerHandle.setOnTouchListener(this);
      this.mGesture = new GestureDetector(this, new GestureListener());
      this.orderDrawer = ((RelativeLayout)findViewById(2131494063));
      this.mDrawerGallery = ((Gallery)findViewById(2131494066));
    }
    this.galleryLayout = ((RelativeLayout)findViewById(2131493039));
    this.galleryLayout.setBackgroundDrawable(new TriangleLineDrawable(this));
    this.logoutBtn = ((Button)findViewById(2131494130));
    this.rightArrow = findViewById(2131493987);
    this.leftArrow = findViewById(2131493319);
    this.guessRelativeLayout = ((RelativeLayout)findViewById(2131494127));
    this.mScrollView = ((ScrollView)findViewById(2131494068));
    this.logoutBtn.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        PersonelActivity.this.isNormal = true;
        PersonelActivity.this.logout(PersonelActivity.this.getString(2131165827), PersonelActivity.this.getString(2131165826));
      }
    });
    this.mUserClass = ((TextView)findViewById(2131494075));
    this.mSayHello = ((TextView)findViewById(2131494074));
    this.mScore = ((TextView)findViewById(2131494076));
    this.mImgView = ((ImageView)findViewById(2131494072));
    this.mGallery = ((Gallery)findViewById(2131494126));
    this.mGallery.setOnItemClickListener(this);
  }
  
  private void initPersonelUI()
  {
    if ((this.mNewUserInfoLabelsModeList == null) || (this.mNewUserInfoLabelsModeList.size() == 0)) {
      return;
    }
    removeAllLinearLayout(this.personelUserCoupon);
    LinearLayout localLinearLayout = new LinearLayout(this);
    localLinearLayout.setOrientation(0);
    for (;;)
    {
      try
      {
        this.personelUserCoupon.addView(localLinearLayout, new LinearLayout.LayoutParams(-1, -2));
        int i = this.mNewUserInfoLabelsModeList.size();
        int j = 0;
        if (j >= i) {
          break;
        }
        View localView1 = getLayoutInflater().inflate(2130903165, null);
        View localView2 = getLayoutInflater().inflate(2130903173, null);
        TextView localTextView1 = (TextView)localView1.findViewById(2131493578);
        TextView localTextView2 = (TextView)localView1.findViewById(2131493579);
        localTextView1.setText(((NewUserInfoLabelsMode)this.mNewUserInfoLabelsModeList.get(j)).getName());
        NewUserInfoLabelsMode localNewUserInfoLabelsMode = (NewUserInfoLabelsMode)this.mNewUserInfoLabelsModeList.get(j);
        String str1;
        if (TextUtils.equals(localNewUserInfoLabelsMode.getKey(), "balance"))
        {
          String str2 = new DecimalFormat("0.00").format(Float.valueOf(String.valueOf(localNewUserInfoLabelsMode.getAmount())));
          str1 = getString(2131165665) + str2;
          localTextView2.setText(str1);
          localView1.setOnClickListener(new PersonelItemOnClickListener(((NewUserInfoLabelsMode)this.mNewUserInfoLabelsModeList.get(j)).getKey()));
          localLinearLayout.addView(localView1, this.layoutParams);
          if (j != i - 1) {
            localLinearLayout.addView(localView2);
          }
        }
        else
        {
          str1 = String.valueOf((int)localNewUserInfoLabelsMode.getAmount().doubleValue());
          if ((!TextUtils.equals(localNewUserInfoLabelsMode.getKey(), "jingBean")) || (CommonUtil.activityIsGuided("personal_jingdong_bean_tip"))) {
            continue;
          }
          this.tipImageView = ((ImageView)localView1.findViewById(2131493580));
          setViewVisibility(0);
          continue;
        }
        j++;
      }
      catch (Exception localException)
      {
        return;
      }
    }
  }
  
  private boolean initPlug(Intent paramIntent, File paramFile)
  {
    for (;;)
    {
      try
      {
        if (TextUtils.isEmpty(this.fragmentName)) {
          loadFragNameEmpty();
        }
        this.classLoader = PlugClassLoader.getClassLoader(paramFile);
        if (this.classLoader == null) {
          break label126;
        }
        bool = true;
        this.loaded = bool;
        if (!this.loaded)
        {
          loadPlugClassLoaderError();
          return false;
        }
        IPFragmentplug localIPFragmentplug = getPlugIntance(this, this.fragmentName);
        if (localIPFragmentplug != null)
        {
          Fragment localFragment = localIPFragmentplug.getFragment(this, paramIntent.getExtras());
          localFragment.setArguments(paramIntent.getExtras());
          FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
          localFragmentTransaction.replace(16908300, localFragment);
          localFragmentTransaction.commit();
          return true;
        }
      }
      catch (Exception localException)
      {
        loadPlugFragmentError(localException);
      }
      return false;
      label126:
      boolean bool = false;
    }
  }
  
  private void loadCoupons()
  {
    this.couponsTextView.setText(getString(2131165837));
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("getCouponAndBalance");
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        final Integer localInteger = paramAnonymousHttpResponse.getJSONObject().getIntOrNull("couponCount");
        PersonelActivity.this.post(new Runnable()
        {
          public void run()
          {
            PersonelActivity.this.couponsTextView.setText(PersonelActivity.this.getString(2131165837));
            if ((localInteger != null) && (localInteger.intValue() > 0))
            {
              SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder("（" + localInteger + "）");
              int i = -1 + localSpannableStringBuilder.length();
              localSpannableStringBuilder.setSpan(new ForegroundColorSpan(PersonelActivity.this.getResources().getColor(2131296296)), 1, i, 33);
              PersonelActivity.this.couponsTextView.append(localSpannableStringBuilder);
            }
          }
        });
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    });
    localHttpSetting.setNotifyUser(false);
    localHttpSetting.setEffect(0);
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void loadUnreadMessage()
  {
    this.unreadMessageTextView.setText("");
    this.unreadMessageTextView.setVisibility(8);
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setEffect(0);
    localHttpSetting.setHost(Configuration.getProperty("msgHost"));
    localHttpSetting.setFunctionId("getUnreadMsgCount");
    localHttpSetting.setJsonParams(this.jPin);
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        try
        {
          final int i = ((JSONObject)paramAnonymousHttpResponse.getJSONObject().get("messageCount")).getInt("data");
          PersonelActivity.this.post(new Runnable()
          {
            public void run()
            {
              if (i > 0)
              {
                SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder("（" + i + "）");
                int i = -1 + localSpannableStringBuilder.length();
                localSpannableStringBuilder.setSpan(new ForegroundColorSpan(PersonelActivity.this.getResources().getColor(2131296296)), 1, i, 33);
                PersonelActivity.this.unreadMessageTextView.setText(localSpannableStringBuilder);
                PersonelActivity.this.unreadMessageTextView.setVisibility(0);
                PersonelActivity.this.unreadMessageTextView.postInvalidate();
                return;
              }
              PersonelActivity.this.unreadMessageTextView.setText("");
              PersonelActivity.this.unreadMessageTextView.setVisibility(8);
            }
          });
          return;
        }
        catch (Exception localException) {}
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    });
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void loginError(final String paramString)
  {
    post(new Runnable()
    {
      public void run()
      {
        try
        {
          final AlertDialog.Builder localBuilder = new AlertDialog.Builder(PersonelActivity.this);
          localBuilder.setTitle(2131165704);
          if (TextUtils.isEmpty(paramString)) {
            localBuilder.setMessage(2131165706);
          }
          for (;;)
          {
            localBuilder.setPositiveButton(2131165517, new DialogInterface.OnClickListener()
            {
              public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                paramAnonymous2DialogInterface.dismiss();
              }
            });
            PersonelActivity.this.post(new Runnable()
            {
              public void run()
              {
                localBuilder.show();
              }
            });
            return;
            localBuilder.setMessage(paramString);
          }
          return;
        }
        catch (Exception localException) {}
      }
    });
  }
  
  private void loginSuccess(final String paramString1, final String paramString2, final String paramString3)
  {
    post(new Runnable()
    {
      public void run()
      {
        try
        {
          if (!TextUtils.isEmpty(PersonelActivity.this.getScankey()))
          {
            AmHelper.isShowDialog = true;
            PersonelActivity.annual_switch = true;
          }
          SafetyManager.setRemember(true);
          SafetyManager.saveSafety(paramString1, paramString2, true);
          if (!TextUtils.isEmpty(paramString1)) {
            LoginActivity.saveUserName(paramString1);
          }
          for (;;)
          {
            PersonelActivity.this.loginAfterRunnable.run();
            return;
            LoginActivity.saveUserName(paramString3);
          }
          return;
        }
        catch (Exception localException) {}
      }
    });
  }
  
  private void logout(String paramString1, String paramString2)
  {
    if (this.alertDialog != null) {
      return;
    }
    this.alertDialog = new AlertDialog.Builder(this).create();
    this.alertDialog.setMessage(paramString1);
    this.alertDialog.setTitle(paramString2);
    this.alertDialog.setButton(getText(2131165731), new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        PersonelActivity.this.onLogout();
        paramAnonymousDialogInterface.dismiss();
      }
    });
    this.alertDialog.setButton2(getText(2131165601), new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        if (!TextUtils.isEmpty(PersonelActivity.this.getScankey()))
        {
          AmHelper.isShowDialog = false;
          PersonelActivity.annual_switch = false;
        }
        paramAnonymousDialogInterface.dismiss();
      }
    });
    this.alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        if (!TextUtils.isEmpty(PersonelActivity.this.getScankey()))
        {
          AmHelper.isShowDialog = false;
          PersonelActivity.annual_switch = false;
        }
      }
    });
    this.alertDialog.setOnDismissListener(new DialogInterface.OnDismissListener()
    {
      public void onDismiss(DialogInterface paramAnonymousDialogInterface)
      {
        PersonelActivity.this.alertDialog = null;
      }
    });
    this.alertDialog.show();
  }
  
  private boolean nameCheck()
  {
    boolean bool1 = TextUtils.isEmpty(this.meetingUseNameEdit.getText().toString().trim());
    boolean bool2 = false;
    if (bool1)
    {
      bool2 = true;
      this.meetingUseNameEdit.setError(JDStringUtils.getErrorSpanned(getApplicationContext(), 2131165708));
    }
    return bool2;
  }
  
  private void onLocalOrderInfo()
  {
    try
    {
      JSONObjectProxy localJSONObjectProxy1 = new JSONObjectProxy(new JSONObject("{\"JdOrderStat\":[{\"icon\":\"2130837602\",\"functionId\":\"unfinishedOrder\",\"count\":1,\"url\":\"\",\"name\":\"订单状态速查\"},{\"icon\":\"2130837603\",\"functionId\":\"waite4Payment\",\"count\":0,\"url\":\"\",\"name\":\"待付款订单\"},{\"icon\":\"2130837601\",\"functionId\":\"allOrdersFunctionList\",\"count\":4,\"url\":\"\",\"name\":\"全部订单\"}]}"));
      localJSONObjectProxy2 = localJSONObjectProxy1;
    }
    catch (JSONException localJSONException)
    {
      JSONObjectProxy localJSONObjectProxy2;
      for (;;)
      {
        localJSONException.printStackTrace();
        localJSONObjectProxy2 = null;
      }
      createOrderInfo(JdOrderStat.toList(localJSONObjectProxy2.getJSONArrayOrNull("JdOrderStat")));
    }
    if (localJSONObjectProxy2 == null)
    {
      onOrderInfo(this.oldPin);
      return;
    }
  }
  
  private void onLogin()
  {
    if ((nameCheck()) || (passWordCheck())) {
      return;
    }
    ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(this.meetingPassWordEdit.getWindowToken(), 0);
    final String str1 = this.meetingUseNameEdit.getText().toString();
    String str2 = this.meetingPassWordEdit.getText().toString();
    String str3 = SafetyManager.getPassword();
    if (str3 != null) {}
    for (;;)
    {
      if (!str2.equals(str3)) {
        str2 = LoginActivity.EncryptPassword2(str2);
      }
      if ((str1.length() < 1) || (str2.length() < 1)) {
        break;
      }
      final String str4 = str2;
      PushMessageUtils.saveBindState(false);
      LoginUserBase.login(this, str1, str2, true, true, new LoginUserBase.LoginRequestListener()
      {
        public void onLoginError(int paramAnonymousInt, String paramAnonymousString)
        {
          if (paramAnonymousInt == 2) {
            PersonelActivity.this.loginError(paramAnonymousString);
          }
        }
        
        public void onLoginSuccess(String paramAnonymousString)
        {
          PersonelActivity.this.loginSuccess(str1, str4, paramAnonymousString);
        }
      });
      return;
      str3 = "";
    }
  }
  
  private void onLogout()
  {
    UserUtil.onLogout(this);
    removeAllHistory();
    Intent localIntent = new Intent(this, NewHomeActivity.class);
    if ((!TextUtils.isEmpty(getScankey())) && (!this.isNormal)) {
      AmHelper.isShowDialog = false;
    }
    for (AmHelper.isGoPersonel = true;; AmHelper.isGoPersonel = false)
    {
      startSingleActivityInFrame(localIntent);
      return;
    }
  }
  
  private void onOrderInfo(String paramString)
  {
    if (this.isLoadedOrderInfo) {
      return;
    }
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("jdHomeOrderInfo");
    localHttpSetting.putJsonParam("pin", paramString);
    localHttpSetting.setEffect(1);
    localHttpSetting.setLocalFileCache(true);
    localHttpSetting.setLocalFileCacheTime(1800000L);
    localHttpSetting.setNotifyUser(true);
    localHttpSetting.setListener(new HttpGroup.CustomOnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        try
        {
          final ArrayList localArrayList = JdOrderStat.toList(paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("JdOrderStat"));
          if (localArrayList == null) {
            return;
          }
          PersonelActivity.this.post(new Runnable()
          {
            public void run()
            {
              PersonelActivity.this.createOrderInfo(localArrayList);
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
        PersonelActivity.this.isLoadedOrderInfo = false;
      }
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void optionsViewVisibility(final int paramInt)
  {
    post(new Runnable()
    {
      public void run()
      {
        if (PersonelActivity.this.tipOnlineServerImagetView != null) {
          PersonelActivity.this.tipOnlineServerImagetView.setVisibility(paramInt);
        }
      }
    });
  }
  
  private boolean passWordCheck()
  {
    boolean bool1 = TextUtils.isEmpty(this.meetingPassWordEdit.getText().toString().trim());
    boolean bool2 = false;
    if (bool1)
    {
      bool2 = true;
      this.meetingPassWordEdit.setError(JDStringUtils.getErrorSpanned(getApplicationContext(), 2131165709));
    }
    return bool2;
  }
  
  private void queryAnnualInfo()
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("openAnnual");
    localHttpSetting.setEffect(1);
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        PersonelActivity.this.handleMeetingEntrance(localJSONObjectProxy);
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        PersonelActivity.this.post(new Runnable()
        {
          public void run()
          {
            PersonelActivity.this.meetingAssistantIcon.setVisibility(8);
          }
        });
      }
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams)
      {
        if (TextUtils.isEmpty(PersonelActivity.this.scankey)) {}
        for (String str = "";; str = PersonelActivity.this.scankey)
        {
          paramAnonymousHttpSettingParams.putJsonParam("key", str);
          return;
        }
      }
    });
    HttpGroupUtils.getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void queryBalanceAndJingBean(final String paramString)
  {
    this.isQuerying = true;
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("jdHomeShowItem");
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONArrayPoxy localJSONArrayPoxy = paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("subItemList");
        if ((localJSONArrayPoxy != null) && (localJSONArrayPoxy.length() > 0))
        {
          JSONObjectProxy localJSONObjectProxy = localJSONArrayPoxy.getJSONObjectOrNull(0);
          if (localJSONObjectProxy == null)
          {
            PersonelActivity.this.isQuerying = false;
            return;
          }
          final String str1 = localJSONObjectProxy.getStringOrNull("url");
          final String str2 = localJSONObjectProxy.getStringOrNull("functionId");
          if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2)))
          {
            PersonelActivity.this.post(new Runnable()
            {
              public void run()
              {
                URLParamMap localURLParamMap = new URLParamMap();
                localURLParamMap.put("to", str1);
                PersonelActivity.this.isQuerying = false;
                CommonUtil.queryBrowserUrl(str2, localURLParamMap, new CommonBase.BrowserUrlListener()
                {
                  public void onComplete(final String paramAnonymous3String)
                  {
                    PersonelActivity.this.post(new Runnable()
                    {
                      public void run()
                      {
                        Intent localIntent = new Intent(PersonelActivity.this, WebActivity.class);
                        localIntent.putExtra("url", paramAnonymous3String);
                        localIntent.putExtra("isUseCache", true);
                        PersonelActivity.this.startActivity(localIntent);
                      }
                    });
                  }
                });
              }
            });
            return;
          }
          PersonelActivity.this.isQuerying = false;
          return;
        }
        PersonelActivity.this.isQuerying = false;
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        PersonelActivity.this.isQuerying = false;
      }
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams)
      {
        paramAnonymousHttpSettingParams.putJsonParam("type", paramString);
      }
    });
    localHttpSetting.setNotifyUser(true);
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void queryNewUserInfo()
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    if (!TextUtils.isEmpty(this.mSayHello.getText())) {
      localHttpSetting.setEffect(0);
    }
    for (;;)
    {
      localHttpSetting.setFunctionId("newUserInfo");
      localHttpSetting.setJsonParams(this.jPin);
      localHttpSetting.setListener(new HttpGroup.OnCommonListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          JSONObjectProxy localJSONObjectProxy1 = paramAnonymousHttpResponse.getJSONObject();
          if (localJSONObjectProxy1 != null)
          {
            JSONObjectProxy localJSONObjectProxy2 = localJSONObjectProxy1.getJSONObjectOrNull("userInfoSns");
            JSONArrayPoxy localJSONArrayPoxy = localJSONObjectProxy1.getJSONArrayOrNull("labels");
            PersonelActivity.this.mUserScore = localJSONObjectProxy1.getIntOrNull("score");
            if (localJSONObjectProxy2 != null) {
              PersonelActivity.this.mNewUserInfoMode = new NewUserInfoMode(localJSONObjectProxy2);
            }
            if (localJSONArrayPoxy != null) {
              PersonelActivity.this.mNewUserInfoLabelsModeList = NewUserInfoLabelsMode.toList(localJSONArrayPoxy, 0);
            }
            PersonelActivity.this.post(new Runnable()
            {
              public void run()
              {
                PersonelActivity.this.setUserInfo();
                PersonelActivity.this.setUserClass();
                PersonelActivity.this.initPersonelUI();
              }
            });
          }
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
        
        public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
      });
      localHttpSetting.setEffect(0);
      getHttpGroupaAsynPool().add(localHttpSetting);
      return;
      localHttpSetting.setNotifyUser(true);
    }
  }
  
  private void queryOnlineAppointment()
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("jdHomeShowItem");
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONArrayPoxy localJSONArrayPoxy = paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("subItemList");
        JSONObjectProxy localJSONObjectProxy;
        if ((localJSONArrayPoxy != null) && (localJSONArrayPoxy.length() > 0))
        {
          localJSONObjectProxy = localJSONArrayPoxy.getJSONObjectOrNull(0);
          if (localJSONObjectProxy != null) {
            break label32;
          }
        }
        label32:
        final String str1;
        final String str2;
        do
        {
          return;
          str1 = localJSONObjectProxy.getStringOrNull("url");
          str2 = localJSONObjectProxy.getStringOrNull("functionId");
        } while ((TextUtils.isEmpty(str1)) || (TextUtils.isEmpty(str2)));
        PersonelActivity.this.post(new Runnable()
        {
          public void run()
          {
            URLParamMap localURLParamMap = new URLParamMap();
            localURLParamMap.put("to", str1);
            CommonUtil.queryBrowserUrl(str2, localURLParamMap, new CommonBase.BrowserUrlListener()
            {
              public void onComplete(final String paramAnonymous3String)
              {
                PersonelActivity.this.post(new Runnable()
                {
                  public void run()
                  {
                    Intent localIntent = new Intent(PersonelActivity.this, WebActivity.class);
                    localIntent.putExtra("url", paramAnonymous3String);
                    localIntent.putExtra("isUseCache", true);
                    PersonelActivity.this.startActivity(localIntent);
                  }
                });
              }
            });
          }
        });
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams)
      {
        paramAnonymousHttpSettingParams.putJsonParam("type", "tbis");
      }
    });
    localHttpSetting.setNotifyUser(true);
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void removeAllLinearLayout(ViewGroup paramViewGroup)
  {
    for (int i = -1 + paramViewGroup.getChildCount();; i--)
    {
      if (i < 0) {
        return;
      }
      View localView = paramViewGroup.getChildAt(i);
      if ((localView instanceof LinearLayout)) {
        paramViewGroup.removeView(localView);
      }
    }
  }
  
  private void setDefaultUserPhoto()
  {
    try
    {
      File localFile = this.userPhotoUpload.getPhotoFromCache();
      Bitmap localBitmap;
      if ((localFile != null) && (localFile.exists())) {
        localBitmap = BitmapFactory.decodeFile(localFile.getAbsolutePath());
      }
      while (localBitmap != null)
      {
        post(new Runnable()
        {
          public void run()
          {
            PersonelActivity.this.mImgView.setImageDrawable(this.val$img);
          }
        });
        if ((localFile != null) && (localFile.exists()))
        {
          setLayoutBackground(localBitmap);
          return;
          localBitmap = ((BitmapDrawable)getResources().getDrawable(2130837650)).getBitmap();
        }
        else
        {
          post(new Runnable()
          {
            public void run()
            {
              PersonelActivity.this.headReleatLayout.setBackgroundResource(2130838057);
            }
          });
          return;
        }
      }
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      localNotFoundException.printStackTrace();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  private void setEvent()
  {
    this.meetingLoginBtn.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        PersonelActivity.this.onLogin();
      }
    });
  }
  
  private void setLayoutBackground(final Bitmap paramBitmap)
  {
    if (paramBitmap == null) {
      return;
    }
    post(new Runnable()
    {
      public void run()
      {
        try
        {
          PersonelActivity.this.headReleatLayout.setBackgroundDrawable(ImageUtil.zoomDrawable(PhotoUtils.BoxBlurFilter(paramBitmap)));
          PersonelActivity.this.headReleatLayout.invalidate();
          return;
        }
        catch (Throwable localThrowable) {}
      }
    });
  }
  
  private void setOrderList(ArrayList<Product> paramArrayList)
  {
    if ((paramArrayList == null) || (paramArrayList.size() == 0)) {
      return;
    }
    post(new Runnable()
    {
      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        View localView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
        Product localProduct = (Product)getItem(paramAnonymousInt);
        ((TextView)localView.findViewById(2131493130)).setText("订单号:" + localProduct.getOrderId());
        ((TextView)localView.findViewById(2131493131)).setText(localProduct.getOrderSubtime());
        return localView;
      }
    }
    {
      public void run()
      {
        PersonelActivity.this.mDrawerGallery.setAdapter(this.val$adapter);
        if (this.val$adapter.getActualCount() != 0)
        {
          int i = 1 + Math.abs(1073741823) / this.val$adapter.getActualCount() * this.val$adapter.getActualCount();
          PersonelActivity.this.mDrawerGallery.setSelection(i);
        }
      }
    });
    this.mDrawerGallery.setCallbackDuringFling(false);
    this.mDrawerGallery.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
    {
      public void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong) {}
      
      public void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
    });
  }
  
  private void setRecomandList(ArrayList<Product> paramArrayList, int paramInt)
  {
    if ((paramArrayList == null) || (paramArrayList.size() == 0)) {
      return;
    }
    post(new Runnable()
    {
      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        View localView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
        ((Product)getItem(paramAnonymousInt));
        return localView;
      }
    }
    {
      public void run()
      {
        PersonelActivity.this.guessLayout.setVisibility(0);
        PersonelActivity.this.mGallery.setAdapter(this.val$adapter);
        if (this.val$adapter.getActualCount() != 0)
        {
          int i = 1 + Math.abs(1073741823) / this.val$adapter.getActualCount() * this.val$adapter.getActualCount();
          PersonelActivity.this.mGallery.setSelection(i);
        }
      }
    });
    this.mGallery.setCallbackDuringFling(false);
    this.mGallery.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
    {
      public void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        Product localProduct = (Product)((Adapter)paramAnonymousAdapterView.getAdapter()).getItem(paramAnonymousInt);
        TextView localTextView1 = (TextView)PersonelActivity.this.guessRelativeLayout.findViewById(2131494128);
        SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
        localSpannableStringBuilder.append(localProduct.getName());
        localSpannableStringBuilder.append(localProduct.getAdWord());
        int i;
        TextView localTextView2;
        if (TextUtils.isEmpty(localProduct.getName()))
        {
          i = 0;
          int j = localSpannableStringBuilder.length();
          localSpannableStringBuilder.setSpan(new ForegroundColorSpan(PersonelActivity.this.getResources().getColor(2131296296)), i, j, 33);
          localTextView1.setText(localSpannableStringBuilder);
          localTextView2 = (TextView)PersonelActivity.this.guessRelativeLayout.findViewById(2131494129);
          if (!TextUtils.isEmpty(localProduct.getJdPrice())) {
            break label177;
          }
        }
        label177:
        PersonelActivity localPersonelActivity;
        Object[] arrayOfObject;
        for (String str = "";; str = localPersonelActivity.getString(2131165822, arrayOfObject))
        {
          localTextView2.setText(str);
          return;
          i = localProduct.getName().length();
          break;
          localPersonelActivity = PersonelActivity.this;
          arrayOfObject = new Object[1];
          arrayOfObject[0] = localProduct.getJdPrice();
        }
      }
      
      public void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
    });
  }
  
  private void setSayHelloName()
  {
    TextView localTextView = this.mSayHello;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = LoginUserBase.getLoginUserName();
    localTextView.setText(getString(2131165841, arrayOfObject));
  }
  
  private void setUserClass()
  {
    if (this.mNewUserInfoMode == null) {
      return;
    }
    for (;;)
    {
      String str;
      try
      {
        str = this.mNewUserInfoMode.getUclass();
        if (str != null)
        {
          if (str.length() < 1) {
            this.mUserClass.setText(2131165752);
          }
        }
        else
        {
          if (this.mUserScore == null) {
            break;
          }
          this.mScore.setText(getString(2131165828) + this.mUserScore.toString());
          return;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      this.mUserClass.setText(str);
    }
  }
  
  private void setUserImage()
  {
    if (this.mNewUserInfoMode == null) {}
    for (;;)
    {
      return;
      try
      {
        String str = this.mNewUserInfoMode.getImgUrl();
        if (!TextUtils.isEmpty(str))
        {
          HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
          localHttpSetting.setType(5000);
          localHttpSetting.setUrl(str);
          localHttpSetting.setListener(new HttpGroup.CustomOnAllListener()
          {
            public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
            {
              final Bitmap localBitmap = ImageUtil.createBitmap(ImageUtil.InputWay.createInputWay(paramAnonymousHttpResponse), 0, 0);
              if (localBitmap != null)
              {
                if (PersonelActivity.this.userPhotoUpload.getFirstUploadSucess()) {
                  break label81;
                }
                final LayerDrawable localLayerDrawable = PersonelActivity.this.userPhotoUpload.toMergePhoto(localBitmap, PersonelActivity.this.mImgView.getDrawingCache());
                PersonelActivity.this.post(new Runnable()
                {
                  public void run()
                  {
                    PersonelActivity.this.mImgView.setImageDrawable(localLayerDrawable);
                    PersonelActivity.this.mImgView.invalidate();
                    PersonelActivity.this.setLayoutBackground(localBitmap);
                  }
                });
              }
              for (;;)
              {
                PersonelActivity.this.userPhotoUpload.savePhotoToCache(localBitmap);
                return;
                label81:
                PersonelActivity.this.userPhotoUpload.setFirstUploadSucess(false);
              }
            }
            
            public void onError(HttpGroup.HttpError paramAnonymousHttpError)
            {
              PersonelActivity.this.userPhotoUpload.setFirstUploadSucess(false);
            }
            
            public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
            
            public void onStart() {}
          });
          getHttpGroupaAsynPool().add(localHttpSetting);
          return;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }
  
  private void setUserInfo()
  {
    setUserImage();
    post(new Runnable()
    {
      public void run()
      {
        try
        {
          PersonelActivity.this.setSayHelloName();
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    });
  }
  
  private void setViewVisibility(final int paramInt)
  {
    post(new Runnable()
    {
      public void run()
      {
        if (PersonelActivity.this.tipImageView != null) {
          PersonelActivity.this.tipImageView.setVisibility(paramInt);
        }
      }
    });
  }
  
  private void startAmAnimation()
  {
    if (this.meetingAssistantIcon == null) {
      return;
    }
    if (this.meetingAssistantIcon.getVisibility() == 0)
    {
      if (this.amAnimationUtil == null) {
        this.amAnimationUtil = new AmAnimationUtil();
      }
      this.amAnimationUtil.startAnimation(this, 1, new AmAnimationUtil.OnAnimationListener()
      {
        public void onStart(Animation paramAnonymousAnimation)
        {
          PersonelActivity.this.am_enter.startAnimation(paramAnonymousAnimation);
        }
        
        public void onStop()
        {
          PersonelActivity.this.am_enter.clearAnimation();
        }
      });
      this.isStartAnim = false;
      return;
    }
    this.isStartAnim = true;
  }
  
  /* Error */
  private void startPlug(Bundle paramBundle)
  {
    // Byte code:
    //   0: aload_0
    //   1: new 1438	android/widget/FrameLayout
    //   4: dup
    //   5: aload_0
    //   6: invokespecial 1439	android/widget/FrameLayout:<init>	(Landroid/content/Context;)V
    //   9: putfield 1441	com/jingdong/app/mall/personel/PersonelActivity:rootView	Landroid/widget/FrameLayout;
    //   12: aload_0
    //   13: getfield 1441	com/jingdong/app/mall/personel/PersonelActivity:rootView	Landroid/widget/FrameLayout;
    //   16: new 1443	android/view/ViewGroup$LayoutParams
    //   19: dup
    //   20: iconst_m1
    //   21: iconst_m1
    //   22: invokespecial 1444	android/view/ViewGroup$LayoutParams:<init>	(II)V
    //   25: invokevirtual 1445	android/widget/FrameLayout:setLayoutParams	(Landroid/view/ViewGroup$LayoutParams;)V
    //   28: aload_0
    //   29: getfield 1441	com/jingdong/app/mall/personel/PersonelActivity:rootView	Landroid/widget/FrameLayout;
    //   32: ldc_w 1019
    //   35: invokevirtual 1448	android/widget/FrameLayout:setId	(I)V
    //   38: aload_0
    //   39: aload_0
    //   40: getfield 1441	com/jingdong/app/mall/personel/PersonelActivity:rootView	Landroid/widget/FrameLayout;
    //   43: invokevirtual 1451	com/jingdong/app/mall/personel/PersonelActivity:setContentView	(Landroid/view/View;)V
    //   46: invokestatic 1457	com/jingdong/app/mall/plug/PlugManager:getInstance	()Lcom/jingdong/app/mall/plug/PlugManager;
    //   49: aload_0
    //   50: ldc 44
    //   52: invokevirtual 1461	com/jingdong/app/mall/plug/PlugManager:getPlugItem	(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    //   55: astore_2
    //   56: aload_0
    //   57: invokevirtual 686	com/jingdong/app/mall/personel/PersonelActivity:getIntent	()Landroid/content/Intent;
    //   60: astore_3
    //   61: aconst_null
    //   62: astore 4
    //   64: new 1289	java/io/File
    //   67: dup
    //   68: aload_2
    //   69: getfield 1466	com/jingdong/app/mall/plug/framework/plug/PlugItem:intallPath	Ljava/lang/String;
    //   72: invokespecial 1467	java/io/File:<init>	(Ljava/lang/String;)V
    //   75: astore 5
    //   77: aload_0
    //   78: aload_2
    //   79: getfield 1470	com/jingdong/app/mall/plug/framework/plug/PlugItem:lunchPath	Ljava/lang/String;
    //   82: putfield 976	com/jingdong/app/mall/personel/PersonelActivity:fragmentName	Ljava/lang/String;
    //   85: aload 5
    //   87: astore 4
    //   89: aload_0
    //   90: aload_3
    //   91: aload 4
    //   93: invokespecial 1472	com/jingdong/app/mall/personel/PersonelActivity:initPlug	(Landroid/content/Intent;Ljava/io/File;)Z
    //   96: ifne +47 -> 143
    //   99: aload_0
    //   100: ldc 44
    //   102: invokestatic 1477	com/jingdong/app/mall/plug/framework/plug/local/LocalPlugsTools:installPlugFromAsset	(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    //   105: astore 8
    //   107: aload 8
    //   109: ifnull +34 -> 143
    //   112: new 1289	java/io/File
    //   115: dup
    //   116: aload 8
    //   118: getfield 1466	com/jingdong/app/mall/plug/framework/plug/PlugItem:intallPath	Ljava/lang/String;
    //   121: invokespecial 1467	java/io/File:<init>	(Ljava/lang/String;)V
    //   124: astore 9
    //   126: aload_0
    //   127: aload 8
    //   129: getfield 1470	com/jingdong/app/mall/plug/framework/plug/PlugItem:lunchPath	Ljava/lang/String;
    //   132: putfield 976	com/jingdong/app/mall/personel/PersonelActivity:fragmentName	Ljava/lang/String;
    //   135: aload_0
    //   136: aload_3
    //   137: aload 9
    //   139: invokespecial 1472	com/jingdong/app/mall/personel/PersonelActivity:initPlug	(Landroid/content/Intent;Ljava/io/File;)Z
    //   142: pop
    //   143: return
    //   144: astore 6
    //   146: aload_0
    //   147: aload 6
    //   149: invokevirtual 1480	com/jingdong/app/mall/personel/PersonelActivity:loadFileError	(Ljava/lang/Exception;)V
    //   152: goto -63 -> 89
    //   155: astore 7
    //   157: aload_0
    //   158: aload 7
    //   160: invokevirtual 1032	com/jingdong/app/mall/personel/PersonelActivity:loadPlugFragmentError	(Ljava/lang/Exception;)V
    //   163: return
    //   164: astore 7
    //   166: goto -9 -> 157
    //   169: astore 6
    //   171: aload 5
    //   173: astore 4
    //   175: goto -29 -> 146
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	178	0	this	PersonelActivity
    //   0	178	1	paramBundle	Bundle
    //   55	24	2	localPlugItem1	com.jingdong.app.mall.plug.framework.plug.PlugItem
    //   60	77	3	localIntent	Intent
    //   62	112	4	localObject	Object
    //   75	97	5	localFile1	File
    //   144	4	6	localException1	Exception
    //   169	1	6	localException2	Exception
    //   155	4	7	localException3	Exception
    //   164	1	7	localException4	Exception
    //   105	23	8	localPlugItem2	com.jingdong.app.mall.plug.framework.plug.PlugItem
    //   124	14	9	localFile2	File
    // Exception table:
    //   from	to	target	type
    //   64	77	144	java/lang/Exception
    //   99	107	155	java/lang/Exception
    //   112	126	155	java/lang/Exception
    //   126	143	164	java/lang/Exception
    //   77	85	169	java/lang/Exception
  }
  
  private void startToLoginActivity(int paramInt)
  {
    Intent localIntent = new Intent(this, LoginActivity.class);
    localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
    localIntent.putExtra("com.360buy:loginResendFlag", paramInt);
    startActivityInFrame(localIntent);
  }
  
  public ClassLoader getClassLoader()
  {
    if (MergeSwitcher.isPlugOn())
    {
      if (this.classLoader == null) {
        return super.getClassLoader();
      }
      return this.classLoader;
    }
    return super.getClassLoader();
  }
  
  public ClassLoader getClassLoader(Context paramContext)
  {
    if (this.classLoader == null) {
      return paramContext.getClassLoader();
    }
    return this.classLoader;
  }
  
  public PlugResources getOverrideResources()
  {
    return this.myResources;
  }
  
  public IPFragmentplug getPlugIntance(Context paramContext, String paramString)
  {
    if (this.iplug != null) {
      return this.iplug;
    }
    try
    {
      this.iplug = ((IPFragmentplug)getClassLoader(paramContext).loadClass(paramString).newInstance());
      return this.iplug;
    }
    catch (Throwable localThrowable1)
    {
      for (;;)
      {
        GlobalImageCache.getLruBitmapCache().cleanMost();
        try
        {
          this.iplug = ((IPFragmentplug)getClassLoader(paramContext).loadClass(paramString).newInstance());
        }
        catch (Throwable localThrowable2)
        {
          this.iplug = null;
        }
      }
    }
  }
  
  protected void loadFileError(Exception paramException) {}
  
  protected void loadFragNameEmpty() {}
  
  protected void loadPlugClassLoaderError() {}
  
  protected void loadPlugFragmentError(Exception paramException) {}
  
  public View makeView()
  {
    ImageView localImageView = new ImageView(this);
    localImageView.setTag("icon");
    localImageView.setScaleType(ImageView.ScaleType.FIT_XY);
    localImageView.setLayoutParams(new FrameLayout.LayoutParams(-1, 15 * DPIUtil.getHeight() / 100));
    return localImageView;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == -1) {
      switch (paramInt1)
      {
      }
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if (paramIntent != null)
      {
        this.userPhotoUpload.startPhotoZoom(paramIntent.getData());
        continue;
        try
        {
          File localFile = this.userPhotoUpload.getUserPhotoFile();
          if ((localFile == null) || (!localFile.isFile())) {
            continue;
          }
          this.userPhotoUpload.startPhotoZoom(Uri.fromFile(localFile));
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
        continue;
        if (paramIntent != null) {
          this.userPhotoUpload.setPicToView(paramIntent);
        }
      }
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (MergeSwitcher.isPlugOn())
    {
      startPlug(paramBundle);
      return;
    }
    this.convertView = ImageUtil.inflate(2130903245, null);
    this.userPhotoUpload = new UserPhotoUpload(this, this.convertView);
    this.userPhotoUpload.init();
    setContentView(this.convertView);
    this.scankey = getScankey();
    findViews();
    initComponent();
    onLocalOrderInfo();
    setEvent();
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Product localProduct = (Product)((Adapter)paramAdapterView.getAdapter()).getItem(paramInt);
    StartActivityUtils.startProductDetailActivity(this, localProduct.getId(), localProduct.getName(), new SourceEntity("guess", null));
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
    if (!MergeSwitcher.isPlugOn())
    {
      this.jPin = LoginUserBase.getLoginUserInfo();
      init();
    }
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (MergeSwitcher.isPlugOn()) {
      return super.onTouchEvent(paramMotionEvent);
    }
    int i;
    if ((paramMotionEvent.getAction() == 1) && (this.onScrolling))
    {
      this.orderDrawer.getLayoutParams();
      i = this.orderDrawer.getHeight();
      if (i < 50) {
        break label98;
      }
      AsynMove localAsynMove1 = new AsynMove();
      Integer[] arrayOfInteger1 = new Integer[1];
      arrayOfInteger1[0] = Integer.valueOf(10);
      localAsynMove1.execute(arrayOfInteger1);
      this.isDrawerOpen = true;
    }
    for (;;)
    {
      return this.mGesture.onTouchEvent(paramMotionEvent);
      label98:
      if (i < 50)
      {
        this.orderDrawer.setVisibility(8);
        AsynMove localAsynMove2 = new AsynMove();
        Integer[] arrayOfInteger2 = new Integer[1];
        arrayOfInteger2[0] = Integer.valueOf(-10);
        localAsynMove2.execute(arrayOfInteger2);
        this.isDrawerOpen = false;
      }
    }
  }
  
  public void queryAccountSecurity()
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("jdHomeShowItem");
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONArrayPoxy localJSONArrayPoxy = paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("subItemList");
        if ((localJSONArrayPoxy != null) && (localJSONArrayPoxy.length() > 0))
        {
          JSONObjectProxy localJSONObjectProxy = localJSONArrayPoxy.getJSONObjectOrNull(0);
          final String str1 = localJSONObjectProxy.getStringOrNull("url");
          final String str2 = localJSONObjectProxy.getStringOrNull("functionId");
          if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2))) {
            PersonelActivity.this.post(new Runnable()
            {
              public void run()
              {
                URLParamMap localURLParamMap = new URLParamMap();
                localURLParamMap.put("to", str1);
                CommonUtil.queryBrowserUrl(str2, localURLParamMap, new CommonBase.BrowserUrlListener()
                {
                  public void onComplete(final String paramAnonymous3String)
                  {
                    PersonelActivity.this.post(new Runnable()
                    {
                      public void run()
                      {
                        Intent localIntent = new Intent(PersonelActivity.this, WebActivity.class);
                        localIntent.putExtra("url", paramAnonymous3String);
                        PersonelActivity.this.startActivity(localIntent);
                      }
                    });
                  }
                });
              }
            });
          }
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams)
      {
        paramAnonymousHttpSettingParams.putJsonParam("type", "AccountSecurity");
      }
    });
    localHttpSetting.setNotifyUser(true);
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  public void recoveryPlug() {}
  
  class AsynMove
    extends AsyncTask<Integer, Integer, Void>
  {
    AsynMove() {}
    
    protected Void doInBackground(Integer... paramVarArgs)
    {
      int i;
      int j;
      if (100 % Math.abs(paramVarArgs[0].intValue()) == 0)
      {
        i = 100 / Math.abs(paramVarArgs[0].intValue());
        j = 0;
      }
      for (;;)
      {
        if (j >= i)
        {
          return null;
          i = 1 + 100 / Math.abs(paramVarArgs[0].intValue());
          break;
        }
        publishProgress(paramVarArgs);
        try
        {
          Thread.sleep(Math.abs(paramVarArgs[0].intValue()));
          j++;
        }
        catch (InterruptedException localInterruptedException)
        {
          for (;;)
          {
            localInterruptedException.printStackTrace();
          }
        }
      }
    }
    
    protected void onProgressUpdate(Integer... paramVarArgs)
    {
      ViewGroup.LayoutParams localLayoutParams = PersonelActivity.this.orderDrawer.getLayoutParams();
      if (localLayoutParams.height < 100)
      {
        localLayoutParams.height += paramVarArgs[0].intValue();
        if (localLayoutParams.height < 100) {
          break label62;
        }
        localLayoutParams.height = 100;
      }
      for (;;)
      {
        PersonelActivity.this.orderDrawer.setLayoutParams(localLayoutParams);
        return;
        label62:
        if (localLayoutParams.height <= 0) {
          localLayoutParams.height = 1;
        }
      }
    }
  }
  
  private class ClickListener
    implements View.OnClickListener
  {
    private ClickListener() {}
    
    public void onClick(final View paramView)
    {
      switch (paramView.getId())
      {
      default: 
        return;
      case 2131494097: 
        Runnable local1 = new Runnable()
        {
          public void run()
          {
            Intent localIntent = new Intent(PersonelActivity.this, MyWebMessage.class);
            localIntent.putExtra("title", PersonelActivity.this.getString(2131166345));
            localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
            paramView.setPressed(false);
            PersonelActivity.this.startActivityInFrame(localIntent);
          }
        };
        LoginUser.getInstance().executeLoginRunnable(PersonelActivity.this, local1);
        return;
      case 2131494087: 
        Runnable local2 = new Runnable()
        {
          public void run()
          {
            Intent localIntent = new Intent(PersonelActivity.this, MyCollectActivity.class);
            localIntent.putExtra("title", PersonelActivity.this.getString(2131166346));
            paramView.setPressed(false);
            PersonelActivity.this.startActivity(localIntent);
          }
        };
        LoginUser.getInstance().executeLoginRunnable(PersonelActivity.this, local2);
        return;
      case 2131494092: 
        Runnable local3 = new Runnable()
        {
          public void run()
          {
            Intent localIntent = new Intent(PersonelActivity.this, MyCommentDiscussActivity.class);
            PersonelActivity.this.startActivity(localIntent);
          }
        };
        LoginUser.getInstance().executeLoginRunnable(PersonelActivity.this, local3);
        return;
      case 2131492866: 
        Runnable local4 = new Runnable()
        {
          public void run()
          {
            Intent localIntent = new Intent(PersonelActivity.this, EasyGoAddrListActivity.class);
            PersonelActivity.this.startActivity(localIntent);
          }
        };
        LoginUser.getInstance().executeLoginRunnable(PersonelActivity.this, local4);
        return;
      case 2131494113: 
        Runnable local5 = new Runnable()
        {
          public void run()
          {
            Intent localIntent = new Intent(PersonelActivity.this, MyBackAndExchangeActivity.class);
            PersonelActivity.this.startActivity(localIntent);
          }
        };
        LoginUser.getInstance().executeLoginRunnable(PersonelActivity.this, local5);
        return;
      case 2131494107: 
        Runnable local6 = new Runnable()
        {
          public void run()
          {
            PersonelActivity.this.queryAccountSecurity();
          }
        };
        LoginUser.getInstance().executeLoginRunnable(PersonelActivity.this, local6);
        return;
      case 2131494118: 
        if (!CommonUtil.activityIsGuided("personal_online_tip"))
        {
          PersonelActivity.this.optionsViewVisibility(8);
          CommonUtil.setIsGuided("personal_online_tip");
        }
        Runnable local7 = new Runnable()
        {
          public void run()
          {
            PersonelActivity.this.queryOnlineAppointment();
          }
        };
        LoginUser.getInstance().executeLoginRunnable(PersonelActivity.this, local7);
        return;
      }
      Intent localIntent = new Intent(PersonelActivity.this, MoreActivity.class);
      PersonelActivity.this.startActivity(localIntent);
    }
  }
  
  class GestureListener
    extends GestureDetector.SimpleOnGestureListener
  {
    GestureListener() {}
    
    public boolean onDown(MotionEvent paramMotionEvent)
    {
      PersonelActivity.this.mScrollY = 0;
      PersonelActivity.this.onScrolling = false;
      PersonelActivity.this.canMove = false;
      return super.onDown(paramMotionEvent);
    }
    
    public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
    {
      return super.onFling(paramMotionEvent1, paramMotionEvent2, paramFloat1, paramFloat2);
    }
    
    public void onLongPress(MotionEvent paramMotionEvent) {}
    
    public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
    {
      PersonelActivity.this.onScrolling = true;
      PersonelActivity localPersonelActivity = PersonelActivity.this;
      localPersonelActivity.mScrollY = ((int)(paramFloat2 + localPersonelActivity.mScrollY));
      int i = (int)paramMotionEvent1.getRawY();
      int j = (int)paramMotionEvent2.getRawY();
      int k = Math.abs(j - i);
      label141:
      ViewGroup.LayoutParams localLayoutParams;
      if (j - i > 0)
      {
        PersonelActivity.this.upOrDown = false;
        if (PersonelActivity.this.orderDrawer.getVisibility() != 0) {
          PersonelActivity.this.orderDrawer.setVisibility(0);
        }
        if (((!PersonelActivity.this.isDrawerOpen) || (!PersonelActivity.this.upOrDown)) && ((PersonelActivity.this.isDrawerOpen) || (PersonelActivity.this.upOrDown))) {
          break label230;
        }
        PersonelActivity.this.canMove = true;
        localLayoutParams = PersonelActivity.this.orderDrawer.getLayoutParams();
        if ((!PersonelActivity.this.canMove) || (k > 100) || (PersonelActivity.this.upOrDown)) {
          break label241;
        }
      }
      for (localLayoutParams.height = k;; localLayoutParams.height = (100 - k)) {
        label230:
        label241:
        do
        {
          PersonelActivity.this.orderDrawer.setLayoutParams(localLayoutParams);
          PersonelActivity.this.orderDrawer.postInvalidate();
          return super.onScroll(paramMotionEvent1, paramMotionEvent2, paramFloat1, paramFloat2);
          PersonelActivity.this.upOrDown = true;
          break;
          PersonelActivity.this.canMove = false;
          break label141;
        } while ((!PersonelActivity.this.canMove) || (k > 100) || (!PersonelActivity.this.upOrDown));
      }
    }
    
    public void onShowPress(MotionEvent paramMotionEvent) {}
    
    public boolean onSingleTapUp(MotionEvent paramMotionEvent)
    {
      if (!PersonelActivity.this.isDrawerOpen)
      {
        PersonelActivity.this.orderDrawer.setVisibility(0);
        PersonelActivity.AsynMove localAsynMove2 = new PersonelActivity.AsynMove(PersonelActivity.this);
        Integer[] arrayOfInteger2 = new Integer[1];
        arrayOfInteger2[0] = Integer.valueOf(10);
        localAsynMove2.execute(arrayOfInteger2);
      }
      for (PersonelActivity.this.isDrawerOpen = true;; PersonelActivity.this.isDrawerOpen = false)
      {
        return super.onSingleTapUp(paramMotionEvent);
        PersonelActivity.AsynMove localAsynMove1 = new PersonelActivity.AsynMove(PersonelActivity.this);
        Integer[] arrayOfInteger1 = new Integer[1];
        arrayOfInteger1[0] = Integer.valueOf(-10);
        localAsynMove1.execute(arrayOfInteger1);
        PersonelActivity.this.orderDrawer.setVisibility(8);
      }
    }
  }
  
  private class PersonelItemOnClickListener
    implements View.OnClickListener
  {
    private String key;
    
    public PersonelItemOnClickListener(String paramString)
    {
      this.key = paramString;
    }
    
    public void onClick(View paramView)
    {
      for (;;)
      {
        try
        {
          if ((TextUtils.equals(this.key, "coupon")) || (TextUtils.equals(this.key, "giftCard")))
          {
            Intent localIntent = new Intent(PersonelActivity.this, MyCouponAndGiftCardActivity.class);
            localIntent.putExtra("type", this.key);
            PersonelActivity.this.startActivity(localIntent);
            return;
          }
          if (TextUtils.equals(this.key, "jingBean"))
          {
            if (PersonelActivity.this.isQuerying) {
              continue;
            }
            if (!CommonUtil.activityIsGuided("personal_jingdong_bean_tip"))
            {
              PersonelActivity.this.setViewVisibility(8);
              CommonUtil.setIsGuided("personal_jingdong_bean_tip");
            }
            PersonelActivity.this.queryBalanceAndJingBean("queryJingBean");
            continue;
          }
          if (!TextUtils.equals(this.key, "balance")) {
            continue;
          }
        }
        finally {}
        if (!PersonelActivity.this.isQuerying) {
          PersonelActivity.this.queryBalanceAndJingBean("queryBalance");
        }
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.personel.PersonelActivity
 * JD-Core Version:    0.7.0.1
 */