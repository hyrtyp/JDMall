package com.ja.analytics.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.ja.analytics.logevent.EventLog;
import com.ja.analytics.utils.LogUtil;
import org.json.JSONArray;
import org.json.JSONObject;

public class EventTable
{
  public static final String EVENT_DATA = "event_data";
  private static JSONArray JsonArray_ID = new JSONArray();
  public static final String SEND_DATE = "send_date";
  public static final String SEND_FLAG = "send_flag";
  public static final String TAG;
  public static final String TB_NAME = "event_data_info";
  public static final String _ID = "_id";
  private static SQLiteDatabase mDb;
  private static final byte[] object_lock = new byte[0];
  
  static
  {
    TAG = EventTable.class.getName();
  }
  
  public static void checkRows(Context paramContext)
  {
    if (openSQLiteDatabase(paramContext) == null) {}
    for (;;)
    {
      return;
      Cursor localCursor = null;
      try
      {
        synchronized (object_lock)
        {
          localCursor = mDb.query("event_data_info", new String[] { "max(_id)", "min(_id)" }, null, null, null, null, null);
          localCursor.moveToLast();
          if (localCursor.getLong(0) - localCursor.getLong(1) - 100000 > 0L)
          {
            mDb.execSQL("delete from event_data_info where _id<=" + (localCursor.getLong(0) - 100000));
            LogUtil.logW("delete exceeded data");
          }
          return;
        }
      }
      catch (Exception localException) {}finally
      {
        if (localCursor != null) {
          localCursor.close();
        }
      }
    }
  }
  
  public static void closeSQLiteDatabase(Context paramContext)
  {
    LogUtil.logD(TAG, " closeSQLiteDatabase()=> ");
    if (mDb == null) {
      return;
    }
    synchronized (object_lock)
    {
      mDb.close();
      mDb = null;
      return;
    }
  }
  
  public static void deleteEventLogItem(Context paramContext, int paramInt)
  {
    LogUtil.logD(TAG, " deleteEventLogItem(),Index:" + paramInt);
    if (mDb == null) {
      mDb = DatabaseHelper.getDatabase(paramContext);
    }
    synchronized (object_lock)
    {
      SQLiteDatabase localSQLiteDatabase = mDb;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = paramInt;
      localSQLiteDatabase.delete("event_data_info", "_id =?", arrayOfString);
      return;
    }
  }
  
  public static void deleteEventLogTable()
  {
    LogUtil.logD(TAG, " deleteEventLogTable()=> ");
    if (mDb == null) {
      return;
    }
    synchronized (object_lock)
    {
      mDb.execSQL("delete from event_data_info");
      return;
    }
  }
  
  /* Error */
  public static JSONArray getEventLog(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 39	com/ja/analytics/db/EventTable:TAG	Ljava/lang/String;
    //   6: ldc 148
    //   8: invokestatic 115	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   11: pop
    //   12: new 41	org/json/JSONArray
    //   15: dup
    //   16: invokespecial 44	org/json/JSONArray:<init>	()V
    //   19: astore_3
    //   20: getstatic 57	com/ja/analytics/db/EventTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   23: ifnonnull +42 -> 65
    //   26: getstatic 39	com/ja/analytics/db/EventTable:TAG	Ljava/lang/String;
    //   29: ldc 150
    //   31: invokestatic 115	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   34: pop
    //   35: ldc2_w 151
    //   38: invokestatic 158	java/lang/Thread:sleep	(J)V
    //   41: getstatic 57	com/ja/analytics/db/EventTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   44: astore 13
    //   46: aload 13
    //   48: ifnonnull +10 -> 58
    //   51: aconst_null
    //   52: astore_3
    //   53: ldc 2
    //   55: monitorexit
    //   56: aload_3
    //   57: areturn
    //   58: aload_0
    //   59: invokestatic 128	com/ja/analytics/db/DatabaseHelper:getDatabase	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   62: putstatic 57	com/ja/analytics/db/EventTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   65: getstatic 57	com/ja/analytics/db/EventTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   68: ldc 160
    //   70: iconst_1
    //   71: anewarray 59	java/lang/String
    //   74: dup
    //   75: iconst_0
    //   76: ldc 162
    //   78: aastore
    //   79: invokevirtual 166	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   82: astore 4
    //   84: iconst_0
    //   85: istore 5
    //   87: aload 4
    //   89: ifnonnull +70 -> 159
    //   92: aconst_null
    //   93: astore_3
    //   94: goto -41 -> 53
    //   97: aload 4
    //   99: aload 4
    //   101: ldc 8
    //   103: invokeinterface 169 2 0
    //   108: invokeinterface 173 2 0
    //   113: astore 6
    //   115: aload_3
    //   116: iload 5
    //   118: new 175	org/json/JSONObject
    //   121: dup
    //   122: aload 6
    //   124: invokespecial 176	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   127: invokevirtual 180	org/json/JSONArray:put	(ILjava/lang/Object;)Lorg/json/JSONArray;
    //   130: pop
    //   131: getstatic 46	com/ja/analytics/db/EventTable:JsonArray_ID	Lorg/json/JSONArray;
    //   134: iload 5
    //   136: aload 4
    //   138: aload 4
    //   140: ldc 23
    //   142: invokeinterface 169 2 0
    //   147: invokeinterface 184 2 0
    //   152: invokevirtual 187	org/json/JSONArray:put	(II)Lorg/json/JSONArray;
    //   155: pop
    //   156: iinc 5 1
    //   159: aload 4
    //   161: invokeinterface 190 1 0
    //   166: ifne -69 -> 97
    //   169: aload 4
    //   171: ifnull -118 -> 53
    //   174: aload 4
    //   176: invokeinterface 108 1 0
    //   181: goto -128 -> 53
    //   184: astore 7
    //   186: getstatic 39	com/ja/analytics/db/EventTable:TAG	Ljava/lang/String;
    //   189: aload 7
    //   191: invokestatic 194	com/ja/analytics/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   194: pop
    //   195: goto -36 -> 159
    //   198: astore_1
    //   199: ldc 2
    //   201: monitorexit
    //   202: aload_1
    //   203: athrow
    //   204: astore 12
    //   206: goto -165 -> 41
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	209	0	paramContext	Context
    //   198	5	1	localObject	Object
    //   19	97	3	localJSONArray	JSONArray
    //   82	93	4	localCursor	Cursor
    //   85	72	5	i	int
    //   113	10	6	str	String
    //   184	6	7	localJSONException	org.json.JSONException
    //   204	1	12	localInterruptedException	java.lang.InterruptedException
    //   44	3	13	localSQLiteDatabase	SQLiteDatabase
    // Exception table:
    //   from	to	target	type
    //   115	156	184	org/json/JSONException
    //   3	35	198	finally
    //   35	41	198	finally
    //   41	46	198	finally
    //   58	65	198	finally
    //   65	84	198	finally
    //   97	115	198	finally
    //   115	156	198	finally
    //   159	169	198	finally
    //   174	181	198	finally
    //   186	195	198	finally
    //   35	41	204	java/lang/InterruptedException
  }
  
