package com.jingdong.lib.zxing.client.android.encode;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.net.Uri;
import android.os.Bundle;
import android.telephony.PhoneNumberUtils;
import android.util.Log;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.Result;
import com.google.zxing.WriterException;
import com.google.zxing.client.result.AddressBookParsedResult;
import com.google.zxing.client.result.ParsedResult;
import com.google.zxing.client.result.ResultParser;
import com.google.zxing.common.BitMatrix;
import com.jingdong.lib.zxing.client.android.Contents;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;

final class QRCodeEncoder
{
  private static final int BLACK = -16777216;
  private static final String TAG = QRCodeEncoder.class.getSimpleName();
  private static final int WHITE = -1;
  private final Activity activity;
  private String contents;
  private final int dimension;
  private String displayContents;
  private BarcodeFormat format;
  private String title;
  private final boolean useVCard;
  
  QRCodeEncoder(Activity paramActivity, Intent paramIntent, int paramInt, boolean paramBoolean)
    throws WriterException
  {
    this.activity = paramActivity;
    this.dimension = paramInt;
    this.useVCard = paramBoolean;
    String str = paramIntent.getAction();
    if (str.equals("com.jingdong.lib.zxing.client.android.ENCODE")) {
      encodeContentsFromZXingIntent(paramIntent);
    }
    while (!str.equals("android.intent.action.SEND")) {
      return;
    }
    encodeContentsFromShareIntent(paramIntent);
  }
  
  private void encodeContentsFromShareIntent(Intent paramIntent)
    throws WriterException
  {
    if (paramIntent.hasExtra("android.intent.extra.STREAM"))
    {
      encodeFromStreamExtra(paramIntent);
      return;
    }
    encodeFromTextExtras(paramIntent);
  }
  
