package com.jd.lottery.lib.activity;

import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.jd.droidlib.annotation.inject.InjectDependency;
import com.jd.droidlib.annotation.inject.InjectView;
import com.jd.droidlib.executor.service.MainThreadResultReceiver;
import com.jd.droidlib.persist.sql.EntityManager;
import com.jd.droidlib.persist.sql.stmt.Select;
import com.jd.droidlib.util.L;
import com.jd.lottery.lib.R.id;
import com.jd.lottery.lib.R.layout;
import com.jd.lottery.lib.adapter.LotteryCategoryAdapter;
import com.jd.lottery.lib.data.LoginManager;
import com.jd.lottery.lib.data.LotteryIssueManager;
import com.jd.lottery.lib.data.UserManager;
import com.jd.lottery.lib.model.LotteryEntity;
import com.jd.lottery.lib.model.MainPageEntity;
import com.jd.lottery.lib.model.TokenInfo;
import com.jd.lottery.lib.service.DataIntentService;
import com.jd.lottery.lib.ui.widget.FullSizeGridView;
import com.jd.lottery.lib.ui.widget.StuanTitle;
import com.jd.lottery.lib.ui.widget.StuanTitle.TitleClickListener;
import com.jd.lottery.lib.utils.Util;
import java.net.URLEncoder;
import java.util.ArrayList;

