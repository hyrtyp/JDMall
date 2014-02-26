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

public class DaletouDuplexPanelFragment
  extends AbsPanelFragment
{
  private Formatter formatter;
  private View freagmentView;
  private BallSelectorPanel selectorPanelHoudan;
  private BallSelectorPanel selectorPanelHoutuo;
  private BallSelectorPanel selectorPanelQiandan;
  private BallSelectorPanel selectorPanelQiantuo;
  
  private void setupViews(View paramView)
  {
    this.selectorPanelQiandan = ((BallSelectorPanel)paramView.findViewById(R.id.dlt_duplex_qiandan_panel));
    this.selectorPanelQiandan.init(1, 35, BallSelectorPanel.BallColer.RED);
    this.selectorPanelQiandan.setOnSelectorChangedListener(new BallSelectorPanel.SelectorChangedListener()
    {
      public void onSelectedChanged(int paramAnonymousInt, List<Integer> paramAnonymousList)
      {
        if (DaletouDuplexPanelFragment.this.selectorPanelQiantuo.isSelected(paramAnonymousInt)) {
          DaletouDuplexPanelFragment.this.selectorPanelQiantuo.negationItem(paramAnonymousInt);
        }
        if (paramAnonymousList.size() > 4)
        {
          ToastUtil.shortToast(DaletouDuplexPanelFragment.this.getActivity(), R.string.toast_daletou_duplex_not_execced_4_qiandanma);
          DaletouDuplexPanelFragment.this.selectorPanelQiandan.negationItem(paramAnonymousInt);
          return;
        }
        DaletouDuplexPanelFragment.this.procssBallClickedEvent(DaletouDuplexPanelFragment.this.selectorPanelQiandan, paramAnonymousInt);
      }
    });
    this.selectorPanelQiantuo = ((BallSelectorPanel)paramView.findViewById(R.id.dlt_duplex_qiantuo_panel));
    this.selectorPanelQiantuo.init(1, 35, BallSelectorPanel.BallColer.RED);
    this.selectorPanelQiantuo.setOnSelectorChangedListener(new BallSelectorPanel.SelectorChangedListener()
    {
      public void onSelectedChanged(int paramAnonymousInt, List<Integer> paramAnonymousList)
      {
        if (DaletouDuplexPanelFragment.this.selectorPanelQiandan.isSelected(paramAnonymousInt)) {
          DaletouDuplexPanelFragment.this.selectorPanelQiandan.negationItem(paramAnonymousInt);
        }
        DaletouDuplexPanelFragment.this.procssBallClickedEvent(DaletouDuplexPanelFragment.this.selectorPanelQiantuo, paramAnonymousInt);
      }
    });
    this.selectorPanelHoudan = ((BallSelectorPanel)paramView.findViewById(R.id.dlt_duplex_houdan_panel));
    this.selectorPanelHoudan.init(1, 12, BallSelectorPanel.BallColer.BLUE);
    this.selectorPanelHoudan.setOnSelectorChangedListener(new BallSelectorPanel.SelectorChangedListener()
    {
      public void onSelectedChanged(int paramAnonymousInt, List<Integer> paramAnonymousList)
      {
        if (DaletouDuplexPanelFragment.this.selectorPanelHoutuo.isSelected(paramAnonymousInt)) {
          DaletouDuplexPanelFragment.this.selectorPanelHoutuo.negationItem(paramAnonymousInt);
        }
        DaletouDuplexPanelFragment.this.selectorPanelHoudan.cleanOthers(paramAnonymousInt);
        DaletouDuplexPanelFragment.this.procssBallClickedEvent(DaletouDuplexPanelFragment.this.selectorPanelHoudan, paramAnonymousInt);
      }
    });
    this.selectorPanelHoutuo = ((BallSelectorPanel)paramView.findViewById(R.id.dlt_duplex_houtuo_panel));
    this.selectorPanelHoutuo.init(1, 12, BallSelectorPanel.BallColer.BLUE);
    this.selectorPanelHoutuo.setOnSelectorChangedListener(new BallSelectorPanel.SelectorChangedListener()
    {
      public void onSelectedChanged(int paramAnonymousInt, List<Integer> paramAnonymousList)
      {
        if (DaletouDuplexPanelFragment.this.selectorPanelHoudan.isSelected(paramAnonymousInt)) {
          DaletouDuplexPanelFragment.this.selectorPanelHoudan.negationItem(paramAnonymousInt);
        }
        DaletouDuplexPanelFragment.this.procssBallClickedEvent(DaletouDuplexPanelFragment.this.selectorPanelHoutuo, paramAnonymousInt);
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
    LotteryBasket.getInstance().addLottery(Formatter.DLT, 2, getSelectedBalls());
    ToastUtil.shortToast(getActivity(), R.string.add_to_basket_success);
    clean();
    updateBetBasicInfo();
  }
  
  public void clean()
  {
    this.selectorPanelQiandan.clean();
    this.selectorPanelQiantuo.clean();
    this.selectorPanelHoudan.clean();
    this.selectorPanelHoutuo.clean();
  }
  
  public List<List<Integer>> getSelectedBalls()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(this.selectorPanelQiandan.getSelectedNums());
    localArrayList.add(this.selectorPanelQiantuo.getSelectedNums());
    localArrayList.add(this.selectorPanelHoudan.getSelectedNums());
    localArrayList.add(this.selectorPanelHoutuo.getSelectedNums());
    return localArrayList;
  }
  
  public long getTotalMoney()
  {
    return 2L * this.formatter.calculate(getSelectedBalls());
  }
  
  public boolean isEmpty()
  {
    return (this.selectorPanelQiandan.getSelectedNums().isEmpty()) && (this.selectorPanelQiantuo.getSelectedNums().isEmpty()) && (this.selectorPanelHoudan.getSelectedNums().isEmpty()) && (this.selectorPanelHoutuo.getSelectedNums().isEmpty());
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
    this.formatter = Formatter.getFormatter(Formatter.DLT, 2);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.freagmentView = paramLayoutInflater.inflate(R.layout.fragment_daletou_duplex_selector, paramViewGroup, false);
    setupViews(this.freagmentView);
    return this.freagmentView;
  }
  
  public void onResume()
  {
    super.onResume();
  }
  
  public void selSelectedBalls(List<List<Integer>> paramList)
  {
    if (paramList.size() != 4) {
      return;
    }
    this.selectorPanelQiandan.setSelected((List)paramList.get(0));
    this.selectorPanelQiantuo.setSelected((List)paramList.get(1));
    this.selectorPanelHoudan.setSelected((List)paramList.get(2));
    this.selectorPanelHoutuo.setSelected((List)paramList.get(3));
  }
  
  public void updateBetBasicInfo()
  {
    ((LotteryActivity)getActivity()).setbetBasicInfoText(this.formatter.calculate(getSelectedBalls()));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.ui.widget.DaletouDuplexPanelFragment
 * JD-Core Version:    0.7.0.1
 */