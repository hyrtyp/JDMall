package com.jd.droidlib.util.ui;

import android.content.Context;
import android.text.Editable;
import android.widget.EditText;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class EditTextValidator
{
  public static String getText(EditText paramEditText, int paramInt1, int paramInt2, Object... paramVarArgs)
    throws EditTextValidator.ValidationException
  {
    return getText(paramEditText, paramInt1, paramEditText.getContext().getString(paramInt2, paramVarArgs));
  }
  
  public static String getText(EditText paramEditText, int paramInt, String paramString)
    throws EditTextValidator.ValidationException
  {
    String str = getTrimmedText(paramEditText);
    if (str.length() < paramInt) {
      throw new ValidationException(paramEditText, paramString);
    }
    return str;
  }
  
  public static String getText(EditText paramEditText, Pattern paramPattern, int paramInt, Object... paramVarArgs)
    throws EditTextValidator.ValidationException
  {
    return getText(paramEditText, paramPattern, paramEditText.getContext().getString(paramInt, paramVarArgs));
  }
  
  public static String getText(EditText paramEditText, Pattern paramPattern, String paramString)
    throws EditTextValidator.ValidationException
  {
    String str = getTrimmedText(paramEditText);
    if (!paramPattern.matcher(str).matches()) {
      throw new ValidationException(paramEditText, paramString);
    }
    return str;
  }
  
  public static String getTrimmedText(EditText paramEditText)
  {
    return paramEditText.getText().toString().trim();
  }
  
  public static class ValidationException
    extends Exception
  {
    private static final long serialVersionUID = 1L;
    public final EditText editText;
    public final String errorMessage;
    
    public ValidationException(EditText paramEditText, String paramString)
    {
      super();
      this.editText = paramEditText;
      this.errorMessage = paramString;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.util.ui.EditTextValidator
 * JD-Core Version:    0.7.0.1
 */