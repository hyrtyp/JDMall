package com.jd.droidlib.adapter.widget;

import android.content.Context;
import android.content.res.Resources;
import android.widget.Spinner;
import java.util.Arrays;
import java.util.List;

public class StringSpinnerAdapter
  extends SpinnerAdapter<String>
{
  public StringSpinnerAdapter(Spinner paramSpinner, int paramInt)
  {
    this(paramSpinner, paramSpinner.getContext().getResources().getStringArray(paramInt));
  }
  
  public StringSpinnerAdapter(Spinner paramSpinner, List<String> paramList)
  {
    super(paramSpinner, paramList);
  }
  
  public StringSpinnerAdapter(Spinner paramSpinner, String[] paramArrayOfString)
  {
    this(paramSpinner, Arrays.asList(paramArrayOfString));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.adapter.widget.StringSpinnerAdapter
 * JD-Core Version:    0.7.0.1
 */