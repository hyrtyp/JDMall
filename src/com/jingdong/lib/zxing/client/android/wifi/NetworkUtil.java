package com.jingdong.lib.zxing.client.android.wifi;

import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class NetworkUtil
{
  private static final Pattern HEX_DIGITS = Pattern.compile("[0-9A-Fa-f]+");
  
  static String convertToQuotedString(String paramString)
  {
    if (paramString == null) {
      paramString = null;
    }
    int i;
    do
    {
      return paramString;
      if (TextUtils.isEmpty(paramString)) {
        return "";
      }
      i = -1 + paramString.length();
    } while ((i < 0) || ((paramString.charAt(0) == '"') && (paramString.charAt(i) == '"')));
    return '"' + paramString + '"';
  }
  
  static boolean isHexWepKey(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null) {}
    int i;
    do
    {
      return false;
      i = paramCharSequence.length();
    } while (((i != 10) && (i != 26) && (i != 58)) || (!HEX_DIGITS.matcher(paramCharSequence).matches()));
    return true;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.wifi.NetworkUtil
 * JD-Core Version:    0.7.0.1
 */