  private boolean encodeContentsFromZXingIntent(Intent paramIntent)
  {
    String str1 = paramIntent.getStringExtra("ENCODE_FORMAT");
    this.format = null;
    if (str1 != null) {}
    try
    {
      this.format = BarcodeFormat.valueOf(str1);
      label24:
      String str2;
      if ((this.format == null) || (this.format == BarcodeFormat.QR_CODE))
      {
        str2 = paramIntent.getStringExtra("ENCODE_TYPE");
        if ((str2 != null) && (str2.length() != 0)) {}
      }
      for (;;)
      {
        return false;
        this.format = BarcodeFormat.QR_CODE;
        encodeQRCodeContents(paramIntent, str2);
        while ((this.contents != null) && (this.contents.length() > 0))
        {
          return true;
          String str3 = paramIntent.getStringExtra("ENCODE_DATA");
          if ((str3 != null) && (str3.length() > 0))
          {
            this.contents = str3;
            this.displayContents = str3;
            this.title = this.activity.getString(2131166612);
          }
        }
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      break label24;
    }
  }
  
  private void encodeFromStreamExtra(Intent paramIntent)
    throws WriterException
  {
    this.format = BarcodeFormat.QR_CODE;
    Bundle localBundle = paramIntent.getExtras();
    if (localBundle == null) {
      throw new WriterException("No extras");
    }
    Uri localUri = (Uri)localBundle.getParcelable("android.intent.extra.STREAM");
    if (localUri == null) {
      throw new WriterException("No EXTRA_STREAM");
    }
    try
    {
      InputStream localInputStream = this.activity.getContentResolver().openInputStream(localUri);
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      byte[] arrayOfByte1 = new byte[2048];
      ParsedResult localParsedResult;
      for (;;)
      {
        int i = localInputStream.read(arrayOfByte1);
        if (i <= 0)
        {
          byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
          String str = new String(arrayOfByte2, 0, arrayOfByte2.length, "UTF-8");
          Log.d(TAG, "Encoding share intent content:");
          Log.d(TAG, str);
          localParsedResult = ResultParser.parseResult(new Result(str, arrayOfByte2, null, BarcodeFormat.QR_CODE));
          if ((localParsedResult instanceof AddressBookParsedResult)) {
            break;
          }
          throw new WriterException("Result was not an address");
        }
        localByteArrayOutputStream.write(arrayOfByte1, 0, i);
      }
      encodeQRCodeContents((AddressBookParsedResult)localParsedResult);
    }
    catch (IOException localIOException)
    {
      throw new WriterException(localIOException);
    }
    if ((this.contents == null) || (this.contents.length() == 0)) {
      throw new WriterException("No content to encode");
    }
  }
  
  private void encodeFromTextExtras(Intent paramIntent)
    throws WriterException
  {
    String str = ContactEncoder.trim(paramIntent.getStringExtra("android.intent.extra.TEXT"));
    String[] arrayOfString;
    if (str == null)
    {
      str = ContactEncoder.trim(paramIntent.getStringExtra("android.intent.extra.HTML_TEXT"));
      if (str == null)
      {
        str = ContactEncoder.trim(paramIntent.getStringExtra("android.intent.extra.SUBJECT"));
        if (str == null)
        {
          arrayOfString = paramIntent.getStringArrayExtra("android.intent.extra.EMAIL");
          if (arrayOfString == null) {
            break label81;
          }
        }
      }
    }
    label81:
    for (str = ContactEncoder.trim(arrayOfString[0]); (str == null) || (str.length() == 0); str = "?") {
      throw new WriterException("Empty EXTRA_TEXT");
    }
    this.contents = str;
    this.format = BarcodeFormat.QR_CODE;
    if (paramIntent.hasExtra("android.intent.extra.SUBJECT")) {
      this.displayContents = paramIntent.getStringExtra("android.intent.extra.SUBJECT");
    }
    for (;;)
    {
      this.title = this.activity.getString(2131166612);
      return;
      if (paramIntent.hasExtra("android.intent.extra.TITLE")) {
        this.displayContents = paramIntent.getStringExtra("android.intent.extra.TITLE");
      } else {
        this.displayContents = this.contents;
      }
    }
  }
  
  private void encodeQRCodeContents(Intent paramIntent, String paramString)
  {
    if (paramString.equals("TEXT_TYPE"))
    {
      String str9 = paramIntent.getStringExtra("ENCODE_DATA");
      if ((str9 != null) && (str9.length() > 0))
      {
        this.contents = str9;
        this.displayContents = str9;
        this.title = this.activity.getString(2131166612);
      }
    }
    label333:
    label362:
    label504:
    float f1;
    label529:
    float f2;
    do
    {
      Bundle localBundle1;
      do
      {
        do
        {
          Bundle localBundle2;
          do
          {
            String str6;
            do
            {
              String str7;
              do
              {
                String str8;
                do
                {
                  return;
                  if (!paramString.equals("EMAIL_TYPE")) {
                    break;
                  }
                  str8 = ContactEncoder.trim(paramIntent.getStringExtra("ENCODE_DATA"));
                } while (str8 == null);
                this.contents = ("mailto:" + str8);
                this.displayContents = str8;
                this.title = this.activity.getString(2131166608);
                return;
                if (!paramString.equals("PHONE_TYPE")) {
                  break;
                }
                str7 = ContactEncoder.trim(paramIntent.getStringExtra("ENCODE_DATA"));
              } while (str7 == null);
              this.contents = ("tel:" + str7);
              this.displayContents = PhoneNumberUtils.formatNumber(str7);
              this.title = this.activity.getString(2131166610);
              return;
              if (!paramString.equals("SMS_TYPE")) {
                break;
              }
              str6 = ContactEncoder.trim(paramIntent.getStringExtra("ENCODE_DATA"));
            } while (str6 == null);
            this.contents = ("sms:" + str6);
            this.displayContents = PhoneNumberUtils.formatNumber(str6);
            this.title = this.activity.getString(2131166611);
            return;
            if (!paramString.equals("CONTACT_TYPE")) {
              break;
            }
            localBundle2 = paramIntent.getBundleExtra("ENCODE_DATA");
          } while (localBundle2 == null);
          String str1 = localBundle2.getString("name");
          String str2 = localBundle2.getString("company");
          String str3 = localBundle2.getString("postal");
          ArrayList localArrayList1 = new ArrayList(Contents.PHONE_KEYS.length);
          int i = 0;
          int j = Contents.PHONE_KEYS.length;
          ArrayList localArrayList2;
          int k;
          String str4;
          String str5;
          if (i >= j)
          {
            localArrayList2 = new ArrayList(Contents.EMAIL_KEYS.length);
            k = 0;
            int m = Contents.EMAIL_KEYS.length;
            if (k < m) {
              break label504;
            }
            str4 = localBundle2.getString("URL_KEY");
            str5 = localBundle2.getString("NOTE_KEY");
            if (!this.useVCard) {
              break label529;
            }
          }
          for (Object localObject = new VCardContactEncoder();; localObject = new MECARDContactEncoder())
          {
            String[] arrayOfString = ((ContactEncoder)localObject).encode(Collections.singleton(str1), str2, Collections.singleton(str3), localArrayList1, localArrayList2, str4, str5);
            if (arrayOfString[1].length() <= 0) {
              break;
            }
            this.contents = arrayOfString[0];
            this.displayContents = arrayOfString[1];
            this.title = this.activity.getString(2131166607);
            return;
            localArrayList1.add(localBundle2.getString(Contents.PHONE_KEYS[i]));
            i++;
            break label333;
            localArrayList2.add(localBundle2.getString(Contents.EMAIL_KEYS[k]));
            k++;
            break label362;
          }
        } while (!paramString.equals("LOCATION_TYPE"));
        localBundle1 = paramIntent.getBundleExtra("ENCODE_DATA");
      } while (localBundle1 == null);
      f1 = localBundle1.getFloat("LAT", 3.4028235E+38F);
      f2 = localBundle1.getFloat("LONG", 3.4028235E+38F);
    } while ((f1 == 3.4028235E+38F) || (f2 == 3.4028235E+38F));
    this.contents = ("geo:" + f1 + ',' + f2);
    this.displayContents = (f1 + "," + f2);
    this.title = this.activity.getString(2131166609);
  }
  
  private void encodeQRCodeContents(AddressBookParsedResult paramAddressBookParsedResult)
  {
    if (this.useVCard) {}
    for (Object localObject = new VCardContactEncoder();; localObject = new MECARDContactEncoder())
    {
      String[] arrayOfString = ((ContactEncoder)localObject).encode(toIterable(paramAddressBookParsedResult.getNames()), paramAddressBookParsedResult.getOrg(), toIterable(paramAddressBookParsedResult.getAddresses()), toIterable(paramAddressBookParsedResult.getPhoneNumbers()), toIterable(paramAddressBookParsedResult.getEmails()), paramAddressBookParsedResult.getURL(), null);
      if (arrayOfString[1].length() > 0)
      {
        this.contents = arrayOfString[0];
        this.displayContents = arrayOfString[1];
        this.title = this.activity.getString(2131166607);
      }
      return;
    }
  }
  
  private static String guessAppropriateEncoding(CharSequence paramCharSequence)
  {
    for (int i = 0;; i++)
    {
      if (i >= paramCharSequence.length()) {
        return null;
      }
      if (paramCharSequence.charAt(i) > 'ÿ') {
        return "UTF-8";
      }
    }
  }
  
  private static Iterable<String> toIterable(String[] paramArrayOfString)
  {
    if (paramArrayOfString == null) {
      return null;
    }
    return Arrays.asList(paramArrayOfString);
  }
  
  Bitmap encodeAsBitmap()
    throws WriterException
  {
    String str1 = this.contents;
    if (str1 == null) {
      return null;
    }
    String str2 = guessAppropriateEncoding(str1);
    EnumMap localEnumMap = null;
    if (str2 != null)
    {
      localEnumMap = new EnumMap(EncodeHintType.class);
      localEnumMap.put(EncodeHintType.CHARACTER_SET, str2);
    }
    MultiFormatWriter localMultiFormatWriter = new MultiFormatWriter();
    BitMatrix localBitMatrix;
    int[] arrayOfInt;
    int k;
    int m;
    int n;
    for (;;)
    {
      int i;
      try
      {
        localBitMatrix = localMultiFormatWriter.encode(str1, this.format, this.dimension, this.dimension, localEnumMap);
        i = localBitMatrix.getWidth();
        int j = localBitMatrix.getHeight();
        arrayOfInt = new int[i * j];
        k = 0;
        if (k >= j)
        {
          Bitmap localBitmap = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
          localBitmap.setPixels(arrayOfInt, 0, i, 0, 0, i, j);
          return localBitmap;
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        return null;
      }
      m = k * i;
      n = 0;
      if (n < i) {
        break;
      }
      k++;
    }
    int i1 = m + n;
    if (localBitMatrix.get(n, k)) {}
    for (int i2 = -16777216;; i2 = -1)
    {
      arrayOfInt[i1] = i2;
      n++;
      break;
    }
  }
  
  String getContents()
  {
    return this.contents;
  }
  
  String getDisplayContents()
  {
    return this.displayContents;
  }
  
  String getTitle()
  {
    return this.title;
  }
  
  boolean isUseVCard()
  {
    return this.useVCard;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.encode.QRCodeEncoder
 * JD-Core Version:    0.7.0.1
 */