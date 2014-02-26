package com.jingdong.app.mall.plug.framework.download;

import android.text.TextUtils;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.plug.PlugManager;
import com.jingdong.app.mall.plug.framework.plug.PlugItem;
import com.jingdong.app.mall.plug.framework.plug.PlugItem.PlugStatus;
import com.jingdong.app.mall.plug.framework.plug.PlugStatusListener;
import com.jingdong.app.mall.plug.framework.plug.local.LocalPlugsTools;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.utils.FileGuider;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

public class DownloadTools
{
  private static final String TAG = "DownloadTools";
  
  public static void DownloadPlug(MyActivity paramMyActivity, final ArrayList<PlugItem> paramArrayList, int paramInt)
  {
    final int i;
    try
    {
      if (!LocalPlugsTools.isGreater_1M()) {
        return;
      }
      i = paramInt + 1;
      if (paramInt > -1 + paramArrayList.size())
      {
        CommonUtil.getInstance();
        CommonUtil.setPlugRequestTime(System.currentTimeMillis());
        return;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    PlugItem localPlugItem1 = (PlugItem)paramArrayList.get(paramInt);
    switch (localPlugItem1.update)
    {
    case -1: 
      PlugItem localPlugItem2 = DownloadDao.getDao(MyApplication.getInstance().getBaseContext()).select(localPlugItem1.plugId);
      if (localPlugItem2 != null)
      {
        DownloadDao.getDao(MyApplication.getInstance().getBaseContext()).delete(localPlugItem2.plugId);
        File localFile = new File(localPlugItem2.intallPath);
        if (localFile.exists())
        {
          localFile.delete();
          return;
        }
      }
    case 0: 
      downloadPlugin(paramMyActivity, (PlugItem)paramArrayList.get(paramInt), new OnDownloadListener()
      {
        public void onFinish(PlugItem paramAnonymousPlugItem, String paramAnonymousString1, boolean paramAnonymousBoolean, String paramAnonymousString2, PlugItem.PlugStatus paramAnonymousPlugStatus)
        {
          try
          {
            if (DownloadTools.isEnough(paramAnonymousString1))
            {
              if (paramAnonymousBoolean)
              {
                if (!DownloadDao.getDao(MyApplication.getInstance().getBaseContext()).exist(paramAnonymousPlugItem.plugId)) {
                  break label90;
                }
                DownloadDao.getDao(MyApplication.getInstance().getBaseContext()).update(paramAnonymousPlugItem);
              }
              for (;;)
              {
                PlugManager.getInstance().addAndUpdate(paramAnonymousPlugItem);
                File localFile = new File(paramAnonymousString1);
                if (localFile.exists()) {
                  localFile.delete();
                }
                DownloadTools.DownloadPlug(DownloadTools.this, paramArrayList, i);
                return;
                label90:
                DownloadDao.getDao(MyApplication.getInstance().getBaseContext()).insert(paramAnonymousPlugItem);
              }
            }
            return;
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
          }
        }
        
        public void onPause(PlugItem paramAnonymousPlugItem, long paramAnonymousLong1, long paramAnonymousLong2, PlugItem.PlugStatus paramAnonymousPlugStatus) {}
        
        public void onProgress(PlugItem paramAnonymousPlugItem, long paramAnonymousLong1, long paramAnonymousLong2, PlugItem.PlugStatus paramAnonymousPlugStatus) {}
        
        public void onRemove(PlugItem paramAnonymousPlugItem) {}
      });
    }
  }
  
  public static void downloadPlugin(final MyActivity paramMyActivity, final PlugItem paramPlugItem, OnDownloadListener paramOnDownloadListener)
  {
    try
    {
      HttpGroup.OnAllListener local2 = new HttpGroup.OnAllListener()
      {
        private String apkSizeStr = null;
        
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          try
          {
            String str = paramAnonymousHttpResponse.getSaveFile().getAbsolutePath();
            paramPlugItem.downFilePath = str;
            paramPlugItem.install(paramMyActivity, new PlugStatusListener()
            {
              public void onChange(boolean paramAnonymous2Boolean)
              {
                if (paramAnonymous2Boolean)
                {
                  this.val$plug.status = PlugItem.PlugStatus.INSTALLED;
                  this.val$listener.onFinish(this.val$plug, this.val$plug.downFilePath, true, null, this.val$plug.status);
                  return;
                }
                this.val$plug.error = "安装失败！";
                this.val$plug.status = PlugItem.PlugStatus.DOWNLOAD_FAIL;
                this.val$listener.onFinish(this.val$plug, this.val$plug.downFilePath, false, this.val$plug.error, this.val$plug.status);
              }
            });
            return;
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
          }
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError)
        {
          DownloadTools.this.onFinish(paramPlugItem, paramPlugItem.downFilePath, false, "下载失败", PlugItem.PlugStatus.DOWNLOAD_FAIL);
        }
        
        public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          DownloadTools.this.onProgress(paramPlugItem, paramAnonymousInt2, paramAnonymousInt1, PlugItem.PlugStatus.DOWNLOADING);
        }
        
        public void onStart() {}
      };
      String str1 = paramPlugItem.version.replace(".", "");
      String str2 = paramPlugItem.plugId + "_" + str1 + ".apk";
      FileGuider localFileGuider = new FileGuider();
      localFileGuider.setSpace(1);
      localFileGuider.setImmutable(true);
      localFileGuider.setFileName(str2);
      localFileGuider.setChildDirName("plugs/down");
      localFileGuider.setMode(1);
      HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setUrl(paramPlugItem.downloadUrl);
      localHttpSetting.setEffect(0);
      localHttpSetting.setListener(local2);
      localHttpSetting.setType(500);
      localHttpSetting.setSavePath(localFileGuider);
      localHttpSetting.setUseCookies(false);
      paramMyActivity.getHttpGroupaAsynPool().add(localHttpSetting);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public static ArrayList<PlugItem> getDownloadPlugList(JSONObject paramJSONObject)
  {
    ArrayList localArrayList = PlugHelper.parsePlugs(paramJSONObject);
    Object localObject;
    if (localArrayList == null) {
      localObject = null;
    }
    for (;;)
    {
      return localObject;
      HashMap localHashMap = DownloadDao.getDao(MyApplication.getInstance().getBaseContext()).selectAll();
      localObject = new ArrayList();
      Iterator localIterator = localArrayList.iterator();
      while (localIterator.hasNext())
      {
        PlugItem localPlugItem1 = (PlugItem)localIterator.next();
        if (!localHashMap.containsKey(localPlugItem1.plugId))
        {
          ((ArrayList)localObject).add(localPlugItem1);
        }
        else
        {
          PlugItem localPlugItem2 = (PlugItem)localHashMap.get(localPlugItem1.plugId);
          if ((localPlugItem2 != null) && ((TextUtils.isEmpty(localPlugItem2.version)) || ((!TextUtils.isEmpty(localPlugItem2.version)) && (!localPlugItem2.version.equals(localPlugItem1.version))))) {
            ((ArrayList)localObject).add(localPlugItem1);
          }
        }
      }
    }
  }
  
  public static boolean isEnough(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return false;
    }
    File localFile = new File(paramString);
    if (!LocalPlugsTools.enoughInternalSpace(localFile))
    {
      localFile.delete();
      return false;
    }
    return true;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.plug.framework.download.DownloadTools
 * JD-Core Version:    0.7.0.1
 */