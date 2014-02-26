package com.ja.sdk.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.ja.sdk.utils.LogUtil;

public class DatabaseHelper
  extends SQLiteOpenHelper
{
  public static final String DB_NAME = "__ja_sdk.db";
  public static final int DB_VERSION_CODE = 2;
  public static final String TAG = "DatabaseHelper";
  private static DatabaseHelper helper;
  
  private DatabaseHelper(Context paramContext, int paramInt)
  {
    super(paramContext, "__ja_sdk.db", null, paramInt);
    LogUtil.logD("DatabaseHelper", " JaSdkDatabaseHelper=> ");
  }
  
  /* Error */
  public static SQLiteDatabase getDatabase(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: ldc 14
    //   5: new 35	java/lang/StringBuilder
    //   8: dup
    //   9: ldc 37
    //   11: invokespecial 40	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: invokevirtual 46	java/lang/Object:toString	()Ljava/lang/String;
    //   18: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   21: invokevirtual 51	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   24: invokestatic 29	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   27: pop
    //   28: getstatic 53	com/ja/sdk/db/DatabaseHelper:helper	Lcom/ja/sdk/db/DatabaseHelper;
    //   31: ifnonnull +11 -> 42
    //   34: ldc 14
    //   36: ldc 55
    //   38: invokestatic 29	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   41: pop
    //   42: new 2	com/ja/sdk/db/DatabaseHelper
    //   45: dup
    //   46: aload_0
    //   47: iconst_2
    //   48: invokespecial 57	com/ja/sdk/db/DatabaseHelper:<init>	(Landroid/content/Context;I)V
    //   51: putstatic 53	com/ja/sdk/db/DatabaseHelper:helper	Lcom/ja/sdk/db/DatabaseHelper;
    //   54: getstatic 53	com/ja/sdk/db/DatabaseHelper:helper	Lcom/ja/sdk/db/DatabaseHelper;
    //   57: invokevirtual 61	com/ja/sdk/db/DatabaseHelper:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   60: astore 8
    //   62: ldc 14
    //   64: ldc 63
    //   66: invokestatic 29	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   69: pop
    //   70: ldc 2
    //   72: monitorexit
    //   73: aload 8
    //   75: areturn
    //   76: astore_3
    //   77: ldc 14
    //   79: aload_3
    //   80: invokestatic 67	com/ja/sdk/utils/LogUtil:logException	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   83: pop
    //   84: aload_0
    //   85: ldc 8
    //   87: invokevirtual 73	android/content/Context:deleteDatabase	(Ljava/lang/String;)Z
    //   90: pop
    //   91: getstatic 53	com/ja/sdk/db/DatabaseHelper:helper	Lcom/ja/sdk/db/DatabaseHelper;
    //   94: invokevirtual 76	com/ja/sdk/db/DatabaseHelper:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   97: astore 6
    //   99: ldc 14
    //   101: ldc 78
    //   103: invokestatic 29	com/ja/sdk/utils/LogUtil:logD	(Ljava/lang/String;Ljava/lang/String;)I
    //   106: pop
    //   107: aload 6
    //   109: astore 8
    //   111: goto -41 -> 70
    //   114: astore_1
    //   115: ldc 2
    //   117: monitorexit
    //   118: aload_1
    //   119: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	120	0	paramContext	Context
    //   114	5	1	localObject1	java.lang.Object
    //   76	4	3	localException	java.lang.Exception
    //   97	11	6	localSQLiteDatabase	SQLiteDatabase
    //   60	50	8	localObject2	java.lang.Object
    // Exception table:
    //   from	to	target	type
    //   54	70	76	java/lang/Exception
    //   3	42	114	finally
    //   42	54	114	finally
    //   54	70	114	finally
    //   77	107	114	finally
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    LogUtil.logD("DatabaseHelper", " onCreate  =>");
    PageAccessTable.onCreate(paramSQLiteDatabase);
    ExceptionTable.onCreate(paramSQLiteDatabase);
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    LogUtil.logD("DatabaseHelper", " onUpgrade  =>");
    PageAccessTable.onUpgrade(paramSQLiteDatabase, paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.sdk.db.DatabaseHelper
 * JD-Core Version:    0.7.0.1
 */