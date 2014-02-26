package com.ja.sdk.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.ja.sdk.exception.ExceptionData;
import com.ja.sdk.utils.LogUtil;
import org.json.JSONArray;

public class ExceptionTable
{
  public static final String EXCEPTION_DATA = "exception_data";
  private static JSONArray JsonArray_ID = new JSONArray();
  public static final String SEND_DATE = "send_date";
  public static final String SEND_FLAG = "send_flag";
  public static final String TAG = "ExceptionTable";
  public static final String TB_NAME = "exception_data_info";
  public static final String _ID = "_id";
  private static SQLiteDatabase mDb = null;
  
  /* Error */
  public static void closeSQLiteDatabase(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: ldc 19
    //   5: ldc 43
    //   7: invokestatic 49	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   10: pop
    //   11: getstatic 31	com/ja/sdk/db/ExceptionTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   14: astore_3
    //   15: aload_3
    //   16: ifnonnull +7 -> 23
    //   19: ldc 2
    //   21: monitorexit
    //   22: return
    //   23: getstatic 31	com/ja/sdk/db/ExceptionTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   26: invokevirtual 54	android/database/sqlite/SQLiteDatabase:close	()V
    //   29: aconst_null
    //   30: putstatic 31	com/ja/sdk/db/ExceptionTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   33: goto -14 -> 19
    //   36: astore_1
    //   37: ldc 2
    //   39: monitorexit
    //   40: aload_1
    //   41: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	42	0	paramContext	Context
    //   36	5	1	localObject	Object
    //   14	2	3	localSQLiteDatabase	SQLiteDatabase
    // Exception table:
    //   from	to	target	type
    //   3	15	36	finally
    //   23	33	36	finally
  }
  
  public static void deleteExceptionDataItem(Context paramContext, int paramInt)
  {
    try
    {
      LogUtil.logD("ExceptionTable", " deleteExceptionDataItem(), Index: " + paramInt);
      if (mDb == null) {
        mDb = DatabaseHelper.getDatabase(paramContext);
      }
      SQLiteDatabase localSQLiteDatabase = mDb;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = paramInt;
      localSQLiteDatabase.delete("exception_data_info", "_id =?", arrayOfString);
      return;
    }
    finally {}
  }
  
  public static void deleteExceptionDataTable()
  {
    LogUtil.logD("ExceptionTable", " deleteExceptionDataTable()=> ");
    if (mDb == null) {
      return;
    }
    mDb.execSQL("delete from exception_data_info");
  }
  
