package com.jingdong.lib.zxing.client.android.result;

import android.app.Activity;
import android.telephony.PhoneNumberUtils;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import com.google.zxing.client.result.AddressBookParsedResult;
import com.google.zxing.client.result.ParsedResult;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public final class AddressBookResultHandler
  extends ResultHandler
{
  private static final int[] BUTTON_TEXTS;
  private static final DateFormat[] DATE_FORMATS;
  private int buttonCount;
  private final boolean[] fields;
  
  static
  {
    DateFormat[] arrayOfDateFormat1 = new DateFormat[4];
    arrayOfDateFormat1[0] = new SimpleDateFormat("yyyyMMdd", Locale.ENGLISH);
    arrayOfDateFormat1[1] = new SimpleDateFormat("yyyyMMdd'T'HHmmss", Locale.ENGLISH);
    arrayOfDateFormat1[2] = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
    arrayOfDateFormat1[3] = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.ENGLISH);
    DATE_FORMATS = arrayOfDateFormat1;
    DateFormat[] arrayOfDateFormat2 = DATE_FORMATS;
    int i = arrayOfDateFormat2.length;
    for (int j = 0;; j++)
    {
      if (j >= i)
      {
        BUTTON_TEXTS = new int[] { 2131166582, 2131166603, 2131166587, 2131166589 };
        return;
      }
      arrayOfDateFormat2[j].setLenient(false);
    }
  }
  
  public AddressBookResultHandler(Activity paramActivity, ParsedResult paramParsedResult)
  {
    super(paramActivity, paramParsedResult);
    AddressBookParsedResult localAddressBookParsedResult = (AddressBookParsedResult)paramParsedResult;
    String[] arrayOfString1 = localAddressBookParsedResult.getAddresses();
    int i;
    int j;
    label61:
    int k;
    if ((arrayOfString1 != null) && (arrayOfString1.length > 0) && (arrayOfString1[0].length() > 0))
    {
      i = 1;
      String[] arrayOfString2 = localAddressBookParsedResult.getPhoneNumbers();
      if ((arrayOfString2 == null) || (arrayOfString2.length <= 0)) {
        break label140;
      }
      j = 1;
      String[] arrayOfString3 = localAddressBookParsedResult.getEmails();
      if ((arrayOfString3 == null) || (arrayOfString3.length <= 0)) {
        break label146;
      }
      k = 1;
      label81:
      this.fields = new boolean[4];
      this.fields[0] = true;
      this.fields[1] = i;
      this.fields[2] = j;
      this.fields[3] = k;
      this.buttonCount = 0;
    }
    for (int m = 0;; m++)
    {
      if (m >= 4)
      {
        return;
        i = 0;
        break;
        label140:
        j = 0;
        break label61;
        label146:
        k = 0;
        break label81;
      }
      if (this.fields[m] != 0) {
        this.buttonCount = (1 + this.buttonCount);
      }
    }
  }
  
  private int mapIndexToAction(int paramInt)
  {
    int j;
    if (paramInt < this.buttonCount) {
      j = -1;
    }
    for (int i = 0;; i++)
    {
      if (i >= 4) {
        i = -1;
      }
      do
      {
        return i;
        if (this.fields[i] != 0) {
          j++;
        }
      } while (j == paramInt);
    }
  }
  
  private static Date parseDate(String paramString)
  {
    DateFormat[] arrayOfDateFormat = DATE_FORMATS;
    int i = arrayOfDateFormat.length;
    int j = 0;
    for (;;)
    {
      if (j >= i) {
        return null;
      }
      DateFormat localDateFormat = arrayOfDateFormat[j];
      try
      {
        Date localDate = localDateFormat.parse(paramString);
        return localDate;
      }
      catch (ParseException localParseException)
      {
        j++;
      }
    }
  }
  
  public int getButtonCount()
  {
    return this.buttonCount;
  }
  
  public int getButtonText(int paramInt)
  {
    return BUTTON_TEXTS[mapIndexToAction(paramInt)];
  }
  
  public CharSequence getDisplayContents()
  {
    AddressBookParsedResult localAddressBookParsedResult = (AddressBookParsedResult)getResult();
    StringBuilder localStringBuilder = new StringBuilder(100);
    ParsedResult.maybeAppend(localAddressBookParsedResult.getNames(), localStringBuilder);
    int i = localStringBuilder.length();
    String str1 = localAddressBookParsedResult.getPronunciation();
    if ((str1 != null) && (str1.length() > 0))
    {
      localStringBuilder.append("\n(");
      localStringBuilder.append(str1);
      localStringBuilder.append(')');
    }
    ParsedResult.maybeAppend(localAddressBookParsedResult.getTitle(), localStringBuilder);
    ParsedResult.maybeAppend(localAddressBookParsedResult.getOrg(), localStringBuilder);
    ParsedResult.maybeAppend(localAddressBookParsedResult.getAddresses(), localStringBuilder);
    String[] arrayOfString = localAddressBookParsedResult.getPhoneNumbers();
    int j;
    if (arrayOfString != null) {
      j = arrayOfString.length;
    }
    for (int k = 0;; k++)
    {
      if (k >= j)
      {
        ParsedResult.maybeAppend(localAddressBookParsedResult.getEmails(), localStringBuilder);
        ParsedResult.maybeAppend(localAddressBookParsedResult.getURL(), localStringBuilder);
        String str2 = localAddressBookParsedResult.getBirthday();
        if ((str2 != null) && (str2.length() > 0))
        {
          Date localDate = parseDate(str2);
          if (localDate != null) {
            ParsedResult.maybeAppend(DateFormat.getDateInstance(2).format(Long.valueOf(localDate.getTime())), localStringBuilder);
          }
        }
        ParsedResult.maybeAppend(localAddressBookParsedResult.getNote(), localStringBuilder);
        if (i <= 0) {
          break;
        }
        SpannableString localSpannableString = new SpannableString(localStringBuilder.toString());
        localSpannableString.setSpan(new StyleSpan(1), 0, i, 0);
        return localSpannableString;
      }
      ParsedResult.maybeAppend(PhoneNumberUtils.formatNumber(arrayOfString[k]), localStringBuilder);
    }
    return localStringBuilder.toString();
  }
  
  public int getDisplayTitle()
  {
    return 2131166681;
  }
  
  public void handleButtonPress(int paramInt)
  {
    AddressBookParsedResult localAddressBookParsedResult = (AddressBookParsedResult)getResult();
    String[] arrayOfString1 = localAddressBookParsedResult.getAddresses();
    String str1;
    label26:
    String[] arrayOfString2;
    if ((arrayOfString1 == null) || (arrayOfString1.length < 1))
    {
      str1 = null;
      arrayOfString2 = localAddressBookParsedResult.getAddressTypes();
      if ((arrayOfString2 != null) && (arrayOfString2.length >= 1)) {
        break label93;
      }
    }
    label93:
    for (String str2 = null;; str2 = arrayOfString2[0]) {
      switch (mapIndexToAction(paramInt))
      {
      default: 
        return;
        str1 = arrayOfString1[0];
        break label26;
      }
    }
    addContact(localAddressBookParsedResult.getNames(), localAddressBookParsedResult.getPronunciation(), localAddressBookParsedResult.getPhoneNumbers(), localAddressBookParsedResult.getPhoneTypes(), localAddressBookParsedResult.getEmails(), localAddressBookParsedResult.getEmailTypes(), localAddressBookParsedResult.getNote(), localAddressBookParsedResult.getInstantMessenger(), str1, str2, localAddressBookParsedResult.getOrg(), localAddressBookParsedResult.getTitle(), localAddressBookParsedResult.getURL(), localAddressBookParsedResult.getBirthday());
    return;
    String[] arrayOfString3 = localAddressBookParsedResult.getNames();
    if (arrayOfString3 != null) {}
    for (String str3 = arrayOfString3[0];; str3 = null)
    {
      searchMap(str1, str3);
      return;
    }
    dialPhone(localAddressBookParsedResult.getPhoneNumbers()[0]);
    return;
    sendEmail(localAddressBookParsedResult.getEmails()[0], null, null);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.result.AddressBookResultHandler
 * JD-Core Version:    0.7.0.1
 */