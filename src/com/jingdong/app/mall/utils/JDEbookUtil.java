package com.jingdong.app.mall.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.common.utils.CommonBase.BrowserUrlListener;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.URLParamMap;

public class JDEbookUtil
{
  public static final String EBOOK_ACTION = "ebook";
  public static final String FROM_EBOOK = "from_ebook";
  private static final String JD_EBOOK_COMPONENT_NAME = "com.jingdong.app.reader";
  private static final String KEY_CLIENT_VERSION = "clientVersion";
  private static final String KEY_SCREEN = "screenSize";
  
  public static String getJDEbookVersionName(Context paramContext)
  {
    PackageInfo localPackageInfo = CommonUtil.getPackageInfo(paramContext, "com.jingdong.app.reader");
    if (localPackageInfo != null) {
      return localPackageInfo.versionName;
    }
    return "";
  }
  
  public static void gotoEbookM(MyActivity paramMyActivity, String paramString)
  {
    URLParamMap localURLParamMap = new URLParamMap();
    localURLParamMap.put("clientVersion", getJDEbookVersionName(paramMyActivity));
    localURLParamMap.put("screenSize", DPIUtil.getWidth() + "*" + DPIUtil.getHeight());
    CommonUtil.queryBrowserUrl(paramString, localURLParamMap, new CommonBase.BrowserUrlListener()
    {
      public void onComplete(final String paramAnonymousString)
      {
        if ((JDEbookUtil.this == null) || (TextUtils.isEmpty(paramAnonymousString))) {
          return;
        }
        JDEbookUtil.this.post(new Runnable()
        {
          public void run()
          {
            Intent localIntent = new Intent(this.val$activity, WebActivity.class);
            localIntent.putExtra("url", paramAnonymousString);
            localIntent.putExtra("from", "from_ebook");
            this.val$activity.startActivityInFrame(localIntent);
          }
        });
      }
    });
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.JDEbookUtil
 * JD-Core Version:    0.7.0.1
 */