  /* Error */
  public static JSONArray getAllExceptionDataNotSendItem(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: new 33	org/json/JSONArray
    //   6: dup
    //   7: invokespecial 36	org/json/JSONArray:<init>	()V
    //   10: astore_1
    //   11: getstatic 31	com/ja/sdk/db/ExceptionTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   14: ifnonnull +41 -> 55
    //   17: ldc 19
    //   19: ldc 102
    //   21: invokestatic 49	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   24: pop
    //   25: ldc2_w 103
    //   28: invokestatic 110	java/lang/Thread:sleep	(J)V
    //   31: getstatic 31	com/ja/sdk/db/ExceptionTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   34: astore 13
    //   36: aload 13
    //   38: ifnonnull +10 -> 48
    //   41: aconst_null
    //   42: astore_1
    //   43: ldc 2
    //   45: monitorexit
    //   46: aload_1
    //   47: areturn
    //   48: aload_0
    //   49: invokestatic 77	com/ja/sdk/db/DatabaseHelper:getDatabase	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   52: putstatic 31	com/ja/sdk/db/ExceptionTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   55: ldc 19
    //   57: new 58	java/lang/StringBuilder
    //   60: dup
    //   61: ldc 112
    //   63: invokespecial 63	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   66: getstatic 31	com/ja/sdk/db/ExceptionTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   69: invokevirtual 113	android/database/sqlite/SQLiteDatabase:toString	()Ljava/lang/String;
    //   72: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: invokestatic 49	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   81: pop
    //   82: getstatic 31	com/ja/sdk/db/ExceptionTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   85: ldc 118
    //   87: iconst_1
    //   88: anewarray 79	java/lang/String
    //   91: dup
    //   92: iconst_0
    //   93: ldc 120
    //   95: aastore
    //   96: invokevirtual 124	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   99: astore 4
    //   101: iconst_0
    //   102: istore 5
    //   104: aload 4
    //   106: ifnonnull +70 -> 176
    //   109: aconst_null
    //   110: astore_1
    //   111: goto -68 -> 43
    //   114: aload 4
    //   116: aload 4
    //   118: ldc 8
    //   120: invokeinterface 130 2 0
    //   125: invokeinterface 134 2 0
    //   130: astore 6
    //   132: aload_1
    //   133: iload 5
    //   135: new 136	org/json/JSONObject
    //   138: dup
    //   139: aload 6
    //   141: invokespecial 137	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   144: invokevirtual 141	org/json/JSONArray:put	(ILjava/lang/Object;)Lorg/json/JSONArray;
    //   147: pop
    //   148: getstatic 38	com/ja/sdk/db/ExceptionTable:JsonArray_ID	Lorg/json/JSONArray;
    //   151: iload 5
    //   153: aload 4
    //   155: aload 4
    //   157: ldc 25
    //   159: invokeinterface 130 2 0
    //   164: invokeinterface 145 2 0
    //   169: invokevirtual 148	org/json/JSONArray:put	(II)Lorg/json/JSONArray;
    //   172: pop
    //   173: iinc 5 1
    //   176: aload 4
    //   178: invokeinterface 152 1 0
    //   183: ifne -69 -> 114
    //   186: aload 4
    //   188: ifnull -145 -> 43
    //   191: aload 4
    //   193: invokeinterface 153 1 0
    //   198: goto -155 -> 43
    //   201: astore 7
    //   203: ldc 19
    //   205: aload 7
    //   207: invokestatic 157	com/ja/sdk/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   210: pop
    //   211: goto -35 -> 176
    //   214: astore_2
    //   215: ldc 2
    //   217: monitorexit
    //   218: aload_2
    //   219: athrow
    //   220: astore 12
    //   222: goto -191 -> 31
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	225	0	paramContext	Context
    //   10	123	1	localJSONArray	JSONArray
    //   214	5	2	localObject	Object
    //   99	93	4	localCursor	android.database.Cursor
    //   102	72	5	i	int
    //   130	10	6	str	String
    //   201	5	7	localJSONException	org.json.JSONException
    //   220	1	12	localInterruptedException	java.lang.InterruptedException
    //   34	3	13	localSQLiteDatabase	SQLiteDatabase
    // Exception table:
    //   from	to	target	type
    //   132	173	201	org/json/JSONException
    //   3	25	214	finally
    //   25	31	214	finally
    //   31	36	214	finally
    //   48	55	214	finally
    //   55	101	214	finally
    //   114	132	214	finally
    //   132	173	214	finally
    //   176	186	214	finally
    //   191	198	214	finally
    //   203	211	214	finally
    //   25	31	220	java/lang/InterruptedException
  }
  
  public static JSONArray getIdIndexArray()
  {
    return JsonArray_ID;
  }
  
