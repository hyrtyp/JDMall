package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class ResultParser
{
  private static final Pattern ALPHANUM = Pattern.compile("[a-zA-Z0-9]*");
  private static final Pattern AMPERSAND = Pattern.compile("&");
  private static final String BYTE_ORDER_MARK = "﻿";
  private static final Pattern DIGITS;
  private static final Pattern EQUALS = Pattern.compile("=");
  private static final ResultParser[] PARSERS;
  
  static
  {
    ResultParser[] arrayOfResultParser = new ResultParser[19];
    arrayOfResultParser[0] = new BookmarkDoCoMoResultParser();
    arrayOfResultParser[1] = new AddressBookDoCoMoResultParser();
    arrayOfResultParser[2] = new EmailDoCoMoResultParser();
    arrayOfResultParser[3] = new AddressBookAUResultParser();
    arrayOfResultParser[4] = new VCardResultParser();
    arrayOfResultParser[5] = new BizcardResultParser();
    arrayOfResultParser[6] = new VEventResultParser();
    arrayOfResultParser[7] = new EmailAddressResultParser();
    arrayOfResultParser[8] = new SMTPResultParser();
    arrayOfResultParser[9] = new TelResultParser();
    arrayOfResultParser[10] = new SMSMMSResultParser();
    arrayOfResultParser[11] = new SMSTOMMSTOResultParser();
    arrayOfResultParser[12] = new GeoResultParser();
    arrayOfResultParser[13] = new WifiResultParser();
    arrayOfResultParser[14] = new URLTOResultParser();
    arrayOfResultParser[15] = new URIResultParser();
    arrayOfResultParser[16] = new ISBNResultParser();
    arrayOfResultParser[17] = new ProductResultParser();
    arrayOfResultParser[18] = new ExpandedProductResultParser();
    PARSERS = arrayOfResultParser;
    DIGITS = Pattern.compile("\\d*");
  }
  
  private static void appendKeyValue(CharSequence paramCharSequence, Map<String, String> paramMap)
  {
    String[] arrayOfString = EQUALS.split(paramCharSequence, 2);
    String str1;
    String str2;
    if (arrayOfString.length == 2)
    {
      str1 = arrayOfString[0];
      str2 = arrayOfString[1];
    }
    try
    {
      paramMap.put(str1, URLDecoder.decode(str2, "UTF-8"));
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new IllegalStateException(localUnsupportedEncodingException);
    }
    catch (IllegalArgumentException localIllegalArgumentException) {}
  }
  
  protected static String getMassagedText(Result paramResult)
  {
    String str = paramResult.getText();
    if (str.startsWith("﻿")) {
      str = str.substring(1);
    }
    return str;
  }
  
  protected static boolean isStringOfDigits(CharSequence paramCharSequence, int paramInt)
  {
    return (paramCharSequence != null) && (paramInt == paramCharSequence.length()) && (DIGITS.matcher(paramCharSequence).matches());
  }
  
  protected static boolean isSubstringOfAlphaNumeric(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    if (paramCharSequence == null) {}
    int i;
    do
    {
      return false;
      i = paramInt1 + paramInt2;
    } while ((paramCharSequence.length() < i) || (!ALPHANUM.matcher(paramCharSequence.subSequence(paramInt1, i)).matches()));
    return true;
  }
  
  protected static boolean isSubstringOfDigits(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    if (paramCharSequence == null) {}
    int i;
    do
    {
      return false;
      i = paramInt1 + paramInt2;
    } while ((paramCharSequence.length() < i) || (!DIGITS.matcher(paramCharSequence.subSequence(paramInt1, i)).matches()));
    return true;
  }
  
  static String[] matchPrefixedField(String paramString1, String paramString2, char paramChar, boolean paramBoolean)
  {
    ArrayList localArrayList = null;
    int i = 0;
    int j = paramString2.length();
    for (;;)
    {
      int k;
      if (i < j)
      {
        k = paramString2.indexOf(paramString1, i);
        if (k >= 0) {}
      }
      else
      {
        if ((localArrayList != null) && (!localArrayList.isEmpty())) {
          break;
        }
        return null;
      }
      i = k + paramString1.length();
      int m = i;
      int n = 1;
      while (n != 0)
      {
        int i1 = paramString2.indexOf(paramChar, i);
        if (i1 < 0)
        {
          i = paramString2.length();
          n = 0;
        }
        else if (paramString2.charAt(i1 - 1) == '\\')
        {
          i = i1 + 1;
        }
        else
        {
          if (localArrayList == null) {
            localArrayList = new ArrayList(3);
          }
          String str = unescapeBackslash(paramString2.substring(m, i1));
          if (paramBoolean) {
            str = str.trim();
          }
          localArrayList.add(str);
          i = i1 + 1;
          n = 0;
        }
      }
    }
    return (String[])localArrayList.toArray(new String[localArrayList.size()]);
  }
  
  static String matchSinglePrefixedField(String paramString1, String paramString2, char paramChar, boolean paramBoolean)
  {
    String[] arrayOfString = matchPrefixedField(paramString1, paramString2, paramChar, paramBoolean);
    if (arrayOfString == null) {
      return null;
    }
    return arrayOfString[0];
  }
  
  protected static void maybeAppend(String paramString, StringBuilder paramStringBuilder)
  {
    if (paramString != null)
    {
      paramStringBuilder.append('\n');
      paramStringBuilder.append(paramString);
    }
  }
  
  protected static void maybeAppend(String[] paramArrayOfString, StringBuilder paramStringBuilder)
  {
    if (paramArrayOfString != null)
    {
      int i = paramArrayOfString.length;
      for (int j = 0; j < i; j++)
      {
        String str = paramArrayOfString[j];
        paramStringBuilder.append('\n');
        paramStringBuilder.append(str);
      }
    }
  }
  
  protected static String[] maybeWrap(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return new String[] { paramString };
  }
  
  protected static int parseHexDigit(char paramChar)
  {
    if ((paramChar >= '0') && (paramChar <= '9')) {
      return paramChar - '0';
    }
    if ((paramChar >= 'a') && (paramChar <= 'f')) {
      return 10 + (paramChar - 'a');
    }
    if ((paramChar >= 'A') && (paramChar <= 'F')) {
      return 10 + (paramChar - 'A');
    }
    return -1;
  }
  
  static Map<String, String> parseNameValuePairs(String paramString)
  {
    int i = paramString.indexOf('?');
    Object localObject;
    if (i < 0) {
      localObject = null;
    }
    for (;;)
    {
      return localObject;
      localObject = new HashMap(3);
      String[] arrayOfString = AMPERSAND.split(paramString.substring(i + 1));
      int j = arrayOfString.length;
      for (int k = 0; k < j; k++) {
        appendKeyValue(arrayOfString[k], (Map)localObject);
      }
    }
  }
  
  public static ParsedResult parseResult(Result paramResult)
  {
    ResultParser[] arrayOfResultParser = PARSERS;
    int i = arrayOfResultParser.length;
    for (int j = 0; j < i; j++)
    {
      ParsedResult localParsedResult = arrayOfResultParser[j].parse(paramResult);
      if (localParsedResult != null) {
        return localParsedResult;
      }
    }
    return new TextParsedResult(paramResult.getText(), null);
  }
  
  protected static String unescapeBackslash(String paramString)
  {
    int i = paramString.indexOf('\\');
    if (i < 0) {
      return paramString;
    }
    int j = paramString.length();
    StringBuilder localStringBuilder = new StringBuilder(j - 1);
    localStringBuilder.append(paramString.toCharArray(), 0, i);
    int k = 0;
    int m = i;
    if (m < j)
    {
      char c = paramString.charAt(m);
      if ((k != 0) || (c != '\\')) {
        localStringBuilder.append(c);
      }
      for (k = 0;; k = 1)
      {
        m++;
        break;
      }
    }
    return localStringBuilder.toString();
  }
  
  public abstract ParsedResult parse(Result paramResult);
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.ResultParser
 * JD-Core Version:    0.7.0.1
 */