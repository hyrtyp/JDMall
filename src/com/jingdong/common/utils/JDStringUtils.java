package com.jingdong.common.utils;

import android.content.Context;
import android.text.Html;
import android.text.Spanned;

public class JDStringUtils
{
  public static Spanned getErrorSpanned(Context paramContext, int paramInt)
  {
    return getErrorSpanned(paramContext, paramInt, "FF0000");
  }
  
  public static Spanned getErrorSpanned(Context paramContext, int paramInt, String paramString)
  {
    return Html.fromHtml("<font color='#" + paramString + "'>" + paramContext.getString(paramInt) + "</font>");
  }
  
  public static Spanned getErrorSpanned(String paramString)
  {
    return getErrorSpanned(paramString, "FF0000");
  }
  
  public static Spanned getErrorSpanned(String paramString1, String paramString2)
  {
    return Html.fromHtml("<font color='#" + paramString2 + "'>" + paramString1 + "</font>");
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.JDStringUtils
 * JD-Core Version:    0.7.0.1
 */