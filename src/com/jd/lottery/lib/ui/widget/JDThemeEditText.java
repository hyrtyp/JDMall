package com.jd.lottery.lib.ui.widget;

import android.content.Context;
import android.text.Editable;
import android.text.Selection;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.jd.lottery.lib.R.drawable;
import com.jd.lottery.lib.R.id;
import com.jd.lottery.lib.R.layout;

public class JDThemeEditText
  extends FrameLayout
{
  private ImageView mCleanUesrNameImageView;
  private EditText mEditText;
  private FrameLayout mFrameLayout;
  
  public JDThemeEditText(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public JDThemeEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    LayoutInflater.from(paramContext).inflate(R.layout.widget_username_autocomplete_textview, this, true);
    this.mFrameLayout = ((FrameLayout)findViewById(R.id.widget_username_root));
    this.mEditText = ((EditText)findViewById(R.id.widget_username_edit_text));
    this.mCleanUesrNameImageView = ((ImageView)findViewById(R.id.widget_clear_user_name_imgview));
    this.mEditText.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        if (JDThemeEditText.this.mEditText.isFocused())
        {
          JDThemeEditText.this.mFrameLayout.setBackgroundResource(R.drawable.input_box_holo_dark);
          JDThemeEditText.this.mCleanUesrNameImageView.setVisibility(0);
          return;
        }
        JDThemeEditText.this.mFrameLayout.setBackgroundResource(R.drawable.input_box_holo_light);
        JDThemeEditText.this.mCleanUesrNameImageView.setVisibility(4);
      }
    });
    this.mEditText.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        JDThemeEditText.this.mFrameLayout.setBackgroundResource(R.drawable.input_box_holo_dark);
      }
    });
    this.mCleanUesrNameImageView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        JDThemeEditText.this.mEditText.setText("");
      }
    });
  }
  
  private void cursorToTheEnd(EditText paramEditText)
  {
    Editable localEditable = paramEditText.getText();
    Selection.setSelection(localEditable, localEditable.length());
  }
  
  public Editable getText()
  {
    if (this.mEditText == null) {
      return null;
    }
    return this.mEditText.getText();
  }
  
  public void setBackgroundResource(int paramInt)
  {
    this.mFrameLayout.setBackgroundResource(paramInt);
  }
  
  public void setHint(int paramInt)
  {
    this.mEditText.setHint(paramInt);
    cursorToTheEnd(this.mEditText);
  }
  
  public void setText(int paramInt)
  {
    this.mEditText.setText(paramInt);
    cursorToTheEnd(this.mEditText);
  }
  
  public void setText(CharSequence paramCharSequence)
  {
    this.mEditText.setText(paramCharSequence);
    cursorToTheEnd(this.mEditText);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.ui.widget.JDThemeEditText
 * JD-Core Version:    0.7.0.1
 */