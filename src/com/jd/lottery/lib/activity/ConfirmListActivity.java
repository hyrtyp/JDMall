package com.jd.lottery.lib.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnLongClickListener;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.jd.lottery.lib.R.drawable;
import com.jd.lottery.lib.R.id;
import com.jd.lottery.lib.R.layout;
import com.jd.lottery.lib.R.string;
import com.jd.lottery.lib.adapter.ConfirmListAdapter;
import com.jd.lottery.lib.data.LoginManager;
import com.jd.lottery.lib.formatter.Formatter;
import com.jd.lottery.lib.formatter.LotteryBasket;
import com.jd.lottery.lib.formatter.LotteryBasket.LotteryItem;
import com.jd.lottery.lib.model.IssueEntity;
import com.jd.lottery.lib.ui.widget.AlertDialogFragment;
import com.jd.lottery.lib.ui.widget.AlertDialogFragment.ActionClickListener;
import com.jd.lottery.lib.ui.widget.StuanTitle;
import com.jd.lottery.lib.ui.widget.StuanTitle.TitleClickListener;
import com.jd.lottery.lib.ui.widget.ToastUtil;
import com.jd.lottery.lib.utils.UiUtils;
import com.jd.lottery.lib.utils.Util;
import java.util.List;

public class ConfirmListActivity
  extends BaseActivity
{
  private static final String ISSUE_ENTITY = "essueEntity";
  private static final String KIND = "kind";
  private static final String TYPE = "type";
  private CheckBox aggrementCheckBox;
  private TextView aggrementTextView;
  private IssueEntity issueEntity;
  private ConfirmListAdapter mAdapter;
  private boolean mCheck = false;
  private ImageView mCheckBox;
  private TextView mCheckText;
  private TextView mDescription;
  private Formatter mFormatter;
  private int mKind;
  private EditText mNumbers;
  private EditText mTimes;
  private StuanTitle mTitle;
  private TextView mTotal;
  private int mType;
  
  private int calculateTotalMoney(int paramInt1, int paramInt2)
  {
    return paramInt1 * (paramInt2 * LotteryBasket.getInstance().totalMoney(this.mKind, this.mFormatter));
  }
  
  private void displayTotalMoney()
  {
    int i = calculateTotalMoney(getEditValue(this.mTimes), getEditValue(this.mNumbers));
    TextView localTextView1 = this.mDescription;
    Resources localResources1 = getResources();
    int j = R.string.total_term_formater;
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Integer.valueOf(i / 2 / getEditValue(this.mTimes) / getEditValue(this.mNumbers));
    arrayOfObject1[1] = Integer.valueOf(getEditValue(this.mNumbers));
    arrayOfObject1[2] = Integer.valueOf(getEditValue(this.mTimes));
    localTextView1.setText(localResources1.getString(j, arrayOfObject1));
    TextView localTextView2 = this.mTotal;
    Resources localResources2 = getResources();
    int k = R.string.total_money_formater;
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Integer.valueOf(i);
    localTextView2.setText(localResources2.getString(k, arrayOfObject2));
  }
  
  private int getEditValue(EditText paramEditText)
  {
    String str = paramEditText.getText().toString();
    if (str.length() == 0) {
      return 1;
    }
    return Integer.valueOf(str).intValue();
  }
  
  private int getStopFlag()
  {
    if (this.mCheck) {
      return 1;
    }
    return 3;
  }
  
  public static void launch(Activity paramActivity, int paramInt1, int paramInt2, IssueEntity paramIssueEntity)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("kind", paramInt1);
    localIntent.putExtra("type", paramInt2);
    localIntent.putExtra("essueEntity", paramIssueEntity);
    localIntent.setClass(paramActivity, ConfirmListActivity.class);
    paramActivity.startActivity(localIntent);
  }
  
  private void submit()
  {
    if (!this.aggrementCheckBox.isChecked())
    {
      ToastUtil.shortToast(getApplicationContext(), R.string.toast_aggrement_unchecked);
      return;
    }
    if (LotteryBasket.getInstance().getLotterys(this.mKind) == 0)
    {
      ToastUtil.shortToast(getApplicationContext(), R.string.toast_basket_is_empty);
      return;
    }
    int i = getEditValue(this.mNumbers);
    int j = getEditValue(this.mTimes);
    int k = calculateTotalMoney(getEditValue(this.mTimes), getEditValue(this.mNumbers));
    if (k > 20000)
    {
      ToastUtil.shortToast(this, R.string.toast_not_exceed_2w);
      return;
    }
    List localList = this.mAdapter.getLotterys();
    for (int m = 0;; m++)
    {
      if (m >= localList.size())
      {
        if (LoginManager.getInstance().hasLogin()) {
          break label201;
        }
        startActivityForResult(LoginManager.getInstance().loginIntent(), 911);
        return;
      }
      if (!Util.checkRule(this, this.mFormatter, this.mFormatter.data_formatter(((LotteryBasket.LotteryItem)localList.get(m)).mLottery), ((LotteryBasket.LotteryItem)localList.get(m)).mType, true)) {
        break;
      }
    }
    label201:
    ConfirmOrderActivity.launch(this, this.mKind, this.mType, i, j, k / 2 / j / i, k, getStopFlag(), this.issueEntity);
  }
  
  public void finish()
  {
    LotteryBasket.getInstance().setTimeAndNumber(this.mKind, getEditValue(this.mTimes), getEditValue(this.mNumbers), this.mCheck);
    super.finish();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == -1)
    {
      int i = getEditValue(this.mNumbers);
      int j = getEditValue(this.mTimes);
      int k = calculateTotalMoney(getEditValue(this.mTimes), getEditValue(this.mNumbers));
      ConfirmOrderActivity.launch(this, this.mKind, this.mType, i, j, k / 2 / j / i, k, getStopFlag(), this.issueEntity);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.confirm_list);
    Intent localIntent = getIntent();
    this.mKind = localIntent.getIntExtra("kind", -1);
    this.mType = localIntent.getIntExtra("type", -1);
    this.issueEntity = ((IssueEntity)localIntent.getSerializableExtra("essueEntity"));
    this.mFormatter = Formatter.getFormatter(this.mKind, this.mType);
    this.mTitle = ((StuanTitle)findViewById(R.id.titlebar));
    this.mTitle.setOnTitleClickListener(new StuanTitle.TitleClickListener()
    {
      public void onLeftClicked() {}
      
      public void onRightClicked()
      {
        if (ConfirmListActivity.this.mAdapter.isEmpty()) {
          return;
        }
        AlertDialogFragment localAlertDialogFragment = AlertDialogFragment.newInstance(ConfirmListActivity.this.getResources().getString(R.string.alert_dialog_title_warning), ConfirmListActivity.this.getResources().getString(R.string.alert_dialog_msg_clean_basket));
        localAlertDialogFragment.setOnActionClickListener(new AlertDialogFragment.ActionClickListener()
        {
          public void onLeftClicked() {}
          
          public void onRightClicked()
          {
            LotteryBasket.getInstance().clear(ConfirmListActivity.this.mKind);
            ConfirmListActivity.this.mAdapter.setLotterys(LotteryBasket.getInstance().getShowLotterys(ConfirmListActivity.this.getApplicationContext(), ConfirmListActivity.this.mKind));
            ConfirmListActivity.this.mAdapter.notifyDataSetChanged();
            ConfirmListActivity.this.displayTotalMoney();
          }
        });
        localAlertDialogFragment.show(ConfirmListActivity.this.getSupportFragmentManager(), "ClearLotterys");
      }
    });
    findViewById(R.id.add_special).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ConfirmListActivity.this.finish();
      }
    });
    findViewById(R.id.add_random).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        List localList = ConfirmListActivity.this.mFormatter.random(1);
        LotteryBasket.getInstance().addLottery(ConfirmListActivity.this.mKind, 0, (List)localList.get(0));
        ConfirmListActivity.this.mAdapter.setLotterys(LotteryBasket.getInstance().getShowLotterys(ConfirmListActivity.this.getApplicationContext(), ConfirmListActivity.this.mKind));
        ((ListView)ConfirmListActivity.this.findViewById(R.id.list)).setAdapter(ConfirmListActivity.this.mAdapter);
        ConfirmListActivity.this.displayTotalMoney();
      }
    });
    this.mCheckText = ((TextView)findViewById(R.id.check_text));
    this.mCheckBox = ((ImageView)findViewById(R.id.check));
    this.mCheckBox.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ConfirmListActivity localConfirmListActivity = ConfirmListActivity.this;
        if (ConfirmListActivity.this.mCheck) {}
        for (boolean bool = false;; bool = true)
        {
          localConfirmListActivity.mCheck = bool;
          if (!ConfirmListActivity.this.mCheck) {
            break;
          }
          ConfirmListActivity.this.mCheckBox.setImageResource(R.drawable.touzhu_choice_icon_hl);
          return;
        }
        ConfirmListActivity.this.mCheckBox.setImageResource(R.drawable.touzhu_choice_icon);
      }
    });
    this.mNumbers = ((EditText)findViewById(R.id.numbers));
    this.mNumbers.addTextChangedListener(new TextWatcher()
    {
      public void afterTextChanged(Editable paramAnonymousEditable)
      {
        int i;
        if (ConfirmListActivity.this.mNumbers.getText().length() > 0)
        {
          i = Integer.valueOf(ConfirmListActivity.this.mNumbers.getText().toString()).intValue();
          if (i >= 1) {
            break label116;
          }
          ConfirmListActivity.this.mNumbers.setText("1");
          UiUtils.setSelectionToTheEnd(ConfirmListActivity.this.mNumbers);
          if (i <= 1) {
            break label197;
          }
          ConfirmListActivity.this.mCheckBox.setClickable(true);
          ConfirmListActivity.this.mCheckBox.setImageResource(R.drawable.touzhu_choice_icon);
          ConfirmListActivity.this.mCheckText.setTextColor(-13421773);
        }
        for (;;)
        {
          ConfirmListActivity.this.displayTotalMoney();
          return;
          label116:
          if (i <= 30) {
            break;
          }
          ConfirmListActivity.this.mNumbers.setText(String.valueOf(30));
          UiUtils.setSelectionToTheEnd(ConfirmListActivity.this.mNumbers);
          Context localContext = ConfirmListActivity.this.getApplicationContext();
          ConfirmListActivity localConfirmListActivity = ConfirmListActivity.this;
          int j = R.string.toast_lottery_max_number_of_periods;
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = Integer.valueOf(30);
          ToastUtil.shortToast(localContext, localConfirmListActivity.getString(j, arrayOfObject));
          break;
          label197:
          ConfirmListActivity.this.mCheck = false;
          ConfirmListActivity.this.mCheckBox.setClickable(false);
          ConfirmListActivity.this.mCheckBox.setImageResource(R.drawable.touzhu_choice_disable);
          ConfirmListActivity.this.mCheckText.setTextColor(-6052957);
        }
      }
      
      public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    this.mNumbers.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        if (!paramAnonymousBoolean)
        {
          if (ConfirmListActivity.this.mNumbers.getText().length() == 0)
          {
            ConfirmListActivity.this.mNumbers.setText("1");
            UiUtils.setSelectionToTheEnd(ConfirmListActivity.this.mTimes);
            ConfirmListActivity.this.displayTotalMoney();
          }
        }
        else {
          return;
        }
        int i = Integer.valueOf(ConfirmListActivity.this.mNumbers.getText().toString()).intValue();
        ConfirmListActivity.this.mNumbers.setText(i);
        UiUtils.setSelectionToTheEnd(ConfirmListActivity.this.mTimes);
      }
    });
    this.mTimes = ((EditText)findViewById(R.id.times));
    this.mTimes.addTextChangedListener(new TextWatcher()
    {
      public void afterTextChanged(Editable paramAnonymousEditable)
      {
        int i;
        if (ConfirmListActivity.this.mTimes.getText().length() > 0)
        {
          i = Integer.valueOf(ConfirmListActivity.this.mTimes.getText().toString()).intValue();
          if (i >= 1) {
            break label75;
          }
          ConfirmListActivity.this.mTimes.setText("1");
          UiUtils.setSelectionToTheEnd(ConfirmListActivity.this.mTimes);
        }
        for (;;)
        {
          ConfirmListActivity.this.displayTotalMoney();
          return;
          label75:
          if ((i > 50) && (ConfirmListActivity.this.mKind != Formatter.DLT))
          {
            ConfirmListActivity.this.mTimes.setText("50");
            UiUtils.setSelectionToTheEnd(ConfirmListActivity.this.mTimes);
            Context localContext2 = ConfirmListActivity.this.getApplicationContext();
            ConfirmListActivity localConfirmListActivity2 = ConfirmListActivity.this;
            int k = R.string.toast_lottery_max_multiple;
            Object[] arrayOfObject2 = new Object[1];
            arrayOfObject2[0] = Integer.valueOf(50);
            ToastUtil.shortToast(localContext2, localConfirmListActivity2.getString(k, arrayOfObject2));
          }
          else if ((i > 99) && (ConfirmListActivity.this.mKind == Formatter.DLT))
          {
            ConfirmListActivity.this.mTimes.setText("99");
            UiUtils.setSelectionToTheEnd(ConfirmListActivity.this.mTimes);
            Context localContext1 = ConfirmListActivity.this.getApplicationContext();
            ConfirmListActivity localConfirmListActivity1 = ConfirmListActivity.this;
            int j = R.string.toast_lottery_max_multiple;
            Object[] arrayOfObject1 = new Object[1];
            arrayOfObject1[0] = Integer.valueOf(90);
            ToastUtil.shortToast(localContext1, localConfirmListActivity1.getString(j, arrayOfObject1));
          }
        }
      }
      
      public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    this.mTimes.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        if (!paramAnonymousBoolean)
        {
          if (ConfirmListActivity.this.mTimes.getText().length() == 0)
          {
            ConfirmListActivity.this.mTimes.setText("1");
            UiUtils.setSelectionToTheEnd(ConfirmListActivity.this.mTimes);
            ConfirmListActivity.this.displayTotalMoney();
          }
        }
        else {
          return;
        }
        int i = Integer.valueOf(ConfirmListActivity.this.mTimes.getText().toString()).intValue();
        ConfirmListActivity.this.mTimes.setText(i);
        UiUtils.setSelectionToTheEnd(ConfirmListActivity.this.mTimes);
      }
    });
    this.mTotal = ((TextView)findViewById(R.id.total));
    this.mDescription = ((TextView)findViewById(R.id.description));
    this.aggrementCheckBox = ((CheckBox)findViewById(R.id.check_aggrement));
    this.aggrementTextView = ((TextView)findViewById(R.id.check_aggrement_text));
    this.aggrementTextView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Intent localIntent = LoginManager.getInstance().webIntent("http://caipiao.m.jd.com/pick/agree?v=1");
        ConfirmListActivity.this.startActivity(localIntent);
      }
    });
    this.mAdapter = new ConfirmListAdapter(getApplicationContext());
    this.mAdapter.setOnItemLongClickListener(new View.OnLongClickListener()
    {
      public boolean onLongClick(View paramAnonymousView)
      {
        View localView = paramAnonymousView.findViewById(R.id.delete);
        if (localView.getVisibility() != 0)
        {
          localView.setVisibility(0);
          localView.setOnClickListener(new View.OnClickListener()
          {
            public void onClick(View paramAnonymous2View)
            {
              int i = ((Integer)paramAnonymous2View.getTag()).intValue();
              LotteryBasket.getInstance().removeLottery(ConfirmListActivity.this.mKind, i);
              ConfirmListActivity.this.mAdapter.deleteItem(i);
              ConfirmListActivity.this.displayTotalMoney();
            }
          });
        }
        return true;
      }
    });
    this.mAdapter.setLotterys(LotteryBasket.getInstance().getShowLotterys(getApplicationContext(), this.mKind));
    this.mAdapter.setFormatter(this.mFormatter);
    ((ListView)findViewById(R.id.list)).setAdapter(this.mAdapter);
    findViewById(R.id.submit).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ConfirmListActivity.this.submit();
      }
    });
    int i = LotteryBasket.getInstance().getTime(this.mKind);
    int j = LotteryBasket.getInstance().getNumber(this.mKind);
    this.mCheck = LotteryBasket.getInstance().getCheck(this.mKind);
    this.mNumbers.setText(j);
    UiUtils.setSelectionToTheEnd(this.mNumbers);
    this.mTimes.setText(i);
    UiUtils.setSelectionToTheEnd(this.mTimes);
    if (this.mCheck) {
      this.mCheckBox.setImageResource(R.drawable.touzhu_choice_icon_hl);
    }
    for (;;)
    {
      displayTotalMoney();
      return;
      if (j == 1)
      {
        this.mCheckBox.setClickable(false);
        this.mCheckBox.setImageResource(R.drawable.touzhu_choice_disable);
        this.mCheckText.setTextColor(-6052957);
      }
      else
      {
        this.mCheckBox.setImageResource(R.drawable.touzhu_choice_icon);
        this.mCheckText.setTextColor(-13421773);
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.activity.ConfirmListActivity
 * JD-Core Version:    0.7.0.1
 */