  public static JSONArray getIdIndexArray()
  {
    return JsonArray_ID;
  }
  
  public static long insertEventLogItem(Context paramContext, JSONObject paramJSONObject)
  {
    LogUtil.logD(TAG, " insertEventLogItem() ---> ");
    if (paramJSONObject == null) {
      return -1L;
    }
    synchronized (object_lock)
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("event_data", paramJSONObject.toString());
      localContentValues.put("send_date", EventLog.getSingleton().getSendDate());
      localContentValues.put("send_flag", Integer.valueOf(EventLog.getSingleton().getSendFalseFlag()));
      if (mDb == null) {
        mDb = DatabaseHelper.getDatabase(paramContext);
      }
      long l = mDb.insert("event_data_info", null, localContentValues);
      LogUtil.logD(TAG, "当前插入到: " + l + " 行");
      LogUtil.logD(TAG, "当前插入的数据内容:" + paramJSONObject.toString());
      return l;
    }
  }
  
  public static void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    LogUtil.logD(TAG, " onCreate()=> ");
    paramSQLiteDatabase.execSQL("create table event_data_info" + " ( _id INTEGER PRIMARY KEY AUTOINCREMENT, event_data TEXT, send_date TEXT, send_flag TINYINT)");
  }
  
  public static void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    LogUtil.logD(TAG, " onUpgrade()=> ");
    paramSQLiteDatabase.execSQL("drop table if exists event_data_info");
    onCreate(paramSQLiteDatabase);
  }
  
  public static SQLiteDatabase openSQLiteDatabase(Context paramContext)
  {
    LogUtil.logD(TAG, " openSQLiteDatabase() ---> ");
    if (mDb != null)
    {
      LogUtil.logD(TAG, " if(mDb != null) ");
      return mDb;
    }
    synchronized (object_lock)
    {
      mDb = DatabaseHelper.getDatabase(paramContext);
      if (mDb == null)
      {
        LogUtil.logD(TAG, " if(mDb == null) ");
        return null;
      }
    }
    return mDb;
  }
  
  public static void updateEventLogSendFlagItem(Context paramContext, Integer paramInteger)
  {
    LogUtil.logD(TAG, "updateEventLogSendFlagItem()=>");
    synchronized (object_lock)
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("send_flag", Integer.valueOf(EventLog.getSingleton().getSendOkFlag()));
      if (mDb == null) {
        mDb = DatabaseHelper.getDatabase(paramContext);
      }
      SQLiteDatabase localSQLiteDatabase = mDb;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = paramInteger.toString();
      localSQLiteDatabase.update("event_data_info", localContentValues, "_id= ? ", arrayOfString);
      return;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.analytics.db.EventTable
 * JD-Core Version:    0.7.0.1
 */