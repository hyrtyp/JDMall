package com.jd.droidlib.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnTouchListener;
import android.widget.EditText;
import com.jd.droidlib.adapter.widget.TextWatcherAdapter;
import com.jd.droidlib.adapter.widget.TextWatcherAdapter.TextWatcherListener;
import com.jd.droidlib.util.Strings;

public class ClearableEditText
  extends EditText
  implements View.OnTouchListener, View.OnFocusChangeListener, TextWatcherAdapter.TextWatcherListener
{
  private View.OnFocusChangeListener f;
  private View.OnTouchListener l;
  private Listener listener;
  private Drawable xD;
  
  public ClearableEditText(Context paramContext)
  {
    super(paramContext);
    init();
  }
  
  public ClearableEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }
  
  public ClearableEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }
  
  private void init()
  {
    this.xD = getCompoundDrawables()[2];
    if (this.xD == null) {
      this.xD = getResources().getDrawable(17301610);
    }
    this.xD.setBounds(0, 0, this.xD.getIntrinsicWidth(), this.xD.getIntrinsicHeight());
    setClearIconVisible(false);
    super.setOnTouchListener(this);
    super.setOnFocusChangeListener(this);
    addTextChangedListener(new TextWatcherAdapter(this, this));
  }
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean) {
      setClearIconVisible(Strings.isNotEmpty(getText()));
    }
    for (;;)
    {
      if (this.f != null) {
        this.f.onFocusChange(paramView, paramBoolean);
      }
      return;
      setClearIconVisible(false);
    }
  }
  
  public void onTextChanged(EditText paramEditText, String paramString)
  {
    if (isFocused()) {
      setClearIconVisible(Strings.isNotEmpty(paramString));
    }
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (getCompoundDrawables()[2] != null)
    {
      if (paramMotionEvent.getX() > getWidth() - getPaddingRight() - this.xD.getIntrinsicWidth()) {}
      for (int i = 1; i != 0; i = 0)
      {
        if (paramMotionEvent.getAction() == 1)
        {
          setText("");
          if (this.listener != null) {
            this.listener.didClearText();
          }
        }
        return true;
      }
    }
    if (this.l != null) {
      return this.l.onTouch(paramView, paramMotionEvent);
    }
    return false;
  }
  
  protected void setClearIconVisible(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (Drawable localDrawable = this.xD;; localDrawable = null)
    {
      setCompoundDrawables(getCompoundDrawables()[0], getCompoundDrawables()[1], localDrawable, getCompoundDrawables()[3]);
      return;
    }
  }
  
  public void setListener(Listener paramListener)
  {
    this.listener = paramListener;
  }
  
  public void setOnFocusChangeListener(View.OnFocusChangeListener paramOnFocusChangeListener)
  {
    this.f = paramOnFocusChangeListener;
  }
  
  public void setOnTouchListener(View.OnTouchListener paramOnTouchListener)
  {
    this.l = paramOnTouchListener;
  }
  
  public static abstract interface Listener
  {
    public abstract void didClearText();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.widget.ClearableEditText
 * JD-Core Version:    0.7.0.1
 */