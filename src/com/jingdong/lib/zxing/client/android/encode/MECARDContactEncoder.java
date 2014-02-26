package com.jingdong.lib.zxing.client.android.encode;

import android.telephony.PhoneNumberUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class MECARDContactEncoder
  extends ContactEncoder
{
  private static final Pattern COMMA = Pattern.compile(",");
  private static final Formatter MECARD_FIELD_FORMATTER = new Formatter()
  {
    public String format(String paramAnonymousString)
    {
      return MECARDContactEncoder.NEWLINE.matcher(MECARDContactEncoder.RESERVED_MECARD_CHARS.matcher(paramAnonymousString).replaceAll("\\\\$1")).replaceAll("");
    }
  };
  private static final Pattern NEWLINE;
  private static final Pattern RESERVED_MECARD_CHARS = Pattern.compile("([\\\\:;])");
  private static final char TERMINATOR = ';';
  
  static
  {
    NEWLINE = Pattern.compile("\\n");
  }
  
  private static void append(StringBuilder paramStringBuilder1, StringBuilder paramStringBuilder2, String paramString1, String paramString2)
  {
    doAppend(paramStringBuilder1, paramStringBuilder2, paramString1, paramString2, MECARD_FIELD_FORMATTER, ';');
  }
  
  private static void appendUpToUnique(StringBuilder paramStringBuilder1, StringBuilder paramStringBuilder2, String paramString, Iterable<String> paramIterable, int paramInt, Formatter paramFormatter)
  {
    doAppendUpToUnique(paramStringBuilder1, paramStringBuilder2, paramString, paramIterable, paramInt, paramFormatter, MECARD_FIELD_FORMATTER, ';');
  }
  
  public String[] encode(Iterable<String> paramIterable1, String paramString1, Iterable<String> paramIterable2, Iterable<String> paramIterable3, Iterable<String> paramIterable4, String paramString2, String paramString3)
  {
    StringBuilder localStringBuilder1 = new StringBuilder(100);
    StringBuilder localStringBuilder2 = new StringBuilder(100);
    localStringBuilder1.append("MECARD:");
    appendUpToUnique(localStringBuilder1, localStringBuilder2, "N", paramIterable1, 1, new Formatter()
    {
      public String format(String paramAnonymousString)
      {
        if (paramAnonymousString == null) {
          return null;
        }
        return MECARDContactEncoder.COMMA.matcher(paramAnonymousString).replaceAll("");
      }
    });
    append(localStringBuilder1, localStringBuilder2, "ORG", paramString1);
    appendUpToUnique(localStringBuilder1, localStringBuilder2, "ADR", paramIterable2, 1, null);
    appendUpToUnique(localStringBuilder1, localStringBuilder2, "TEL", paramIterable3, 2147483647, new Formatter()
    {
      public String format(String paramAnonymousString)
      {
        return PhoneNumberUtils.formatNumber(paramAnonymousString);
      }
    });
    appendUpToUnique(localStringBuilder1, localStringBuilder2, "EMAIL", paramIterable4, 2147483647, null);
    append(localStringBuilder1, localStringBuilder2, "URL", paramString2);
    append(localStringBuilder1, localStringBuilder2, "NOTE", paramString3);
    localStringBuilder1.append(';');
    String[] arrayOfString = new String[2];
    arrayOfString[0] = localStringBuilder1.toString();
    arrayOfString[1] = localStringBuilder2.toString();
    return arrayOfString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.encode.MECARDContactEncoder
 * JD-Core Version:    0.7.0.1
 */