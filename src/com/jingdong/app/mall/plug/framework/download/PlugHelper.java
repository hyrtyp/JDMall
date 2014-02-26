package com.jingdong.app.mall.plug.framework.download;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Xml;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.plug.framework.plug.PlugItem;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpTaskListener;
import com.jingdong.common.utils.HttpGroupUtils;
import com.jingdong.common.utils.StatisticsReportUtil;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.xmlpull.v1.XmlPullParser;

public class PlugHelper
{
  private static String PLUGIN_HOST;
  private static final String TAG = "PlugHelper";
  
  public static List<PlugItem> getAllInstalledPlugs(Context paramContext)
  {
    return null;
  }
  
  private static String getInfo()
  {
    return "&app=" + MyApplication.getInstance().getPackageName() + new StringBuilder("&ver=").append(spilitSubString(StatisticsReportUtil.getSoftwareVersionName(), 12)).toString() + "&os=Android" + "&product=" + spilitSubString(Build.VERSION.RELEASE, 12) + new StringBuilder("&deviceId=").append(StatisticsReportUtil.readDeviceUUID()).toString() + new StringBuilder("&mode=").append(getMode()).toString() + new StringBuilder("&useragent=").append(getUseragent()).toString() + new StringBuilder("&apn=").append(StatisticsReportUtil.getNetworkTypeName(MyApplication.getInstance())).toString() + new StringBuilder("&updatetime=").append(CommonUtil.getPlugRequestTime()).toString();
  }
  
  private static String getMode()
  {
    return "0";
  }
  
  public static void getPlugStatus(HttpGroup.HttpTaskListener paramHttpTaskListener)
  {
    if (PLUGIN_HOST == null) {
      PLUGIN_HOST = "http://" + Configuration.getProperty("plugHost");
    }
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setEffect(0);
    localHttpSetting.setNotifyUser(false);
    localHttpSetting.setPost(false);
    localHttpSetting.setUseCookies(false);
    localHttpSetting.setConnectTimeout(3000);
    localHttpSetting.setReadTimeout(3000);
    localHttpSetting.setAttempts(1);
    localHttpSetting.setUrl(PLUGIN_HOST + "/PlugAction.do?method=getPlugStatus" + getInfo());
    localHttpSetting.setListener(paramHttpTaskListener);
    HttpGroupUtils.getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private static String getUseragent()
  {
    String str1 = spilitSubString(Build.MODEL, 12);
    String str2 = spilitSubString(Build.PRODUCT, 12);
    StringBuffer localStringBuffer = new StringBuffer("");
    if (!TextUtils.isEmpty(str1))
    {
      String str4 = str1.trim();
      if (!TextUtils.isEmpty(str4)) {
        localStringBuffer.append(str4.replaceAll(" ", "-"));
      }
    }
    if (!TextUtils.isEmpty(str2))
    {
      String str3 = str2.trim();
      if (!TextUtils.isEmpty(str3))
      {
        localStringBuffer.append("_");
        localStringBuffer.append(str3.replaceAll(" ", "-"));
      }
    }
    return localStringBuffer.toString();
  }
  
  public static void loadPlugsFromNetWrok(MyActivity paramMyActivity, HttpGroup.HttpTaskListener paramHttpTaskListener)
  {
    if (PLUGIN_HOST == null) {
      PLUGIN_HOST = "http://" + Configuration.getProperty("plugHost");
    }
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setEffect(0);
    localHttpSetting.setNotifyUser(false);
    localHttpSetting.setPost(false);
    localHttpSetting.setUseCookies(false);
    localHttpSetting.setUrl(PLUGIN_HOST + "/PlugAction.do?method=getPlugList" + getInfo());
    localHttpSetting.setListener(paramHttpTaskListener);
    paramMyActivity.getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  public static ArrayList<PlugItem> parsePlugs(String paramString)
  {
    try
    {
      XmlPullParser localXmlPullParser = Xml.newPullParser();
      localXmlPullParser.setInput(new ByteArrayInputStream(paramString.getBytes()), "utf-8");
      int i = -1;
      ArrayList localArrayList = new ArrayList(0);
      if (i == 1)
      {
        if ((localArrayList != null) && (!localArrayList.isEmpty())) {
          return localArrayList;
        }
      }
      else
      {
        if (i == 2) {
          if (localXmlPullParser.getName().equals("String"))
          {
            localXmlPullParser.getAttributeValue(null, "name");
            localXmlPullParser.getAttributeValue(null, "ver");
            localXmlPullParser.getAttributeValue(null, "plugId");
          }
        }
        for (;;)
        {
          i = localXmlPullParser.next();
          break;
          if ((i == 3) && (localXmlPullParser.getName().equals("String"))) {
            localArrayList.add(PlugItem.createPlug(1));
          }
        }
      }
      return null;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public static ArrayList<PlugItem> parsePlugs(JSONObject paramJSONObject)
  {
    if (paramJSONObject != null) {}
    try
    {
      int k = paramJSONObject.getInt("code");
      i = k;
    }
    catch (JSONException localJSONException1)
    {
      for (;;)
      {
        long l3;
        label35:
        long l2;
        int i = -1;
      }
    }
    try
    {
      l3 = Long.valueOf(paramJSONObject.getString("nextUpdate")).longValue();
      l1 = l3;
    }
    catch (JSONException localJSONException2)
    {
      l1 = 0L;
      break label35;
    }
    l2 = 1000L * l1;
    try
    {
      CommonUtil.setPlugRequestPeriod(l2);
      if (i == 0)
      {
        JSONArray localJSONArray = paramJSONObject.optJSONArray("plugList");
        if ((localJSONArray != null) && (localJSONArray.length() > 0))
        {
          ArrayList localArrayList = new ArrayList(localJSONArray.length());
          for (int j = 0;; j++)
          {
            if (j >= localJSONArray.length()) {
              return localArrayList;
            }
            JSONObject localJSONObject = localJSONArray.optJSONObject(j);
            if (localJSONObject != null) {
              localArrayList.add(PlugItem.createPlug(localJSONObject));
            }
          }
        }
      }
      return null;
    }
    catch (Exception localException) {}
  }
  
  private static String spilitSubString(String paramString, int paramInt)
  {
    if ((paramString != null) && (paramString.length() > paramInt)) {
      paramString = paramString.substring(0, paramInt);
    }
    return paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.plug.framework.download.PlugHelper
 * JD-Core Version:    0.7.0.1
 */