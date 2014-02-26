package com.jd.common.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.util.BitSet;
import org.apache.commons.lang.StringUtils;

public class StringEscapeUtils
{
  private static final BitSet ALPHA = new BitSet(256);
  private static final BitSet ALPHANUM;
  private static int[] HEXADECIMAL;
  private static final BitSet MARK;
  private static final BitSet RESERVED;
  private static final BitSet UNRESERVED;
  
  static
  {
    int i = 97;
    int j;
    if (i > 122)
    {
      j = 65;
      label25:
      if (j <= 90) {
        break label382;
      }
      ALPHANUM = new BitSet(256);
      ALPHANUM.or(ALPHA);
    }
    for (int k = 48;; k++)
    {
      if (k > 57)
      {
        MARK = new BitSet(256);
        MARK.set(45);
        MARK.set(95);
        MARK.set(46);
        MARK.set(33);
        MARK.set(126);
        MARK.set(42);
        MARK.set(39);
        MARK.set(40);
        MARK.set(41);
        RESERVED = new BitSet(256);
        RESERVED.set(59);
        RESERVED.set(47);
        RESERVED.set(63);
        RESERVED.set(58);
        RESERVED.set(64);
        RESERVED.set(38);
        RESERVED.set(61);
        RESERVED.set(43);
        RESERVED.set(36);
        RESERVED.set(44);
        UNRESERVED = new BitSet(256);
        UNRESERVED.or(ALPHANUM);
        UNRESERVED.or(MARK);
        HEXADECIMAL = new int[] { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
        return;
        ALPHA.set(i);
        i++;
        break;
        label382:
        ALPHA.set(j);
        j++;
        break label25;
      }
      ALPHANUM.set(k);
    }
  }
  
  public static String escapeCombinedCookie(String paramString)
  {
    return escapeEntities(Entities.COMBINED_COOKIE, paramString);
  }
  
  public static String escapeEntities(Entities paramEntities, String paramString)
  {
    if (paramString == null) {
      paramString = null;
    }
    for (;;)
    {
      return paramString;
      try
      {
        StringWriter localStringWriter = new StringWriter(paramString.length());
        if (escapeEntitiesInternal(paramEntities, paramString, localStringWriter))
        {
          String str = localStringWriter.toString();
          return str;
        }
      }
      catch (IOException localIOException) {}
    }
    return paramString;
  }
  
  public static void escapeEntities(Entities paramEntities, String paramString, Writer paramWriter)
    throws IOException
  {
    escapeEntitiesInternal(paramEntities, paramString, paramWriter);
  }
  
  private static boolean escapeEntitiesInternal(Entities paramEntities, String paramString, Writer paramWriter)
    throws IOException
  {
    boolean bool = false;
    if (paramEntities == null) {
      throw new IllegalArgumentException("The Entities must not be null");
    }
    if (paramWriter == null) {
      throw new IllegalArgumentException("The Writer must not be null");
    }
    if (paramString == null) {
      return false;
    }
    int i = 0;
    if (i >= paramString.length()) {
      return bool;
    }
    int j = paramString.charAt(i);
    String str = paramEntities.getEntityName(j);
    if (str == null) {
      paramWriter.write(j);
    }
    for (;;)
    {
      i++;
      break;
      paramWriter.write(38);
      paramWriter.write(str);
      paramWriter.write(59);
      bool = true;
    }
  }
  
  public static String escapeHtml(String paramString)
  {
    return escapeEntities(Entities.HTML40, paramString);
  }
  
  public static void escapeHtml(String paramString, Writer paramWriter)
    throws IOException
  {
    escapeEntities(Entities.HTML40, paramString, paramWriter);
  }
  
  public static String escapeJava(String paramString)
  {
    return escapeJavaStyleString(paramString, false, false);
  }
  
  public static String escapeJava(String paramString, boolean paramBoolean)
  {
    return escapeJavaStyleString(paramString, false, paramBoolean);
  }
  
  public static void escapeJava(String paramString, Writer paramWriter)
    throws IOException
  {
    escapeJavaStyleString(paramString, false, paramWriter, false);
  }
  
  public static void escapeJava(String paramString, Writer paramWriter, boolean paramBoolean)
    throws IOException
  {
    escapeJavaStyleString(paramString, false, paramWriter, paramBoolean);
  }
  
  public static String escapeJavaScript(String paramString)
  {
    return escapeJavaStyleString(paramString, true, false);
  }
  
  public static String escapeJavaScript(String paramString, boolean paramBoolean)
  {
    return escapeJavaStyleString(paramString, true, paramBoolean);
  }
  
  public static void escapeJavaScript(String paramString, Writer paramWriter)
    throws IOException
  {
    escapeJavaStyleString(paramString, true, paramWriter, false);
  }
  
  public static void escapeJavaScript(String paramString, Writer paramWriter, boolean paramBoolean)
    throws IOException
  {
    escapeJavaStyleString(paramString, true, paramWriter, paramBoolean);
  }
  
  private static String escapeJavaStyleString(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramString == null) {
      paramString = null;
    }
    for (;;)
    {
      return paramString;
      try
      {
        StringWriter localStringWriter = new StringWriter(2 * paramString.length());
        if (escapeJavaStyleString(paramString, paramBoolean1, localStringWriter, paramBoolean2))
        {
          String str = localStringWriter.toString();
          return str;
        }
      }
      catch (IOException localIOException) {}
    }
    return paramString;
  }
  
