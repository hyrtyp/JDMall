package com.jingdong.lib.zxing.client.android.result;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.provider.ContactsContract.Contacts;
import android.util.Log;
import android.view.View.OnClickListener;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.google.zxing.client.result.ParsedResult;
import com.google.zxing.client.result.ParsedResultType;
import com.google.zxing.client.result.ResultParser;
import com.jingdong.lib.zxing.client.android.Contents;
import com.jingdong.lib.zxing.client.android.LocaleManager;
import java.util.Collection;
import java.util.List;
import java.util.Locale;

public abstract class ResultHandler
{
  private static final String[] ADDRESS_TYPE_STRINGS;
  private static final int[] ADDRESS_TYPE_VALUES = { 1, 2 };
  private static final String[] EMAIL_TYPE_STRINGS;
  private static final int[] EMAIL_TYPE_VALUES;
  private static final String GOOGLE_SHOPPER_ACTIVITY = "com.google.android.apps.shopper.results.SearchResultsActivity";
  private static final String GOOGLE_SHOPPER_PACKAGE = "com.google.android.apps.shopper";
  private static final String MARKET_REFERRER_SUFFIX = "&referrer=utm_source%3Dbarcodescanner%26utm_medium%3Dapps%26utm_campaign%3Dscan";
  private static final String MARKET_URI_PREFIX = "market://details?id=";
  public static final int MAX_BUTTON_COUNT = 4;
  private static final int NO_TYPE = -1;
  private static final String[] PHONE_TYPE_STRINGS;
  private static final int[] PHONE_TYPE_VALUES;
  private static final String TAG = ResultHandler.class.getSimpleName();
  private final Activity activity;
  private final String customProductSearch;
  private final Result rawResult;
  private final ParsedResult result;
  private final DialogInterface.OnClickListener shopperMarketListener = new DialogInterface.OnClickListener()
  {
    public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
    {
      ResultHandler.this.launchIntent(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.google.android.apps.shopper&referrer=utm_source%3Dbarcodescanner%26utm_medium%3Dapps%26utm_campaign%3Dscan")));
    }
  };
  
  static
  {
    EMAIL_TYPE_STRINGS = new String[] { "home", "work", "mobile" };
    PHONE_TYPE_STRINGS = new String[] { "home", "work", "mobile", "fax", "pager", "main" };
    ADDRESS_TYPE_STRINGS = new String[] { "home", "work" };
    EMAIL_TYPE_VALUES = new int[] { 1, 2, 4 };
    PHONE_TYPE_VALUES = new int[] { 1, 3, 2, 4, 6, 12 };
  }
  
  ResultHandler(Activity paramActivity, ParsedResult paramParsedResult)
  {
    this(paramActivity, paramParsedResult, null);
  }
  
  ResultHandler(Activity paramActivity, ParsedResult paramParsedResult, Result paramResult)
  {
    this.result = paramParsedResult;
    this.activity = paramActivity;
    this.rawResult = paramResult;
    this.customProductSearch = parseCustomSearchURL();
  }
  
  private static int doToContractType(String paramString, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    if (paramString == null) {}
    for (;;)
    {
      return -1;
      for (int i = 0; i < paramArrayOfString.length; i++)
      {
        String str = paramArrayOfString[i];
        if ((paramString.startsWith(str)) || (paramString.startsWith(str.toUpperCase(Locale.ENGLISH)))) {
          return paramArrayOfInt[i];
        }
      }
    }
  }
  
  private String parseCustomSearchURL()
  {
    String str = PreferenceManager.getDefaultSharedPreferences(this.activity).getString("preferences_custom_product_search", null);
    if ((str != null) && (str.trim().length() == 0)) {
      str = null;
    }
    return str;
  }
  
  private static void putExtra(Intent paramIntent, String paramString1, String paramString2)
  {
    if ((paramString2 != null) && (paramString2.length() > 0)) {
      paramIntent.putExtra(paramString1, paramString2);
    }
  }
  
  private static int toAddressContractType(String paramString)
  {
    return doToContractType(paramString, ADDRESS_TYPE_STRINGS, ADDRESS_TYPE_VALUES);
  }
  
  private static int toEmailContractType(String paramString)
  {
    return doToContractType(paramString, EMAIL_TYPE_STRINGS, EMAIL_TYPE_VALUES);
  }
  
  private static int toPhoneContractType(String paramString)
  {
    return doToContractType(paramString, PHONE_TYPE_STRINGS, PHONE_TYPE_VALUES);
  }
  
  final void addContact(String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String[] paramArrayOfString3, String[] paramArrayOfString4, String[] paramArrayOfString5, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9)
  {
    Intent localIntent = new Intent("android.intent.action.INSERT_OR_EDIT", ContactsContract.Contacts.CONTENT_URI);
    localIntent.setType("vnd.android.cursor.item/contact");
    String str1;
    int i;
    label56:
    int k;
    label70:
    int n;
    label87:
    int i2;
    label101:
    StringBuilder localStringBuilder;
    String[] arrayOfString;
    int i3;
    if (paramArrayOfString1 != null)
    {
      str1 = paramArrayOfString1[0];
      putExtra(localIntent, "name", str1);
      putExtra(localIntent, "phonetic_name", paramString1);
      if (paramArrayOfString2 == null) {
        break label249;
      }
      i = paramArrayOfString2.length;
      int j = Math.min(i, Contents.PHONE_KEYS.length);
      k = 0;
      if (k < j) {
        break label255;
      }
      if (paramArrayOfString4 == null) {
        break label318;
      }
      n = paramArrayOfString4.length;
      int i1 = Math.min(n, Contents.EMAIL_KEYS.length);
      i2 = 0;
      if (i2 < i1) {
        break label324;
      }
      localStringBuilder = new StringBuilder();
      arrayOfString = new String[] { paramString8, paramString9, paramString2 };
      i3 = arrayOfString.length;
    }
    for (int i4 = 0;; i4++)
    {
      if (i4 >= i3)
      {
        if (localStringBuilder.length() > 0) {
          putExtra(localIntent, "notes", localStringBuilder.toString());
        }
        putExtra(localIntent, "im_handle", paramString3);
        putExtra(localIntent, "postal", paramString4);
        if (paramString5 != null)
        {
          int i5 = toAddressContractType(paramString5);
          if (i5 >= 0) {
            localIntent.putExtra("postal_type", i5);
          }
        }
        putExtra(localIntent, "company", paramString6);
        putExtra(localIntent, "job_title", paramString7);
        launchIntent(localIntent);
        return;
        str1 = null;
        break;
        label249:
        i = 0;
        break label56;
        label255:
        putExtra(localIntent, Contents.PHONE_KEYS[k], paramArrayOfString2[k]);
        if ((paramArrayOfString3 != null) && (k < paramArrayOfString3.length))
        {
          int m = toPhoneContractType(paramArrayOfString3[k]);
          if (m >= 0) {
            localIntent.putExtra(Contents.PHONE_TYPE_KEYS[k], m);
          }
        }
        k++;
        break label70;
        label318:
        n = 0;
        break label87;
        label324:
        putExtra(localIntent, Contents.EMAIL_KEYS[i2], paramArrayOfString4[i2]);
        if ((paramArrayOfString5 != null) && (i2 < paramArrayOfString5.length))
        {
          int i6 = toEmailContractType(paramArrayOfString5[i2]);
          if (i6 >= 0) {
            localIntent.putExtra(Contents.EMAIL_TYPE_KEYS[i2], i6);
          }
        }
        i2++;
        break label101;
      }
      String str2 = arrayOfString[i4];
      if (str2 != null)
      {
        if (localStringBuilder.length() > 0) {
          localStringBuilder.append('\n');
        }
        localStringBuilder.append(str2);
      }
    }
  }
  
  final void addEmailOnlyContact(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    addContact(null, null, null, null, paramArrayOfString1, paramArrayOfString2, null, null, null, null, null, null, null, null);
  }
  
  final void addPhoneOnlyContact(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    addContact(null, null, paramArrayOfString1, paramArrayOfString2, null, null, null, null, null, null, null, null, null, null);
  }
  
  public boolean areContentsSecure()
  {
    return false;
  }
  
  final void dialPhone(String paramString)
  {
    launchIntent(new Intent("android.intent.action.DIAL", Uri.parse("tel:" + paramString)));
  }
  
  final void dialPhoneFromUri(String paramString)
  {
    launchIntent(new Intent("android.intent.action.DIAL", Uri.parse(paramString)));
  }
  
  String fillInCustomSearchURL(String paramString)
  {
    if (this.customProductSearch == null) {
      return paramString;
    }
    String str = this.customProductSearch.replace("%s", paramString);
    if (this.rawResult != null)
    {
      str = str.replace("%f", this.rawResult.getBarcodeFormat().toString());
      if (str.contains("%t")) {
        str = str.replace("%t", ResultParser.parseResult(this.rawResult).getType().toString());
      }
    }
    return str;
  }
  
  Activity getActivity()
  {
    return this.activity;
  }
  
  public abstract int getButtonCount();
  
  public abstract int getButtonText(int paramInt);
  
  final void getDirections(double paramDouble1, double paramDouble2)
  {
    launchIntent(new Intent("android.intent.action.VIEW", Uri.parse("http://maps.google." + LocaleManager.getCountryTLD(this.activity) + "/maps?f=d&daddr=" + paramDouble1 + ',' + paramDouble2)));
  }
  
  public CharSequence getDisplayContents()
  {
    return this.result.getDisplayResult().replace("\r", "");
  }
  
  public abstract int getDisplayTitle();
  
  public ParsedResult getResult()
  {
    return this.result;
  }
  
  public final ParsedResultType getType()
  {
    return this.result.getType();
  }
  
  public abstract void handleButtonPress(int paramInt);
  
  boolean hasCustomProductSearch()
  {
    return this.customProductSearch != null;
  }
  
  void launchIntent(Intent paramIntent)
  {
    try
    {
      rawLaunchIntent(paramIntent);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.activity);
      localBuilder.setMessage(2131166637);
      localBuilder.setPositiveButton(2131166593, null);
      localBuilder.show();
    }
  }
  
