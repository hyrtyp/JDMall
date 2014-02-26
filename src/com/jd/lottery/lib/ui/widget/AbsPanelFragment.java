package com.jd.lottery.lib.ui.widget;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.jd.lottery.lib.R.string;
import java.util.List;

public abstract class AbsPanelFragment
  extends Fragment
{
  public abstract void addLottery();
  
  public abstract void clean();
  
  public abstract List<List<Integer>> getSelectedBalls();
  
  public abstract long getTotalMoney();
  
  public abstract boolean isEmpty();
  
  public abstract boolean isLegalLottery();
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
  }
  
  public void onPause()
  {
    super.onPause();
  }
  
  public void onResume()
  {
    super.onResume();
  }
  
  public void onStop()
  {
    super.onStop();
  }
  
  public void procssBallClickedEvent(BallSelectorPanel paramBallSelectorPanel, int paramInt)
  {
    if ((getTotalMoney() > 20000L) && (paramBallSelectorPanel.isSelected(paramInt)))
    {
      paramBallSelectorPanel.negationItem(paramInt);
      ToastUtil.shortToast(getActivity(), R.string.toast_not_exceed_2w);
    }
    updateBetBasicInfo();
  }
  
  public abstract void selSelectedBalls(List<List<Integer>> paramList);
  
  public abstract void updateBetBasicInfo();
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.ui.widget.AbsPanelFragment
 * JD-Core Version:    0.7.0.1
 */