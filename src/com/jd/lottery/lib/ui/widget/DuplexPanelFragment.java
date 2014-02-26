package com.jd.lottery.lib.ui.widget;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.jd.lottery.lib.R.id;
import com.jd.lottery.lib.R.layout;
import com.jd.lottery.lib.R.string;
import com.jd.lottery.lib.activity.LotteryActivity;
import com.jd.lottery.lib.formatter.Formatter;
import com.jd.lottery.lib.formatter.LotteryBasket;
import com.jd.lottery.lib.utils.Util;
import java.util.ArrayList;
import java.util.List;

public class DuplexPanelFragment
  extends AbsPanelFragment
{
  private Formatter formatter;
  private View freagmentView;
  private BallSelectorPanel selectorPanelBlue;
  private BallSelectorPanel selectorPanelDanma;
  private BallSelectorPanel selectorPanelTuoma;
  
  private void setupViews(View paramView)
  {
    this.selectorPanelDanma = ((BallSelectorPanel)paramView.findViewById(R.id.duplex_danma_panel));
    this.selectorPanelDanma.init(1, 33, BallSelectorPanel.BallColer.RED);
    this.selectorPanelDanma.setOnSelectorChangedListener(new BallSelectorPanel.SelectorChangedListener()
    {
      public void onSelectedChanged(int paramAnonymousInt, List<Integer> paramAnonymousList)
      {
        if (DuplexPanelFragment.this.selectorPanelTuoma.isSelected(paramAnonymousInt)) {
          DuplexPanelFragment.this.selectorPanelTuoma.negationItem(paramAnonymousInt);
        }
        if (paramAnonymousList.size() > 5)
        {
          ToastUtil.shortToast(DuplexPanelFragment.this.getActivity(), R.string.toast_ssq_duplex_not_execced_5_danma);
          DuplexPanelFragment.this.selectorPanelDanma.negationItem(paramAnonymousInt);
          return;
        }
        if (DuplexPanelFragment.this.selectorPanelDanma.getSelectedNums().size() + DuplexPanelFragment.this.selectorPanelTuoma.getSelectedNums().size() > 20)
        {
          ToastUtil.shortToast(DuplexPanelFragment.this.getActivity(), R.string.toast_ssq_duplex_not_execced_20_danma_plus_tuoma);
          DuplexPanelFragment.this.selectorPanelDanma.negationItem(paramAnonymousInt);
          return;
        }
        DuplexPanelFragment.this.procssBallClickedEvent(DuplexPanelFragment.this.selectorPanelDanma, paramAnonymousInt);
      }
    });
    this.selectorPanelTuoma = ((BallSelectorPanel)paramView.findViewById(R.id.duplex_tuoma_panel));
    this.selectorPanelTuoma.init(1, 33, BallSelectorPanel.BallColer.RED);
    this.selectorPanelTuoma.setOnSelectorChangedListener(new BallSelectorPanel.SelectorChangedListener()
    {
      public void onSelectedChanged(int paramAnonymousInt, List<Integer> paramAnonymousList)
      {
        if (DuplexPanelFragment.this.selectorPanelDanma.isSelected(paramAnonymousInt)) {
          DuplexPanelFragment.this.selectorPanelDanma.negationItem(paramAnonymousInt);
        }
        if (DuplexPanelFragment.this.selectorPanelDanma.getSelectedNums().size() + DuplexPanelFragment.this.selectorPanelTuoma.getSelectedNums().size() > 20)
        {
          ToastUtil.shortToast(DuplexPanelFragment.this.getActivity(), R.string.toast_ssq_duplex_not_execced_20_danma_plus_tuoma);
          DuplexPanelFragment.this.selectorPanelTuoma.negationItem(paramAnonymousInt);
          return;
        }
        DuplexPanelFragment.this.procssBallClickedEvent(DuplexPanelFragment.this.selectorPanelTuoma, paramAnonymousInt);
      }
    });
    this.selectorPanelBlue = ((BallSelectorPanel)paramView.findViewById(R.id.duplex_blue_ball_panel));
    this.selectorPanelBlue.init(1, 16, BallSelectorPanel.BallColer.BLUE);
    this.selectorPanelBlue.setOnSelectorChangedListener(new BallSelectorPanel.SelectorChangedListener()
    {
      public void onSelectedChanged(int paramAnonymousInt, List<Integer> paramAnonymousList)
      {
        DuplexPanelFragment.this.procssBallClickedEvent(DuplexPanelFragment.this.selectorPanelBlue, paramAnonymousInt);
      }
    });
  }
  
  public void addLottery()
  {
    if (Util.checkRule(getActivity(), this.formatter, getSelectedBalls(), 2, true))
    {
      if (getTotalMoney() > 20000L) {
        ToastUtil.shortToast(getActivity(), R.string.toast_not_exceed_2w);
      }
    }
    else {
      return;
    }
    LotteryBasket.getInstance().addLottery(Formatter.SSQ, 2, getSelectedBalls());
    ToastUtil.shortToast(getActivity(), R.string.add_to_basket_success);
    clean();
    updateBetBasicInfo();
  }
  
  public void clean()
  {
    this.selectorPanelDanma.clean();
    this.selectorPanelTuoma.clean();
    this.selectorPanelBlue.clean();
  }
  
  public List<List<Integer>> getSelectedBalls()
  {
    ArrayList localArrayList = new ArrayList();
    if ((this.selectorPanelDanma != null) && (this.selectorPanelTuoma != null) && (this.selectorPanelBlue != null))
    {
      localArrayList.add(this.selectorPanelDanma.getSelectedNums());
      localArrayList.add(this.selectorPanelTuoma.getSelectedNums());
      localArrayList.add(this.selectorPanelBlue.getSelectedNums());
    }
    return localArrayList;
  }
  
  public long getTotalMoney()
  {
    return 2L * this.formatter.calculate(getSelectedBalls());
  }
  
  public boolean isEmpty()
  {
    return (this.selectorPanelDanma.getSelectedNums().isEmpty()) && (this.selectorPanelTuoma.getSelectedNums().isEmpty()) && (this.selectorPanelBlue.getSelectedNums().isEmpty());
  }
  
  public boolean isLegalLottery()
  {
    return Util.checkRule(getActivity(), this.formatter, getSelectedBalls(), 2, false);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.formatter = Formatter.getFormatter(Formatter.SSQ, 2);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.freagmentView = paramLayoutInflater.inflate(R.layout.fragment_duplex_selector, paramViewGroup, false);
    setupViews(this.freagmentView);
    return this.freagmentView;
  }
  
  public void onResume()
  {
    super.onResume();
  }
  
  public void selSelectedBalls(List<List<Integer>> paramList)
  {
    if (paramList.size() != 3) {
      return;
    }
    this.selectorPanelDanma.setSelected((List)paramList.get(0));
    this.selectorPanelTuoma.setSelected((List)paramList.get(1));
    this.selectorPanelBlue.setSelected((List)paramList.get(2));
  }
  
  public void updateBetBasicInfo()
  {
    ((LotteryActivity)getActivity()).setbetBasicInfoText(this.formatter.calculate(getSelectedBalls()));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.ui.widget.DuplexPanelFragment
 * JD-Core Version:    0.7.0.1
 */