package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class VCardResultParser
  extends ResultParser
{
  private static final Pattern BEGIN_VCARD = Pattern.compile("BEGIN:VCARD", 2);
  private static final Pattern CR_LF_SPACE_TAB;
  private static final Pattern EQUALS = Pattern.compile("=");
  private static final Pattern NEWLINE_ESCAPE;
  private static final Pattern SEMICOLON = Pattern.compile(";");
  private static final Pattern UNESCAPED_SEMICOLONS = Pattern.compile("(?<!\\\\);+");
  private static final Pattern VCARD_ESCAPES;
  private static final Pattern VCARD_LIKE_DATE = Pattern.compile("\\d{4}-?\\d{2}-?\\d{2}");
  
  static
  {
    CR_LF_SPACE_TAB = Pattern.compile("\r\n[ \t]");
    NEWLINE_ESCAPE = Pattern.compile("\\\\[nN]");
    VCARD_ESCAPES = Pattern.compile("\\\\([,;\\\\])");
  }
  
  private static String decodeQuotedPrintable(CharSequence paramCharSequence, String paramString)
  {
    int i = paramCharSequence.length();
    StringBuilder localStringBuilder = new StringBuilder(i);
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    int j = 0;
    if (j < i)
    {
      char c1 = paramCharSequence.charAt(j);
      switch (c1)
      {
      default: 
        maybeAppendFragment(localByteArrayOutputStream, paramString, localStringBuilder);
        localStringBuilder.append(c1);
      }
      for (;;)
      {
        j++;
        break;
        if (j < i - 2)
        {
          char c2 = paramCharSequence.charAt(j + 1);
          if ((c2 != '\r') && (c2 != '\n'))
          {
            char c3 = paramCharSequence.charAt(j + 2);
            int k = parseHexDigit(c2);
            int m = parseHexDigit(c3);
            if ((k >= 0) && (m >= 0)) {
              localByteArrayOutputStream.write(m + (k << 4));
            }
            j += 2;
          }
        }
      }
    }
    maybeAppendFragment(localByteArrayOutputStream, paramString, localStringBuilder);
    return localStringBuilder.toString();
  }
  
  private static void formatNames(Iterable<List<String>> paramIterable)
  {
    if (paramIterable != null)
    {
      Iterator localIterator = paramIterable.iterator();
      while (localIterator.hasNext())
      {
        List localList = (List)localIterator.next();
        String str = (String)localList.get(0);
        String[] arrayOfString = new String[5];
        int i = 0;
        int j = 0;
        while (j < -1 + arrayOfString.length)
        {
          int k = str.indexOf(';', i);
          if (k <= 0) {
            break;
          }
          arrayOfString[j] = str.substring(i, k);
          j++;
          i = k + 1;
        }
        arrayOfString[j] = str.substring(i);
        StringBuilder localStringBuilder = new StringBuilder(100);
        maybeAppendComponent(arrayOfString, 3, localStringBuilder);
        maybeAppendComponent(arrayOfString, 1, localStringBuilder);
        maybeAppendComponent(arrayOfString, 2, localStringBuilder);
        maybeAppendComponent(arrayOfString, 0, localStringBuilder);
        maybeAppendComponent(arrayOfString, 4, localStringBuilder);
        localList.set(0, localStringBuilder.toString().trim());
      }
    }
  }
  
  private static boolean isLikeVCardDate(CharSequence paramCharSequence)
  {
    return (paramCharSequence == null) || (VCARD_LIKE_DATE.matcher(paramCharSequence).matches());
  }
  
  static List<String> matchSingleVCardPrefixedField(CharSequence paramCharSequence, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    List localList = matchVCardPrefixedField(paramCharSequence, paramString, paramBoolean1, paramBoolean2);
    if ((localList == null) || (localList.isEmpty())) {
      return null;
    }
    return (List)localList.get(0);
  }
  
  static List<List<String>> matchVCardPrefixedField(CharSequence paramCharSequence, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject1 = null;
    int i = 0;
    int j = paramString.length();
    for (;;)
    {
      Matcher localMatcher;
      if (i < j)
      {
        localMatcher = Pattern.compile("(?:^|\n)" + paramCharSequence + "(?:;([^:]*))?:", 2).matcher(paramString);
        if (i > 0) {
          i--;
        }
        if (localMatcher.find(i)) {}
      }
      else
      {
        return localObject1;
      }
      int k = localMatcher.end(0);
      String str1 = localMatcher.group(1);
      ArrayList localArrayList1 = null;
      int m = 0;
      Object localObject2 = null;
      if (str1 != null)
      {
        String[] arrayOfString1 = SEMICOLON.split(str1);
        int i2 = arrayOfString1.length;
        int i3 = 0;
        if (i3 < i2)
        {
          String str6 = arrayOfString1[i3];
          if (localArrayList1 == null) {
            localArrayList1 = new ArrayList(1);
          }
          localArrayList1.add(str6);
          String[] arrayOfString2 = EQUALS.split(str6, 2);
          String str7;
          String str8;
          if (arrayOfString2.length > 1)
          {
            str7 = arrayOfString2[0];
            str8 = arrayOfString2[1];
            if ((!"ENCODING".equalsIgnoreCase(str7)) || (!"QUOTED-PRINTABLE".equalsIgnoreCase(str8))) {
              break label220;
            }
            m = 1;
          }
          for (;;)
          {
            i3++;
            break;
            label220:
            if ("CHARSET".equalsIgnoreCase(str7)) {
              localObject2 = str8;
            }
          }
        }
      }
      int n = k;
      int i1;
      for (;;)
      {
        i1 = paramString.indexOf('\n', k);
        if (i1 < 0) {
          break;
        }
        if ((i1 < -1 + paramString.length()) && ((paramString.charAt(i1 + 1) == ' ') || (paramString.charAt(i1 + 1) == '\t')))
        {
          k = i1 + 2;
        }
        else
        {
          if ((m == 0) || (((i1 < 1) || (paramString.charAt(i1 - 1) != '=')) && ((i1 < 2) || (paramString.charAt(i1 - 2) != '=')))) {
            break;
          }
          k = i1 + 1;
        }
      }
      if (i1 < 0)
      {
        i = j;
      }
      else
      {
        if (i1 > n)
        {
          if (localObject1 == null) {
            localObject1 = new ArrayList(1);
          }
          if ((i1 >= 1) && (paramString.charAt(i1 - 1) == '\r')) {
            i1--;
          }
          String str2 = paramString.substring(n, i1);
          if (paramBoolean1) {
            str2 = str2.trim();
          }
          String str5;
          if (m != 0)
          {
            str5 = decodeQuotedPrintable(str2, localObject2);
            if (paramBoolean2) {
              str5 = UNESCAPED_SEMICOLONS.matcher(str5).replaceAll("\n").trim();
            }
            label467:
            if (localArrayList1 != null) {
              break label581;
            }
            ArrayList localArrayList2 = new ArrayList(1);
            localArrayList2.add(str5);
            ((List)localObject1).add(localArrayList2);
          }
          for (;;)
          {
            i = i1 + 1;
            break;
            if (paramBoolean2) {
              str2 = UNESCAPED_SEMICOLONS.matcher(str2).replaceAll("\n").trim();
            }
            String str3 = CR_LF_SPACE_TAB.matcher(str2).replaceAll("");
            String str4 = NEWLINE_ESCAPE.matcher(str3).replaceAll("\n");
            str5 = VCARD_ESCAPES.matcher(str4).replaceAll("$1");
            break label467;
            label581:
            localArrayList1.add(0, str5);
            ((List)localObject1).add(localArrayList1);
          }
        }
        i = i1 + 1;
      }
    }
  }
  
  private static void maybeAppendComponent(String[] paramArrayOfString, int paramInt, StringBuilder paramStringBuilder)
  {
    if (paramArrayOfString[paramInt] != null)
    {
      paramStringBuilder.append(' ');
      paramStringBuilder.append(paramArrayOfString[paramInt]);
    }
  }
  
  private static void maybeAppendFragment(ByteArrayOutputStream paramByteArrayOutputStream, String paramString, StringBuilder paramStringBuilder)
  {
    byte[] arrayOfByte;
    String str;
    if (paramByteArrayOutputStream.size() > 0)
    {
      arrayOfByte = paramByteArrayOutputStream.toByteArray();
      if (paramString != null) {
        break label38;
      }
      str = new String(arrayOfByte);
    }
    for (;;)
    {
      paramByteArrayOutputStream.reset();
      paramStringBuilder.append(str);
      return;
      try
      {
        label38:
        str = new String(arrayOfByte, paramString);
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        str = new String(arrayOfByte);
      }
    }
  }
  
  private static String toPrimaryValue(List<String> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      return null;
    }
    return (String)paramList.get(0);
  }
  
  private static String[] toPrimaryValues(Collection<List<String>> paramCollection)
  {
    if ((paramCollection == null) || (paramCollection.isEmpty())) {
      return null;
    }
    ArrayList localArrayList = new ArrayList(paramCollection.size());
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(((List)localIterator.next()).get(0));
    }
    return (String[])localArrayList.toArray(new String[paramCollection.size()]);
  }
  
  private static String[] toTypes(Collection<List<String>> paramCollection)
  {
    if ((paramCollection == null) || (paramCollection.isEmpty())) {
      return null;
    }
    ArrayList localArrayList = new ArrayList(paramCollection.size());
    Iterator localIterator = paramCollection.iterator();
    if (localIterator.hasNext())
    {
      List localList = (List)localIterator.next();
      label150:
      for (int i = 1;; i++)
      {
        int j = localList.size();
        Object localObject = null;
        String str;
        int k;
        if (i < j)
        {
          str = (String)localList.get(i);
          k = str.indexOf('=');
          if (k >= 0) {
            break label119;
          }
        }
        for (localObject = str;; localObject = str.substring(k + 1))
        {
          localArrayList.add(localObject);
          break;
          label119:
          if (!"TYPE".equalsIgnoreCase(str.substring(0, k))) {
            break label150;
          }
        }
      }
    }
    return (String[])localArrayList.toArray(new String[paramCollection.size()]);
  }
  
  public AddressBookParsedResult parse(Result paramResult)
  {
    String str = getMassagedText(paramResult);
    Matcher localMatcher = BEGIN_VCARD.matcher(str);
    if ((!localMatcher.find()) || (localMatcher.start() != 0)) {
      return null;
    }
    List localList1 = matchVCardPrefixedField("FN", str, true, false);
    if (localList1 == null)
    {
      localList1 = matchVCardPrefixedField("N", str, true, false);
      formatNames(localList1);
    }
    List localList2 = matchVCardPrefixedField("TEL", str, true, false);
    List localList3 = matchVCardPrefixedField("EMAIL", str, true, false);
    List localList4 = matchSingleVCardPrefixedField("NOTE", str, false, false);
    List localList5 = matchVCardPrefixedField("ADR", str, true, true);
    List localList6 = matchSingleVCardPrefixedField("ORG", str, true, true);
    List localList7 = matchSingleVCardPrefixedField("BDAY", str, true, false);
    if ((localList7 != null) && (!isLikeVCardDate((CharSequence)localList7.get(0)))) {
      localList7 = null;
    }
    List localList8 = matchSingleVCardPrefixedField("TITLE", str, true, false);
    List localList9 = matchSingleVCardPrefixedField("URL", str, true, false);
    List localList10 = matchSingleVCardPrefixedField("IMPP", str, true, false);
    return new AddressBookParsedResult(toPrimaryValues(localList1), null, toPrimaryValues(localList2), toTypes(localList2), toPrimaryValues(localList3), toTypes(localList3), toPrimaryValue(localList10), toPrimaryValue(localList4), toPrimaryValues(localList5), toTypes(localList5), toPrimaryValue(localList6), toPrimaryValue(localList7), toPrimaryValue(localList8), toPrimaryValue(localList9));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.VCardResultParser
 * JD-Core Version:    0.7.0.1
 */