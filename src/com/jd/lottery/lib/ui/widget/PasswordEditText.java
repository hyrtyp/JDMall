package com.jd.lottery.lib.ui.widget;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnTouchListener;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.jd.lottery.lib.R.drawable;
import com.jd.lottery.lib.R.id;
import com.jd.lottery.lib.R.layout;

public class PasswordEditText
  extends FrameLayout
{
  private ImageView mCleanUesrPasswordImageView;
  private FrameLayout mFrameLayout;
  private EditText mPasswordEditText;
  
  public PasswordEditText(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public PasswordEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    LayoutInflater.from(paramContext).inflate(R.layout.widget_password_edittext, this, true);
    this.mFrameLayout = ((FrameLayout)findViewById(R.id.widget_password_root));
    this.mPasswordEditText = ((EditText)findViewById(R.id.widget_password_edit_text));
    this.mCleanUesrPasswordImageView = ((ImageView)findViewById(R.id.widget_clear_psw_imgview));
    this.mPasswordEditText.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        if (PasswordEditText.this.mPasswordEditText.isFocused())
        {
          PasswordEditText.this.mFrameLayout.setBackgroundResource(R.drawable.input_box_holo_dark);
          PasswordEditText.this.mCleanUesrPasswordImageView.setVisibility(0);
          return;
        }
        PasswordEditText.this.mFrameLayout.setBackgroundResource(R.drawable.input_box_holo_light);
        PasswordEditText.this.mCleanUesrPasswordImageView.setVisibility(4);
      }
    });
    this.mPasswordEditText.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        PasswordEditText.this.mFrameLayout.setBackgroundResource(R.drawable.input_box_holo_dark);
      }
    });
    this.mPasswordEditText.addTextChangedListener(new TextWatcher()
    {
      public void afterTextChanged(Editable paramAnonymousEditable) {}
      
      public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        PasswordEditText.this.mFrameLayout.setBackgroundResource(R.drawable.input_box_holo_dark);
      }
      
      public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    this.mCleanUesrPasswordImageView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        PasswordEditText.this.mPasswordEditText.setText("");
      }
    });
  }
  
  public Editable getText()
  {
    if (this.mPasswordEditText == null) {
      return null;
    }
    return this.mPasswordEditText.getText();
  }
  
  public void setBackgroundResource(int paramInt)
  {
    this.mFrameLayout.setBackgroundResource(paramInt);
  }
  
  public void setHint(int paramInt)
  {
    this.mPasswordEditText.setHint(paramInt);
  }
  
  public void setOnTouchListener(View.OnTouchListener paramOnTouchListener)
  {
    this.mPasswordEditText.setOnTouchListener(paramOnTouchListener);
  }
  
  public void setPasswordClearText(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.mPasswordEditText.setInputType(144);
      return;
    }
    this.mPasswordEditText.setInputType(129);
  }
  
  public void setText(int paramInt)
  {
    this.mPasswordEditText.setText(paramInt);
  }
  
  public void setText(CharSequence paramCharSequence)
  {
    this.mPasswordEditText.setText(paramCharSequence);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.ui.widget.PasswordEditText
 * JD-Core Version:    0.7.0.1
 */