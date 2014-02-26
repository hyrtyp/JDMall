package com.jd.droidlib.executor.service;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import com.jd.droidlib.Injector;
import com.jd.droidlib.util.L;
import java.lang.reflect.Field;

public abstract class IntentService
  extends android.app.IntentService
{
  public static final String EXTRA_ACTION = "_action";
  public static final String EXTRA_EXCEPTION = "_exception";
  private static final String EXTRA_RESULT_RECEIVER = "_result_receiver";
  private static Field mServiceHandlerField;
  
  public IntentService(String paramString)
  {
    super(paramString);
  }
  
  private Handler getHandler()
  {
    try
    {
      if (mServiceHandlerField == null)
      {
        mServiceHandlerField = android.app.IntentService.class.getDeclaredField("mServiceHandler");
        mServiceHandlerField.setAccessible(true);
      }
      Handler localHandler = (Handler)mServiceHandlerField.get(this);
      return localHandler;
    }
    catch (Exception localException)
    {
      L.w(localException);
    }
    return null;
  }
  
  public static final Intent getIntent(Context paramContext, Class<? extends IntentService> paramClass, String paramString)
  {
    Intent localIntent = new Intent(paramContext, paramClass);
    localIntent.setAction(paramString);
    return localIntent;
  }
  
  public static final Intent getIntent(Context paramContext, Class<? extends IntentService> paramClass, String paramString, ResultReceiver paramResultReceiver)
  {
    Intent localIntent = getIntent(paramContext, paramClass, paramString);
    localIntent.putExtra("_result_receiver", paramResultReceiver);
    return localIntent;
  }
  
  public void onCreate()
  {
    super.onCreate();
    Injector.inject(this);
  }
  
  protected abstract Bundle onExecute(String paramString, Bundle paramBundle)
    throws Exception;
  
  protected final void onHandleIntent(Intent paramIntent)
  {
    String str = paramIntent.getAction();
    Bundle localBundle = paramIntent.getExtras();
    if (localBundle == null) {
      localBundle = new Bundle();
    }
    ResultReceiver localResultReceiver = (ResultReceiver)localBundle.getParcelable("_result_receiver");
    localBundle.putString("_action", str);
    try
    {
      localBundle = onExecute(str, localBundle);
      if (localResultReceiver != null) {
        localResultReceiver.send(-1, localBundle);
      }
      return;
    }
    catch (Exception localException)
    {
      do
      {
        L.w(localException);
      } while (localResultReceiver == null);
      localBundle.putSerializable("_exception", localException);
      localResultReceiver.send(0, localBundle);
    }
  }
  
  public void removePendingIntents()
  {
    Handler localHandler = getHandler();
    if (localHandler != null) {
      localHandler.removeMessages(0);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.executor.service.IntentService
 * JD-Core Version:    0.7.0.1
 */