package com.jd.droidlib.adapter.widget;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

public class TextWatcherAdapter
  implements TextWatcher
{
  private final TextWatcherListener listener;
  private final EditText view;
  
  public TextWatcherAdapter(EditText paramEditText, TextWatcherListener paramTextWatcherListener)
  {
    this.view = paramEditText;
    this.listener = paramTextWatcherListener;
  }
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    this.listener.onTextChanged(this.view, paramCharSequence.toString());
  }
  
  public static abstract interface TextWatcherListener
  {
    public abstract void onTextChanged(EditText paramEditText, String paramString);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.adapter.widget.TextWatcherAdapter
 * JD-Core Version:    0.7.0.1
 */