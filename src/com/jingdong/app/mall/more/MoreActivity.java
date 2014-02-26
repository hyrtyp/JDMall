package com.jingdong.app.mall.more;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.Editable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import com.jingdong.app.mall.MainFrameActivity;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.app.mall.plug.framework.dynamicloader.PlugClassLoader;
import com.jingdong.app.mall.plug.framework.dynamicloader.PlugResources;
import com.jingdong.app.mall.plug.framework.plug.open.IPFragmentplug;
import com.jingdong.app.mall.product.ProductListActivity;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.entity.HomeLayout;
import com.jingdong.common.plug.MergeSwitcher;
import com.jingdong.common.utils.CommonBase.BrowserUrlListener;
import com.jingdong.common.utils.GlobalInitialization;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.URLParamMap;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;

public class MoreActivity
  extends MyActivity
  implements View.OnClickListener
{
  private static final String PACKAGE_NAME = "com.jd.plug.more";
  private static final String TAG = "MoreActivity";
  private String appRecommendId;
  private AssetManager assetManager;
  private PlugClassLoader classLoader;
  private String fragmentName;
  private EditText hostEt;
  IPFragmentplug iplug = null;
  private CheckBox is_testmode;
  private ListView listView;
  private boolean loaded;
  private ScrollView mScrollView;
  private RelativeLayout menu_Easy_RelativeLayout;
  private RelativeLayout menu_about_RelativeLayout;
  private RelativeLayout menu_app_recommend_RelativeLayout;
  private RelativeLayout menu_exit_RelativeLayout;
  private RelativeLayout menu_feedback_RelativeLayout;
  private RelativeLayout menu_help_RelativeLayout;
  private RelativeLayout menu_history_RelativeLayout;
  private RelativeLayout menu_host_setup_RelativeLayout;
  private RelativeLayout menu_paper_RelativeLayout;
  private RelativeLayout menu_setup_RelativeLayout;
  private RelativeLayout menu_version_RelativeLayout;
  private EditText mhostEt;
  private LinearLayout more_activity_content;
  private EditText msghostEt;
  private PlugResources myResources;
  private EditText paihostEt;
  private View paperDivoderView;
  private String paperFunctionId;
  private Resources resources;
  private FrameLayout rootView;
  private Resources.Theme theme;
  
  private void addContentList(ArrayList<HomeLayout> paramArrayList)
  {
    if ((paramArrayList != null) && (paramArrayList.size() > 0)) {}
    for (int i = 0;; i++)
    {
      if (i >= paramArrayList.size()) {
        return;
      }
      final HomeLayout localHomeLayout = (HomeLayout)paramArrayList.get(i);
      if (getString(2131166175).equals(localHomeLayout.getTitle()))
      {
        if (!TextUtils.isEmpty(localHomeLayout.getFunctionId())) {
          post(new Runnable()
          {
            public void run()
            {
              MoreActivity.this.menu_paper_RelativeLayout.setVisibility(0);
              MoreActivity.this.paperDivoderView.setVisibility(0);
            }
          });
        }
        final URLParamMap localURLParamMap = new URLParamMap();
        localURLParamMap.put("to", localHomeLayout.getUrl());
        this.menu_paper_RelativeLayout.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            CommonUtil.queryBrowserUrl(localHomeLayout.getFunctionId(), localURLParamMap, new CommonBase.BrowserUrlListener()
            {
              public void onComplete(final String paramAnonymous2String)
              {
                MoreActivity.this.post(new Runnable()
                {
                  public void run()
                  {
                    Intent localIntent = new Intent(MoreActivity.this, WebActivity.class);
                    localIntent.putExtra("url", paramAnonymous2String);
                    MoreActivity.this.startActivity(localIntent);
                  }
                });
              }
            });
          }
        });
      }
    }
  }
  
  public static SimpleAdapter getMenuAdapter(Context paramContext, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    ArrayList localArrayList = new ArrayList();
    for (int i = 0;; i++)
    {
      if (i >= paramArrayOfString.length) {
        return new SimpleAdapter(paramContext, localArrayList, 2130903061, new String[] { "itemImage", "itemText" }, new int[] { 2131493035, 2131493036 });
      }
      HashMap localHashMap = new HashMap();
      localHashMap.put("itemImage", Integer.valueOf(paramArrayOfInt[i]));
      localHashMap.put("itemText", paramArrayOfString[i]);
      localArrayList.add(localHashMap);
    }
  }
  
  private void init()
  {
    this.more_activity_content = ((LinearLayout)findViewById(2131493080));
    this.menu_about_RelativeLayout = ((RelativeLayout)findViewById(2131492872));
    this.menu_exit_RelativeLayout = ((RelativeLayout)findViewById(2131492873));
    this.menu_version_RelativeLayout = ((RelativeLayout)findViewById(2131492874));
    this.menu_feedback_RelativeLayout = ((RelativeLayout)findViewById(2131492870));
    this.menu_help_RelativeLayout = ((RelativeLayout)findViewById(2131492871));
    this.menu_history_RelativeLayout = ((RelativeLayout)findViewById(2131492869));
    this.menu_setup_RelativeLayout = ((RelativeLayout)findViewById(2131492868));
    this.menu_host_setup_RelativeLayout = ((RelativeLayout)findViewById(2131493099));
    this.menu_paper_RelativeLayout = ((RelativeLayout)findViewById(2131493085));
    this.menu_app_recommend_RelativeLayout = ((RelativeLayout)findViewById(2131493090));
    this.paperDivoderView = findViewById(2131493089);
    this.menu_about_RelativeLayout.setOnClickListener(this);
    this.menu_exit_RelativeLayout.setOnClickListener(this);
    this.menu_version_RelativeLayout.setOnClickListener(this);
    this.menu_feedback_RelativeLayout.setOnClickListener(this);
    this.menu_help_RelativeLayout.setOnClickListener(this);
    this.menu_history_RelativeLayout.setOnClickListener(this);
    this.menu_setup_RelativeLayout.setOnClickListener(this);
    this.menu_host_setup_RelativeLayout.setOnClickListener(this);
    this.menu_app_recommend_RelativeLayout.setOnClickListener(this);
    if (Configuration.getBooleanProperty("CBTMode", Boolean.valueOf(false)).booleanValue())
    {
      this.menu_host_setup_RelativeLayout.setVisibility(0);
      findViewById(2131493103).setVisibility(0);
    }
    if (!Configuration.getBooleanProperty("checkNewVersion", Boolean.valueOf(true)).booleanValue())
    {
      this.menu_version_RelativeLayout.setVisibility(8);
      findViewById(2131493119).setVisibility(8);
    }
    if (!Configuration.getBooleanProperty("otherApp", Boolean.valueOf(true)).booleanValue())
    {
      this.menu_app_recommend_RelativeLayout.setVisibility(8);
      findViewById(2131493094).setVisibility(8);
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
  
  private void queryPaperAndRecommend()
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("indexContent");
    localHttpSetting.setEffect(0);
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        if (localJSONObjectProxy != null)
        {
          JSONArrayPoxy localJSONArrayPoxy = localJSONObjectProxy.getJSONArrayOrNull("contentList");
          if ((localJSONArrayPoxy != null) && (localJSONArrayPoxy.length() > 0))
          {
            ArrayList localArrayList = HomeLayout.toList(localJSONArrayPoxy);
            MoreActivity.this.addContentList(localArrayList);
          }
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    });
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void showSearchActivity(Bundle paramBundle)
  {
    Intent localIntent = new Intent(this, SearchActivity.class);
    if (paramBundle != null) {
      localIntent.putExtras(paramBundle);
    }
    startActivityForResult(localIntent, 272);
  }
  
  /* Error */
  private void startPlug(Bundle paramBundle)
  {
    // Byte code:
    //   0: aload_0
    //   1: new 385	android/widget/FrameLayout
    //   4: dup
    //   5: aload_0
    //   6: invokespecial 388	android/widget/FrameLayout:<init>	(Landroid/content/Context;)V
    //   9: putfield 390	com/jingdong/app/mall/more/MoreActivity:rootView	Landroid/widget/FrameLayout;
    //   12: aload_0
    //   13: getfield 390	com/jingdong/app/mall/more/MoreActivity:rootView	Landroid/widget/FrameLayout;
    //   16: new 392	android/view/ViewGroup$LayoutParams
    //   19: dup
    //   20: iconst_m1
    //   21: iconst_m1
    //   22: invokespecial 395	android/view/ViewGroup$LayoutParams:<init>	(II)V
    //   25: invokevirtual 399	android/widget/FrameLayout:setLayoutParams	(Landroid/view/ViewGroup$LayoutParams;)V
    //   28: aload_0
    //   29: getfield 390	com/jingdong/app/mall/more/MoreActivity:rootView	Landroid/widget/FrameLayout;
    //   32: ldc_w 326
    //   35: invokevirtual 402	android/widget/FrameLayout:setId	(I)V
    //   38: aload_0
    //   39: aload_0
    //   40: getfield 390	com/jingdong/app/mall/more/MoreActivity:rootView	Landroid/widget/FrameLayout;
    //   43: invokevirtual 406	com/jingdong/app/mall/more/MoreActivity:setContentView	(Landroid/view/View;)V
    //   46: invokestatic 412	com/jingdong/app/mall/plug/PlugManager:getInstance	()Lcom/jingdong/app/mall/plug/PlugManager;
    //   49: aload_0
    //   50: ldc 10
    //   52: invokevirtual 416	com/jingdong/app/mall/plug/PlugManager:getPlugItem	(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    //   55: astore_2
    //   56: aload_0
    //   57: invokevirtual 420	com/jingdong/app/mall/more/MoreActivity:getIntent	()Landroid/content/Intent;
    //   60: astore_3
    //   61: aconst_null
    //   62: astore 4
    //   64: new 422	java/io/File
    //   67: dup
    //   68: aload_2
    //   69: getfield 427	com/jingdong/app/mall/plug/framework/plug/PlugItem:intallPath	Ljava/lang/String;
    //   72: invokespecial 429	java/io/File:<init>	(Ljava/lang/String;)V
    //   75: astore 5
    //   77: aload_0
    //   78: aload_2
    //   79: getfield 432	com/jingdong/app/mall/plug/framework/plug/PlugItem:lunchPath	Ljava/lang/String;
    //   82: putfield 277	com/jingdong/app/mall/more/MoreActivity:fragmentName	Ljava/lang/String;
    //   85: aload 5
    //   87: astore 4
    //   89: aload_0
    //   90: aload_3
    //   91: aload 4
    //   93: invokespecial 434	com/jingdong/app/mall/more/MoreActivity:initPlug	(Landroid/content/Intent;Ljava/io/File;)Z
    //   96: ifne +47 -> 143
    //   99: aload_0
    //   100: ldc 10
    //   102: invokestatic 439	com/jingdong/app/mall/plug/framework/plug/local/LocalPlugsTools:installPlugFromAsset	(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    //   105: astore 8
    //   107: aload 8
    //   109: ifnull +34 -> 143
    //   112: new 422	java/io/File
    //   115: dup
    //   116: aload 8
    //   118: getfield 427	com/jingdong/app/mall/plug/framework/plug/PlugItem:intallPath	Ljava/lang/String;
    //   121: invokespecial 429	java/io/File:<init>	(Ljava/lang/String;)V
    //   124: astore 9
    //   126: aload_0
    //   127: aload 8
    //   129: getfield 432	com/jingdong/app/mall/plug/framework/plug/PlugItem:lunchPath	Ljava/lang/String;
    //   132: putfield 277	com/jingdong/app/mall/more/MoreActivity:fragmentName	Ljava/lang/String;
    //   135: aload_0
    //   136: aload_3
    //   137: aload 9
    //   139: invokespecial 434	com/jingdong/app/mall/more/MoreActivity:initPlug	(Landroid/content/Intent;Ljava/io/File;)Z
    //   142: pop
    //   143: return
    //   144: astore 6
    //   146: aload_0
    //   147: aload 6
    //   149: invokevirtual 442	com/jingdong/app/mall/more/MoreActivity:loadFileError	(Ljava/lang/Exception;)V
    //   152: goto -63 -> 89
    //   155: astore 7
    //   157: aload_0
    //   158: aload 7
    //   160: invokevirtual 339	com/jingdong/app/mall/more/MoreActivity:loadPlugFragmentError	(Ljava/lang/Exception;)V
    //   163: return
    //   164: astore 7
    //   166: goto -9 -> 157
    //   169: astore 6
    //   171: aload 5
    //   173: astore 4
    //   175: goto -29 -> 146
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	178	0	this	MoreActivity
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
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  protected void loadFileError(Exception paramException) {}
  
  protected void loadFragNameEmpty() {}
  
  protected void loadPlugClassLoaderError() {}
  
  protected void loadPlugFragmentError(Exception paramException) {}
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((272 == paramInt1) && (-1 == paramInt2))
    {
      Intent localIntent = new Intent(this, ProductListActivity.class);
      localIntent.putExtras(paramIntent.getExtras());
      StartActivityUtils.startProductListActivity(this, localIntent);
      return;
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      MainFrameActivity.menuItemClick(paramView.getId(), MyApplication.getInstance().getCurrentMyActivity());
      return;
    case 2131492874: 
      GlobalInitialization.checkVersion(this);
      return;
    case 2131493090: 
      Intent localIntent = new Intent(this, WebActivity.class);
      localIntent.putExtra("url", "http://m.jd.com/download/androidInner.html?v=t");
      startActivity(localIntent);
      return;
    case 2131493099: 
      setHost();
      return;
    }
    MyApplication.exitDialog(this);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (MergeSwitcher.isPlugOn())
    {
      startPlug(paramBundle);
      return;
    }
    setContentView(2130903071);
    ((TextView)findViewById(2131493078).findViewById(2131492990)).setText("更多");
    init();
    queryPaperAndRecommend();
  }
  
  protected void onResume()
  {
    super.onResume();
  }
  
  public void recoveryPlug() {}
  
  public void setHost()
  {
    post(new Runnable()
    {
      public void run()
      {
        try
        {
          AlertDialog localAlertDialog = new AlertDialog.Builder(MoreActivity.this).create();
          localAlertDialog.setTitle(MoreActivity.this.getString(2131166409));
          View localView = MoreActivity.this.getLayoutInflater().inflate(2130903156, null);
          localAlertDialog.setView(localView);
          MoreActivity.this.hostEt = ((EditText)localView.findViewById(2131493536));
          MoreActivity.this.mhostEt = ((EditText)localView.findViewById(2131493538));
          MoreActivity.this.msghostEt = ((EditText)localView.findViewById(2131493540));
          MoreActivity.this.paihostEt = ((EditText)localView.findViewById(2131493542));
          MoreActivity.this.is_testmode = ((CheckBox)localView.findViewById(2131493543));
          localAlertDialog.setButton(MoreActivity.this.getString(2131165517), new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              String str1 = MoreActivity.this.hostEt.getText().toString();
              String str2 = MoreActivity.this.mhostEt.getText().toString();
              String str3 = MoreActivity.this.msghostEt.getText().toString();
              String str4 = MoreActivity.this.paihostEt.getText().toString();
              Boolean localBoolean = Boolean.valueOf(MoreActivity.this.is_testmode.isChecked());
              if ((!TextUtils.isEmpty(str1)) && (!TextUtils.equals(str1, Configuration.getProperty("host")))) {
                Configuration.setHostProperty("host", str1);
              }
              if (!TextUtils.equals(str2, Configuration.getProperty("mHost"))) {
                Configuration.setHostProperty("mHost", str2);
              }
              if ((!TextUtils.isEmpty(str3)) && (!TextUtils.equals(str3, Configuration.getProperty("msgHost")))) {
                Configuration.setHostProperty("msgHost", str3);
              }
              if ((!TextUtils.isEmpty(str4)) && (!TextUtils.equals(str4, Configuration.getProperty("paiHost")))) {
                Configuration.setHostProperty("paiHost", str4);
              }
              if (!localBoolean.equals(Configuration.getBooleanProperty("testMode"))) {
                Configuration.setTestModeProperty(localBoolean);
              }
              paramAnonymous2DialogInterface.dismiss();
            }
          });
          localAlertDialog.setButton2(MoreActivity.this.getString(2131165601), new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              paramAnonymous2DialogInterface.dismiss();
            }
          });
          localAlertDialog.show();
          MoreActivity.this.hostEt.setText(Configuration.getProperty("host", ""));
          MoreActivity.this.mhostEt.setText(Configuration.getProperty("mHost", ""));
          MoreActivity.this.msghostEt.setText(Configuration.getProperty("msgHost", ""));
          MoreActivity.this.paihostEt.setText(Configuration.getProperty("paiHost", ""));
          MoreActivity.this.is_testmode.setChecked(Configuration.getBooleanProperty("testMode", Boolean.valueOf(false)).booleanValue());
          return;
        }
        catch (Throwable localThrowable)
        {
          localThrowable.printStackTrace();
        }
      }
    });
  }
  
  public void setListViewHeightBasedOnChildren()
  {
    ListAdapter localListAdapter = this.listView.getAdapter();
    if (localListAdapter == null) {
      return;
    }
    int i = 0;
    for (int j = 0;; j++)
    {
      if (j >= localListAdapter.getCount())
      {
        ViewGroup.LayoutParams localLayoutParams = this.listView.getLayoutParams();
        localLayoutParams.height = (i + this.listView.getDividerHeight() * (-1 + localListAdapter.getCount()));
        this.listView.setLayoutParams(localLayoutParams);
        return;
      }
      View localView = localListAdapter.getView(j, null, this.listView);
      localView.measure(0, 0);
      i += localView.getMeasuredHeight();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.more.MoreActivity
 * JD-Core Version:    0.7.0.1
 */