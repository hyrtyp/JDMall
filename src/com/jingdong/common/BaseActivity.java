package com.jingdong.common;

import android.app.Activity;
import android.app.LocalActivityManager;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.Toast;
import com.jingdong.common.frame.IDestroyListener;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.frame.IPauseListener;
import com.jingdong.common.frame.IResumeListener;
import com.jingdong.common.frame.Record;
import com.jingdong.common.res.StringUtil;
import com.jingdong.common.utils.CommonBase;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpGroupSetting;
import com.jingdong.common.utils.HttpGroup.HttpGroupaAsynPool;
import com.jingdong.common.utils.MyUncaughtExceptionHandler;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class BaseActivity
  extends Activity
  implements IMyActivity
{
  public static final String CLEAR_HISTORY_FLAG = "com.360buy:clearHistoryFlag";
  public static final String HOME_ACTIVITY_BUTTON_IS_DOWN = "home_button_down";
  public static final String NAVIGATION_DISPLAY_FLAG = "com.360buy:navigationDisplayFlag";
  public static final String NAVIGATION_FLAG = "com.360buy:navigationFlag";
  public static final String NAVIGATION_ID = "com.360buy:navigationId";
  public static final String RESEND_FLAG = "com.360buy:resendFlag";
  public static final String SINGLE_INSTANCE_FLAG = "com.360buy:singleInstanceFlag";
  public static final String TASK_ID_FLAG = "com.360buy:taskIdFlag";
  public static final String USE_HISTORY_FLAG = "com.360buy:useHistoryFlag";
  private final String TAG = BaseActivity.class.getSimpleName();
  private LocalActivityManager activityManager;
  private int counter;
  private ArrayList<IDestroyListener> destroyListenerList = new ArrayList();
  private Handler handler = new Handler();
  private boolean isPrevNotInRecord;
  private boolean jump;
  private Thread mUiThread;
  private ArrayList<IPauseListener> pauseListenerList = new ArrayList();
  private HashMap<String, Integer> recordIdAndRadioId = new HashMap();
  protected ArrayList<Record> recordList = new ArrayList();
  private ArrayList<IResumeListener> resumeListenerList = new ArrayList();
  private SharedPreferences sharedPreferences;
  private ArrayList<Record> singleInstanceRecordList = new ArrayList();
  
  private void clearHistoryRecord(Intent paramIntent)
  {
    Record localRecord = new Record();
    localRecord.setIntent(paramIntent);
    while (this.recordList.remove(localRecord)) {}
  }
  
  private void collectErrorData(Intent paramIntent)
  {
    Bundle localBundle = paramIntent.getExtras();
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("activity class name：" + paramIntent.getComponent().getClassName());
    localStringBuffer.append("，intent content：");
    Iterator localIterator;
    if (localBundle != null)
    {
      localIterator = localBundle.keySet().iterator();
      if (localIterator.hasNext()) {}
    }
    else
    {
      MyUncaughtExceptionHandler.resetErrorInfo(localStringBuffer.toString());
      return;
    }
    String str1 = localIterator.next().toString();
    localStringBuffer.append(str1 + "：");
    if (localBundle.get(str1) == null) {}
    for (String str2 = "<null>";; str2 = localBundle.get(str1).toString())
    {
      localStringBuffer.append(str2 + "，");
      break;
    }
  }
  
  private void doJump()
  {
    this.jump = false;
    removeRecordTop();
  }
  
  private Integer findRadioId(String paramString)
  {
    return (Integer)this.recordIdAndRadioId.get(paramString);
  }
  
  private Record findsingleInstanceRecord(Intent paramIntent)
  {
    Iterator localIterator = this.singleInstanceRecordList.iterator();
    Record localRecord;
    do
    {
      if (!localIterator.hasNext()) {
        return null;
      }
      localRecord = (Record)localIterator.next();
    } while (!localRecord.getIntent().getComponent().getClassName().equals(paramIntent.getComponent().getClassName()));
    return localRecord;
  }
  
  private Integer getNavigationId(Intent paramIntent)
  {
    if (isNavigation(paramIntent)) {
      return Integer.valueOf(paramIntent.getIntExtra("com.360buy:navigationId", 0));
    }
    return null;
  }
  
  private HashMap<String, Object> getTaskId(Intent paramIntent)
  {
    return (HashMap)paramIntent.getSerializableExtra("com.360buy:taskIdFlag");
  }
  
  private boolean isJump()
  {
    return this.jump;
  }
  
  private boolean isNavigation(Intent paramIntent)
  {
    return paramIntent.getBooleanExtra("com.360buy:navigationFlag", false);
  }
  
  public void addDestroyListener(IDestroyListener paramIDestroyListener)
  {
    if (this.destroyListenerList != null) {
      this.destroyListenerList.add(paramIDestroyListener);
    }
  }
  
  public void addPauseListener(IPauseListener paramIPauseListener)
  {
    if (this.pauseListenerList != null) {
      this.pauseListenerList.add(paramIPauseListener);
    }
  }
  
  public void addResumeListener(IResumeListener paramIResumeListener)
  {
    if (this.resumeListenerList != null) {
      this.resumeListenerList.add(paramIResumeListener);
    }
  }
  
  public void clearJump()
  {
    if (isJump()) {
      this.jump = false;
    }
  }
  
  public void finish()
  {
    hideSoftInput();
    super.finish();
  }
  
  public Handler getHandler()
  {
    return this.handler;
  }
  
  public HttpGroup getHttpGroupaAsynPool()
  {
    return getHttpGroupaAsynPool(1000);
  }
  
  public HttpGroup getHttpGroupaAsynPool(int paramInt)
  {
    HttpGroup.HttpGroupSetting localHttpGroupSetting = new HttpGroup.HttpGroupSetting();
    localHttpGroupSetting.setMyActivity(this);
    localHttpGroupSetting.setType(paramInt);
    return getHttpGroupaAsynPool(localHttpGroupSetting);
  }
  
  public HttpGroup getHttpGroupaAsynPool(HttpGroup.HttpGroupSetting paramHttpGroupSetting)
  {
    HttpGroup.HttpGroupaAsynPool localHttpGroupaAsynPool = new HttpGroup.HttpGroupaAsynPool(paramHttpGroupSetting);
    addDestroyListener(localHttpGroupaAsynPool);
    return localHttpGroupaAsynPool;
  }
  
  public String getStringFromPreference(String paramString)
  {
    return this.sharedPreferences.getString(paramString, "");
  }
  
  public Activity getThisActivity()
  {
    return this;
  }
  
  public Thread getUiThread()
  {
    return this.mUiThread;
  }
  
  public void hideSoftInput()
  {
    ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(getWindow().getDecorView().getWindowToken(), 0);
  }
  
  public boolean isClearHistory(Intent paramIntent)
  {
    return paramIntent.getBooleanExtra("com.360buy:clearHistoryFlag", false);
  }
  
  public boolean isResend(Intent paramIntent)
  {
    return paramIntent.getBooleanExtra("com.360buy:resendFlag", false);
  }
  
  public boolean isSingleInstance(Intent paramIntent)
  {
    return paramIntent.getBooleanExtra("com.360buy:singleInstanceFlag", false);
  }
  
  public boolean isUseHistoryRecord(Intent paramIntent)
  {
    return paramIntent.getBooleanExtra("com.360buy:useHistoryFlag", false);
  }
  
  public void markJump()
  {
    this.jump = true;
  }
  
  public Record newActivity(String paramString, Intent paramIntent)
  {
    Record localRecord = new Record();
    localRecord.setId(paramString);
    localRecord.setIntent(paramIntent);
    if (isSingleInstance(paramIntent)) {
      this.singleInstanceRecordList.add(localRecord);
    }
    newActivity(localRecord);
    return localRecord;
  }
  
  public void newActivity(Record paramRecord)
  {
    if (isResend(paramRecord.getIntent())) {
      removeRecordTop();
    }
    for (;;)
    {
      if (!this.recordList.isEmpty())
      {
        HashMap localHashMap1 = getTaskId(((Record)this.recordList.get(0)).getIntent());
        if (localHashMap1 != null)
        {
          HashMap localHashMap2 = getTaskId(paramRecord.getIntent());
          if ((localHashMap2 == null) || (!localHashMap1.equals(localHashMap2))) {
            removeRecordTop();
          }
        }
      }
      if ((!isSingleInstance(paramRecord.getIntent())) || (this.recordList.isEmpty()) || (!((Record)this.recordList.get(0)).getIntent().getComponent().getClassName().equals(paramRecord.getIntent().getComponent().getClassName())))
      {
        if (isUseHistoryRecord(paramRecord.getIntent()))
        {
          int i = this.recordList.indexOf(paramRecord);
          if (i > 0)
          {
            Record localRecord = (Record)this.recordList.remove(i);
            if ((localRecord != null) && (!TextUtils.isEmpty(localRecord.getId())) && (localRecord.getIntent() != null)) {
              paramRecord = localRecord;
            }
          }
        }
        this.recordList.add(0, paramRecord);
      }
      Integer localInteger = getNavigationId(paramRecord.getIntent());
      if ((localInteger != null) && (findRadioId(paramRecord.getId()) == null)) {
        this.recordIdAndRadioId.put(paramRecord.getId(), localInteger);
      }
      collectErrorData(paramRecord.getIntent());
      showActivity(paramRecord.getId(), paramRecord.getIntent());
      return;
      if (isJump()) {
        doJump();
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    MyApplication.getInstance().setCurrentMyActivity(this);
    setRequestedOrientation(1);
    this.mUiThread = Thread.currentThread();
    hideSoftInput();
    super.onCreate(paramBundle);
    if (isSingleInstance(getIntent())) {
      this.destroyListenerList = null;
    }
    this.sharedPreferences = CommonBase.getJdSharedPreferences();
  }
  
  public void onHideModal() {}
  
  public void onShowModal() {}
  
  public void post(Runnable paramRunnable)
  {
    this.handler.post(paramRunnable);
  }
  
  public void post(Runnable paramRunnable, int paramInt)
  {
    this.handler.postAtTime(paramRunnable, paramInt);
  }
  
  public void putBooleanToPreference(String paramString, Boolean paramBoolean)
  {
    this.sharedPreferences.edit().putBoolean(paramString, paramBoolean.booleanValue()).commit();
  }
  
  public void removeDestroyListener(IDestroyListener paramIDestroyListener)
  {
    if (this.destroyListenerList != null) {
      this.destroyListenerList.remove(paramIDestroyListener);
    }
  }
  
  public void removePauseListener(IPauseListener paramIPauseListener)
  {
    if (this.pauseListenerList != null) {
      this.pauseListenerList.remove(paramIPauseListener);
    }
  }
  
  public void removeRecordTop()
  {
    if (this.isPrevNotInRecord) {
      this.isPrevNotInRecord = false;
    }
    Record localRecord;
    do
    {
      do
      {
        return;
      } while (this.recordList.isEmpty());
      localRecord = (Record)this.recordList.remove(0);
    } while (isSingleInstance(localRecord.getIntent()));
    this.activityManager.destroyActivity(localRecord.getId(), true);
  }
  
  public void removeResumeListener(IResumeListener paramIResumeListener)
  {
    if (this.resumeListenerList != null) {
      this.resumeListenerList.remove(paramIResumeListener);
    }
  }
  
  public void showActivity(String paramString, Intent paramIntent) {}
  
  public void startActivityForResultNoException(Intent paramIntent, int paramInt)
  {
    startActivityForResultNoExceptionStatic(this, paramIntent, paramInt);
  }
  
  public void startActivityForResultNoExceptionStatic(final Activity paramActivity, Intent paramIntent, int paramInt)
  {
    if ((paramIntent == null) || (paramActivity == null)) {
      return;
    }
    try
    {
      paramActivity.startActivityForResult(paramIntent, paramInt);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      final String str1 = StringUtil.not_find_other;
      if (TextUtils.equals(paramIntent.getAction(), "android.intent.action.VIEW"))
      {
        String str2 = paramIntent.getScheme();
        if ((str2 != null) && ((str2.equals("http")) || (str2.equals("https")))) {
          str1 = StringUtil.not_find_browser;
        }
      }
      for (;;)
      {
        post(new Runnable()
        {
          public void run()
          {
            Toast.makeText(paramActivity, str1, 1).show();
          }
        });
        return;
        if (TextUtils.equals(paramIntent.getAction(), "android.intent.action.GET_CONTENT")) {
          str1 = StringUtil.not_find_gallery;
        } else if (TextUtils.equals(paramIntent.getAction(), "android.media.action.IMAGE_CAPTURE")) {
          str1 = StringUtil.not_find_camera;
        }
      }
    }
    catch (Exception localException) {}
  }
  
  public void startActivityInFrame(final Intent paramIntent)
  {
    String str = Build.VERSION.SDK;
    if (getParent() == null)
    {
      if (Integer.valueOf(str).intValue() > 10)
      {
        post(new Runnable()
        {
          public void run()
          {
            BaseActivity.this.startActivity(paramIntent);
          }
        });
        return;
      }
      startActivity(paramIntent);
      return;
    }
    if (Integer.valueOf(str).intValue() > 10)
    {
      post(new Runnable()
      {
        public void run()
        {
          BaseActivity.this.startSubActivity(paramIntent);
        }
      });
      return;
    }
    startSubActivity(paramIntent);
  }
  
  public void startActivityNoException(Intent paramIntent)
  {
    startActivityForResultNoException(paramIntent, -1);
  }
  
  public Record startSubActivity(Intent paramIntent)
  {
    if (isSingleInstance(paramIntent))
    {
      Record localRecord = findsingleInstanceRecord(paramIntent);
      if (localRecord != null)
      {
        localRecord.setIntent(paramIntent);
        newActivity(localRecord);
        return localRecord;
      }
    }
    else if (isClearHistory(paramIntent))
    {
      clearHistoryRecord(paramIntent);
    }
    this.counter = (1 + this.counter);
    return newActivity("subActivity:" + this.counter, paramIntent);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.BaseActivity
 * JD-Core Version:    0.7.0.1
 */