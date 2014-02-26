package com.jingdong.common.utils;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;
import com.jingdong.common.MyApplication;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.frame.IMainActivity;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.lbs.LocManager;
import com.jingdong.common.res.StringUtil;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.URI;
import java.net.URISyntaxException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.HttpHost;
import org.apache.http.client.utils.URIUtils;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class CommonBase
  implements ICommon
{
  private static final String KEY_GUIDE_ACTIVITY = "guide_activity";
  public static final String KEY_ORIENTATION = "orientation";
  public static final String KEy_FROM_GAME = "isFromGame";
  private static final String TAG = "CommonBase";
  public static final String VALUE_ORIENTATION = "screen_land";
  private static String marketPriceFlag = null;
  public static String miaoShaKey;
  public static SharedPreferences sharedPreferences;
  private boolean canShowInToastTime = true;
  
  public static boolean CheckNetWork()
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)MyApplication.getInstance().getSystemService("connectivity");
    if (localConnectivityManager == null) {}
    for (;;)
    {
      return false;
      NetworkInfo[] arrayOfNetworkInfo = localConnectivityManager.getAllNetworkInfo();
      if (arrayOfNetworkInfo != null) {
        for (int i = 0; i < arrayOfNetworkInfo.length; i++) {
          if (arrayOfNetworkInfo[i].isConnected()) {
            return true;
          }
        }
      }
    }
  }
  
  public static boolean activityIsGuided(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    for (;;)
    {
      return false;
      String[] arrayOfString = getJdSharedPreferences().getString("guide_activity", "").split("\\|");
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++) {
        if (paramString.equalsIgnoreCase(arrayOfString[j])) {
          return true;
        }
      }
    }
  }
  
  public static void backToMain(Context paramContext)
  {
    ActivityInfo localActivityInfo = paramContext.getPackageManager().resolveActivity(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME"), 0).activityInfo;
    Intent localIntent = new Intent("android.intent.action.MAIN");
    localIntent.addCategory("android.intent.category.LAUNCHER");
    localIntent.setComponent(new ComponentName(localActivityInfo.packageName, localActivityInfo.name));
    localIntent.addFlags(268435456);
    try
    {
      paramContext.startActivity(localIntent);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException) {}catch (SecurityException localSecurityException) {}
  }
  
  public static boolean checkAddrWithSpace(String paramString)
  {
    return startCheck("[\\w一-龥\\-\\x20]+", paramString);
  }
  
  public static boolean checkEmailWithSuffix(String paramString)
  {
    return startCheck("^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$", paramString);
  }
  
  public static int checkNetWorkType()
  {
    if (Proxy.getDefaultHost() != null) {
      return 2;
    }
    return 1;
  }
  
  public static boolean checkPassword(String paramString, int paramInt1, int paramInt2)
  {
    return startCheck("[a-zA-Z_0-9\\-]{" + paramInt1 + "," + paramInt2 + "}", paramString);
  }
  
  public static boolean checkSDcard()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }
  
  public static boolean checkUsername(String paramString)
  {
    return startCheck("[\\w一-龥\\-a-zA-Z0-9_]+", paramString);
  }
  
  public static boolean checkUsername(String paramString, int paramInt)
  {
    return startCheck("[\\w一-龥\\-a-zA-Z0-9_]{" + paramInt + ",}", paramString);
  }
  
  public static boolean checkUsername(String paramString, int paramInt1, int paramInt2)
  {
    return startCheck("[\\w一-龥\\-a-zA-Z0-9_]{" + paramInt1 + "," + paramInt2 + "}", paramString);
  }
  
  public static void fixBackBroundRepeat(View paramView)
  {
    Drawable localDrawable = paramView.getBackground();
    if ((localDrawable != null) && ((localDrawable instanceof BitmapDrawable)))
    {
      BitmapDrawable localBitmapDrawable = (BitmapDrawable)localDrawable;
      localBitmapDrawable.mutate();
      localBitmapDrawable.setTileModeX(Shader.TileMode.REPEAT);
    }
  }
  
  public static Boolean getBooleanFromPreference(String paramString, Boolean paramBoolean)
  {
    return Boolean.valueOf(getJdSharedPreferences().getBoolean(paramString, paramBoolean.booleanValue()));
  }
  
  public static String getCityIDFromSharedPreferences()
  {
    return getJdSharedPreferences().getString("globalCityID", null);
  }
  
  public static String getDate(Date paramDate)
  {
    return new SimpleDateFormat("yyyy-MM-dd").format(paramDate);
  }
  
  public static String getDeviceId()
  {
    return ((TelephonyManager)MyApplication.getInstance().getSystemService("phone")).getDeviceId();
  }
  
  public static String getDistrictIdFromSharedPreferences()
  {
    return getJdSharedPreferences().getString("globalDistrictID", null);
  }
  
  public static String getExitType()
  {
    String str = getJdSharedPreferences().getString("exitType", "1");
    if (!TextUtils.isEmpty(str)) {
      return str;
    }
    return "1";
  }
  
  public static int getIntFromPreference(String paramString, int paramInt)
  {
    return getJdSharedPreferences().getInt(paramString, paramInt);
  }
  
  public static boolean getIsJustShowHaveProduct()
  {
    return getJdSharedPreferences().getBoolean("justshowhaveproduct", true);
  }
  
  public static SharedPreferences getJdSharedPreferences()
  {
    if (sharedPreferences == null) {
      sharedPreferences = MyApplication.getInstance().getSharedPreferences("jdAndroidClient", 0);
    }
    return sharedPreferences;
  }
  
  public static int getLength(String paramString)
  {
    char[] arrayOfChar = paramString.toCharArray();
    int i = 0;
    int j = 0;
    if (j >= arrayOfChar.length) {
      return i;
    }
    if (isChinese(arrayOfChar[j])) {
      i += 2;
    }
    for (;;)
    {
      j++;
      break;
      i++;
    }
  }
  
  public static void getLocalMacAddress(final MacAddressListener paramMacAddressListener)
  {
    for (;;)
    {
      try
      {
        localWifiManager = (WifiManager)MyApplication.getInstance().getSystemService("wifi");
        if (localWifiManager == null) {
          paramMacAddressListener.setMacAddress(null);
        }
        String str = localWifiManager.getConnectionInfo().getMacAddress();
        if (str == null) {
          continue;
        }
        paramMacAddressListener.setMacAddress(str);
      }
      catch (Exception localException)
      {
        WifiManager localWifiManager;
        paramMacAddressListener.setMacAddress(null);
        localException.printStackTrace();
        continue;
      }
      finally {}
      return;
      new Thread()
      {
        public void run()
        {
          CommonBase.this.setWifiEnabled(true);
          int i = 0;
          String str = CommonBase.this.getConnectionInfo().getMacAddress();
          if ((str != null) || (i >= 60))
          {
            CommonBase.this.setWifiEnabled(false);
            paramMacAddressListener.setMacAddress(str);
            return;
          }
          i++;
          try
          {
            synchronized (this.val$waiter)
            {
              this.val$waiter.wait(500L);
            }
          }
          catch (InterruptedException localInterruptedException)
          {
            for (;;)
            {
              localInterruptedException.printStackTrace();
            }
          }
        }
      }.start();
    }
  }
  
  public static String getMarketPriceFlag()
  {
    if (marketPriceFlag == null) {
      marketPriceFlag = getJdSharedPreferences().getString("marketpriceflag", "0");
    }
    return marketPriceFlag;
  }
  
  public static String getMiaoShaKey()
  {
    return JniUtils.dMK(miaoShaKey);
  }
  
  public static PackageInfo getPackageInfo(Context paramContext, String paramString)
  {
    if (paramContext == null) {
      return null;
    }
    try
    {
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo(paramString, 0);
      return localPackageInfo;
    }
    catch (Exception localException) {}
    return null;
  }
  
  public static boolean getPlugOn()
  {
    return getJdSharedPreferences().getBoolean("plug_on_off", false);
  }
  
  public static long getPlugRequestPeriod()
  {
    return getJdSharedPreferences().getLong("plugrequestperiod", 0L);
  }
  
  public static long getPlugRequestTime()
  {
    return getJdSharedPreferences().getLong("plugrequesttime", 0L);
  }
  
  public static String getProvinceIDFromSharedPreferences()
  {
    return getJdSharedPreferences().getString("globalProvinceID", null);
  }
  
  public static long getReActivationIntervalDays(long paramLong)
  {
    long l1 = paramLong;
    String str = getJdSharedPreferences().getString("remindertime", null);
    if (!TextUtils.isEmpty(str)) {}
    try
    {
      long l2 = Long.parseLong(str);
      l1 = l2;
      return l1;
    }
    catch (Exception localException) {}
    return l1;
  }
  
  public static String getRegionNameSharedPreferences()
  {
    return getJdSharedPreferences().getString("regionName", "");
  }
  
  public static Boolean getRememberStateSharedPreferences()
  {
    return Boolean.valueOf(getJdSharedPreferences().getBoolean("rememberRegion", false));
  }
  
  public static int getSDKInt()
  {
    try
    {
      int i = Integer.parseInt(Build.VERSION.SDK);
      return i;
    }
    catch (Exception localException) {}
    return 3;
  }
  
  public static int getSelectedOrderSharedPreferences()
  {
    return getJdSharedPreferences().getInt("selectOrder", 0);
  }
  
  public static String getShakeShareText(String paramString)
  {
    return getJdSharedPreferences().getString(paramString, "");
  }
  
  public static String getStringFromPreference(String paramString1, String paramString2)
  {
    return getJdSharedPreferences().getString(paramString1, paramString2);
  }
  
  public static String getTownIdFromSharedPreferences()
  {
    return getJdSharedPreferences().getString("globalTownID", null);
  }
  
  public static long getTriggerAtTime()
  {
    return getJdSharedPreferences().getLong("reActivationTriggerAtTime", -1L);
  }
  
  public static boolean isChinese(char paramChar)
  {
    Character.UnicodeBlock localUnicodeBlock = Character.UnicodeBlock.of(paramChar);
    return (localUnicodeBlock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS) || (localUnicodeBlock == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS) || (localUnicodeBlock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A) || (localUnicodeBlock == Character.UnicodeBlock.GENERAL_PUNCTUATION) || (localUnicodeBlock == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION) || (localUnicodeBlock == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS);
  }
  
  public static boolean isIntentAvailable(Intent paramIntent)
  {
    List localList = MyApplication.getInstance().getPackageManager().queryIntentActivities(paramIntent, 65536);
    return (localList != null) && (localList.size() > 0);
  }
  
  public static Intent newBrowserIntent(Uri paramUri, boolean paramBoolean)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", paramUri);
    if (paramBoolean) {
      localIntent.setClassName("com.android.browser", "com.android.browser.BrowserActivity");
    }
    localIntent.setFlags(268435456);
    return localIntent;
  }
  
  public static boolean putBooleanToPreference(String paramString, Boolean paramBoolean)
  {
    return getJdSharedPreferences().edit().putBoolean(paramString, paramBoolean.booleanValue()).commit();
  }
  
  public static boolean putIntToPreference(String paramString, int paramInt)
  {
    return getJdSharedPreferences().edit().putInt(paramString, paramInt).commit();
  }
  
  public static boolean putStringToPreference(String paramString1, String paramString2)
  {
    return getJdSharedPreferences().edit().putString(paramString1, paramString2).commit();
  }
  
  public static void putTriggerAtTime(long paramLong)
  {
    getJdSharedPreferences().edit().putLong("reActivationTriggerAtTime", paramLong).commit();
  }
  
  public static void queryBrowserUrl(String paramString, final URLParamMap paramURLParamMap, final BrowserUrlListener paramBrowserUrlListener)
  {
    HttpGroup.HttpGroupSetting localHttpGroupSetting = new HttpGroup.HttpGroupSetting();
    localHttpGroupSetting.setType(1000);
    localHttpGroupSetting.setMyActivity(MyApplication.getInstance().getCurrentMyActivity());
    HttpGroup.HttpGroupaAsynPool localHttpGroupaAsynPool = new HttpGroup.HttpGroupaAsynPool(localHttpGroupSetting);
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    if ("ordermap".equals(paramString)) {
      localHttpSetting.setEffect(0);
    }
    localHttpSetting.setNotifyUser(true);
    localHttpSetting.setFunctionId("genToken");
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        String str1 = localJSONObjectProxy.getStringOrNull("tokenKey");
        if (str1 == null)
        {
          onError(null);
          return;
        }
        String str2 = localJSONObjectProxy.getStringOrNull("url");
        if (str2 == null)
        {
          onError(null);
          return;
        }
        paramURLParamMap.put("tokenKey", str1);
        JSONObject localJSONObject;
        if ((LocManager.lati != 0.0D) || (LocManager.longi != 0.0D)) {
          localJSONObject = new JSONObject();
        }
        try
        {
          if (LocManager.lati != 0.0D) {
            localJSONObject.put("lat", LocManager.lati);
          }
          if (LocManager.longi != 0.0D) {
            localJSONObject.put("lng", LocManager.longi);
          }
          if (LocManager.provinceId != 0) {
            localJSONObject.put("provinceId", LocManager.provinceId);
          }
          if (LocManager.cityId != 0) {
            localJSONObject.put("cityId", LocManager.cityId);
          }
          if (LocManager.districtId != 0) {
            localJSONObject.put("districtId", LocManager.districtId);
          }
          if (LocManager.provinceName != null) {
            localJSONObject.put("provinceName", LocManager.provinceName);
          }
          if (LocManager.cityName != null) {
            localJSONObject.put("cityName", LocManager.cityName);
          }
          if (LocManager.districtName != null) {
            localJSONObject.put("districtName", LocManager.districtName);
          }
        }
        catch (JSONException localJSONException)
        {
          for (;;)
          {
            Object localObject;
            String str3;
            int i;
            String[] arrayOfString;
            localJSONException.printStackTrace();
          }
        }
        paramURLParamMap.put("lbs", localJSONObject.toString());
        localObject = HttpGroup.mergerUrlAndParams(str2, paramURLParamMap);
        str3 = Configuration.getProperty("mHost");
        if ((str3 != null) && (!TextUtils.isEmpty(str3.trim())))
        {
          i = 80;
          arrayOfString = str3.split(":");
          if (arrayOfString.length > 1) {
            str3 = arrayOfString[0];
          }
        }
        for (;;)
        {
          try
          {
            int j = Integer.parseInt(arrayOfString[1]);
            i = j;
          }
          catch (NumberFormatException localNumberFormatException)
          {
            String str4;
            continue;
          }
          try
          {
            str4 = URIUtils.rewriteURI(new URI((String)localObject), new HttpHost(str3, i)).toString();
            localObject = str4;
          }
          catch (URISyntaxException localURISyntaxException)
          {
            localURISyntaxException.printStackTrace();
          }
        }
        paramBrowserUrlListener.onComplete((String)localObject);
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        paramBrowserUrlListener.onComplete("");
      }
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams)
      {
        paramAnonymousHttpSettingParams.putJsonParam("action", CommonBase.this);
      }
    });
    localHttpGroupaAsynPool.add(localHttpSetting);
  }
  
  public static void removeTriggerAtTime()
  {
    getJdSharedPreferences().edit().remove("reActivationTriggerAtTime").commit();
  }
  
  public static void setCityIDToSharedPreferences(String paramString)
  {
    getJdSharedPreferences().edit().putString("globalCityID", paramString).commit();
  }
  
  public static void setDistrictIdToSharedPreferences(String paramString)
  {
    getJdSharedPreferences().edit().putString("globalDistrictID", paramString).commit();
  }
  
  public static void setIsGuided(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder(getJdSharedPreferences().getString("guide_activity", "")).append("|").append(paramString);
    getJdSharedPreferences().edit().putString("guide_activity", localStringBuilder.toString()).commit();
  }
  
  public static void setIsJustShowHaveProduct(boolean paramBoolean)
  {
    getJdSharedPreferences().edit().putBoolean("justshowhaveproduct", paramBoolean).commit();
  }
  
  public static void setListViewHeightBasedOnChildren(ListView paramListView)
  {
    ListAdapter localListAdapter = paramListView.getAdapter();
    if (localListAdapter == null) {
      return;
    }
    int i = 0;
    for (int j = 0;; j++)
    {
      if (j >= localListAdapter.getCount())
      {
        ViewGroup.LayoutParams localLayoutParams = paramListView.getLayoutParams();
        localLayoutParams.height = (i + paramListView.getDividerHeight() * (-1 + localListAdapter.getCount()));
        paramListView.setLayoutParams(localLayoutParams);
        return;
      }
      View localView = localListAdapter.getView(j, null, paramListView);
      localView.measure(0, 0);
      i += localView.getMeasuredHeight();
    }
  }
  
  public static void setPlugOn(boolean paramBoolean)
  {
    try
    {
      getJdSharedPreferences().edit().putBoolean("plug_on_off", paramBoolean).commit();
      return;
    }
    catch (Exception localException) {}
  }
  
  public static void setPlugRequestPeriod(long paramLong)
  {
    try
    {
      getJdSharedPreferences().edit().putLong("plugrequestperiod", paramLong).commit();
      return;
    }
    catch (Exception localException) {}
  }
  
  public static void setPlugRequestTime(long paramLong)
  {
    try
    {
      getJdSharedPreferences().edit().putLong("plugrequesttime", paramLong).commit();
      return;
    }
    catch (Exception localException) {}
  }
  
  public static void setProvinceIDToSharedPreferences(String paramString)
  {
    getJdSharedPreferences().edit().putString("globalProvinceID", paramString).commit();
  }
  
  public static void setProvinceNameToSharedPreferences(String paramString)
  {
    getJdSharedPreferences().edit().putString("provinceName", paramString).commit();
  }
  
  public static void setRegionNamePreferences(String paramString)
  {
    getJdSharedPreferences().edit().putString("regionName", paramString).commit();
  }
  
  public static void setRegionSharedPreferences(String paramString)
  {
    getJdSharedPreferences().edit().putString("region", paramString).commit();
  }
  
  public static void setRememberStateSharedPreferences(Boolean paramBoolean)
  {
    getJdSharedPreferences().edit().putBoolean("rememberRegion", paramBoolean.booleanValue()).commit();
  }
  
  public static void setSelectedOrderSharedPreferences(int paramInt)
  {
    getJdSharedPreferences().edit().putInt("selectOrder", paramInt).commit();
  }
  
  public static void setShakeShareText(String paramString1, String paramString2)
  {
    getJdSharedPreferences().edit().putString(paramString1, paramString2).commit();
  }
  
  public static void setTownIdToSharedPreferences(String paramString)
  {
    getJdSharedPreferences().edit().putString("globalTownID", paramString).commit();
  }
  
  public static boolean startCheck(String paramString1, String paramString2)
  {
    return Pattern.compile(paramString1).matcher(paramString2).matches();
  }
  
  public static void toBrowser(Uri paramUri)
  {
    Intent localIntent = newBrowserIntent(paramUri, true);
    if (isIntentAvailable(localIntent))
    {
      MyApplication.getInstance().getCurrentMyActivity().startActivityNoException(localIntent);
      return;
    }
    MyApplication.getInstance().getCurrentMyActivity().startActivityNoException(newBrowserIntent(paramUri, false));
  }
  
  public static void toBrowser(String paramString, URLParamMap paramURLParamMap)
  {
    queryBrowserUrl(paramString, paramURLParamMap, new BrowserUrlListener()
    {
      public void onComplete(String paramAnonymousString)
      {
        CommonBase.toBrowser(Uri.parse(paramAnonymousString));
      }
    });
  }
  
  public LayoutInflater getLayoutInflater()
  {
    return LayoutInflater.from(MyApplication.getInstance());
  }
  
  public String getLocalIpAddress()
  {
    try
    {
      InetAddress localInetAddress;
      do
      {
        Enumeration localEnumeration1 = NetworkInterface.getNetworkInterfaces();
        Enumeration localEnumeration2;
        while (!localEnumeration2.hasMoreElements())
        {
          if (!localEnumeration1.hasMoreElements()) {
            break;
          }
          localEnumeration2 = ((NetworkInterface)localEnumeration1.nextElement()).getInetAddresses();
        }
        localInetAddress = (InetAddress)localEnumeration2.nextElement();
      } while (localInetAddress.isLoopbackAddress());
      String str = localInetAddress.getHostAddress().toString();
      return str;
    }
    catch (SocketException localSocketException) {}
    return null;
  }
  
  public IMainActivity goToMainFrameActivity(Context paramContext, Class<?> paramClass)
  {
    Intent localIntent = new Intent(paramContext, paramClass);
    IMainActivity localIMainActivity = MyApplication.getInstance().getMainFrameActivity();
    if (localIMainActivity == null) {}
    localIntent.addFlags(268435456);
    paramContext.startActivity(localIntent);
    return localIMainActivity;
  }
  
  public boolean isCanClick()
  {
    if (!NetUtils.isNetworkAvailable())
    {
      if (this.canShowInToastTime)
      {
        MyApplication.getInstance().getHandler().post(new Runnable()
        {
          public void run()
          {
            Toast.makeText(MyApplication.getInstance(), StringUtil.message_no_network, 0).show();
          }
        });
        this.canShowInToastTime = false;
        new Timer().schedule(new TimerTask()
        {
          public void run()
          {
            CommonBase.this.canShowInToastTime = true;
          }
        }, 2000L);
      }
      return false;
    }
    return true;
  }
  
  public void putSelectedCatsStr(String paramString)
  {
    getJdSharedPreferences().edit().putString("color_buy_selected_categories", paramString).commit();
  }
  
  public static abstract interface BrowserUrlListener
  {
    public abstract void onComplete(String paramString);
  }
  
  public static abstract interface MacAddressListener
  {
    public abstract void setMacAddress(String paramString);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.CommonBase
 * JD-Core Version:    0.7.0.1
 */