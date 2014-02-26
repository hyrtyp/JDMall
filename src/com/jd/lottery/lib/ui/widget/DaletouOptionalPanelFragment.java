package com.jd.lottery.lib.ui.widget;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.jd.lottery.lib.R.drawable;
import com.jd.lottery.lib.R.id;
import com.jd.lottery.lib.R.layout;
import com.jd.lottery.lib.R.string;
import com.jd.lottery.lib.activity.LotteryActivity;
import com.jd.lottery.lib.data.Constants.LotteryType;
import com.jd.lottery.lib.formatter.Formatter;
import com.jd.lottery.lib.formatter.LotteryBasket;
import com.jd.lottery.lib.utils.PreferenceUtil;
import com.jd.lottery.lib.utils.ShakeListener;
import com.jd.lottery.lib.utils.ShakeListener.OnShakeListener;
import com.jd.lottery.lib.utils.Util;
import java.util.ArrayList;
import java.util.List;

public class DaletouOptionalPanelFragment
  extends AbsPanelFragment
{
  private Formatter formatter;
  private View freagmentView;
  private ShakeListener mShakeListener;
  private TextView randomBallsTextView;
  private BallSelectorPanel selectorPanelBlue;
  private BallSelectorPanel selectorPanelRed;
  RandomListDialogFragment ssqRandomListDialogFragment;
  AlertDialogFragment yaoyiyaoCleanDialogFragment;
  private TextView yaoyiyaorandomBallsTextView;
  
  private void setupViews(View paramView)
  {
    ((TextView)paramView.findViewById(R.id.optional_red_title)).setText(getActivity().getResources().getString(R.string.dlt_red_panel_title));
    ((TextView)paramView.findViewById(R.id.optional_blue_title)).setText(getActivity().getResources().getString(R.string.dlt_blue_panel_title));
    this.selectorPanelRed = ((BallSelectorPanel)paramView.findViewById(R.id.optional_red_panel));
    this.selectorPanelRed.init(1, 35, BallSelectorPanel.BallColer.RED);
    this.selectorPanelRed.setOnSelectorChangedListener(new BallSelectorPanel.SelectorChangedListener()
    {
      public void onSelectedChanged(int paramAnonymousInt, List<Integer> paramAnonymousList)
      {
        if (paramAnonymousList.size() > 16)
        {
          ToastUtil.shortToast(DaletouOptionalPanelFragment.this.getActivity(), R.string.toast_daletou_optional_not_execced_16_redball);
          DaletouOptionalPanelFragment.this.selectorPanelRed.negationItem(paramAnonymousInt);
          return;
        }
        DaletouOptionalPanelFragment.this.procssBallClickedEvent(DaletouOptionalPanelFragment.this.selectorPanelRed, paramAnonymousInt);
      }
    });
    this.selectorPanelBlue = ((BallSelectorPanel)paramView.findViewById(R.id.optional_blue_panel));
    this.selectorPanelBlue.init(1, 12, BallSelectorPanel.BallColer.BLUE);
    this.selectorPanelBlue.setOnSelectorChangedListener(new BallSelectorPanel.SelectorChangedListener()
    {
      public void onSelectedChanged(int paramAnonymousInt, List<Integer> paramAnonymousList)
      {
        DaletouOptionalPanelFragment.this.procssBallClickedEvent(DaletouOptionalPanelFragment.this.selectorPanelBlue, paramAnonymousInt);
      }
    });
    this.randomBallsTextView = ((TextView)paramView.findViewById(R.id.optional_random));
    this.randomBallsTextView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        DaletouOptionalPanelFragment.this.showNumberPicker();
      }
    });
    this.yaoyiyaorandomBallsTextView = ((TextView)paramView.findViewById(R.id.yaoyiyao_random));
    TextView localTextView = this.yaoyiyaorandomBallsTextView;
    Resources localResources = getResources();
    int i = R.string.shake_random_select_num;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(PreferenceUtil.getInt(getActivity(), "shake_random_num_dlt", 1));
    localTextView.setText(localResources.getString(i, arrayOfObject));
    this.yaoyiyaorandomBallsTextView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        DaletouOptionalPanelFragment.this.showPopupWindow(paramAnonymousView);
      }
    });
  }
  
  private void shouYaoyiyaoResult()
  {
    this.selectorPanelRed.clean();
    this.selectorPanelBlue.clean();
    int i = PreferenceUtil.getInt(getActivity(), "shake_random_num_dlt", 1);
    if (i == 1)
    {
      List localList = this.formatter.random(5, 2);
      this.selectorPanelRed.setSelected((List)localList.get(0));
      this.selectorPanelBlue.setSelected((List)localList.get(1));
      updateBetBasicInfo();
      return;
    }
    FragmentTransaction localFragmentTransaction = getFragmentManager().beginTransaction();
    Fragment localFragment = getFragmentManager().findFragmentByTag("daletou");
    if (localFragment != null)
    {
      localFragmentTransaction.remove(localFragment);
      localFragmentTransaction.addToBackStack(null);
      return;
    }
    this.ssqRandomListDialogFragment = RandomListDialogFragment.newInstance(i, Constants.LotteryType.DaLeTou);
    this.ssqRandomListDialogFragment.show(localFragmentTransaction, "daletou");
  }
  
  private void showNumberPicker()
  {
    NumberPickerDialogFragment localNumberPickerDialogFragment = NumberPickerDialogFragment.newInstance(5, 16, 2, 12, Constants.LotteryType.DaLeTou);
    localNumberPickerDialogFragment.show(getActivity().getSupportFragmentManager(), "numberpicker");
    localNumberPickerDialogFragment.setNumberPickeredListener(new NumberPickerDialogFragment.NumberPickeredListener()
    {
      public void onNumberPickered(int paramAnonymousInt1, int paramAnonymousInt2)
      {
        List localList = DaletouOptionalPanelFragment.this.formatter.random(paramAnonymousInt1, paramAnonymousInt2);
        DaletouOptionalPanelFragment.this.selectorPanelRed.setSelected((List)localList.get(0));
        DaletouOptionalPanelFragment.this.selectorPanelBlue.setSelected((List)localList.get(1));
        DaletouOptionalPanelFragment.this.updateBetBasicInfo();
      }
    });
  }
  
  private void showPopupWindow(View paramView)
  {
    LinearLayout localLinearLayout = (LinearLayout)LayoutInflater.from(getActivity()).inflate(R.layout.widget_shake_random_select, null);
    final PopupWindow localPopupWindow = new PopupWindow(localLinearLayout);
    localPopupWindow.setBackgroundDrawable(getResources().getDrawable(R.drawable.public_box_bg));
    localPopupWindow.setWindowLayoutMode(-2, -2);
    localPopupWindow.setFocusable(true);
    localPopupWindow.setOutsideTouchable(true);
    localLinearLayout.findViewById(R.id.shake_ranom_select_1).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        TextView localTextView = DaletouOptionalPanelFragment.this.yaoyiyaorandomBallsTextView;
        Resources localResources = DaletouOptionalPanelFragment.this.getResources();
        int i = R.string.shake_random_select_num;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(1);
        localTextView.setText(localResources.getString(i, arrayOfObject));
        PreferenceUtil.putInt(DaletouOptionalPanelFragment.this.getActivity(), "shake_random_num_dlt", 1);
        localPopupWindow.dismiss();
      }
    });
    localLinearLayout.findViewById(R.id.shake_ranom_select_2).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        TextView localTextView = DaletouOptionalPanelFragment.this.yaoyiyaorandomBallsTextView;
        Resources localResources = DaletouOptionalPanelFragment.this.getResources();
        int i = R.string.shake_random_select_num;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(5);
        localTextView.setText(localResources.getString(i, arrayOfObject));
        PreferenceUtil.putInt(DaletouOptionalPanelFragment.this.getActivity(), "shake_random_num_dlt", 5);
        localPopupWindow.dismiss();
      }
    });
    localLinearLayout.findViewById(R.id.shake_ranom_select_3).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        TextView localTextView = DaletouOptionalPanelFragment.this.yaoyiyaorandomBallsTextView;
        Resources localResources = DaletouOptionalPanelFragment.this.getResources();
        int i = R.string.shake_random_select_num;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(10);
        localTextView.setText(localResources.getString(i, arrayOfObject));
        PreferenceUtil.putInt(DaletouOptionalPanelFragment.this.getActivity(), "shake_random_num_dlt", 10);
        localPopupWindow.dismiss();
      }
    });
    try
    {
      localPopupWindow.showAsDropDown(paramView);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  private void showYaoyiyaoRandom()
  {
    if ((this.selectorPanelRed.getSelectedNums().size() != 0) || (this.selectorPanelBlue.getSelectedNums().size() != 0))
    {
      FragmentTransaction localFragmentTransaction = getFragmentManager().beginTransaction();
      Fragment localFragment = getFragmentManager().findFragmentByTag("yaoyiyao_clean");
      if (localFragment != null)
      {
        localFragmentTransaction.remove(localFragment);
        localFragmentTransaction.addToBackStack(null);
        return;
      }
      this.yaoyiyaoCleanDialogFragment = AlertDialogFragment.newInstance(getResources().getString(R.string.shake_random_clean_panel_title), getResources().getString(R.string.shake_random_clean_panel_message));
      this.yaoyiyaoCleanDialogFragment.setOnActionClickListener(new AlertDialogFragment.ActionClickListener()
      {
        public void onLeftClicked() {}
        
        public void onRightClicked()
        {
          DaletouOptionalPanelFragment.this.shouYaoyiyaoResult();
        }
      });
      this.yaoyiyaoCleanDialogFragment.show(localFragmentTransaction, "yaoyiyao_clean");
      return;
    }
    shouYaoyiyaoResult();
  }
  
  public void addLottery()
  {
    if ((((List)getSelectedBalls().get(0)).size() == 5) && (((List)getSelectedBalls().get(1)).size() == 2)) {}
    for (int i = 0;; i = 1)
    {
      if (Util.checkRule(getActivity(), this.formatter, getSelectedBalls(), i, true))
      {
        if (getTotalMoney() <= 20000L) {
          break;
        }
        ToastUtil.shortToast(getActivity(), R.string.toast_not_exceed_2w);
      }
      return;
    }
    LotteryBasket.getInstance().addLottery(Formatter.DLT, i, getSelectedBalls());
    ToastUtil.shortToast(getActivity(), R.string.add_to_basket_success);
    clean();
    updateBetBasicInfo();
  }
  
  public void clean()
  {
    this.selectorPanelRed.clean();
    this.selectorPanelBlue.clean();
  }
  
  public List<List<Integer>> getSelectedBalls()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(this.selectorPanelRed.getSelectedNums());
    localArrayList.add(this.selectorPanelBlue.getSelectedNums());
    return localArrayList;
  }
  
  public long getTotalMoney()
  {
    return 2L * this.formatter.calculate(getSelectedBalls());
  }
  
  public boolean isEmpty()
  {
    return (this.selectorPanelRed.getSelectedNums().isEmpty()) && (this.selectorPanelBlue.getSelectedNums().isEmpty());
  }
  
  public boolean isLegalLottery()
  {
    if ((((List)getSelectedBalls().get(0)).size() == 5) && (((List)getSelectedBalls().get(1)).size() == 2)) {}
    for (int i = 0;; i = 1) {
      return Util.checkRule(getActivity(), this.formatter, getSelectedBalls(), i, false);
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.formatter = Formatter.getFormatter(Formatter.DLT, 0);
    this.mShakeListener = new ShakeListener(getActivity());
    this.mShakeListener.setOnShakeListener(new ShakeListener.OnShakeListener()
    {
      public void onShake()
      {
        DaletouOptionalPanelFragment.this.showYaoyiyaoRandom();
      }
    });
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.freagmentView = paramLayoutInflater.inflate(R.layout.fragment_optional_selector, paramViewGroup, false);
    setupViews(this.freagmentView);
    return this.freagmentView;
  }
  
  public void onPause()
  {
    this.mShakeListener.stop();
    super.onPause();
  }
  
  public void onResume()
  {
    this.mShakeListener.start();
    super.onResume();
  }
  
  public void selSelectedBalls(List<List<Integer>> paramList)
  {
    this.selectorPanelRed.setSelected((List)paramList.get(0));
    this.selectorPanelBlue.setSelected((List)paramList.get(1));
  }
  
  public void setShakeSensorWork(boolean paramBoolean)
  {
    if (this.mShakeListener != null)
    {
      if (paramBoolean) {
        this.mShakeListener.start();
      }
    }
    else {
      return;
    }
    this.mShakeListener.stop();
  }
  
  public void updateBetBasicInfo()
  {
    ((LotteryActivity)getActivity()).setbetBasicInfoText(this.formatter.calculate(getSelectedBalls()));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.ui.widget.DaletouOptionalPanelFragment
 * JD-Core Version:    0.7.0.1
 */