  /* Error */
  public static void insertExceptionDataItem(Context paramContext, org.json.JSONObject paramJSONObject)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: ldc 19
    //   5: ldc 163
    //   7: invokestatic 49	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   10: pop
    //   11: aload_1
    //   12: ifnonnull +7 -> 19
    //   15: ldc 2
    //   17: monitorexit
    //   18: return
    //   19: new 165	android/content/ContentValues
    //   22: dup
    //   23: invokespecial 166	android/content/ContentValues:<init>	()V
    //   26: astore 4
    //   28: aload 4
    //   30: ldc 8
    //   32: aload_1
    //   33: invokevirtual 167	org/json/JSONObject:toString	()Ljava/lang/String;
    //   36: invokevirtual 170	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   39: aload 4
    //   41: ldc 13
    //   43: invokestatic 176	com/ja/sdk/exception/ExceptionData:getSingleInstance	()Lcom/ja/sdk/exception/ExceptionData;
    //   46: invokevirtual 179	com/ja/sdk/exception/ExceptionData:getSendDate	()Ljava/lang/String;
    //   49: invokevirtual 170	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   52: aload 4
    //   54: ldc 16
    //   56: invokestatic 176	com/ja/sdk/exception/ExceptionData:getSingleInstance	()Lcom/ja/sdk/exception/ExceptionData;
    //   59: invokevirtual 183	com/ja/sdk/exception/ExceptionData:getSendFalseFlag	()I
    //   62: invokestatic 189	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   65: invokevirtual 192	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   68: getstatic 31	com/ja/sdk/db/ExceptionTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   71: ifnonnull +18 -> 89
    //   74: ldc 19
    //   76: ldc 194
    //   78: invokestatic 49	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   81: pop
    //   82: aload_0
    //   83: invokestatic 77	com/ja/sdk/db/DatabaseHelper:getDatabase	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   86: putstatic 31	com/ja/sdk/db/ExceptionTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   89: ldc 19
    //   91: new 58	java/lang/StringBuilder
    //   94: dup
    //   95: ldc 196
    //   97: invokespecial 63	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   100: getstatic 31	com/ja/sdk/db/ExceptionTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   103: invokevirtual 113	android/database/sqlite/SQLiteDatabase:toString	()Ljava/lang/String;
    //   106: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   109: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   112: invokestatic 49	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   115: pop
    //   116: getstatic 31	com/ja/sdk/db/ExceptionTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   119: ldc 22
    //   121: aconst_null
    //   122: aload 4
    //   124: invokevirtual 200	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   127: pop2
    //   128: ldc 19
    //   130: new 58	java/lang/StringBuilder
    //   133: dup
    //   134: ldc 202
    //   136: invokespecial 63	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   139: aload_1
    //   140: invokevirtual 167	org/json/JSONObject:toString	()Ljava/lang/String;
    //   143: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   149: invokestatic 49	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   152: pop
    //   153: goto -138 -> 15
    //   156: astore_2
    //   157: ldc 2
    //   159: monitorexit
    //   160: aload_2
    //   161: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	162	0	paramContext	Context
    //   0	162	1	paramJSONObject	org.json.JSONObject
    //   156	5	2	localObject	Object
    //   26	97	4	localContentValues	ContentValues
    // Exception table:
    //   from	to	target	type
    //   3	11	156	finally
    //   19	89	156	finally
    //   89	153	156	finally
  }
  
  public static void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    LogUtil.logD("ExceptionTable", " create exception_data_info Table=> ");
    paramSQLiteDatabase.execSQL("create table exception_data_info" + " ( _id INTEGER PRIMARY KEY AUTOINCREMENT, exception_data TEXT, send_date TEXT, send_flag TINYINT)");
  }
  
  public static void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    LogUtil.logD("ExceptionTable", " onUpgrade=> ");
    paramSQLiteDatabase.execSQL("drop table if exists exception_data_info");
    onCreate(paramSQLiteDatabase);
  }
  
  /* Error */
  public static SQLiteDatabase openSQLiteDatabase(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: ldc 19
    //   5: ldc 221
    //   7: invokestatic 49	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   10: pop
    //   11: getstatic 31	com/ja/sdk/db/ExceptionTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   14: ifnull +22 -> 36
    //   17: ldc 19
    //   19: ldc 223
    //   21: invokestatic 49	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   24: pop
    //   25: getstatic 31	com/ja/sdk/db/ExceptionTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   28: astore 4
    //   30: ldc 2
    //   32: monitorexit
    //   33: aload 4
    //   35: areturn
    //   36: aload_0
    //   37: invokestatic 77	com/ja/sdk/db/DatabaseHelper:getDatabase	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   40: putstatic 31	com/ja/sdk/db/ExceptionTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   43: getstatic 31	com/ja/sdk/db/ExceptionTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   46: ifnonnull +17 -> 63
    //   49: ldc 19
    //   51: ldc 225
    //   53: invokestatic 49	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   56: pop
    //   57: aconst_null
    //   58: astore 4
    //   60: goto -30 -> 30
    //   63: ldc 19
    //   65: ldc 227
    //   67: invokestatic 49	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   70: pop
    //   71: getstatic 31	com/ja/sdk/db/ExceptionTable:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   74: astore 4
    //   76: goto -46 -> 30
    //   79: astore_1
    //   80: ldc 2
    //   82: monitorexit
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	paramContext	Context
    //   79	5	1	localObject	Object
    //   28	47	4	localSQLiteDatabase	SQLiteDatabase
    // Exception table:
    //   from	to	target	type
    //   3	30	79	finally
    //   36	57	79	finally
    //   63	76	79	finally
  }
  
  public static void updateExceptionDataSendFlagItem(Context paramContext, Integer paramInteger)
  {
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("send_flag", Integer.valueOf(ExceptionData.getSingleInstance().getSendOkFlag()));
      if (mDb == null)
      {
        LogUtil.logD("ExceptionTable", " updateExceptionDataSendFlagItem, mDb == null ");
        mDb = DatabaseHelper.getDatabase(paramContext);
      }
      LogUtil.logD("ExceptionTable", " updateExceptionDataSendFlagItem, mDb =:  " + mDb.toString());
      SQLiteDatabase localSQLiteDatabase = mDb;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = paramInteger.toString();
      localSQLiteDatabase.update("exception_data_info", localContentValues, "_id= ? ", arrayOfString);
      LogUtil.logD("ExceptionTable", "Update the number:" + paramInteger + ",exception item to database!");
      return;
    }
    finally {}
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.sdk.db.ExceptionTable
 * JD-Core Version:    0.7.0.1
 */