  private static boolean escapeJavaStyleString(String paramString, boolean paramBoolean1, Writer paramWriter, boolean paramBoolean2)
    throws IOException
  {
    boolean bool = false;
    if (paramWriter == null) {
      throw new IllegalArgumentException("The Writer must not be null");
    }
    if (paramString == null) {
      return false;
    }
    int i = paramString.length();
    int j = 0;
    if (j >= i) {
      return bool;
    }
    int k = paramString.charAt(j);
    if (k < 32) {
      switch (k)
      {
      case 11: 
      default: 
        if (k > 15)
        {
          paramWriter.write("\\u00" + Integer.toHexString(k).toUpperCase());
          label130:
          bool = true;
        }
        break;
      }
    }
    for (;;)
    {
      j++;
      break;
      paramWriter.write(92);
      paramWriter.write(98);
      break label130;
      paramWriter.write(92);
      paramWriter.write(110);
      break label130;
      paramWriter.write(92);
      paramWriter.write(116);
      break label130;
      paramWriter.write(92);
      paramWriter.write(102);
      break label130;
      paramWriter.write(92);
      paramWriter.write(114);
      break label130;
      paramWriter.write("\\u000" + Integer.toHexString(k).toUpperCase());
      break label130;
      if ((paramBoolean2) && (k > 255))
      {
        if (k > 4095) {
          paramWriter.write("\\u" + Integer.toHexString(k).toUpperCase());
        }
        for (;;)
        {
          bool = true;
          break;
          paramWriter.write("\\u0" + Integer.toHexString(k).toUpperCase());
        }
      }
      switch (k)
      {
      default: 
        paramWriter.write(k);
        break;
      case 39: 
        if (paramBoolean1)
        {
          paramWriter.write(92);
          bool = true;
        }
        paramWriter.write(39);
        break;
      case 34: 
        paramWriter.write(92);
        paramWriter.write(34);
        bool = true;
        break;
      case 92: 
        paramWriter.write(92);
        paramWriter.write(92);
        bool = true;
      }
    }
  }
  
  public static String escapeSql(String paramString)
  {
    return StringUtils.replace(paramString, "'", "''");
  }
  
  public static void escapeSql(String paramString, Writer paramWriter)
    throws IOException
  {
    String str = StringUtils.replace(paramString, "'", "''");
    if (str != null) {
      paramWriter.write(str);
    }
  }
  
