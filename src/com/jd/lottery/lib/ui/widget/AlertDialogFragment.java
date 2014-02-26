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

public class AlertDialogFragment
  extends DialogFragment
{
  private static final String MESSAGE = "message";
  private static final String TITLE = "title";
  ActionClickListener actionClickListener;
  private TextView addToLotteryBasketTextView;
  private TextView cancleTextView;
  private String message;
  private TextView messageTextView;
  private String title;
  private TextView titleTextView;
  
  public static AlertDialogFragment newInstance(String paramString1, String paramString2)
  {
    AlertDialogFragment localAlertDialogFragment = new AlertDialogFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("title", paramString1);
    localBundle.putString("message", paramString2);
    localAlertDialogFragment.setArguments(localBundle);
    return localAlertDialogFragment;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.title = getArguments().getString("title");
    this.message = getArguments().getString("message");
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    getDialog().getWindow().requestFeature(1);
    LinearLayout localLinearLayout = (LinearLayout)paramLayoutInflater.inflate(R.layout.fragmentdialog_alert, paramViewGroup, false);
    this.titleTextView = ((TextView)localLinearLayout.findViewById(R.id.fragment_alert_dialog_title));
    this.titleTextView.setText(this.title);
    this.messageTextView = ((TextView)localLinearLayout.findViewById(R.id.fragment_alert_dialog_message));
    this.messageTextView.setText(this.message);
    this.cancleTextView = ((TextView)localLinearLayout.findViewById(R.id.fragment_alert_dialog_cancle));
    this.cancleTextView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (AlertDialogFragment.this.actionClickListener != null) {
          AlertDialogFragment.this.actionClickListener.onLeftClicked();
        }
        AlertDialogFragment.this.dismiss();
      }
    });
    this.addToLotteryBasketTextView = ((TextView)localLinearLayout.findViewById(R.id.fragment_alert_dialog_ok));
    this.addToLotteryBasketTextView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (AlertDialogFragment.this.actionClickListener != null) {
          AlertDialogFragment.this.actionClickListener.onRightClicked();
        }
        AlertDialogFragment.this.dismiss();
      }
    });
    return localLinearLayout;
  }
  
  public void setOnActionClickListener(ActionClickListener paramActionClickListener)
  {
    this.actionClickListener = paramActionClickListener;
  }
  
  public static abstract interface ActionClickListener
  {
    public abstract void onLeftClicked();
    
    public abstract void onRightClicked();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.ui.widget.AlertDialogFragment
 * JD-Core Version:    0.7.0.1
 */