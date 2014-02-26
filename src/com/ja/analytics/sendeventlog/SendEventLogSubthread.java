package com.ja.analytics.sendeventlog;

import android.content.Context;
import com.ja.analytics.db.EventTable;
import com.ja.analytics.framework.EventLogSend;
import com.ja.analytics.utils.LogUtil;
import org.json.JSONArray;

class SendEventLogSubthread
  implements Runnable
{
  private static final String TAG = SendEventLogSubthread.class.getName();
  private static Context mContext;
  private JSONArray sendDataJsonarray;
  private int sendLogType;
  
  SendEventLogSubthread(Context paramContext, JSONArray paramJSONArray, int paramInt)
  {
    LogUtil.logD(TAG, "SendEventLogSubthread() --->");
    if (paramContext == null) {
      return;
    }
    mContext = paramContext;
    this.sendDataJsonarray = new JSONArray();
    this.sendDataJsonarray = paramJSONArray;
    this.sendLogType = paramInt;
  }
  
  public void run()
  {
    try
    {
      if (EventTable.openSQLiteDatabase(mContext) == null) {
        return;
      }
      EventLogSend.getSingleton().sendFiveEventLog(mContext, this.sendDataJsonarray);
      return;
    }
    finally {}
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.analytics.sendeventlog.SendEventLogSubthread
 * JD-Core Version:    0.7.0.1
 */