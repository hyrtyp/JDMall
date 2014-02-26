package com.jingdong.app.mall.plug;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.plug.framework.download.DownPlugTask;
import com.jingdong.app.mall.plug.framework.download.DownloadDao;
import com.jingdong.app.mall.plug.framework.download.PlugHelper;
import com.jingdong.app.mall.plug.framework.plug.PlugItem;
import com.jingdong.app.mall.plug.framework.plug.local.LocalPluginParser;
import com.jingdong.app.mall.plug.framework.plug.local.LocalPlugsTools;
import com.jingdong.app.mall.plug.framework.plug.open.IPFragmentplug;
import com.jingdong.app.mall.plug.framework.plug.open.IPServiceplug;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class PlugManager
{
  private static final Hashtable<String, String> RSid2PlugIdHasTable = new Hashtable(10);
  private static final String TAG = "PlugManager";
  static ExecutorService execService = Executors.newFixedThreadPool(2);
  private static PlugManager instance;
  private boolean isInited = false;
  private ArrayList<PlugItem> mPlugList = new ArrayList(0);
  
  private void checkAndInitData(Context paramContext)
  {
    try
    {
      checkAndInitData(paramContext, false);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  /* Error */
  private void checkAndInitData(Context paramContext, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 47	com/jingdong/app/mall/plug/PlugManager:isInited	Z
    //   6: ifne +121 -> 127
    //   9: invokestatic 62	com/jingdong/app/mall/MyApplication:getInstance	()Lcom/jingdong/app/mall/MyApplication;
    //   12: ldc 64
    //   14: iconst_0
    //   15: invokevirtual 68	com/jingdong/app/mall/MyApplication:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   18: astore 4
    //   20: aload 4
    //   22: ldc 70
    //   24: ldc 72
    //   26: invokeinterface 78 3 0
    //   31: astore 5
    //   33: aload 5
    //   35: invokestatic 84	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   38: ifne +17 -> 55
    //   41: aload 5
    //   43: ldc 86
    //   45: invokevirtual 92	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   48: istore 11
    //   50: iload 11
    //   52: ifne +46 -> 98
    //   55: iload_2
    //   56: ifeq +9 -> 65
    //   59: ldc2_w 93
    //   62: invokestatic 100	java/lang/Thread:sleep	(J)V
    //   65: aload_1
    //   66: invokestatic 105	com/jingdong/app/mall/plug/framework/plug/local/LocalPlugsTools:readApkToDBFromAsset	(Landroid/content/Context;)V
    //   69: aload 4
    //   71: invokeinterface 109 1 0
    //   76: astore 6
    //   78: aload 6
    //   80: ldc 70
    //   82: ldc 86
    //   84: invokeinterface 115 3 0
    //   89: pop
    //   90: aload 6
    //   92: invokeinterface 119 1 0
    //   97: pop
    //   98: aload_0
    //   99: getfield 45	com/jingdong/app/mall/plug/PlugManager:mPlugList	Ljava/util/ArrayList;
    //   102: invokevirtual 122	java/util/ArrayList:clear	()V
    //   105: invokestatic 62	com/jingdong/app/mall/MyApplication:getInstance	()Lcom/jingdong/app/mall/MyApplication;
    //   108: invokevirtual 126	com/jingdong/app/mall/MyApplication:getBaseContext	()Landroid/content/Context;
    //   111: invokestatic 132	com/jingdong/app/mall/plug/framework/download/DownloadDao:getDao	(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;
    //   114: aload_0
    //   115: getfield 45	com/jingdong/app/mall/plug/PlugManager:mPlugList	Ljava/util/ArrayList;
    //   118: invokevirtual 136	com/jingdong/app/mall/plug/framework/download/DownloadDao:selectAllToList	(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    //   121: pop
    //   122: aload_0
    //   123: iconst_1
    //   124: putfield 47	com/jingdong/app/mall/plug/PlugManager:isInited	Z
    //   127: aload_0
    //   128: monitorexit
    //   129: return
    //   130: astore 10
    //   132: aload 10
    //   134: invokevirtual 139	java/lang/InterruptedException:printStackTrace	()V
    //   137: goto -72 -> 65
    //   140: astore_3
    //   141: aload_0
    //   142: monitorexit
    //   143: aload_3
    //   144: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	145	0	this	PlugManager
    //   0	145	1	paramContext	Context
    //   0	145	2	paramBoolean	boolean
    //   140	4	3	localObject	Object
    //   18	52	4	localSharedPreferences	android.content.SharedPreferences
    //   31	11	5	str	String
    //   76	15	6	localEditor	android.content.SharedPreferences.Editor
    //   130	3	10	localInterruptedException	java.lang.InterruptedException
    //   48	3	11	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   59	65	130	java/lang/InterruptedException
    //   2	50	140	finally
    //   59	65	140	finally
    //   65	98	140	finally
    //   98	127	140	finally
    //   132	137	140	finally
  }
  
  public static void exec(Runnable paramRunnable)
  {
    execService.execute(paramRunnable);
  }
  
  public static PlugManager getInstance()
  {
    if (instance == null) {
      instance = new PlugManager();
    }
    return instance;
  }
  
  public static void initPlugStatus(HttpGroup.OnCommonListener paramOnCommonListener)
  {
    PlugHelper.getPlugStatus(paramOnCommonListener);
  }
  
  public void addAndUpdate(PlugItem paramPlugItem)
  {
    try
    {
      if (this.mPlugList.contains(paramPlugItem)) {
        this.mPlugList.remove(paramPlugItem);
      }
      this.mPlugList.add(paramPlugItem);
      return;
    }
    finally {}
  }
  
  public Fragment getPlugFragment(Context paramContext, String paramString, Bundle paramBundle)
  {
    try
    {
      Iterator localIterator = this.mPlugList.iterator();
      boolean bool = localIterator.hasNext();
      IPFragmentplug localIPFragmentplug = null;
      if (!bool) {}
      for (;;)
      {
        if (localIPFragmentplug == null)
        {
          PlugItem localPlugItem2 = LocalPlugsTools.installPlugFromAsset(paramContext, paramString);
          if (localPlugItem2 != null) {
            localIPFragmentplug = (IPFragmentplug)localPlugItem2.getPlugIntance(paramContext);
          }
        }
        if (localIPFragmentplug == null) {
          break label107;
        }
        return localIPFragmentplug.getFragment(paramContext, paramBundle);
        PlugItem localPlugItem1 = (PlugItem)localIterator.next();
        if (!localPlugItem1.plugId.equals(paramString)) {
          break;
        }
        localIPFragmentplug = (IPFragmentplug)localPlugItem1.getPlugIntance(paramContext);
      }
      label107:
      return null;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
  
  public PlugItem getPlugItem(Context paramContext, String paramString)
  {
    checkAndInitData(paramContext);
    Iterator localIterator = this.mPlugList.iterator();
    PlugItem localPlugItem;
    do
    {
      if (!localIterator.hasNext()) {
        return LocalPlugsTools.installPlugFromAsset(paramContext, paramString);
      }
      localPlugItem = (PlugItem)localIterator.next();
    } while (!localPlugItem.plugId.equals(paramString));
    return localPlugItem;
  }
  
  public void initPlugFragment(MyActivity paramMyActivity, int paramInt, Bundle paramBundle)
  {
    checkAndInitData(paramMyActivity.getBaseContext());
    try
    {
      Fragment localFragment = getPlugFragment(paramMyActivity, (String)RSid2PlugIdHasTable.get(paramInt), paramBundle);
      FragmentTransaction localFragmentTransaction = paramMyActivity.getSupportFragmentManager().beginTransaction();
      localFragmentTransaction.replace(paramInt, localFragment);
      localFragmentTransaction.commit();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void startPlugActivty(Context paramContext, String paramString, Intent paramIntent)
  {
    checkAndInitData(paramContext);
    try
    {
      Iterator localIterator = this.mPlugList.iterator();
      boolean bool = localIterator.hasNext();
      int i = 0;
      if (!bool) {}
      for (;;)
      {
        if (i != 0) {
          return;
        }
        PlugItem localPlugItem2 = LocalPlugsTools.installPlugFromAsset(paramContext, paramString);
        if (localPlugItem2 == null) {
          return;
        }
        localPlugItem2.start(paramContext, null, paramIntent);
        return;
        PlugItem localPlugItem1 = (PlugItem)localIterator.next();
        if (!localPlugItem1.plugId.equals(paramString)) {
          break;
        }
        localPlugItem1.start(paramContext, null, paramIntent);
        i = 1;
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void startPlugActivtyInFrame(Context paramContext, String paramString, Intent paramIntent)
  {
    paramIntent.putExtra("isInFrame", true);
    startPlugActivty(paramContext, paramString, paramIntent);
  }
  
  public void startPlugService(final MyActivity paramMyActivity)
  {
    exec(new Runnable()
    {
      public void run()
      {
        if (System.currentTimeMillis() - CommonUtil.getPlugRequestTime() > CommonUtil.getPlugRequestPeriod())
        {
          PlugManager.this.checkAndInitData(paramMyActivity, true);
          new DownPlugTask(paramMyActivity).run();
        }
      }
    });
  }
  
  public void startWithApplication(Context paramContext, Intent paramIntent)
  {
    checkAndInitData(paramContext);
    for (;;)
    {
      PlugItem localPlugItem;
      try
      {
        Iterator localIterator = this.mPlugList.iterator();
        if (!localIterator.hasNext()) {
          return;
        }
        localPlugItem = (PlugItem)localIterator.next();
        if (localPlugItem.launch != 0) {
          continue;
        }
        if (localPlugItem.screen == 0)
        {
          localPlugItem.start(paramContext, null, paramIntent);
          continue;
        }
        if (localPlugItem.screen != -1) {
          continue;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      IPServiceplug localIPServiceplug = (IPServiceplug)localPlugItem.getPlugIntance(paramContext);
      if (localIPServiceplug != null) {
        localIPServiceplug.onStart(paramContext, paramIntent);
      }
    }
  }
  
  public void test1(Context paramContext)
  {
    checkAndInitData(paramContext);
    PlugItem localPlugItem = LocalPluginParser.parseFirstProperties(paramContext, "/sdcard/123456.apk");
    localPlugItem.downFilePath = "/sdcard/123456.apk";
    if (localPlugItem.install(paramContext))
    {
      getInstance().addAndUpdate(localPlugItem);
      if (!DownloadDao.getDao(MyApplication.getInstance().getBaseContext()).exist(localPlugItem.plugId)) {
        break label79;
      }
      DownloadDao.getDao(MyApplication.getInstance().getBaseContext()).update(localPlugItem);
    }
    for (;;)
    {
      getInstance().startPlugActivty(paramContext, "sample.helloworld", null);
      return;
      label79:
      DownloadDao.getDao(MyApplication.getInstance().getBaseContext()).insert(localPlugItem);
    }
  }
  
  public Fragment test2(Context paramContext)
  {
    checkAndInitData(paramContext);
    PlugItem localPlugItem = LocalPluginParser.parseFirstProperties(paramContext, "/sdcard/123456.apk");
    localPlugItem.downFilePath = "/sdcard/123456.apk";
    if (localPlugItem.install(paramContext))
    {
      getInstance().addAndUpdate(localPlugItem);
      if (!DownloadDao.getDao(MyApplication.getInstance().getBaseContext()).exist(localPlugItem.plugId)) {
        break label78;
      }
      DownloadDao.getDao(MyApplication.getInstance().getBaseContext()).update(localPlugItem);
    }
    for (;;)
    {
      return getPlugFragment(paramContext, localPlugItem.plugId, null);
      label78:
      DownloadDao.getDao(MyApplication.getInstance().getBaseContext()).insert(localPlugItem);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.plug.PlugManager
 * JD-Core Version:    0.7.0.1
 */