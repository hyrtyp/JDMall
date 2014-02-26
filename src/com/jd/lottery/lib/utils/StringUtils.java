package com.jd.lottery.lib.utils;

import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class StringUtils
{
  public static final String DOT = ",";
  public static final String DOUBLE_SPACE = "  ";
  private static final String EMAIL_PATTERN = "^[\\w-]+(\\.[\\w-]+)*@[\\w-]+(\\.[\\w-]+)+";
  public static final String EMPTY_STRING = "";
  private static final String JD_FULLNAME_PATTERN = "^([一-龥]|[a-zA-Z]){2,10}$";
  private static final String JD_ID_CARD_NO_PATTERN = "(^\\d{15})|(^\\d{17}([0-9]|X))$";
  private static final String JD_MOBILE_PATTERN = "^(?:13|18|15)\\d{9}$";
  public static final String LINE_BREAKS = "\r\n";
  private static final String PHONE_PATTERN = "^((13[0-9])|(15[^4,\\D])|(18[0,2,5-9]))\\d{8}$";
  private static final String USERNAME_PATTERN = "^[_a-zA-Z0-9]{1}[_a-zA-Z0-9@.]{5,63}$";
  public static final String WHITE_SPACES = " \r\n\t　   ";
  private static final Pattern cellNumberPattern;
  private static final Pattern characterReferencePattern = Pattern.compile("&#?[a-zA-Z0-9]{1,8};");
  private static final Pattern dbSpecPattern = Pattern.compile("(.*)\\{(\\d+),(\\d+)\\}(.*)");
  private static final Pattern emailPattern = Pattern.compile("^[\\w]+[\\w\\.\\-\\+\\_]+@[\\w\\.\\-\\_]+\\.[\\w]+$");
  private static char[] hexChars = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  private static final Pattern idCard15Pattern;
  private static final Pattern qqNumberPattern = Pattern.compile("^[1-9][0-9]{4,10}$");
  private static final Pattern teleNumberPattern = Pattern.compile("^\\d{3}\\-\\d{8}|\\d{4}\\-\\d{7}$");
  
  static
  {
    cellNumberPattern = Pattern.compile("^1[358]\\d{9}$");
    idCard15Pattern = Pattern.compile("^[1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{4}$");
  }
  
  public static SpannableString addColorSpan(String paramString, String[] paramArrayOfString, int paramInt)
  {
    SpannableString localSpannableString = new SpannableString(paramString);
    int i = paramArrayOfString.length;
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return localSpannableString;
      }
      String str = paramArrayOfString[j];
      int k = paramString.indexOf(str);
      localSpannableString.setSpan(new ForegroundColorSpan(paramInt), k, k + str.length(), 18);
    }
  }
  
  public static SpannableString addStrikeSpan(String paramString, String[] paramArrayOfString)
  {
    SpannableString localSpannableString = new SpannableString(paramString);
    int i = paramArrayOfString.length;
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return localSpannableString;
      }
      String str = paramArrayOfString[j];
      int k = paramString.indexOf(str);
      localSpannableString.setSpan(new StrikethroughSpan(), k, k + str.length(), 18);
    }
  }
  
  public static String bytesToHexString(byte[] paramArrayOfByte)
  {
    return bytesToHexString(paramArrayOfByte, null);
  }
  
  public static String bytesToHexString(byte[] paramArrayOfByte, Character paramCharacter)
  {
    int i = paramArrayOfByte.length;
    int j;
    StringBuffer localStringBuffer;
    if (paramCharacter == null)
    {
      j = 2;
      localStringBuffer = new StringBuffer(j * i);
    }
    for (int k = 0;; k++)
    {
      if (k >= paramArrayOfByte.length)
      {
        return localStringBuffer.toString();
        j = 3;
        break;
      }
      int m = 0xF & paramArrayOfByte[k] >>> 4;
      int n = 0xF & paramArrayOfByte[k];
      if ((k > 0) && (paramCharacter != null)) {
        localStringBuffer.append(paramCharacter.charValue());
      }
      localStringBuffer.append(hexChars[m]);
      localStringBuffer.append(hexChars[n]);
    }
  }
  
  public static boolean containsCharRef(String paramString)
  {
    return characterReferencePattern.matcher(paramString).find();
  }
  
  public static String email2Safe4Show(String paramString)
  {
    if ((isEmpty(paramString)) || (!makeSafe(paramString).contains("@")) || (makeSafe(paramString).startsWith("@"))) {
      return "";
    }
    String[] arrayOfString = paramString.split("@");
    String str;
    switch (arrayOfString[0].length())
    {
    default: 
      str = arrayOfString[0].substring(0, 2) + "***" + arrayOfString[0].substring(-2 + arrayOfString[0].length(), arrayOfString[0].length());
    }
    for (;;)
    {
      return new String(str + "@" + arrayOfString[1]);
      str = "*";
      continue;
      str = arrayOfString[0].substring(0, 1) + "*";
      continue;
      str = arrayOfString[0].substring(0, 1) + "*" + arrayOfString[0].substring(2, 3);
      continue;
      str = arrayOfString[0].substring(0, 1) + "**" + arrayOfString[0].substring(3, 4);
      continue;
      str = arrayOfString[0].substring(0, 1) + "***" + arrayOfString[0].substring(4, 5);
    }
  }
  
  public static boolean equals(String paramString1, String paramString2)
  {
    if (paramString1 == paramString2) {
      return true;
    }
    if ((paramString1 != null) && (paramString2 != null)) {
      return paramString1.equals(paramString2);
    }
    return false;
  }
  
  public static boolean equalsIgnoreCase(String paramString1, String paramString2)
  {
    if (paramString1 == paramString2) {
      return true;
    }
    if ((paramString1 != null) && (paramString2 != null)) {
      return paramString1.equalsIgnoreCase(paramString2);
    }
    return false;
  }
  
  public static String idCardNumber2Safe4Show(String paramString)
  {
    if ((isEmpty(paramString)) || (makeSafe(paramString).length() < 15)) {
      return "";
    }
    int i = paramString.length();
    String str1 = paramString.substring(0, 3);
    String str2 = paramString.substring(i - 4, i);
    StringBuffer localStringBuffer = new StringBuffer();
    for (int j = 0;; j++)
    {
      if (j >= i - 8) {
        return new String(str1 + localStringBuffer.toString() + str2);
      }
      localStringBuffer.append("*");
    }
  }
  
  public static boolean isCellNumber(String paramString)
  {
    return cellNumberPattern.matcher(paramString).matches();
  }
  
  public static boolean isEmail(String paramString)
  {
    return emailPattern.matcher(paramString).matches();
  }
  
  public static boolean isEmpty(String paramString)
  {
    return makeSafe(paramString).length() == 0;
  }
  
  public static boolean isEmptyOrWhitespace(String paramString)
  {
    String str = makeSafe(paramString);
    int i = 0;
    int j = str.length();
    for (;;)
    {
      if (i >= j) {
        return true;
      }
      if (!Character.isWhitespace(str.charAt(i))) {
        return false;
      }
      i++;
    }
  }
  
  public static boolean isFullName(String paramString)
  {
    return Pattern.compile("^([一-龥]|[a-zA-Z]){2,10}$").matcher(paramString).matches();
  }
  
  public static boolean isIdCardNo(String paramString)
  {
    String str = paramString.toUpperCase();
    if (!Pattern.compile("(^\\d{15})|(^\\d{17}([0-9]|X))$").matcher(str).matches()) {}
    while (!Arrays.asList(new String[] { "11", "12", "13", "14", "15", "21", "22", "23", "31", "32", "33", "34", "35", "36", "37", "41", "42", "43", "44", "45", "46", "50", "51", "52", "53", "54", "61", "62", "63", "64", "65", "71", "81", "82", "91" }).contains(str.substring(0, 2))) {
      return false;
    }
    return true;
  }
  
  public static boolean isNotBlank(String paramString)
  {
    return (paramString != null) && (paramString.length() > 0);
  }
  
  public static boolean isNotEmpty(String paramString)
  {
    return !isEmpty(paramString);
  }
  
  public static boolean isOlderThanAge18(String paramString)
  {
    if (!isIdCardNo(paramString)) {}
    int j;
    int k;
    do
    {
      int i;
      do
      {
        int m;
        int n;
        do
        {
          return false;
          i = paramString.length();
          if (18 != i) {
            break;
          }
          m = Integer.valueOf(paramString.substring(6, 10)).intValue();
          n = Calendar.getInstance().get(1);
        } while (m + 18 >= n);
        return true;
      } while (15 != i);
      j = 1900 + Integer.valueOf(paramString.substring(6, 8)).intValue();
      k = Calendar.getInstance().get(1);
    } while (j + 18 >= k);
    return true;
  }
  
  public static boolean isQQNumber(String paramString)
  {
    return qqNumberPattern.matcher(paramString).matches();
  }
  
  public static boolean isTeleNumber(String paramString)
  {
    return teleNumberPattern.matcher(paramString).matches();
  }
  
  public static String lstrip(String paramString)
  {
    return megastrip(paramString, true, false, " \r\n\t　   ");
  }
  
  public static String makeSafe(String paramString)
  {
    if (paramString == null) {
      paramString = "";
    }
    return paramString;
  }
  
  public static String megastrip(String paramString1, boolean paramBoolean1, boolean paramBoolean2, String paramString2)
  {
    if (paramString1 == null) {
      return null;
    }
    int i = 0;
    int j = -1 + paramString1.length();
    if ((!paramBoolean1) || (i > j) || (paramString2.indexOf(paramString1.charAt(i)) < 0)) {}
    for (;;)
    {
      if ((!paramBoolean2) || (j < i) || (paramString2.indexOf(paramString1.charAt(j)) < 0))
      {
        return paramString1.substring(i, j + 1);
        i++;
        break;
      }
      j--;
    }
  }
  
  public static String phoneNum2Safe4Show(String paramString)
  {
    if ((isEmpty(paramString)) || (paramString.length() != 11)) {
      return "";
    }
    String str1 = paramString.substring(0, 3);
    String str2 = paramString.substring(7, 11);
    return new String(str1 + "****" + str2);
  }
  
  public static String rstrip(String paramString)
  {
    return megastrip(paramString, false, true, " \r\n\t　   ");
  }
  
  public static String stringFilter(String paramString)
  {
    String str = paramString.replaceAll("【", "[").replaceAll("】", "]").replaceAll("！", "!").replaceAll("：", ":");
    return Pattern.compile("[『』]").matcher(str).replaceAll("").trim();
  }
  
  public static String strip(String paramString)
  {
    return megastrip(paramString, true, true, " \r\n\t　   ");
  }
  
  public static String stripNonDigits(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer(paramString.length());
    char[] arrayOfChar = paramString.toCharArray();
    int i = arrayOfChar.length;
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return localStringBuffer.toString();
      }
      char c = arrayOfChar[j];
      if (Character.isDigit(c)) {
        localStringBuffer.append(c);
      }
    }
  }
  
  public static String stripPrefix(String paramString1, String paramString2)
  {
    if (paramString1.startsWith(paramString2)) {
      return paramString1.substring(paramString2.length());
    }
    return null;
  }
  
  public static String stripPrefixIgnoreCase(String paramString1, String paramString2)
  {
    if ((paramString1.length() >= paramString2.length()) && (paramString1.substring(0, paramString2.length()).equalsIgnoreCase(paramString2))) {
      return paramString1.substring(paramString2.length());
    }
    return null;
  }
  
  public static String toDBC(String paramString)
  {
    char[] arrayOfChar = paramString.toCharArray();
    int i = 0;
    if (i >= arrayOfChar.length) {
      return new String(arrayOfChar);
    }
    if (arrayOfChar[i] == '　') {
      arrayOfChar[i] = ' ';
    }
    for (;;)
    {
      i++;
      break;
      if ((arrayOfChar[i] > 65280) && (arrayOfChar[i] < 65375)) {
        arrayOfChar[i] = ((char)(arrayOfChar[i] - 65248));
      }
    }
  }
  
  public static String toNullIfEmpty(String paramString)
  {
    if (isEmpty(paramString)) {
      paramString = null;
    }
    return paramString;
  }
  
  public static String toNullIfEmptyOrWhitespace(String paramString)
  {
    if (isEmptyOrWhitespace(paramString)) {
      paramString = null;
    }
    return paramString;
  }
  
  public static String toSBC(String paramString)
  {
    char[] arrayOfChar = paramString.toCharArray();
    int i = 0;
    if (i >= arrayOfChar.length) {
      return new String(arrayOfChar);
    }
    if (arrayOfChar[i] == ' ') {
      arrayOfChar[i] = '　';
    }
    for (;;)
    {
      i++;
      break;
      if (arrayOfChar[i] < '') {
        arrayOfChar[i] = ((char)(65248 + arrayOfChar[i]));
      }
    }
  }
  
  public static boolean validateEmail(String paramString)
  {
    return Pattern.compile("^[\\w-]+(\\.[\\w-]+)*@[\\w-]+(\\.[\\w-]+)+").matcher(paramString).matches();
  }
  
  public static boolean validatePhone(String paramString)
  {
    return Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0,2,5-9]))\\d{8}$").matcher(paramString).matches();
  }
  
  public static boolean validateUserName(String paramString)
  {
    return Pattern.compile("^[_a-zA-Z0-9]{1}[_a-zA-Z0-9@.]{5,63}$").matcher(paramString).matches();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.utils.StringUtils
 * JD-Core Version:    0.7.0.1
 */