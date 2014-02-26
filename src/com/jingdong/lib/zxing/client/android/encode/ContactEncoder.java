package com.jingdong.lib.zxing.client.android.encode;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;

abstract class ContactEncoder
{
  static void doAppend(StringBuilder paramStringBuilder1, StringBuilder paramStringBuilder2, String paramString1, String paramString2, Formatter paramFormatter, char paramChar)
  {
    String str = trim(paramString2);
    if (str != null)
    {
      paramStringBuilder1.append(paramString1).append(':').append(paramFormatter.format(str)).append(paramChar);
      paramStringBuilder2.append(str).append('\n');
    }
  }
  
  static void doAppendUpToUnique(StringBuilder paramStringBuilder1, StringBuilder paramStringBuilder2, String paramString, Iterable<String> paramIterable, int paramInt, Formatter paramFormatter1, Formatter paramFormatter2, char paramChar)
  {
    if (paramIterable == null) {
      return;
    }
    int i = 0;
    HashSet localHashSet = new HashSet(2);
    Iterator localIterator = paramIterable.iterator();
    label26:
    String str1;
    while (localIterator.hasNext())
    {
      str1 = trim((String)localIterator.next());
      if ((str1 != null) && (!localHashSet.contains(str1)))
      {
        paramStringBuilder1.append(paramString).append(':').append(paramFormatter2.format(str1)).append(paramChar);
        if (paramFormatter1 != null) {
          break label140;
        }
      }
    }
    label140:
    for (String str2 = str1;; str2 = paramFormatter1.format(str1))
    {
      paramStringBuilder2.append(str2).append('\n');
      i++;
      if (i == paramInt) {
        break;
      }
      localHashSet.add(str1);
      break label26;
      break;
    }
  }
  
  static String trim(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    String str = paramString.trim();
    if (str.length() == 0) {
      str = null;
    }
    return str;
  }
  
  abstract String[] encode(Iterable<String> paramIterable1, String paramString1, Iterable<String> paramIterable2, Iterable<String> paramIterable3, Iterable<String> paramIterable4, String paramString2, String paramString3);
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.encode.ContactEncoder
 * JD-Core Version:    0.7.0.1
 */