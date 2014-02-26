package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.List;

public final class VEventResultParser
  extends ResultParser
{
  private static String matchSingleVCardPrefixedField(CharSequence paramCharSequence, String paramString, boolean paramBoolean)
  {
    List localList = VCardResultParser.matchSingleVCardPrefixedField(paramCharSequence, paramString, paramBoolean, false);
    if ((localList == null) || (localList.isEmpty())) {
      return null;
    }
    return (String)localList.get(0);
  }
  
  private static String[] matchVCardPrefixedField(CharSequence paramCharSequence, String paramString, boolean paramBoolean)
  {
    List localList = VCardResultParser.matchVCardPrefixedField(paramCharSequence, paramString, paramBoolean, false);
    String[] arrayOfString;
    if ((localList == null) || (localList.isEmpty())) {
      arrayOfString = null;
    }
    for (;;)
    {
      return arrayOfString;
      int i = localList.size();
      arrayOfString = new String[i];
      for (int j = 0; j < i; j++) {
        arrayOfString[j] = ((String)((List)localList.get(j)).get(0));
      }
    }
  }
  
  private static String stripMailto(String paramString)
  {
    if ((paramString != null) && ((paramString.startsWith("mailto:")) || (paramString.startsWith("MAILTO:")))) {
      paramString = paramString.substring(7);
    }
    return paramString;
  }
  
  public CalendarParsedResult parse(Result paramResult)
  {
    String str1 = getMassagedText(paramResult);
    if (str1.indexOf("BEGIN:VEVENT") < 0) {
      return null;
    }
    String str2 = matchSingleVCardPrefixedField("SUMMARY", str1, true);
    String str3 = matchSingleVCardPrefixedField("DTSTART", str1, true);
    if (str3 == null) {
      return null;
    }
    String str4 = matchSingleVCardPrefixedField("DTEND", str1, true);
    String str5 = matchSingleVCardPrefixedField("LOCATION", str1, true);
    String str6 = stripMailto(matchSingleVCardPrefixedField("ORGANIZER", str1, true));
    String[] arrayOfString = matchVCardPrefixedField("ATTENDEE", str1, true);
    if (arrayOfString != null) {
      for (int j = 0; j < arrayOfString.length; j++) {
        arrayOfString[j] = stripMailto(arrayOfString[j]);
      }
    }
    String str7 = matchSingleVCardPrefixedField("DESCRIPTION", str1, true);
    String str8 = matchSingleVCardPrefixedField("GEO", str1, true);
    double d1;
    double d3;
    if (str8 == null)
    {
      d1 = (0.0D / 0.0D);
      d3 = (0.0D / 0.0D);
    }
    for (;;)
    {
      try
      {
        CalendarParsedResult localCalendarParsedResult = new CalendarParsedResult(str2, str3, str4, str5, str6, arrayOfString, str7, d1, d3);
        return localCalendarParsedResult;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        return null;
      }
      int i = str8.indexOf(';');
      try
      {
        d1 = Double.parseDouble(str8.substring(0, i));
        double d2 = Double.parseDouble(str8.substring(i + 1));
        d3 = d2;
      }
      catch (NumberFormatException localNumberFormatException) {}
    }
    return null;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.VEventResultParser
 * JD-Core Version:    0.7.0.1
 */