package com.jd.droidlib.adapter.widget;

import android.widget.Spinner;
import java.util.List;

public class SpinnerAdapter<T>
  extends ArrayAdapter<T>
{
  protected final Spinner spinner;
  
  public SpinnerAdapter(Spinner paramSpinner, int paramInt, List<T> paramList)
  {
    super(paramSpinner.getContext(), paramInt, paramList);
    setDropDownViewResource(17367049);
    this.spinner = paramSpinner;
  }
  
  public SpinnerAdapter(Spinner paramSpinner, List<T> paramList)
  {
    this(paramSpinner, 17367048, paramList);
  }
  
  public T getSelectedItem()
  {
    return this.spinner.getSelectedItem();
  }
  
  public void setSelectedItem(T paramT)
  {
    for (int i = 0;; i++)
    {
      if (i >= getCount()) {
        return;
      }
      if (getItem(i).equals(paramT))
      {
        this.spinner.setSelection(i);
        return;
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.adapter.widget.SpinnerAdapter
 * JD-Core Version:    0.7.0.1
 */