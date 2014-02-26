package com.jd.lottery.lib.activity;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.jd.droidlib.annotation.inject.InjectBundleExtra;
import com.jd.droidlib.annotation.inject.InjectDependency;
import com.jd.droidlib.annotation.inject.InjectView;
import com.jd.droidlib.executor.service.MainThreadResultReceiver;
import com.jd.droidlib.persist.sql.stmt.Select;
import com.jd.droidlib.util.L;
import com.jd.droidlib.util.ui.AbstractDialogFactory;
import com.jd.lottery.lib.R.color;
import com.jd.lottery.lib.R.drawable;
import com.jd.lottery.lib.R.id;
import com.jd.lottery.lib.R.layout;
import com.jd.lottery.lib.R.string;
import com.jd.lottery.lib.data.Constants.LotteryType;
import com.jd.lottery.lib.data.LotteryIssueManager;
import com.jd.lottery.lib.formatter.Formatter;
import com.jd.lottery.lib.formatter.LotteryBasket;
import com.jd.lottery.lib.model.IssueEntity;
import com.jd.lottery.lib.model.LotteryEntity;
import com.jd.lottery.lib.service.DataIntentService;
import com.jd.lottery.lib.ui.widget.AlertDialogFragment;
import com.jd.lottery.lib.ui.widget.AlertDialogFragment.ActionClickListener;
import com.jd.lottery.lib.ui.widget.DaletouDuplexPanelFragment;
import com.jd.lottery.lib.ui.widget.DaletouOptionalPanelFragment;
import com.jd.lottery.lib.ui.widget.DuplexPanelFragment;
import com.jd.lottery.lib.ui.widget.OptionalPanelFragment;
import com.jd.lottery.lib.ui.widget.RulesDialogFragment;
import com.jd.lottery.lib.ui.widget.StuanTitle;
import com.jd.lottery.lib.ui.widget.StuanTitle.TitleClickListener;
import com.jd.lottery.lib.utils.CountDownUtil;
import com.jd.lottery.lib.utils.CountDownUtil.CountDownListner;
import com.jd.lottery.lib.utils.LotteryNumberDecor;
import com.jd.lottery.lib.utils.PreferenceUtil;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.SimpleTimeZone;

