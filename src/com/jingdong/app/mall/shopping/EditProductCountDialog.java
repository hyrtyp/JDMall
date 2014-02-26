package com.jingdong.app.mall.shopping;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.common.utils.cache.GlobalImageCache;
import com.novoda.imageloader.core.cache.LruBitmapCache;
import java.text.DecimalFormat;

public class EditProductCountDialog
  extends Dialog
  implements View.OnClickListener, View.OnTouchListener
{
  private static final int NUM_DECREASE = 0;
  private static final int NUM_INCREASE = 1;
  private static final String TAG = "EditProductCountDialog";
  private final int TOTAL_NUM = 1000;
  private Button cancleBtn;
  private Button confirmBtn;
  private Context context;
  private ImageView descreaseView;
  Handler hd = new Handler();
  private InputMethodManager imm;
  private ImageView increaseView;
  private EditTextNumChangeListener listener;
  private TextWatcher newWatcher = new TextWatcher()
  {
    public void afterTextChanged(Editable paramAnonymousEditable)
    {
      EditProductCountDialog.this.numEdit.removeTextChangedListener(this);
      int i;
      if (!TextUtils.isEmpty(paramAnonymousEditable.toString())) {
        break label102;
      }
      for (;;)
      {
        try
        {
          i = Integer.parseInt(paramAnonymousEditable.toString());
          if (!EditProductCountDialog.this.isYBMoreParent(i)) {
            break label144;
          }
          Toast.makeText(EditProductCountDialog.this.context, EditProductCountDialog.this.context.getString(2131166393), 0).show();
          EditProductCountDialog.this.numEdit.addTextChangedListener(this);
          return;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          label102:
          EditProductCountDialog.this.setEditTextByNum(EditProductCountDialog.this.num);
          continue;
        }
        EditProductCountDialog.this.setEditTextByNum(i);
        EditProductCountDialog.this.numEdit.addTextChangedListener(this);
        return;
        if (i < 1)
        {
          i = 1;
          continue;
          EditProductCountDialog.this.descreaseView.setEnabled(false);
          continue;
          label144:
          if (i <= 1000) {
            break;
          }
          i = 1000;
        }
      }
    }
    
    public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
  };
  private int num;
  private EditText numEdit;
  private int parentNum = -1;
  private double price;
  private TextView priceNumView;
  private TextView priceView;
  
  public EditProductCountDialog(Context paramContext, int paramInt, double paramDouble, EditTextNumChangeListener paramEditTextNumChangeListener)
  {
    super(paramContext);
    this.context = paramContext;
    this.num = paramInt;
    this.price = paramDouble;
    this.listener = paramEditTextNumChangeListener;
  }
  
  private boolean isYBMoreParent(int paramInt)
  {
    if ((this.parentNum != -1) && (paramInt > this.parentNum))
    {
      setEditTextByNum(this.parentNum);
      return true;
    }
    return false;
  }
  
  private void refreshEditNum(int paramInt)
  {
    if (this.numEdit == null) {
      return;
    }
    if (!TextUtils.isEmpty(this.numEdit.getText().toString()))
    {
      int i = Integer.parseInt(this.numEdit.getText().toString());
      switch (paramInt)
      {
      }
      while (isYBMoreParent(i))
      {
        Toast.makeText(this.context, this.context.getString(2131166393), 0).show();
        return;
        if (i > 1)
        {
          i--;
          continue;
          if (i < 1000) {
            i++;
          }
        }
      }
      setEditTextByNum(i);
      return;
    }
    setEditTextByNum(1);
  }
  
  private void setEditTextByNum(int paramInt)
  {
    if ((this.numEdit == null) || (this.numEdit.getVisibility() != 0)) {
      return;
    }
    if (paramInt <= 1)
    {
      paramInt = 1;
      this.descreaseView.setEnabled(false);
      if ((paramInt < 1000) && (!isYBMoreParent(paramInt))) {
        break label147;
      }
      paramInt = 1000;
      this.increaseView.setEnabled(false);
    }
    for (;;)
    {
      this.numEdit.setText(paramInt);
      if (this.priceNumView != null) {
        this.priceNumView.setText("x " + paramInt);
      }
      try
      {
        this.numEdit.setSelection(this.numEdit.getText().toString().length());
        return;
      }
      catch (Exception localException)
      {
        return;
      }
      this.descreaseView.setEnabled(true);
      break;
      label147:
      this.increaseView.setEnabled(true);
    }
  }
  
  private void showInputMethod()
  {
    this.hd.post(new Runnable()
    {
      public void run()
      {
        if (EditProductCountDialog.this.numEdit != null) {
          ((InputMethodManager)EditProductCountDialog.this.context.getSystemService("input_method")).showSoftInput(EditProductCountDialog.this.numEdit, 1);
        }
      }
    });
  }
  
  public void cancel()
  {
    if (this.numEdit != null) {
      this.imm.hideSoftInputFromWindow(this.numEdit.getWindowToken(), 1);
    }
    super.cancel();
  }
  
  public int getParentNum()
  {
    return this.parentNum;
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    }
    do
    {
      return;
      refreshEditNum(0);
      return;
      refreshEditNum(1);
      return;
      cancel();
      return;
      try
      {
        int i = Integer.parseInt(this.numEdit.getText().toString());
        int j = i;
        if (j > 1000) {
          j = 1000;
        }
        if (j < 1) {
          j = 1;
        }
        this.listener.onCallBack(j);
        cancel();
        return;
      }
      catch (NumberFormatException localNumberFormatException) {}
    } while (this.listener == null);
    this.listener.onError();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    try
    {
      super.setContentView(2130903125);
      super.setContentView(2130903125);
      this.priceView = ((TextView)findViewById(2131493373));
      this.priceNumView = ((TextView)findViewById(2131493374));
      this.descreaseView = ((ImageView)findViewById(2131493378));
      this.increaseView = ((ImageView)findViewById(2131493379));
      this.numEdit = ((EditText)findViewById(2131493377));
      this.cancleBtn = ((Button)findViewById(2131493381));
      this.confirmBtn = ((Button)findViewById(2131493382));
      this.numEdit.addTextChangedListener(this.newWatcher);
      this.numEdit.setOnTouchListener(this);
      DecimalFormat localDecimalFormat = new DecimalFormat("0.00");
      this.priceView.setText(this.context.getString(2131166297) + localDecimalFormat.format(this.price));
      setEditTextByNum(this.num);
      this.descreaseView.setOnClickListener(this);
      this.increaseView.setOnClickListener(this);
      this.cancleBtn.setOnClickListener(this);
      this.confirmBtn.setOnClickListener(this);
      this.numEdit.requestFocus();
      this.imm = ((InputMethodManager)getContext().getSystemService("input_method"));
      this.imm.showSoftInput(this.numEdit, 1);
      return;
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        GlobalImageCache.getLruBitmapCache().clean();
      }
    }
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return true;
      showInputMethod();
      if ((paramView instanceof EditText))
      {
        EditText localEditText = (EditText)paramView;
        try
        {
          localEditText.setSelection(localEditText.getText().toString().length());
        }
        catch (Exception localException) {}
      }
    }
  }
  
  public void setParentNum(int paramInt)
  {
    this.parentNum = paramInt;
  }
  
  public void show()
  {
    super.show();
    showInputMethod();
  }
  
  static abstract interface EditTextNumChangeListener
  {
    public abstract void onCallBack(int paramInt);
    
    public abstract void onError();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.EditProductCountDialog
 * JD-Core Version:    0.7.0.1
 */