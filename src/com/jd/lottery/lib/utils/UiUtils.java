package com.jd.lottery.lib.utils;

import android.text.Editable;
import android.text.Selection;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;

public class UiUtils
{
  public static void setListViewHeightBasedOnChildren(ListView paramListView)
  {
    ListAdapter localListAdapter = paramListView.getAdapter();
    if (localListAdapter == null) {
      return;
    }
    int i = View.MeasureSpec.makeMeasureSpec(paramListView.getWidth(), -2147483648);
    int j = 0;
    View localView = null;
    for (int k = 0;; k++)
    {
      if (k >= localListAdapter.getCount())
      {
        ViewGroup.LayoutParams localLayoutParams = paramListView.getLayoutParams();
        localLayoutParams.height = (j + paramListView.getDividerHeight() * (-1 + localListAdapter.getCount()));
        paramListView.setLayoutParams(localLayoutParams);
        paramListView.requestLayout();
        return;
      }
      localView = localListAdapter.getView(k, localView, paramListView);
      if (k == 0) {
        localView.setLayoutParams(new ViewGroup.LayoutParams(i, -2));
      }
      localView.measure(i, 0);
      j += localView.getMeasuredHeight();
    }
  }
  
  public static void setSelectionToTheEnd(EditText paramEditText)
  {
    Editable localEditable = paramEditText.getText();
    Selection.setSelection(localEditable, localEditable.length());
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.utils.UiUtils
 * JD-Core Version:    0.7.0.1
 */