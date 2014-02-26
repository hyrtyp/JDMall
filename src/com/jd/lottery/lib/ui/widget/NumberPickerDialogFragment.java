package com.jd.lottery.lib.ui.widget;

import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.jd.lottery.lib.R.id;
import com.jd.lottery.lib.R.layout;
import com.jd.lottery.lib.R.string;
import com.jd.lottery.lib.data.Constants.LotteryType;
import com.jd.lottery.lib.utils.PreferenceUtil;
import net.simonvt.numberpicker.NumberPicker;

public class NumberPickerDialogFragment
  extends DialogFragment
{
  private static final String BLUE_BALL_MAX = "blue_ball_max";
  private static final String BLUE_BALL_MIN = "blue_ball_min";
  private static final String LOTTERY_TYPE = "lottery_type";
  private static final String RED_BALL_MAX = "red_ball_max";
  private static final String RED_BALL_MIN = "red_ball_min";
  private int blueBallMax;
  private int blueBallMin;
  private int latestBlue;
  private int latestRed;
  private Constants.LotteryType lotteryType;
  private NumberPickeredListener numberPickeredListener;
  private int redBallMax;
  private int redBallMin;
  
  public static NumberPickerDialogFragment newInstance(int paramInt1, int paramInt2, int paramInt3, int paramInt4, Constants.LotteryType paramLotteryType)
  {
    NumberPickerDialogFragment localNumberPickerDialogFragment = new NumberPickerDialogFragment();
    Bundle localBundle = new Bundle();
    localBundle.putInt("red_ball_min", paramInt1);
    localBundle.putInt("red_ball_max", paramInt2);
    localBundle.putInt("blue_ball_min", paramInt3);
    localBundle.putInt("blue_ball_max", paramInt4);
    localBundle.putSerializable("lottery_type", paramLotteryType);
    localNumberPickerDialogFragment.setArguments(localBundle);
    return localNumberPickerDialogFragment;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.redBallMin = getArguments().getInt("red_ball_min");
    this.redBallMax = getArguments().getInt("red_ball_max");
    this.blueBallMin = getArguments().getInt("blue_ball_min");
    this.blueBallMax = getArguments().getInt("blue_ball_max");
    this.lotteryType = ((Constants.LotteryType)getArguments().getSerializable("lottery_type"));
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    getDialog().getWindow().requestFeature(1);
    LinearLayout localLinearLayout = (LinearLayout)paramLayoutInflater.inflate(R.layout.fragmentdialog_number_picker, paramViewGroup, false);
    TextView localTextView1 = (TextView)localLinearLayout.findViewById(R.id.fragment_number_picker_red_text);
    TextView localTextView2 = (TextView)localLinearLayout.findViewById(R.id.fragment_number_picker_blue_text);
    if (this.lotteryType == Constants.LotteryType.DoubleColor)
    {
      localTextView1.setText(R.string.red_ball);
      localTextView2.setText(R.string.blue_ball);
    }
    for (;;)
    {
      final NumberPicker localNumberPicker1 = (NumberPicker)localLinearLayout.findViewById(R.id.fragment_number_picker_red);
      final NumberPicker localNumberPicker2 = (NumberPicker)localLinearLayout.findViewById(R.id.fragment_number_picker_blue);
      localNumberPicker1.setMinValue(this.redBallMin);
      localNumberPicker1.setMaxValue(this.redBallMax);
      localNumberPicker1.setWrapSelectorWheel(false);
      localNumberPicker1.setDescendantFocusability(393216);
      localNumberPicker2.setMinValue(this.blueBallMin);
      localNumberPicker2.setMaxValue(this.blueBallMax);
      localNumberPicker2.setWrapSelectorWheel(false);
      localNumberPicker2.setDescendantFocusability(393216);
      this.latestRed = PreferenceUtil.getInt(getActivity(), "latest_red" + this.lotteryType.getValue(), this.redBallMin);
      this.latestBlue = PreferenceUtil.getInt(getActivity(), "latest_blue" + this.lotteryType.getValue(), this.blueBallMin);
      localNumberPicker1.setValue(this.latestRed);
      localNumberPicker2.setValue(this.latestBlue);
      TextView localTextView3 = (TextView)localLinearLayout.findViewById(R.id.fragment_dialog_ok);
      TextView localTextView4 = (TextView)localLinearLayout.findViewById(R.id.fragment_dialog_cancle);
      localTextView3.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (NumberPickerDialogFragment.this.numberPickeredListener != null)
          {
            PreferenceUtil.putInt(NumberPickerDialogFragment.this.getActivity(), "latest_red" + NumberPickerDialogFragment.this.lotteryType.getValue(), localNumberPicker1.getValue());
            PreferenceUtil.putInt(NumberPickerDialogFragment.this.getActivity(), "latest_blue" + NumberPickerDialogFragment.this.lotteryType.getValue(), localNumberPicker2.getValue());
            NumberPickerDialogFragment.this.numberPickeredListener.onNumberPickered(localNumberPicker1.getValue(), localNumberPicker2.getValue());
          }
          NumberPickerDialogFragment.this.dismiss();
        }
      });
      localTextView4.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          NumberPickerDialogFragment.this.dismiss();
        }
      });
      return localLinearLayout;
      if (this.lotteryType == Constants.LotteryType.DaLeTou)
      {
        localTextView1.setText(R.string.qianqu);
        localTextView2.setText(R.string.houqu);
      }
    }
  }
  
  public void setNumberPickeredListener(NumberPickeredListener paramNumberPickeredListener)
  {
    this.numberPickeredListener = paramNumberPickeredListener;
  }
  
  public static abstract interface NumberPickeredListener
  {
    public abstract void onNumberPickered(int paramInt1, int paramInt2);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.ui.widget.NumberPickerDialogFragment
 * JD-Core Version:    0.7.0.1
 */