public class LotteryActivity
  extends BaseActivity
  implements View.OnClickListener
{
  public static final String EXTRA_ARR_STR = "arr_str";
  public static final String LOTTERY_TYPE = "lottery_type";
  private static final int PAGE_FIRST = 0;
  private static final int PAGE_SECOND = 1;
  private static ArrayList<Fragment> mFragmeList;
  @InjectView
  private TextView addButton;
  @InjectView
  private TextView awardNumber;
  @InjectView
  private TextView betBasicInfo;
  @InjectView
  private TextView betButton;
  @InjectView
  private ImageView clearButton;
  @InjectView
  public TextView countInCart;
  @InjectView
  private TextView currIssuePeriod;
  @InjectDependency
  private AbstractDialogFactory dialogFactory;
  private MyFragmentAdapter mAdapter;
  private ViewPager mBallSelectorViewPager;
  private CountDownUtil mCountDownUtil;
  private int mCurrentPager;
  private DaletouDuplexPanelFragment mDaletouFragmentDuplexPanel;
  private DaletouOptionalPanelFragment mDaletouFragmentOptionalPanel;
  @InjectView
  private TextView mDuplexTextView;
  private DuplexPanelFragment mFragmentDuplexPanel;
  private OptionalPanelFragment mFragmentOptionalPanel;
  private LotteryEntity mIssueEntity;
  @InjectDependency
  private LotteryIssueManager mIssueManager;
  @InjectBundleExtra(key="lottery_type")
  private Constants.LotteryType mLotteryType;
  @InjectView
  private TextView mOptionalTextView;
  @InjectView
  private LinearLayout mPanelTabLayout;
  @InjectView
  private TextView prevIssuePeriod;
  private final MainThreadResultReceiver refreshResultReceiver = new MainThreadResultReceiver()
  {
    protected void onReceiveResult(int paramAnonymousInt, Bundle paramAnonymousBundle)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = paramAnonymousBundle.toString();
      L.d("@@@@@@@@@@@%s", arrayOfObject);
      LotteryActivity.this.updateCurrIssue();
      LotteryActivity.this.updatePrevIssue();
    }
  };
  private StuanTitle stuanTitle;
  @InjectView
  private TextView timeCounter;
  
  public static Intent getIntent(Context paramContext, Constants.LotteryType paramLotteryType)
  {
    Intent localIntent = new Intent(paramContext, LotteryActivity.class);
    localIntent.putExtra("lottery_type", paramLotteryType);
    return localIntent;
  }
  
  private void init(Bundle paramBundle)
  {
    this.mCountDownUtil = new CountDownUtil();
    this.mCountDownUtil.setCountDownListner(new CountDownUtil.CountDownListner()
    {
      public void onCountDown(long paramAnonymousLong)
      {
        if (paramAnonymousLong < 0L)
        {
          LotteryActivity.this.timeCounter.setText(R.string.time_counter_default);
          LotteryActivity.this.timeCounter.setSelected(true);
          return;
        }
        Calendar localCalendar = Calendar.getInstance(new SimpleTimeZone(0, "GMT"));
        localCalendar.setTimeInMillis(paramAnonymousLong);
        TextView localTextView = LotteryActivity.this.timeCounter;
        LotteryActivity localLotteryActivity = LotteryActivity.this;
        int i = R.string.time_counter;
        Object[] arrayOfObject = new Object[4];
        arrayOfObject[0] = Integer.valueOf(-1 + localCalendar.get(6));
        arrayOfObject[1] = Integer.valueOf(localCalendar.get(11));
        arrayOfObject[2] = Integer.valueOf(localCalendar.get(12));
        arrayOfObject[3] = Integer.valueOf(localCalendar.get(13));
        localTextView.setText(localLotteryActivity.getString(i, arrayOfObject));
        LotteryActivity.this.timeCounter.setSelected(true);
      }
    });
    updateCurrIssue();
    updatePrevIssue();
    this.stuanTitle = ((StuanTitle)findViewById(R.id.titlebar));
    if (this.mLotteryType == Constants.LotteryType.DoubleColor) {
      this.stuanTitle.setTitleText(R.string.double_color);
    }
    for (;;)
    {
      this.stuanTitle.setOnTitleClickListener(new StuanTitle.TitleClickListener()
      {
        public void onLeftClicked()
        {
          LotteryActivity.this.finish();
        }
        
        public void onRightClicked()
        {
          RulesDialogFragment.newInstance(LotteryActivity.this.mLotteryType).show(LotteryActivity.this.getSupportFragmentManager(), "rules");
        }
      });
      initBallSelectorPanelTab();
      initBallSelectorPanelViewPager(paramBundle);
      Intent localIntent = DataIntentService.getIssueIntent(this, this.refreshResultReceiver);
      localIntent.putExtras(getIntent());
      startService(localIntent);
      TextView localTextView = this.timeCounter;
      int i = R.string.time_counter;
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = Integer.valueOf(0);
      arrayOfObject[1] = Integer.valueOf(0);
      arrayOfObject[2] = Integer.valueOf(0);
      arrayOfObject[3] = Integer.valueOf(0);
      localTextView.setText(getString(i, arrayOfObject));
      this.timeCounter.setSelected(true);
      this.addButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (LotteryActivity.this.mLotteryType == Constants.LotteryType.DoubleColor) {
            if (LotteryActivity.this.mCurrentPager == 0) {
              LotteryActivity.this.mFragmentOptionalPanel.addLottery();
            }
          }
          while (LotteryActivity.this.mLotteryType != Constants.LotteryType.DaLeTou) {
            for (;;)
            {
              LotteryActivity.this.countInCart.setText(String.valueOf(LotteryBasket.getInstance().getLotterys(Formatter.SSQ)));
              return;
              if (LotteryActivity.this.mCurrentPager == 1) {
                LotteryActivity.this.mFragmentDuplexPanel.addLottery();
              }
            }
          }
          if (LotteryActivity.this.mCurrentPager == 0) {
            LotteryActivity.this.mDaletouFragmentOptionalPanel.addLottery();
          }
          for (;;)
          {
            LotteryActivity.this.countInCart.setText(String.valueOf(LotteryBasket.getInstance().getLotterys(Formatter.DLT)));
            return;
            if (LotteryActivity.this.mCurrentPager == 1) {
              LotteryActivity.this.mDaletouFragmentDuplexPanel.addLottery();
            }
          }
        }
      });
      this.betButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (LotteryActivity.this.mLotteryType == Constants.LotteryType.DoubleColor) {
            if (LotteryActivity.this.mCurrentPager == 0) {
              if (LotteryActivity.this.mFragmentOptionalPanel.isEmpty()) {
                ConfirmListActivity.launch(LotteryActivity.this, Formatter.SSQ, 0, LotteryActivity.this.mIssueEntity);
              }
            }
          }
          do
          {
            do
            {
              do
              {
                return;
                if (LotteryActivity.this.mFragmentOptionalPanel.isLegalLottery())
                {
                  LotteryActivity.this.mFragmentOptionalPanel.addLottery();
                  ConfirmListActivity.launch(LotteryActivity.this, Formatter.SSQ, 0, LotteryActivity.this.mIssueEntity);
                  return;
                }
                AlertDialogFragment localAlertDialogFragment4 = AlertDialogFragment.newInstance(LotteryActivity.this.getString(R.string.dialog_clear_lottery_title), LotteryActivity.this.getString(R.string.dialog_legal_lottery));
                localAlertDialogFragment4.setOnActionClickListener(new AlertDialogFragment.ActionClickListener()
                {
                  public void onLeftClicked()
                  {
                    ConfirmListActivity.launch(LotteryActivity.this, Formatter.SSQ, 0, LotteryActivity.this.mIssueEntity);
                  }
                  
                  public void onRightClicked() {}
                });
                localAlertDialogFragment4.show(LotteryActivity.this.getSupportFragmentManager(), "mFragmentOptionalPanel");
                return;
              } while (LotteryActivity.this.mCurrentPager != 1);
              if (LotteryActivity.this.mFragmentDuplexPanel.isEmpty())
              {
                ConfirmListActivity.launch(LotteryActivity.this, Formatter.SSQ, 0, LotteryActivity.this.mIssueEntity);
                return;
              }
              if (LotteryActivity.this.mFragmentDuplexPanel.isLegalLottery())
              {
                LotteryActivity.this.mFragmentDuplexPanel.addLottery();
                ConfirmListActivity.launch(LotteryActivity.this, Formatter.SSQ, 0, LotteryActivity.this.mIssueEntity);
                return;
              }
              AlertDialogFragment localAlertDialogFragment3 = AlertDialogFragment.newInstance(LotteryActivity.this.getString(R.string.dialog_clear_lottery_title), LotteryActivity.this.getString(R.string.dialog_legal_lottery));
              localAlertDialogFragment3.setOnActionClickListener(new AlertDialogFragment.ActionClickListener()
              {
                public void onLeftClicked()
                {
                  ConfirmListActivity.launch(LotteryActivity.this, Formatter.SSQ, 0, LotteryActivity.this.mIssueEntity);
                }
                
                public void onRightClicked() {}
              });
              localAlertDialogFragment3.show(LotteryActivity.this.getSupportFragmentManager(), "mFragmentDuplexPanel");
              return;
            } while (LotteryActivity.this.mLotteryType != Constants.LotteryType.DaLeTou);
            if (LotteryActivity.this.mCurrentPager == 0)
            {
              if (LotteryActivity.this.mDaletouFragmentOptionalPanel.isEmpty())
              {
                ConfirmListActivity.launch(LotteryActivity.this, Formatter.DLT, 0, LotteryActivity.this.mIssueEntity);
                return;
              }
              if (LotteryActivity.this.mDaletouFragmentOptionalPanel.isLegalLottery())
              {
                LotteryActivity.this.mDaletouFragmentOptionalPanel.addLottery();
                ConfirmListActivity.launch(LotteryActivity.this, Formatter.DLT, 0, LotteryActivity.this.mIssueEntity);
                return;
              }
              AlertDialogFragment localAlertDialogFragment2 = AlertDialogFragment.newInstance(LotteryActivity.this.getString(R.string.dialog_clear_lottery_title), LotteryActivity.this.getString(R.string.dialog_legal_lottery));
              localAlertDialogFragment2.setOnActionClickListener(new AlertDialogFragment.ActionClickListener()
              {
                public void onLeftClicked()
                {
                  ConfirmListActivity.launch(LotteryActivity.this, Formatter.DLT, 0, LotteryActivity.this.mIssueEntity);
                }
                
                public void onRightClicked() {}
              });
              localAlertDialogFragment2.show(LotteryActivity.this.getSupportFragmentManager(), "mDaletouFragmentOptionalPanel");
              return;
            }
          } while (LotteryActivity.this.mCurrentPager != 1);
          if (LotteryActivity.this.mDaletouFragmentDuplexPanel.isEmpty())
          {
            ConfirmListActivity.launch(LotteryActivity.this, Formatter.DLT, 0, LotteryActivity.this.mIssueEntity);
            return;
          }
          if (LotteryActivity.this.mDaletouFragmentDuplexPanel.isLegalLottery())
          {
            LotteryActivity.this.mDaletouFragmentDuplexPanel.addLottery();
            ConfirmListActivity.launch(LotteryActivity.this, Formatter.DLT, 0, LotteryActivity.this.mIssueEntity);
            return;
          }
          AlertDialogFragment localAlertDialogFragment1 = AlertDialogFragment.newInstance(LotteryActivity.this.getString(R.string.dialog_clear_lottery_title), LotteryActivity.this.getString(R.string.dialog_legal_lottery));
          localAlertDialogFragment1.setOnActionClickListener(new AlertDialogFragment.ActionClickListener()
          {
            public void onLeftClicked()
            {
              ConfirmListActivity.launch(LotteryActivity.this, Formatter.DLT, 0, LotteryActivity.this.mIssueEntity);
            }
            
            public void onRightClicked() {}
          });
          localAlertDialogFragment1.show(LotteryActivity.this.getSupportFragmentManager(), "mDaletouFragmentDuplexPanel");
        }
      });
      this.clearButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (LotteryActivity.this.mLotteryType == Constants.LotteryType.DoubleColor) {
            if (LotteryActivity.this.mCurrentPager == 0) {
              LotteryActivity.this.mFragmentOptionalPanel.clean();
            }
          }
          do
          {
            do
            {
              do
              {
                return;
              } while (LotteryActivity.this.mCurrentPager != 1);
              LotteryActivity.this.mFragmentDuplexPanel.clean();
              return;
            } while (LotteryActivity.this.mLotteryType != Constants.LotteryType.DaLeTou);
            if (LotteryActivity.this.mCurrentPager == 0)
            {
              LotteryActivity.this.mDaletouFragmentOptionalPanel.clean();
              return;
            }
          } while (LotteryActivity.this.mCurrentPager != 1);
          LotteryActivity.this.mDaletouFragmentDuplexPanel.clean();
        }
      });
      setbetBasicInfoText(0L);
      this.awardNumber.setSelected(true);
      this.timeCounter.setSelected(true);
      return;
      if (this.mLotteryType == Constants.LotteryType.DaLeTou) {
        this.stuanTitle.setTitleText(R.string.da_le_tou);
      }
    }
  }
  
  private void initBallSelectorPanelTab()
  {
    this.mOptionalTextView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        LotteryActivity.this.mBallSelectorViewPager.setCurrentItem(0);
      }
    });
    this.mDuplexTextView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        LotteryActivity.this.mBallSelectorViewPager.setCurrentItem(1);
      }
    });
  }
  
  private void initBallSelectorPanelViewPager(Bundle paramBundle)
  {
    mFragmeList = new ArrayList();
    if (this.mLotteryType == Constants.LotteryType.DoubleColor)
    {
      this.mFragmentOptionalPanel = new OptionalPanelFragment();
      this.mFragmentDuplexPanel = new DuplexPanelFragment();
      mFragmeList.add(this.mFragmentOptionalPanel);
      mFragmeList.add(this.mFragmentDuplexPanel);
    }
    for (;;)
    {
      this.mAdapter = new MyFragmentAdapter(getSupportFragmentManager(), mFragmeList);
      this.mBallSelectorViewPager = ((ViewPager)findViewById(R.id.ball_selector_panel_pager));
      this.mBallSelectorViewPager.setAdapter(this.mAdapter);
      this.mBallSelectorViewPager.setOnPageChangeListener(new ViewPager.OnPageChangeListener()
      {
        public void onPageScrollStateChanged(int paramAnonymousInt) {}
        
        public void onPageScrolled(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2) {}
        
        public void onPageSelected(int paramAnonymousInt)
        {
          LotteryActivity.this.updateTab(paramAnonymousInt);
        }
      });
      this.mCurrentPager = 0;
      return;
      if (this.mLotteryType == Constants.LotteryType.DaLeTou)
      {
        this.mDaletouFragmentOptionalPanel = new DaletouOptionalPanelFragment();
        this.mDaletouFragmentDuplexPanel = new DaletouDuplexPanelFragment();
        mFragmeList.add(this.mDaletouFragmentOptionalPanel);
        mFragmeList.add(this.mDaletouFragmentDuplexPanel);
      }
    }
  }
  
  private void updateCurrIssue()
  {
    Select localSelect = this.mIssueManager.selectCurr(this.mLotteryType);
    this.mIssueEntity = ((LotteryEntity)this.mIssueManager.readFirst(localSelect));
    String str = "?";
    SimpleDateFormat localSimpleDateFormat;
    if (this.mIssueEntity != null)
    {
      str = String.valueOf(this.mIssueEntity.issuename);
      localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
    }
    try
    {
      Date localDate = localSimpleDateFormat.parse(this.mIssueEntity.endtime);
      L.d("@@@@@@@@@@@" + localDate);
      this.mCountDownUtil.start(localDate.getTime());
      this.currIssuePeriod.setText(getString(R.string.curr_issue_peroid, new Object[] { str }));
      return;
    }
    catch (ParseException localParseException)
    {
      for (;;)
      {
        localParseException.printStackTrace();
      }
    }
  }
  
  private void updatePrevIssue()
  {
    Select localSelect = this.mIssueManager.selectPrev(this.mLotteryType);
    IssueEntity localIssueEntity = (IssueEntity)this.mIssueManager.readFirst(localSelect);
    String str1 = "?";
    String str2 = "?";
    if (localIssueEntity != null)
    {
      str1 = String.valueOf(localIssueEntity.issuename);
      str2 = localIssueEntity.awardcode;
    }
    this.prevIssuePeriod.setText(getString(R.string.prev_issue_peroid, new Object[] { str1 }));
    this.awardNumber.setText(LotteryNumberDecor.decorLotteryNumber(str2));
    this.awardNumber.setSelected(true);
  }
  
  private void updateTab(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      this.mPanelTabLayout.setBackgroundResource(R.drawable.widget_ssq_tab_bg_optional);
      this.mOptionalTextView.setTextColor(getResources().getColor(R.color.lottery_panel_tab_selected));
      this.mDuplexTextView.setTextColor(getResources().getColor(R.color.lottery_panel_tab_unselected));
      if (this.mLotteryType == Constants.LotteryType.DoubleColor)
      {
        this.mFragmentOptionalPanel.updateBetBasicInfo();
        this.mFragmentOptionalPanel.setShakeSensorWork(true);
      }
      for (;;)
      {
        this.mCurrentPager = 0;
        return;
        if (this.mLotteryType == Constants.LotteryType.DaLeTou)
        {
          this.mDaletouFragmentOptionalPanel.updateBetBasicInfo();
          this.mDaletouFragmentOptionalPanel.setShakeSensorWork(true);
        }
      }
    }
    this.mPanelTabLayout.setBackgroundResource(R.drawable.widget_ssq_tab_bg_duplex);
    this.mOptionalTextView.setTextColor(getResources().getColor(R.color.lottery_panel_tab_unselected));
    this.mDuplexTextView.setTextColor(getResources().getColor(R.color.lottery_panel_tab_selected));
    if (this.mLotteryType == Constants.LotteryType.DoubleColor)
    {
      this.mFragmentDuplexPanel.updateBetBasicInfo();
      this.mFragmentOptionalPanel.setShakeSensorWork(false);
    }
    for (;;)
    {
      this.mCurrentPager = 1;
      return;
      if (this.mLotteryType == Constants.LotteryType.DaLeTou)
      {
        this.mDaletouFragmentDuplexPanel.updateBetBasicInfo();
        this.mDaletouFragmentOptionalPanel.setShakeSensorWork(false);
      }
    }
  }
  
  public void onClick(View paramView) {}
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    init(paramBundle);
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      PreferenceUtil.putInt(this, "latest_red" + this.mLotteryType.getValue(), 0);
      PreferenceUtil.putInt(this, "latest_blue" + this.mLotteryType.getValue(), 0);
      int i;
      if (this.mLotteryType == Constants.LotteryType.DoubleColor) {
        if (this.mCurrentPager == 0)
        {
          boolean bool4 = this.mFragmentOptionalPanel.isEmpty();
          i = 0;
          if (!bool4) {
            i = 1;
          }
        }
      }
      while ((LotteryBasket.getInstance().getLotterys(this.mLotteryType.getValue()) != 0) || (i != 0))
      {
        AlertDialogFragment localAlertDialogFragment = AlertDialogFragment.newInstance(getString(R.string.dialog_clear_lottery_title), getString(R.string.dialog_clear_lottery_content));
        localAlertDialogFragment.setOnActionClickListener(new AlertDialogFragment.ActionClickListener()
        {
          public void onLeftClicked() {}
          
          public void onRightClicked()
          {
            LotteryBasket.getInstance().clear(LotteryActivity.this.mLotteryType.getValue());
            LotteryActivity.this.finish();
          }
        });
        localAlertDialogFragment.show(getSupportFragmentManager(), "finishLotteryActivity");
        return true;
        boolean bool3 = this.mFragmentDuplexPanel.isEmpty();
        i = 0;
        if (!bool3)
        {
          i = 1;
          continue;
          Constants.LotteryType localLotteryType1 = this.mLotteryType;
          Constants.LotteryType localLotteryType2 = Constants.LotteryType.DaLeTou;
          i = 0;
          if (localLotteryType1 == localLotteryType2) {
            if (this.mCurrentPager == 0)
            {
              boolean bool2 = this.mDaletouFragmentOptionalPanel.isEmpty();
              i = 0;
              if (!bool2) {
                i = 1;
              }
            }
            else
            {
              boolean bool1 = this.mDaletouFragmentDuplexPanel.isEmpty();
              i = 0;
              if (!bool1) {
                i = 1;
              }
            }
          }
        }
      }
      LotteryBasket.getInstance().clear(this.mLotteryType.getValue());
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public void onPause()
  {
    this.mCountDownUtil.pause();
    super.onPause();
  }
  
  public void onPreInject()
  {
    setContentView(R.layout.activity_lottery_ssq);
  }
  
  public void onResume()
  {
    this.mCountDownUtil.resume();
    if (this.mLotteryType == Constants.LotteryType.DoubleColor) {
      this.countInCart.setText(String.valueOf(LotteryBasket.getInstance().getLotterys(Formatter.SSQ)));
    }
    for (;;)
    {
      super.onResume();
      return;
      if (this.mLotteryType == Constants.LotteryType.DaLeTou) {
        this.countInCart.setText(String.valueOf(LotteryBasket.getInstance().getLotterys(Formatter.DLT)));
      }
    }
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    if (paramBoolean) {
      if (this.mLotteryType == Constants.LotteryType.DoubleColor) {
        if (this.mCurrentPager == 0) {
          this.mFragmentOptionalPanel.setShakeSensorWork(true);
        }
      }
    }
    for (;;)
    {
      super.onWindowFocusChanged(paramBoolean);
      return;
      if ((this.mLotteryType == Constants.LotteryType.DaLeTou) && (this.mCurrentPager == 0))
      {
        this.mDaletouFragmentOptionalPanel.setShakeSensorWork(true);
        continue;
        if (this.mLotteryType == Constants.LotteryType.DoubleColor)
        {
          if (this.mCurrentPager == 0) {
            this.mFragmentOptionalPanel.setShakeSensorWork(false);
          }
        }
        else if ((this.mLotteryType == Constants.LotteryType.DaLeTou) && (this.mCurrentPager == 0)) {
          this.mDaletouFragmentOptionalPanel.setShakeSensorWork(false);
        }
      }
    }
  }
  
  public void setbetBasicInfoText(long paramLong)
  {
    TextView localTextView = this.betBasicInfo;
    Resources localResources = getResources();
    int i = R.string.basic_bet_info;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Long.valueOf(paramLong);
    arrayOfObject[1] = Long.valueOf(2L * paramLong);
    localTextView.setText(localResources.getString(i, arrayOfObject));
  }
  
  public static class MyFragmentAdapter
    extends FragmentPagerAdapter
  {
    private ArrayList<Fragment> fragments;
    
    public MyFragmentAdapter(FragmentManager paramFragmentManager)
    {
      super();
    }
    
    public MyFragmentAdapter(FragmentManager paramFragmentManager, ArrayList<Fragment> paramArrayList)
    {
      super();
      this.fragments = paramArrayList;
    }
    
    public int getCount()
    {
      return this.fragments.size();
    }
    
    public Fragment getItem(int paramInt)
    {
      return (Fragment)this.fragments.get(paramInt);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.activity.LotteryActivity
 * JD-Core Version:    0.7.0.1
 */