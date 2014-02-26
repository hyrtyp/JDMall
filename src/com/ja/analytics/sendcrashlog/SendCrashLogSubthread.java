package com.ja.analytics.sendcrashlog;

import android.content.Context;
import com.ja.analytics.db.CrashTable;
import com.ja.analytics.framework.CrashLogSend;
import com.ja.analytics.utils.LogUtil;
import org.json.JSONArray;

class SendCrashLogSubthread
  implements Runnable
{
  public static final String TAG = SendCrashLogSubthread.class.getName();
  private Context mContext;
  private JSONArray sendDataJsonarray;
  private int sendLogType;
  
  SendCrashLogSubthread(Context paramContext, JSONArray paramJSONArray, int paramInt)
  {
    LogUtil.logD(TAG, " SendCrashLogSubthread constructor!!");
    if (paramContext == null) {
      return;
    }
    this.mContext = paramContext;
    this.sendDataJsonarray = new JSONArray();
    this.sendDataJsonarray = paramJSONArray;
    this.sendLogType = paramInt;
  }
  
  public void run()
  {
    try
    {
      if (CrashTable.openSQLiteDatabase(this.mContext) == null) {
        return;
      }
      CrashLogSend.getSingleton().sendFiveExceptionDataToServer(this.mContext, this.sendDataJsonarray);
      return;
    }
    finally {}
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.analytics.sendcrashlog.SendCrashLogSubthread
 * JD-Core Version:    0.7.0.1
 */