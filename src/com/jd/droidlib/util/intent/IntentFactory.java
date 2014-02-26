package com.jd.droidlib.util.intent;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.jd.droidlib.util.Strings;
import java.io.File;

public class IntentFactory
{
  public static Intent getDialIntent(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.DIAL");
    localIntent.setData(Uri.parse("tel:" + paramString));
    return localIntent;
  }
  
  public static Intent getOpenUrlIntent(String paramString)
  {
    return new Intent("android.intent.action.VIEW", Uri.parse(paramString));
  }
  
  public static Intent getSendEmailIntent(String paramString1, String paramString2, String paramString3, CharSequence paramCharSequence, File paramFile)
  {
    Intent localIntent = new Intent("android.intent.action.SENDTO");
    localIntent.setType("message/rfc822");
    if (paramString1 == null) {
      paramString1 = "";
    }
    localIntent.setData(Uri.parse("mailto:" + paramString1));
    if (Strings.isNotEmpty(paramString2)) {
      localIntent.putExtra("android.intent.extra.CC", new String[] { paramString2 });
    }
    if (Strings.isNotEmpty(paramString3)) {
      localIntent.putExtra("android.intent.extra.SUBJECT", paramString3);
    }
    if (Strings.isNotEmpty(paramCharSequence)) {
      localIntent.putExtra("android.intent.extra.TEXT", paramCharSequence);
    }
    if (paramFile != null) {
      localIntent.putExtra("android.intent.extra.STREAM", Uri.fromFile(paramFile));
    }
    return localIntent;
  }
  
  public static Intent getSendSMSIntent(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setType("vnd.android-dir/mms-sms");
    localIntent.putExtra("sms_body", paramString);
    return localIntent;
  }
  
  public static Intent getShareIntent(String paramString, CharSequence paramCharSequence)
  {
    Intent localIntent = new Intent("android.intent.action.SEND");
    localIntent.setType("text/plain");
    localIntent.putExtra("android.intent.extra.SUBJECT", paramString);
    localIntent.putExtra("android.intent.extra.TEXT", paramCharSequence);
    return localIntent;
  }
  
  public static class PlayStore
  {
    public static Intent getAppIntent(Context paramContext, String paramString)
    {
      return new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + paramString));
    }
    
    public static Intent getPublisherIntent(Context paramContext, String paramString)
    {
      return new Intent("android.intent.action.VIEW", Uri.parse("market://search?q=pub:" + paramString));
    }
    
    public static Intent getSearchIntent(Context paramContext, String paramString)
    {
      return new Intent("android.intent.action.VIEW", Uri.parse("market://search?q=" + paramString));
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.util.intent.IntentFactory
 * JD-Core Version:    0.7.0.1
 */