  public static String escapeURL(String paramString)
  {
    try
    {
      String str = escapeURLInternal(paramString, null, true);
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
    return paramString;
  }
  
  public static String escapeURL(String paramString1, String paramString2)
    throws UnsupportedEncodingException
  {
    return escapeURLInternal(paramString1, paramString2, true);
  }
  
  public static String escapeURL(String paramString1, String paramString2, boolean paramBoolean)
    throws UnsupportedEncodingException
  {
    return escapeURLInternal(paramString1, paramString2, paramBoolean);
  }
  
  public static void escapeURL(String paramString1, String paramString2, Writer paramWriter)
    throws IOException
  {
    escapeURLInternal(paramString1, paramString2, paramWriter, true);
  }
  
  public static void escapeURL(String paramString1, String paramString2, Writer paramWriter, boolean paramBoolean)
    throws IOException
  {
    escapeURLInternal(paramString1, paramString2, paramWriter, paramBoolean);
  }
  
  private static String escapeURLInternal(String paramString1, String paramString2, boolean paramBoolean)
    throws UnsupportedEncodingException
  {
    if (paramString1 == null) {
      paramString1 = null;
    }
    for (;;)
    {
      return paramString1;
      try
      {
        StringWriter localStringWriter = new StringWriter(paramString1.length());
        if (escapeURLInternal(paramString1, paramString2, localStringWriter, paramBoolean))
        {
          String str = localStringWriter.toString();
          return str;
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw localUnsupportedEncodingException;
      }
      catch (IOException localIOException) {}
    }
    return paramString1;
  }
  
  private static boolean escapeURLInternal(String paramString1, String paramString2, Writer paramWriter, boolean paramBoolean)
    throws IOException
  {
    if (paramString2 == null) {
      paramString2 = System.getProperty("file.encoding");
    }
    boolean bool = false;
    if (paramWriter == null) {
      throw new IllegalArgumentException("The Writer must not be null");
    }
    if (paramString1 == null) {
      return false;
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(10);
    OutputStreamWriter localOutputStreamWriter = new OutputStreamWriter(localByteArrayOutputStream, paramString2);
    int i = 0;
    if (i >= paramString1.length()) {
      return bool;
    }
    int j = paramString1.charAt(i);
    if (isSafeCharacter(j, paramBoolean)) {
      paramWriter.write(j);
    }
    for (;;)
    {
      i++;
      break;
      if (j != 32) {
        break label119;
      }
      paramWriter.write(43);
      bool = true;
    }
    for (;;)
    {
      label119:
      byte[] arrayOfByte;
      int k;
      try
      {
        localOutputStreamWriter.write(j);
        localOutputStreamWriter.flush();
        arrayOfByte = localByteArrayOutputStream.toByteArray();
        k = 0;
        if (k < arrayOfByte.length) {
          break label170;
        }
        localByteArrayOutputStream.reset();
        bool = true;
      }
      catch (IOException localIOException)
      {
        localByteArrayOutputStream.reset();
      }
      break;
      label170:
      int m = arrayOfByte[k];
      paramWriter.write(37);
      int n = m & 0xF;
      int i1 = (m & 0xF0) >> 4;
      paramWriter.write(HEXADECIMAL[i1]);
      paramWriter.write(HEXADECIMAL[n]);
      k++;
    }
  }
  
  public static String escapeXml(String paramString)
  {
    return escapeEntities(Entities.XML, paramString);
  }
  
  public static void escapeXml(String paramString, Writer paramWriter)
    throws IOException
  {
    escapeEntities(Entities.XML, paramString, paramWriter);
  }
  
  private static boolean isSafeCharacter(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean) {
      return UNRESERVED.get(paramInt);
    }
    return (paramInt > 32) && (!RESERVED.get(paramInt)) && (!Character.isWhitespace((char)paramInt));
  }
  
  public static String unescapeCombinedCookie(String paramString)
  {
    return unescapeEntities(Entities.COMBINED_COOKIE, paramString);
  }
  
  public static String unescapeEntities(Entities paramEntities, String paramString)
  {
    if (paramString == null) {
      paramString = null;
    }
    for (;;)
    {
      return paramString;
      try
      {
        StringWriter localStringWriter = new StringWriter(paramString.length());
        if (unescapeEntitiesInternal(paramEntities, paramString, localStringWriter))
        {
          String str = localStringWriter.toString();
          return str;
        }
      }
      catch (IOException localIOException) {}
    }
    return paramString;
  }
  
  public static void unescapeEntities(Entities paramEntities, String paramString, Writer paramWriter)
    throws IOException
  {
    unescapeEntitiesInternal(paramEntities, paramString, paramWriter);
  }
  
  private static boolean unescapeEntitiesInternal(Entities paramEntities, String paramString, Writer paramWriter)
    throws IOException
  {
    boolean bool = false;
    if (paramWriter == null) {
      throw new IllegalArgumentException("The Writer must not be null");
    }
    if (paramString == null) {
      return false;
    }
    int i = 0;
    if (i >= paramString.length()) {
      return bool;
    }
    int j = paramString.charAt(i);
    int k;
    if (j == 38)
    {
      k = paramString.indexOf(';', i + 1);
      if ((k == -1) || (i + 1 >= k - 1)) {
        paramWriter.write(j);
      }
    }
    for (;;)
    {
      i++;
      break;
      int n;
      int i1;
      if (paramString.charAt(i + 1) == '#')
      {
        n = i + 2;
        i1 = 10;
        if (n >= k - 1)
        {
          paramWriter.write(j);
          paramWriter.write(35);
          i++;
          continue;
        }
        int i2 = paramString.charAt(n);
        if ((i2 == 120) || (i2 == 88))
        {
          n++;
          i1 = 16;
          if (n >= k - 1)
          {
            paramWriter.write(j);
            paramWriter.write(35);
            i++;
            continue;
          }
        }
      }
      for (;;)
      {
        try
        {
          paramWriter.write(Integer.parseInt(paramString.substring(n, k), i1));
          bool = true;
          i = k;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          paramWriter.write(j);
          paramWriter.write(35);
          i++;
        }
        break;
        String str = paramString.substring(i + 1, k);
        int m = -1;
        if (paramEntities != null) {
          m = paramEntities.getEntityValue(str);
        }
        if (m == -1)
        {
          paramWriter.write(38);
          paramWriter.write(str);
          paramWriter.write(59);
        }
        else
        {
          paramWriter.write(m);
          bool = true;
        }
      }
      paramWriter.write(j);
    }
  }
  
  public static String unescapeHtml(String paramString)
  {
    return unescapeEntities(Entities.HTML40, paramString);
  }
  
  public static void unescapeHtml(String paramString, Writer paramWriter)
    throws IOException
  {
    unescapeEntities(Entities.HTML40, paramString, paramWriter);
  }
  
  public static String unescapeJava(String paramString)
  {
    return unescapeJavaStyleString(paramString);
  }
  
  public static void unescapeJava(String paramString, Writer paramWriter)
    throws IOException
  {
    unescapeJavaStyleString(paramString, paramWriter);
  }
  
  public static String unescapeJavaScript(String paramString)
  {
    return unescapeJavaStyleString(paramString);
  }
  
  public static void unescapeJavaScript(String paramString, Writer paramWriter)
    throws IOException
  {
    unescapeJavaStyleString(paramString, paramWriter);
  }
  
  private static String unescapeJavaStyleString(String paramString)
  {
    if (paramString == null) {
      paramString = null;
    }
    for (;;)
    {
      return paramString;
      try
      {
        StringWriter localStringWriter = new StringWriter(paramString.length());
        if (unescapeJavaStyleString(paramString, localStringWriter))
        {
          String str = localStringWriter.toString();
          return str;
        }
      }
      catch (IOException localIOException) {}
    }
    return paramString;
  }
  
  private static boolean unescapeJavaStyleString(String paramString, Writer paramWriter)
    throws IOException
  {
    boolean bool = false;
    if (paramWriter == null) {
      throw new IllegalArgumentException("The Writer must not be null");
    }
    if (paramString == null) {
      return false;
    }
    int i = paramString.length();
    StringBuffer localStringBuffer = new StringBuffer(4);
    int j = 0;
    int k = 0;
    int m = 0;
    if (m >= i)
    {
      if (j != 0) {
        paramWriter.write(92);
      }
      return bool;
    }
    char c = paramString.charAt(m);
    String str;
    if (k != 0)
    {
      localStringBuffer.append(c);
      if (localStringBuffer.length() == 4) {
        str = localStringBuffer.toString();
      }
    }
    for (;;)
    {
      try
      {
        paramWriter.write((char)Integer.parseInt(str, 16));
        localStringBuffer.setLength(0);
        k = 0;
        j = 0;
        bool = true;
        m++;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        paramWriter.write("\\u" + str);
        continue;
      }
      break;
      if (j != 0) {
        switch (c)
        {
        default: 
          paramWriter.write(c);
          j = 0;
          break;
        case '\\': 
          paramWriter.write(92);
          bool = true;
          j = 0;
          break;
        case '\'': 
          paramWriter.write(39);
          bool = true;
          j = 0;
          break;
        case '"': 
          paramWriter.write(34);
          bool = true;
          j = 0;
          break;
        case 'r': 
          paramWriter.write(13);
          bool = true;
          j = 0;
          break;
        case 'f': 
          paramWriter.write(12);
          bool = true;
          j = 0;
          break;
        case 't': 
          paramWriter.write(9);
          bool = true;
          j = 0;
          break;
        case 'n': 
          paramWriter.write(10);
          bool = true;
          j = 0;
          break;
        case 'b': 
          paramWriter.write(8);
          bool = true;
          j = 0;
          break;
        case 'u': 
          k = 1;
          j = 0;
          break;
        }
      } else if (c == '\\') {
        j = 1;
      } else {
        paramWriter.write(c);
      }
    }
  }
  
  public static String unescapeURL(String paramString)
  {
    try
    {
      String str = unescapeURLInternal(paramString, null);
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
    return paramString;
  }
  
  public static String unescapeURL(String paramString1, String paramString2)
    throws UnsupportedEncodingException
  {
    return unescapeURLInternal(paramString1, paramString2);
  }
  
  public static void unescapeURL(String paramString1, String paramString2, Writer paramWriter)
    throws IOException
  {
    unescapeURLInternal(paramString1, paramString2, paramWriter);
  }
  
  private static String unescapeURLInternal(String paramString1, String paramString2)
    throws UnsupportedEncodingException
  {
    if (paramString1 == null) {
      paramString1 = null;
    }
    for (;;)
    {
      return paramString1;
      try
      {
        StringWriter localStringWriter = new StringWriter(paramString1.length());
        if (unescapeURLInternal(paramString1, paramString2, localStringWriter))
        {
          String str = localStringWriter.toString();
          return str;
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw localUnsupportedEncodingException;
      }
      catch (IOException localIOException) {}
    }
    return paramString1;
  }
  
  private static boolean unescapeURLInternal(String paramString1, String paramString2, Writer paramWriter)
    throws IOException
  {
    if (paramString2 == null) {
      paramString2 = System.getProperty("file.encoding");
    }
    boolean bool = false;
    if (paramWriter == null) {
      throw new IllegalArgumentException("The Writer must not be null");
    }
    int i = paramString1.length();
    byte[] arrayOfByte = (byte[])null;
    int j = 0;
    int k = 0;
    int m;
    if (j >= i)
    {
      if (k > 0)
      {
        paramWriter.write(new String(arrayOfByte, 0, k, paramString2));
        return bool;
      }
    }
    else
    {
      m = paramString1.charAt(j);
      if (m < 256)
      {
        if (arrayOfByte == null) {
          arrayOfByte = new byte[i - j];
        }
        switch (m)
        {
        default: 
          n = k + 1;
          arrayOfByte[k] = ((byte)m);
        }
        for (;;)
        {
          j++;
          k = n;
          break;
          n = k + 1;
          arrayOfByte[k] = 32;
          bool = true;
          continue;
          if (j + 2 < i)
          {
            int i1 = j + 1;
            int i2 = j + 3;
            try
            {
              arrayOfByte[k] = ((byte)Integer.parseInt(paramString1.substring(i1, i2), 16));
              n = k + 1;
              j += 2;
              bool = true;
            }
            catch (NumberFormatException localNumberFormatException)
            {
              n = k + 1;
              arrayOfByte[k] = ((byte)m);
            }
          }
          else
          {
            n = k + 1;
            arrayOfByte[k] = ((byte)m);
          }
        }
      }
      if (k <= 0) {
        break label303;
      }
      paramWriter.write(new String(arrayOfByte, 0, k, paramString2));
    }
    label303:
    for (int n = 0;; n = k)
    {
      paramWriter.write(m);
      break;
      return bool;
    }
  }
  
  public static String unescapeXml(String paramString)
  {
    return unescapeEntities(Entities.XML, paramString);
  }
  
  public static void unescapeXml(String paramString, Writer paramWriter)
    throws IOException
  {
    unescapeEntities(Entities.XML, paramString, paramWriter);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.util.StringEscapeUtils
 * JD-Core Version:    0.7.0.1
 */