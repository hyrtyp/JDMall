package com.jd.droidlib.widget;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.preference.ListPreference;
import android.util.AttributeSet;
import com.jd.droidlib.util.Strings;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;

public class MultiSelectListPreference
  extends ListPreference
{
  private static final String SEP = "|";
  private boolean[] checkedEntryIndexes;
  
  public MultiSelectListPreference(Context paramContext)
  {
    super(paramContext);
  }
  
  public MultiSelectListPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public static String[] fromPersistedPreferenceValue(String paramString)
  {
    if (Strings.isEmpty(paramString)) {
      return new String[0];
    }
    return paramString.split("\\|");
  }
  
  public static String toPersistedPreferenceValue(CharSequence... paramVarArgs)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    for (int i = 0;; i++)
    {
      if (i >= paramVarArgs.length) {
        return localStringBuilder.toString();
      }
      localStringBuilder.append(paramVarArgs[i]);
      if (i < -1 + paramVarArgs.length) {
        localStringBuilder.append("|");
      }
    }
  }
  
  private void updateCheckedEntryIndexes()
  {
    CharSequence[] arrayOfCharSequence = getEntryValues();
    this.checkedEntryIndexes = new boolean[arrayOfCharSequence.length];
    String str = getValue();
    HashSet localHashSet;
    if (str != null) {
      localHashSet = new HashSet(Arrays.asList(fromPersistedPreferenceValue(str)));
    }
    for (int i = 0;; i++)
    {
      if (i >= arrayOfCharSequence.length) {
        return;
      }
      this.checkedEntryIndexes[i] = localHashSet.contains(arrayOfCharSequence[i]);
    }
  }
  
  public CharSequence[] getCheckedEntries()
  {
    CharSequence[] arrayOfCharSequence = getEntries();
    ArrayList localArrayList = new ArrayList();
    for (int i = 0;; i++)
    {
      if (i >= arrayOfCharSequence.length) {
        return (CharSequence[])localArrayList.toArray(new String[localArrayList.size()]);
      }
      if (this.checkedEntryIndexes[i] != 0) {
        localArrayList.add(arrayOfCharSequence[i]);
      }
    }
  }
  
  protected void onDialogClosed(boolean paramBoolean)
  {
    CharSequence[] arrayOfCharSequence;
    ArrayList localArrayList;
    if (paramBoolean)
    {
      arrayOfCharSequence = getEntryValues();
      localArrayList = new ArrayList();
    }
    for (int i = 0;; i++)
    {
      if (i >= arrayOfCharSequence.length)
      {
        String str = toPersistedPreferenceValue((CharSequence[])localArrayList.toArray(new CharSequence[localArrayList.size()]));
        if (callChangeListener(str)) {
          setValue(str);
        }
        return;
      }
      if (this.checkedEntryIndexes[i] != 0) {
        localArrayList.add(arrayOfCharSequence[i]);
      }
    }
  }
  
  protected void onPrepareDialogBuilder(AlertDialog.Builder paramBuilder)
  {
    updateCheckedEntryIndexes();
    paramBuilder.setMultiChoiceItems(getEntries(), this.checkedEntryIndexes, new DialogInterface.OnMultiChoiceClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt, boolean paramAnonymousBoolean)
      {
        MultiSelectListPreference.this.checkedEntryIndexes[paramAnonymousInt] = paramAnonymousBoolean;
      }
    });
  }
  
  public void setEntries(CharSequence[] paramArrayOfCharSequence)
  {
    super.setEntries(paramArrayOfCharSequence);
    updateCheckedEntryIndexes();
  }
  
  public void setValue(String paramString)
  {
    super.setValue(paramString);
    updateCheckedEntryIndexes();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.widget.MultiSelectListPreference
 * JD-Core Version:    0.7.0.1
 */