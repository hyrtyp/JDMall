package com.ja.analytics.sendeventlog;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.ja.analytics.utils.LogUtil;
import org.json.JSONArray;

public class EventWorkThreadHandler
{
  private static final String TAG = EventWorkThreadHandler.class.getName();
  private static HandlerThread mEventWorkThreadHandler = new HandlerThread("EventWorkThreadHandler");
  private static WorkThreadHandler mHandler;
  private static EventWorkThreadHandler mSendDataMainThread = new EventWorkThreadHandler();
  
  EventWorkThreadHandler()
  {
    mEventWorkThreadHandler.start();
    mHandler = new WorkThreadHandler(mEventWorkThreadHandler.getLooper());
  }
  
  static Handler getHandler()
  {
    return mHandler;
  }
  
  public static EventWorkThreadHandler getSingleton()
  {
    return mSendDataMainThread;
  }
  
  public void postTaskToMainThread(Context paramContext, JSONArray paramJSONArray, int paramInt)
  {
    if ((paramJSONArray == null) || (paramJSONArray.length() == 0)) {
      return;
    }
    LogUtil.logD(TAG, "postTaskToMainThread() --->");
    mHandler.post(new SendEventLogSubthread(paramContext, paramJSONArray, paramInt));
  }
  
  public class WorkThreadHandler
    extends Handler
  {
    public WorkThreadHandler() {}
    
    public WorkThreadHandler(Looper paramLooper)
    {
      super();
    }
    
    public void handleMessage(Message paramMessage)
    {
      super.handleMessage(paramMessage);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.analytics.sendeventlog.EventWorkThreadHandler
 * JD-Core Version:    0.7.0.1
 */