  final void openBookSearch(String paramString)
  {
    launchIntent(new Intent("android.intent.action.VIEW", Uri.parse("http://books.google." + LocaleManager.getBookSearchCountryTLD(this.activity) + "/books?vid=isbn" + paramString)));
  }
  
  final void openGoogleShopper(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.SEARCH");
    localIntent.setClassName("com.google.android.apps.shopper", "com.google.android.apps.shopper.results.SearchResultsActivity");
    localIntent.putExtra("query", paramString);
    List localList = this.activity.getPackageManager().queryIntentActivities(localIntent, 65536);
    if ((localList != null) && (!localList.isEmpty()))
    {
      this.activity.startActivity(localIntent);
      return;
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.activity);
    localBuilder.setTitle(2131166635);
    localBuilder.setMessage(2131166636);
    localBuilder.setPositiveButton(2131166593, this.shopperMarketListener);
    localBuilder.setNegativeButton(2131166585, null);
    localBuilder.show();
  }
  
  final void openMap(String paramString)
  {
    launchIntent(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
  }
  
  final void openProductSearch(String paramString)
  {
    launchIntent(new Intent("android.intent.action.VIEW", Uri.parse("http://www.google." + LocaleManager.getProductSearchCountryTLD(this.activity) + "/m/products?q=" + paramString + "&source=zxing")));
  }
  
  final void openURL(String paramString)
  {
    if (paramString.startsWith("HTTP://")) {
      paramString = "http" + paramString.substring(4);
    }
    Intent localIntent;
    for (;;)
    {
      localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
      try
      {
        launchIntent(localIntent);
        return;
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        Log.w(TAG, "Nothing available to handle " + localIntent);
      }
      if (paramString.startsWith("HTTPS://")) {
        paramString = "https" + paramString.substring(5);
      }
    }
  }
  
  void rawLaunchIntent(Intent paramIntent)
  {
    if (paramIntent != null)
    {
      paramIntent.addFlags(524288);
      Log.d(TAG, "Launching intent: " + paramIntent + " with extras: " + paramIntent.getExtras());
      this.activity.startActivity(paramIntent);
    }
  }
  
  final void searchBookContents(String paramString) {}
  
  final void searchMap(String paramString, CharSequence paramCharSequence)
  {
    String str = paramString;
    if ((paramCharSequence != null) && (paramCharSequence.length() > 0)) {
      str = str + " (" + paramCharSequence + ')';
    }
    launchIntent(new Intent("android.intent.action.VIEW", Uri.parse("geo:0,0?q=" + Uri.encode(str))));
  }
  
  final void sendEmail(String paramString1, String paramString2, String paramString3)
  {
    sendEmailFromUri("mailto:" + paramString1, paramString1, paramString2, paramString3);
  }
  
  final void sendEmailFromUri(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    Intent localIntent = new Intent("android.intent.action.SEND", Uri.parse(paramString1));
    if (paramString2 != null) {
      localIntent.putExtra("android.intent.extra.EMAIL", new String[] { paramString2 });
    }
    putExtra(localIntent, "android.intent.extra.SUBJECT", paramString3);
    putExtra(localIntent, "android.intent.extra.TEXT", paramString4);
    localIntent.setType("text/plain");
    launchIntent(localIntent);
  }
  
  final void sendMMS(String paramString1, String paramString2, String paramString3)
  {
    sendMMSFromUri("mmsto:" + paramString1, paramString2, paramString3);
  }
  
  final void sendMMSFromUri(String paramString1, String paramString2, String paramString3)
  {
    Intent localIntent = new Intent("android.intent.action.SENDTO", Uri.parse(paramString1));
    if ((paramString2 == null) || (paramString2.length() == 0)) {
      putExtra(localIntent, "subject", this.activity.getString(2131166628));
    }
    for (;;)
    {
      putExtra(localIntent, "sms_body", paramString3);
      localIntent.putExtra("compose_mode", true);
      launchIntent(localIntent);
      return;
      putExtra(localIntent, "subject", paramString2);
    }
  }
  
  final void sendSMS(String paramString1, String paramString2)
  {
    sendSMSFromUri("smsto:" + paramString1, paramString2);
  }
  
  final void sendSMSFromUri(String paramString1, String paramString2)
  {
    Intent localIntent = new Intent("android.intent.action.SENDTO", Uri.parse(paramString1));
    putExtra(localIntent, "sms_body", paramString2);
    localIntent.putExtra("compose_mode", true);
    launchIntent(localIntent);
  }
  
  final void shareByEmail(String paramString)
  {
    sendEmailFromUri("mailto:", null, this.activity.getString(2131166648), paramString);
  }
  
  final void shareBySMS(String paramString)
  {
    sendSMSFromUri("smsto:", this.activity.getString(2131166648) + ":\n" + paramString);
  }
  
  void showGoogleShopperButton(View.OnClickListener paramOnClickListener) {}
  
  final void webSearch(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.WEB_SEARCH");
    localIntent.putExtra("query", paramString);
    launchIntent(localIntent);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.result.ResultHandler
 * JD-Core Version:    0.7.0.1
 */