public class MainActivity
  extends BaseActivity
  implements View.OnClickListener
{
  private static final int REFRESH_SEC_COUNT = 30;
  @InjectView(click=true)
  private TextView awardBoard;
  private boolean itemClickable = true;
  @InjectView
  private LinearLayout loadingErrorLayout;
  @InjectView(click=true)
  private LinearLayout loadingLayout;
  private ArrayList<LotteryEntity> lotteryEntities;
  private LotteryCategoryAdapter mAdapter;
  private boolean mCanRefresh;
  private FullSizeGridView mGridView;
  private Handler mHandler;
  @InjectDependency
  private LotteryIssueManager mIssueManager;
  private Runnable mRunnable = new Runnable()
  {
    public void run()
    {
      MainActivity localMainActivity = MainActivity.this;
      int i = 1 + localMainActivity.mSecCount;
      localMainActivity.mSecCount = i;
      if ((i > 30) && (MainActivity.this.mCanRefresh))
      {
        MainActivity.this.mSecCount = 0;
        MainActivity.this.mCanRefresh = false;
        Intent localIntent = DataIntentService.getAllLotteryIntent(MainActivity.this, MainActivity.this.refreshResultReceiver);
        MainActivity.this.startService(localIntent);
      }
      if (MainActivity.this.mAdapter != null) {
        MainActivity.this.mAdapter.notifyDataSetChanged();
      }
      MainActivity.this.setAdapter();
      MainActivity.this.mHandler.postDelayed(MainActivity.this.mRunnable, 1000L);
    }
  };
  private int mSecCount = 0;
  @InjectView
  ScrollView main_scrollView;
  @InjectView(click=true)
  private TextView myLottery;
  private final MainThreadResultReceiver refreshResultReceiver = new MainThreadResultReceiver()
  {
    protected void onReceiveResult(int paramAnonymousInt, Bundle paramAnonymousBundle)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = paramAnonymousBundle.toString();
      L.d("@@@@@@@@@@@%s", arrayOfObject);
      MainActivity.this.mCanRefresh = true;
      MainActivity.this.setAdapter();
      if (MainActivity.this.mAdapter.getCount() > 0)
      {
        MainActivity.this.loadingErrorLayout.setVisibility(8);
        MainActivity.this.loadingLayout.setVisibility(8);
        MainActivity.this.main_scrollView.setVisibility(0);
        return;
      }
      MainActivity.this.main_scrollView.setVisibility(8);
      MainActivity.this.loadingLayout.setVisibility(8);
      MainActivity.this.loadingErrorLayout.setVisibility(0);
    }
  };
  @InjectView(click=true)
  private TextView reloadView;
  private Runnable runnable = new Runnable()
  {
    public void run()
    {
      MainActivity.this.main_scrollView.scrollTo(1, 1);
    }
  };
  private StuanTitle title;
  
  private void addEntry()
  {
    L.i("Adding an Entry.");
    new MainPageEntity().name = ("Entry #" + this.mAdapter.getCount());
  }
  
  /* Error */
  private void handleClick(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic 151	com/jd/lottery/lib/utils/Util:getHostDeviceInfo	()Ljava/lang/String;
    //   5: astore_3
    //   6: iload_1
    //   7: getstatic 157	com/jd/lottery/lib/data/Constants$LotteryType:DoubleColor	Lcom/jd/lottery/lib/data/Constants$LotteryType;
    //   10: invokevirtual 160	com/jd/lottery/lib/data/Constants$LotteryType:ordinal	()I
    //   13: if_icmpeq +13 -> 26
    //   16: iload_1
    //   17: getstatic 163	com/jd/lottery/lib/data/Constants$LotteryType:DaLeTou	Lcom/jd/lottery/lib/data/Constants$LotteryType;
    //   20: invokevirtual 160	com/jd/lottery/lib/data/Constants$LotteryType:ordinal	()I
    //   23: if_icmpne +19 -> 42
    //   26: aload_0
    //   27: aload_0
    //   28: invokestatic 167	com/jd/lottery/lib/data/Constants$LotteryType:values	()[Lcom/jd/lottery/lib/data/Constants$LotteryType;
    //   31: iload_1
    //   32: aaload
    //   33: invokestatic 173	com/jd/lottery/lib/activity/LotteryActivity:getIntent	(Landroid/content/Context;Lcom/jd/lottery/lib/data/Constants$LotteryType;)Landroid/content/Intent;
    //   36: invokevirtual 177	com/jd/lottery/lib/activity/MainActivity:startActivity	(Landroid/content/Intent;)V
    //   39: aload_0
    //   40: monitorexit
    //   41: return
    //   42: aload_0
    //   43: getfield 97	com/jd/lottery/lib/activity/MainActivity:loadingLayout	Landroid/widget/LinearLayout;
    //   46: iconst_0
    //   47: invokevirtual 182	android/widget/LinearLayout:setVisibility	(I)V
    //   50: new 123	java/lang/StringBuilder
    //   53: dup
    //   54: ldc 184
    //   56: invokestatic 190	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   59: invokespecial 128	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   62: invokestatic 167	com/jd/lottery/lib/data/Constants$LotteryType:values	()[Lcom/jd/lottery/lib/data/Constants$LotteryType;
    //   65: iload_1
    //   66: aaload
    //   67: invokevirtual 193	com/jd/lottery/lib/data/Constants$LotteryType:getValue	()I
    //   70: invokevirtual 138	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   73: invokevirtual 142	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   76: astore 4
    //   78: aload_0
    //   79: aload_0
    //   80: aload_3
    //   81: ldc 195
    //   83: invokestatic 201	com/jd/lottery/lib/data/UserManager:getInstance	()Lcom/jd/lottery/lib/data/UserManager;
    //   86: invokevirtual 204	com/jd/lottery/lib/data/UserManager:getCookie	()Ljava/lang/String;
    //   89: new 206	com/jd/lottery/lib/activity/MainActivity$6
    //   92: dup
    //   93: aload_0
    //   94: aload 4
    //   96: invokespecial 209	com/jd/lottery/lib/activity/MainActivity$6:<init>	(Lcom/jd/lottery/lib/activity/MainActivity;Ljava/lang/String;)V
    //   99: invokestatic 215	com/jd/lottery/lib/service/DataIntentService:getLotteryTokenIntent	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)Landroid/content/Intent;
    //   102: invokevirtual 219	com/jd/lottery/lib/activity/MainActivity:startService	(Landroid/content/Intent;)Landroid/content/ComponentName;
    //   105: pop
    //   106: goto -67 -> 39
    //   109: astore_2
    //   110: aload_0
    //   111: monitorexit
    //   112: aload_2
    //   113: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	114	0	this	MainActivity
    //   0	114	1	paramInt	int
    //   109	4	2	localObject	Object
    //   5	76	3	str1	String
    //   76	19	4	str2	String
    // Exception table:
    //   from	to	target	type
    //   2	26	109	finally
    //   26	39	109	finally
    //   42	106	109	finally
  }
  
  private void init()
  {
    L.d("@@@@@@@@@@@%s", new Object[] { "init" });
    startService(DataIntentService.getAllLotteryIntent(this, this.refreshResultReceiver));
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == -1) {
      startService(DataIntentService.getLotteryTokenIntent(this, UserManager.getInstance().getCommonParams(), "lottery", UserManager.getInstance().getCookie(), new MainThreadResultReceiver()
      {
        protected void onReceiveResult(int paramAnonymousInt, Bundle paramAnonymousBundle)
        {
          TokenInfo localTokenInfo = (TokenInfo)paramAnonymousBundle.get("data");
          if (localTokenInfo == null) {
            return;
          }
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = paramAnonymousBundle.toString();
          L.d("@@@@@@@@@@@%s", arrayOfObject);
          String str1 = URLEncoder.encode("http://caipiao.m.jd.com/my/list");
          String str2 = localTokenInfo.url + "?tokenKey=" + localTokenInfo.tokenKey + "&to=" + str1;
          Intent localIntent = LoginManager.getInstance().webIntent(str2);
          MainActivity.this.startActivity(localIntent);
        }
      }));
    }
  }
  
  public void onClick(View paramView)
  {
    String str = Util.getHostDeviceInfo();
    if (paramView == this.myLottery) {
      if (!LoginManager.getInstance().hasLogin()) {
        startActivityForResult(LoginManager.getInstance().loginIntent(), 911);
      }
    }
    do
    {
      return;
      this.loadingLayout.setVisibility(0);
      startService(DataIntentService.getLotteryTokenIntent(this, str, "lottery", UserManager.getInstance().getCookie(), new MainThreadResultReceiver()
      {
        protected void onReceiveResult(int paramAnonymousInt, Bundle paramAnonymousBundle)
        {
          MainActivity.this.loadingLayout.setVisibility(8);
          TokenInfo localTokenInfo = (TokenInfo)paramAnonymousBundle.get("data");
          if (localTokenInfo == null) {
            return;
          }
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = paramAnonymousBundle.toString();
          L.d("@@@@@@@@@@@%s", arrayOfObject);
          String str1 = URLEncoder.encode("http://caipiao.m.jd.com/my/list");
          String str2 = localTokenInfo.url + "?tokenKey=" + localTokenInfo.tokenKey + "&to=" + str1;
          Intent localIntent = LoginManager.getInstance().webIntent(str2);
          MainActivity.this.startActivity(localIntent);
        }
      }));
      return;
      if (paramView == this.awardBoard)
      {
        this.loadingLayout.setVisibility(0);
        startService(DataIntentService.getLotteryTokenIntent(this, str, "lottery", UserManager.getInstance().getCookie(), new MainThreadResultReceiver()
        {
          protected void onReceiveResult(int paramAnonymousInt, Bundle paramAnonymousBundle)
          {
            MainActivity.this.loadingLayout.setVisibility(8);
            TokenInfo localTokenInfo = (TokenInfo)paramAnonymousBundle.get("data");
            if (localTokenInfo == null) {
              return;
            }
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = paramAnonymousBundle.toString();
            L.d("@@@@@@@@@@@%s", arrayOfObject);
            String str1 = URLEncoder.encode("http://caipiao.m.jd.com/notice?v=1&tab=0");
            String str2 = localTokenInfo.url + "?tokenKey=" + localTokenInfo.tokenKey + "&to=" + str1;
            Intent localIntent = LoginManager.getInstance().webIntent(str2);
            MainActivity.this.startActivity(localIntent);
          }
        }));
        return;
      }
    } while (paramView != this.reloadView);
    this.loadingLayout.setVisibility(0);
    init();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.mHandler = new Handler();
    setAdapter();
    this.title.setOnTitleClickListener(new StuanTitle.TitleClickListener()
    {
      public void onLeftClicked() {}
      
      public void onRightClicked()
      {
        MainActivity.this.loadingLayout.setVisibility(0);
        MainActivity.this.init();
      }
    });
    this.mGridView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (paramAnonymousInt == -1 + MainActivity.this.mAdapter.getCount()) {}
        while (!MainActivity.this.itemClickable) {
          return;
        }
        MainActivity.this.itemClickable = false;
        MainActivity.this.handleClick(paramAnonymousInt);
        MainActivity.this.itemClickable = true;
      }
    });
  }
  
  public void onPause()
  {
    if (this.mHandler != null) {
      this.mHandler.removeCallbacks(this.mRunnable);
    }
    this.loadingLayout.setVisibility(8);
    super.onPause();
  }
  
  public void onPreInject()
  {
    setContentView(R.layout.activity_lottery_home);
    this.mGridView = ((FullSizeGridView)findViewById(R.id.grid));
    this.title = ((StuanTitle)findViewById(R.id.titlebar));
    init();
  }
  
  public void onResume()
  {
    if (this.mHandler != null) {
      this.mHandler.post(this.mRunnable);
    }
    super.onResume();
  }
  
  public void setAdapter()
  {
    Select localSelect = this.mIssueManager.selectCurr();
    L.d("@@@@@@@@@@@@@@" + localSelect.count());
    EntityManager localEntityManager = new EntityManager(LotteryEntity.class, getApplicationContext());
    Cursor localCursor = localSelect.execute();
    if (this.lotteryEntities == null) {
      this.lotteryEntities = new ArrayList();
    }
    for (;;)
    {
      if (!localCursor.moveToNext())
      {
        if ((localCursor != null) && (!localCursor.isClosed())) {
          localCursor.close();
        }
        if (this.lotteryEntities.size() > 0)
        {
          LotteryEntity localLotteryEntity = new LotteryEntity();
          localLotteryEntity.lotteryIndex = 7;
          this.lotteryEntities.add(localLotteryEntity);
        }
        if (this.mAdapter != null) {
          break;
        }
        this.mAdapter = new LotteryCategoryAdapter(this, this.lotteryEntities);
        this.main_scrollView.post(this.runnable);
        this.mGridView.setAdapter(this.mAdapter);
        return;
        this.lotteryEntities.clear();
      }
      else
      {
        this.lotteryEntities.add((LotteryEntity)localEntityManager.readRow(localCursor));
      }
    }
    this.mAdapter.notifyDataSetChanged();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.activity.MainActivity
 * JD-Core Version:    0.7.0.1
 */