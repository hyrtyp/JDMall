package com.ja.analytics.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.ja.analytics.utils.LogUtil;

public class DatabaseHelper
  extends SQLiteOpenHelper
{
  public static final String DB_NAME = "__ja_sdk.db";
  public static final int DB_VERSION_CODE = 2;
  public static final String TAG = DatabaseHelper.class.getName();
  private static DatabaseHelper helper;
  
  private DatabaseHelper(Context paramContext, int paramInt)
  {
    super(paramContext, "__ja_sdk.db", null, paramInt);
    LogUtil.logD(TAG, " JaSdkDatabaseHelper=> ");
  }
  
  /* Error */
  public static SQLiteDatabase getDatabase(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 24	com/ja/analytics/db/DatabaseHelper:TAG	Ljava/lang/String;
    //   6: new 43	java/lang/StringBuilder
    //   9: dup
    //   10: ldc 45
    //   12: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   15: aload_0
    //   16: invokevirtual 53	java/lang/Object:toString	()Ljava/lang/String;
    //   19: invokevirtual 57	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   25: invokestatic 37	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   28: pop
    //   29: getstatic 60	com/ja/analytics/db/DatabaseHelper:helper	Lcom/ja/analytics/db/DatabaseHelper;
    //   32: ifnonnull +12 -> 44
    //   35: getstatic 24	com/ja/analytics/db/DatabaseHelper:TAG	Ljava/lang/String;
    //   38: ldc 62
    //   40: invokestatic 37	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   43: pop
    //   44: new 2	com/ja/analytics/db/DatabaseHelper
    //   47: dup
    //   48: aload_0
    //   49: iconst_2
    //   50: invokespecial 64	com/ja/analytics/db/DatabaseHelper:<init>	(Landroid/content/Context;I)V
    //   53: putstatic 60	com/ja/analytics/db/DatabaseHelper:helper	Lcom/ja/analytics/db/DatabaseHelper;
    //   56: getstatic 60	com/ja/analytics/db/DatabaseHelper:helper	Lcom/ja/analytics/db/DatabaseHelper;
    //   59: invokevirtual 68	com/ja/analytics/db/DatabaseHelper:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   62: astore 8
    //   64: getstatic 24	com/ja/analytics/db/DatabaseHelper:TAG	Ljava/lang/String;
    //   67: ldc 70
    //   69: invokestatic 37	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   72: pop
    //   73: ldc 2
    //   75: monitorexit
    //   76: aload 8
    //   78: areturn
    //   79: astore_3
    //   80: getstatic 24	com/ja/analytics/db/DatabaseHelper:TAG	Ljava/lang/String;
    //   83: aload_3
    //   84: invokestatic 74	com/ja/analytics/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   87: pop
    //   88: aload_0
    //   89: ldc 8
    //   91: invokevirtual 80	android/content/Context:deleteDatabase	(Ljava/lang/String;)Z
    //   94: pop
    //   95: getstatic 60	com/ja/analytics/db/DatabaseHelper:helper	Lcom/ja/analytics/db/DatabaseHelper;
    //   98: invokevirtual 83	com/ja/analytics/db/DatabaseHelper:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   101: astore 6
    //   103: getstatic 24	com/ja/analytics/db/DatabaseHelper:TAG	Ljava/lang/String;
    //   106: ldc 85
    //   108: invokestatic 37	com/ja/analytics/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   111: pop
    //   112: aload 6
    //   114: astore 8
    //   116: goto -43 -> 73
    //   119: astore_1
    //   120: ldc 2
    //   122: monitorexit
    //   123: aload_1
    //   124: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	125	0	paramContext	Context
    //   119	5	1	localObject1	java.lang.Object
    //   79	5	3	localException	java.lang.Exception
    //   101	12	6	localSQLiteDatabase	SQLiteDatabase
    //   62	53	8	localObject2	java.lang.Object
    // Exception table:
    //   from	to	target	type
    //   56	73	79	java/lang/Exception
    //   3	44	119	finally
    //   44	56	119	finally
    //   56	73	119	finally
    //   80	112	119	finally
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    LogUtil.logD(TAG, " onCreate  =>");
    EventTable.onCreate(paramSQLiteDatabase);
    CrashTable.onCreate(paramSQLiteDatabase);
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    LogUtil.logD(TAG, " onUpgrade  =>");
    EventTable.onUpgrade(paramSQLiteDatabase, paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.analytics.db.DatabaseHelper
 * JD-Core Version:    0.7.0.1
 */