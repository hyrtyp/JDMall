package com.ja.analytics.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.ja.analytics.logcrash.CrashLog;
import com.ja.analytics.utils.LogUtil;
import org.json.JSONArray;
import org.json.JSONObject;

public class CrashTable
{
  public static final String CRASH_DATA = "crash_data";
  private static JSONArray JsonArray_ID = new JSONArray();
  public static final String SEND_DATE = "send_date";
  public static final String SEND_FLAG = "send_flag";
  public static final String TAG;
  public static final String TB_NAME = "crash_data_info";
  public static final String _ID = "_id";
  private static SQLiteDatabase mDb;
  private static final byte[] object_lock = new byte[0];
  
  static
  {
    mDb = null;
    TAG = CrashTable.class.getName();
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
          localCursor = mDb.query("crash_data_info", new String[] { "max(_id)", "min(_id)" }, null, null, null, null, null);
          localCursor.moveToLast();
          if (localCursor.getLong(0) - localCursor.getLong(1) - 100 > 0L)
          {
            mDb.execSQL("delete from crash_data_info where _id<=" + (localCursor.getLong(0) - 100));
            LogUtil.logW("delete exceeded data");
          }
          return;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      finally
      {
        if (localCursor != null) {
          localCursor.close();
        }
      }
    }
  }
  
  /* Error */
  public static void closeSQLiteDatabase(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 41	com/ja/analytics/db/CrashTable:TAG	Ljava/lang/String;
    //   6: ldc 113
    //   8: invokestatic 117	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   11: pop
    //   12: getstatic 33	com/ja/analytics/db/CrashTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   15: astore_3
    //   16: aload_3
    //   17: ifnonnull +7 -> 24
    //   20: ldc 2
    //   22: monitorexit
    //   23: return
    //   24: getstatic 33	com/ja/analytics/db/CrashTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   27: invokevirtual 118	android/database/sqlite/SQLiteDatabase:close	()V
    //   30: aconst_null
    //   31: putstatic 33	com/ja/analytics/db/CrashTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   34: goto -14 -> 20
    //   37: astore_1
    //   38: ldc 2
    //   40: monitorexit
    //   41: aload_1
    //   42: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	43	0	paramContext	Context
    //   37	5	1	localObject	Object
    //   15	2	3	localSQLiteDatabase	SQLiteDatabase
    // Exception table:
    //   from	to	target	type
    //   3	16	37	finally
    //   24	34	37	finally
  }
  
  public static void deleteCrashDataItem(Context paramContext, int paramInt)
  {
    LogUtil.logD(TAG, " deleteCrashDataItem(), Index: " + paramInt);
    if (mDb == null) {
      mDb = DatabaseHelper.getDatabase(paramContext);
    }
    synchronized (object_lock)
    {
      SQLiteDatabase localSQLiteDatabase = mDb;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = paramInt;
      localSQLiteDatabase.delete("crash_data_info", "_id =?", arrayOfString);
      return;
    }
  }
  
  public static void deleteCrashDataTable()
  {
    LogUtil.logD(TAG, " deleteCrashDataTable()=> ");
    if (mDb == null) {
      return;
    }
    synchronized (object_lock)
    {
      mDb.execSQL("delete from crash_data_info");
      return;
    }
  }
  
  /* Error */
  public static JSONArray getCrashLog(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: new 43	org/json/JSONArray
    //   6: dup
    //   7: invokespecial 46	org/json/JSONArray:<init>	()V
    //   10: astore_1
    //   11: getstatic 33	com/ja/analytics/db/CrashTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   14: ifnonnull +42 -> 56
    //   17: getstatic 41	com/ja/analytics/db/CrashTable:TAG	Ljava/lang/String;
    //   20: ldc 150
    //   22: invokestatic 117	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   25: pop
    //   26: ldc2_w 151
    //   29: invokestatic 158	java/lang/Thread:sleep	(J)V
    //   32: getstatic 33	com/ja/analytics/db/CrashTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   35: astore 13
    //   37: aload 13
    //   39: ifnonnull +10 -> 49
    //   42: aconst_null
    //   43: astore_1
    //   44: ldc 2
    //   46: monitorexit
    //   47: aload_1
    //   48: areturn
    //   49: aload_0
    //   50: invokestatic 130	com/ja/analytics/db/DatabaseHelper:getDatabase	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   53: putstatic 33	com/ja/analytics/db/CrashTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   56: getstatic 41	com/ja/analytics/db/CrashTable:TAG	Ljava/lang/String;
    //   59: new 81	java/lang/StringBuilder
    //   62: dup
    //   63: ldc 160
    //   65: invokespecial 86	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   68: getstatic 33	com/ja/analytics/db/CrashTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   71: invokevirtual 161	android/database/sqlite/SQLiteDatabase:toString	()Ljava/lang/String;
    //   74: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   80: invokestatic 117	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   83: pop
    //   84: getstatic 33	com/ja/analytics/db/CrashTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   87: ldc 166
    //   89: iconst_1
    //   90: anewarray 59	java/lang/String
    //   93: dup
    //   94: iconst_0
    //   95: ldc 168
    //   97: aastore
    //   98: invokevirtual 172	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   101: astore 4
    //   103: iconst_0
    //   104: istore 5
    //   106: aload 4
    //   108: ifnonnull +70 -> 178
    //   111: aconst_null
    //   112: astore_1
    //   113: goto -69 -> 44
    //   116: aload 4
    //   118: aload 4
    //   120: ldc 8
    //   122: invokeinterface 175 2 0
    //   127: invokeinterface 179 2 0
    //   132: astore 6
    //   134: aload_1
    //   135: iload 5
    //   137: new 181	org/json/JSONObject
    //   140: dup
    //   141: aload 6
    //   143: invokespecial 182	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   146: invokevirtual 186	org/json/JSONArray:put	(ILjava/lang/Object;)Lorg/json/JSONArray;
    //   149: pop
    //   150: getstatic 48	com/ja/analytics/db/CrashTable:JsonArray_ID	Lorg/json/JSONArray;
    //   153: iload 5
    //   155: aload 4
    //   157: aload 4
    //   159: ldc 23
    //   161: invokeinterface 175 2 0
    //   166: invokeinterface 190 2 0
    //   171: invokevirtual 193	org/json/JSONArray:put	(II)Lorg/json/JSONArray;
    //   174: pop
    //   175: iinc 5 1
    //   178: aload 4
    //   180: invokeinterface 196 1 0
    //   185: ifne -69 -> 116
    //   188: aload 4
    //   190: ifnull -146 -> 44
    //   193: aload 4
    //   195: invokeinterface 107 1 0
    //   200: goto -156 -> 44
    //   203: astore 7
    //   205: getstatic 41	com/ja/analytics/db/CrashTable:TAG	Ljava/lang/String;
    //   208: aload 7
    //   210: invokestatic 200	com/ja/analytics/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   213: pop
    //   214: goto -36 -> 178
    //   217: astore_2
    //   218: ldc 2
    //   220: monitorexit
    //   221: aload_2
    //   222: athrow
    //   223: astore 12
    //   225: goto -193 -> 32
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	228	0	paramContext	Context
    //   10	125	1	localJSONArray	JSONArray
    //   217	5	2	localObject	Object
    //   101	93	4	localCursor	Cursor
    //   104	72	5	i	int
    //   132	10	6	str	String
    //   203	6	7	localJSONException	org.json.JSONException
    //   223	1	12	localInterruptedException	java.lang.InterruptedException
    //   35	3	13	localSQLiteDatabase	SQLiteDatabase
    // Exception table:
    //   from	to	target	type
    //   134	175	203	org/json/JSONException
    //   3	26	217	finally
    //   26	32	217	finally
    //   32	37	217	finally
    //   49	56	217	finally
    //   56	103	217	finally
    //   116	134	217	finally
    //   134	175	217	finally
    //   178	188	217	finally
    //   193	200	217	finally
    //   205	214	217	finally
    //   26	32	223	java/lang/InterruptedException
  }
  
  public static JSONArray getIdIndexArray()
  {
    return JsonArray_ID;
  }
  
  public static long insertCrashDataItem(Context paramContext, JSONObject paramJSONObject)
  {
    LogUtil.logD(TAG, " insertCrashDataItem() ---> ");
    if (paramJSONObject == null) {
      return -1L;
    }
    synchronized (object_lock)
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("crash_data", paramJSONObject.toString());
      localContentValues.put("send_date", CrashLog.getSingleton().getSendDate());
      localContentValues.put("send_flag", Integer.valueOf(CrashLog.getSingleton().getSendFalseFlag()));
      if (mDb == null)
      {
        LogUtil.logD(TAG, " insertCrashDataItem, mDb == null ");
        mDb = DatabaseHelper.getDatabase(paramContext);
      }
      LogUtil.logD(TAG, " insertCrashDataItem, mDb =:  " + mDb.toString());
      mDb.insert("crash_data_info", null, localContentValues);
      LogUtil.logD(TAG, "Insert the exception item to database!: " + paramJSONObject.toString());
      return -1L;
    }
  }
  
  public static void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    LogUtil.logD(TAG, " create exception_data_info Table() ---> ");
    paramSQLiteDatabase.execSQL("create table crash_data_info" + " ( _id INTEGER PRIMARY KEY AUTOINCREMENT, crash_data TEXT, send_date TEXT, send_flag TINYINT)");
  }
  
  public static void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    LogUtil.logD(TAG, " onUpgrade() ---> ");
    paramSQLiteDatabase.execSQL("drop table if exists crash_data_info");
    onCreate(paramSQLiteDatabase);
  }
  
  /* Error */
  public static SQLiteDatabase openSQLiteDatabase(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 41	com/ja/analytics/db/CrashTable:TAG	Ljava/lang/String;
    //   6: ldc_w 265
    //   9: invokestatic 117	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   12: pop
    //   13: getstatic 33	com/ja/analytics/db/CrashTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   16: ifnull +24 -> 40
    //   19: getstatic 41	com/ja/analytics/db/CrashTable:TAG	Ljava/lang/String;
    //   22: ldc_w 267
    //   25: invokestatic 117	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   28: pop
    //   29: getstatic 33	com/ja/analytics/db/CrashTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   32: astore 4
    //   34: ldc 2
    //   36: monitorexit
    //   37: aload 4
    //   39: areturn
    //   40: aload_0
    //   41: invokestatic 130	com/ja/analytics/db/DatabaseHelper:getDatabase	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   44: putstatic 33	com/ja/analytics/db/CrashTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   47: getstatic 33	com/ja/analytics/db/CrashTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   50: ifnonnull +19 -> 69
    //   53: getstatic 41	com/ja/analytics/db/CrashTable:TAG	Ljava/lang/String;
    //   56: ldc_w 269
    //   59: invokestatic 117	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   62: pop
    //   63: aconst_null
    //   64: astore 4
    //   66: goto -32 -> 34
    //   69: getstatic 41	com/ja/analytics/db/CrashTable:TAG	Ljava/lang/String;
    //   72: ldc_w 271
    //   75: invokestatic 117	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   78: pop
    //   79: getstatic 33	com/ja/analytics/db/CrashTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   82: astore 4
    //   84: goto -50 -> 34
    //   87: astore_1
    //   88: ldc 2
    //   90: monitorexit
    //   91: aload_1
    //   92: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	93	0	paramContext	Context
    //   87	5	1	localObject	Object
    //   32	51	4	localSQLiteDatabase	SQLiteDatabase
    // Exception table:
    //   from	to	target	type
    //   3	34	87	finally
    //   40	63	87	finally
    //   69	84	87	finally
  }
  
  public static void updateCrashLogSendFlagItem(Context paramContext, Integer paramInteger)
  {
    synchronized (object_lock)
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("send_flag", Integer.valueOf(CrashLog.getSingleton().getSendOkFlag()));
      if (mDb == null)
      {
        LogUtil.logD(TAG, " updateCrashLogSendFlagItem, mDb == null ");
        mDb = DatabaseHelper.getDatabase(paramContext);
      }
      LogUtil.logD(TAG, " updateCrashLogSendFlagItem, mDb =:  " + mDb.toString());
      SQLiteDatabase localSQLiteDatabase = mDb;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = paramInteger.toString();
      localSQLiteDatabase.update("crash_data_info", localContentValues, "_id= ? ", arrayOfString);
      LogUtil.logD(TAG, "Update the number:" + paramInteger + ",exception item to database!");
      return;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.analytics.db.CrashTable
 * JD-Core Version:    0.7.0.1
 */