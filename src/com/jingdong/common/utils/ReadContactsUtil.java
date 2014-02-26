package com.jingdong.common.utils;

import android.annotation.SuppressLint;
import android.app.AlertDialog.Builder;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.provider.Contacts.People;
import android.provider.ContactsContract.CommonDataKinds.Phone;
import android.provider.ContactsContract.Contacts;
import android.text.TextUtils;
import android.webkit.WebView;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.res.StringUtil;
import com.jingdong.common.ui.DialogController;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

public class ReadContactsUtil
{
  public static final String IS_FIRST_READ_CANTACTS = "isFirstReadContacts";
  public static final int REQUEST_CODE_READ_CONTACTS = 1100;
  private static final String TAG = "ReadContactsUtil";
  
  private static boolean checkSDKForReadContacts()
  {
    int i = 5;
    try
    {
      int j = Integer.parseInt(Build.VERSION.SDK);
      i = j;
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        localThrowable.printStackTrace();
      }
    }
    return i >= 5;
  }
  
  private static void forwardContacts(IMyActivity paramIMyActivity)
  {
    if (checkSDKForReadContacts())
    {
      paramIMyActivity.startActivityForResultNoException(new Intent("android.intent.action.PICK", ContactsContract.Contacts.CONTENT_URI), 1100);
      return;
    }
    paramIMyActivity.startActivityForResultNoException(new Intent("android.intent.action.PICK", Contacts.People.CONTENT_URI), 1100);
  }
  
  public static void handleContacts(Context paramContext, Intent paramIntent, WebView paramWebView)
  {
    if (paramIntent == null) {}
    Uri localUri;
    do
    {
      return;
      localUri = paramIntent.getData();
    } while (localUri == null);
    Cursor localCursor = paramContext.getContentResolver().query(localUri, null, null, null, null);
    if (localCursor.moveToFirst())
    {
      if (!checkSDKForReadContacts()) {
        break label59;
      }
      readContactsForNewSDK(paramContext, localCursor, paramWebView);
    }
    for (;;)
    {
      localCursor.close();
      return;
      label59:
      readContactsForOldSDK(paramContext, localCursor, paramWebView);
    }
  }
  
  private static String judgeNumber(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      paramString = "";
    }
    do
    {
      return paramString;
      if (paramString.length() > 11) {
        paramString = paramString.substring(-11 + paramString.length());
      }
    } while ((!TextUtils.isEmpty(paramString)) && (paramString.length() == 11) && (paramString.startsWith("1")));
    return "";
  }
  
  public static void readContacts(IMyActivity paramIMyActivity)
  {
    if (CommonUtil.getBooleanFromPreference("isFirstReadContacts", Boolean.valueOf(true)).booleanValue())
    {
      showPermissonDialog(paramIMyActivity);
      return;
    }
    forwardContacts(paramIMyActivity);
  }
  
  @SuppressLint({"NewApi"})
  private static void readContactsForNewSDK(Context paramContext, Cursor paramCursor, final WebView paramWebView)
  {
    String str1 = paramCursor.getString(paramCursor.getColumnIndex("has_phone_number"));
    String str2 = paramCursor.getString(paramCursor.getColumnIndex("_id"));
    if ("1".equals(str1))
    {
      String str3 = "contact_id=" + str2;
      Cursor localCursor = paramContext.getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, str3, null, null);
      HashSet localHashSet = new HashSet();
      ArrayList localArrayList;
      int j;
      Iterator localIterator;
      if (!localCursor.moveToNext())
      {
        int i = localHashSet.size();
        localArrayList = new ArrayList();
        j = 0;
        if (i > 0)
        {
          localIterator = localHashSet.iterator();
          label126:
          if (localIterator.hasNext()) {
            break label278;
          }
          j = localArrayList.size();
        }
        if (j <= 1) {
          break label297;
        }
        CharSequence[] arrayOfCharSequence = new CharSequence[j];
        localArrayList.toArray(arrayOfCharSequence);
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
        localBuilder.setTitle(StringUtil.recharge_get_contacts);
        localBuilder.setSingleChoiceItems(arrayOfCharSequence, 0, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            String str1 = (String)ReadContactsUtil.this.get(paramAnonymousInt);
            String str2 = "javascript:contactsCallBack('" + str1 + "')";
            paramWebView.loadUrl(str2);
            paramAnonymousDialogInterface.dismiss();
          }
        });
        localBuilder.show();
      }
      for (;;)
      {
        localCursor.close();
        return;
        String str4 = localCursor.getString(localCursor.getColumnIndex("data1"));
        if (TextUtils.isEmpty(str4)) {
          break;
        }
        String str5 = judgeNumber(str4.trim().replaceAll(" ", ""));
        if (TextUtils.isEmpty(str5)) {
          break;
        }
        localHashSet.add(str5);
        break;
        label278:
        localArrayList.add((String)localIterator.next());
        break label126;
        label297:
        if (j > 0)
        {
          String str6 = (String)localArrayList.get(0);
          paramWebView.loadUrl("javascript:contactsCallBack('" + str6 + "')");
        }
        else
        {
          paramWebView.loadUrl("javascript:contactsCallBack('')");
        }
      }
    }
    paramWebView.loadUrl("javascript:contactsCallBack('')");
  }
  
  private static void readContactsForOldSDK(Context paramContext, Cursor paramCursor, WebView paramWebView)
  {
    String str1 = paramCursor.getString(paramCursor.getColumnIndex("number"));
    if (TextUtils.isEmpty(str1))
    {
      paramWebView.loadUrl("javascript:contactsCallBack('')");
      return;
    }
    String str2 = judgeNumber(str1.trim().replaceAll(" ", ""));
    if (!TextUtils.isEmpty(str2))
    {
      paramWebView.loadUrl("javascript:contactsCallBack('" + str2 + "')");
      return;
    }
    paramWebView.loadUrl("javascript:contactsCallBack('')");
  }
  
  private static void showPermissonDialog(IMyActivity paramIMyActivity)
  {
    DialogController local2 = new DialogController()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        switch (paramAnonymousInt)
        {
        default: 
          return;
        case -1: 
          CommonUtil.putBooleanToPreference("isFirstReadContacts", Boolean.valueOf(false));
          ReadContactsUtil.forwardContacts(ReadContactsUtil.this);
          return;
        }
        CommonUtil.putBooleanToPreference("isFirstReadContacts", Boolean.valueOf(true));
        paramAnonymousDialogInterface.dismiss();
      }
    };
    local2.setTitle(StringUtil.prompt);
    local2.setMessage(StringUtil.recharge_get_contacts_permission);
    local2.setPositiveButton(StringUtil.ok);
    local2.setNegativeButton(StringUtil.cancel);
    local2.init(paramIMyActivity.getThisActivity());
    local2.show();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.ReadContactsUtil
 * JD-Core Version:    0.7.0.1
 */