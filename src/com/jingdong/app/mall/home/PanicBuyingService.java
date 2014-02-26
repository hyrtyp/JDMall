package com.jingdong.app.mall.home;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import com.jingdong.app.mall.MainFrameActivity;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.broadcastReceiver.InterfaceBroadcastReceiver.Command;
import com.jingdong.app.mall.product.LimitBuyListActivity;
import com.jingdong.common.database.table.MS_AlarmTable;
import com.jingdong.common.entity.MiaoSha;
import com.jingdong.common.entity.Product;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpGroupSetting;
import com.jingdong.common.utils.HttpGroup.HttpGroupaAsynPool;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpTaskListener;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JSONObjectProxy;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class PanicBuyingService
  extends Service
{
  private static final String TAG = "PanicBuyingService";
  private AlarmManager alarmManager;
  private HttpGroup httpGroup;
  private boolean isBootCompleted;
  private final IBinder mBinder = new Binder()
  {
    protected boolean onTransact(int paramAnonymousInt1, Parcel paramAnonymousParcel1, Parcel paramAnonymousParcel2, int paramAnonymousInt2)
      throws RemoteException
    {
      return super.onTransact(paramAnonymousInt1, paramAnonymousParcel1, paramAnonymousParcel2, paramAnonymousInt2);
    }
  };
  
  public boolean contains(int paramInt)
  {
    ArrayList localArrayList = MS_AlarmTable.getList();
    for (int i = 0;; i++)
    {
      if (i >= localArrayList.size()) {
        return false;
      }
      if (paramInt == filterIntMax(((Long)localArrayList.get(i)).longValue())) {
        return true;
      }
    }
  }
  
  public int filterIntMax(long paramLong)
  {
    if (paramLong <= 2147483647L) {
      return (int)paramLong;
    }
    return 2147483647 - 0;
  }
  
  public void getPanicBuyingList(HttpGroup.HttpTaskListener paramHttpTaskListener)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("miaoShaAreaList");
    localHttpSetting.setEffect(0);
    localHttpSetting.setNotifyUser(false);
    localHttpSetting.setListener(paramHttpTaskListener);
    if (this.httpGroup == null)
    {
      HttpGroup.HttpGroupSetting localHttpGroupSetting = new HttpGroup.HttpGroupSetting();
      localHttpGroupSetting.setPriority(1000);
      localHttpGroupSetting.setType(1000);
      this.httpGroup = new HttpGroup.HttpGroupaAsynPool(localHttpGroupSetting);
    }
    this.httpGroup.add(localHttpSetting);
  }
  
  public void killSelf()
  {
    stopSelf();
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return this.mBinder;
  }
  
  public void onCreate()
  {
    super.onCreate();
  }
  
  public void onStart(Intent paramIntent, int paramInt)
  {
    super.onStart(paramIntent, paramInt);
    if (paramIntent == null) {}
    for (;;)
    {
      return;
      String str = paramIntent.getAction();
      if ((!TextUtils.isEmpty(str)) && (str.equals("com.jingdong.app.mall.panicbuyinglist")))
      {
        Intent localIntent2 = new Intent(this, PanicBuyingActivity.class);
        localIntent2.setAction(str);
        localIntent2.putExtras(paramIntent.getExtras());
        localIntent2.setFlags(268435456);
        return;
      }
      if ((!TextUtils.isEmpty(str)) && (str.equals("com.jingdong.app.mall.panicbuying")))
      {
        Intent localIntent1 = new Intent(this, LimitBuyListActivity.class);
        localIntent1.putExtra("moduleId", 8);
        localIntent1.putExtra("com.360buy:clearHistoryFlag", true);
        toTraget(this, localIntent1);
        killSelf();
        return;
      }
      if ((TextUtils.isEmpty(str)) || (!str.equals("android.intent.action.BOOT_COMPLETED"))) {
        continue;
      }
      try
      {
        this.isBootCompleted = paramIntent.getBooleanExtra("text_boot_completed", false);
        if (!this.isBootCompleted) {
          continue;
        }
        getPanicBuyingList(new HttpGroup.OnAllListener()
        {
          public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
          {
            for (;;)
            {
              int k;
              try
              {
                ArrayList localArrayList = MiaoSha.toList(paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("miaoShaList"));
                if (localArrayList == null) {
                  return;
                }
                MS_AlarmTable.delAll();
                int i = 0;
                int j = localArrayList.size();
                if (i >= j) {
                  return;
                }
                List localList = ((MiaoSha)localArrayList.get(i)).getWareInfoList();
                k = 0;
                if (k >= localList.size())
                {
                  i++;
                  continue;
                }
                Product localProduct = (Product)localList.get(k);
                if (localProduct != null)
                {
                  PanicBuyingService localPanicBuyingService = PanicBuyingService.this;
                  int m = PanicBuyingService.this.filterIntMax(localProduct.getId().longValue());
                  if (localPanicBuyingService.contains(m)) {
                    PanicBuyingService.this.setAlram(m, localProduct);
                  }
                }
              }
              catch (Exception localException)
              {
                return;
              }
              finally
              {
                PanicBuyingService.this.killSelf();
              }
              k++;
            }
          }
          
          public void onError(HttpGroup.HttpError paramAnonymousHttpError)
          {
            PanicBuyingService.this.killSelf();
          }
          
          public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
          
          public void onStart() {}
        });
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          this.isBootCompleted = false;
        }
      }
    }
  }
  
  public void setAlram(int paramInt, Product paramProduct)
  {
    if (this.alarmManager == null) {
      this.alarmManager = ((AlarmManager)getSystemService("alarm"));
    }
    String str = paramProduct.getName();
    int i = filterIntMax(paramProduct.getId().longValue());
    Intent localIntent = new Intent(this, PanicBuyingReceive.class);
    localIntent.setAction("com.jingdong.app.mall.panicbuying");
    localIntent.setFlags(32);
    localIntent.putExtra("msg", str);
    localIntent.putExtra("id", i);
    PendingIntent localPendingIntent = PendingIntent.getBroadcast(this, i, localIntent, 0);
    Calendar localCalendar = Calendar.getInstance();
    long l1 = paramProduct.getStartTime().longValue() - 60000L;
    if (l1 <= 0L) {
      return;
    }
    long l2 = System.currentTimeMillis();
    localCalendar.setTimeInMillis(l2);
    localCalendar.add(14, (int)l1);
    this.alarmManager.set(0, localCalendar.getTimeInMillis(), localPendingIntent);
    long l3 = paramInt;
    try
    {
      MS_AlarmTable.insertOrUpdate(l3, l1, l2, paramProduct.getName());
      return;
    }
    catch (Exception localException) {}
  }
  
  public void toTraget(Context paramContext, Intent paramIntent)
  {
    InterfaceBroadcastReceiver.Command localCommand = InterfaceBroadcastReceiver.Command.createCommand(paramIntent);
    if (localCommand.getModuleId() == 0) {
      return;
    }
    Intent localIntent = new Intent(paramContext, MainFrameActivity.class);
    MainFrameActivity localMainFrameActivity = MyApplication.getInstance().getMainFrameActivity();
    if (localMainFrameActivity == null) {
      localIntent.putExtras(localCommand.getBundle());
    }
    for (;;)
    {
      localIntent.addFlags(268435456);
      paramContext.startActivity(localIntent);
      return;
      localMainFrameActivity.toTargetActivity(localCommand);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.home.PanicBuyingService
 * JD-Core Version:    0.7.0.1
 */