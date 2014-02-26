package com.jingdong.common.database.table;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.jingdong.common.entity.SearchHistory;
import com.jingdong.common.utils.DBHelperUtil;
import java.util.ArrayList;

public class SearchHistoryTable
{
  public static final int MAX_SEARCH_HISTORY_NUM = 20;
  public static final String TABLE_NAME = "search_history";
  private static final String TAG = "SearchHistoryTable";
  public static final String TB_COLUMN_ID = "_id";
  public static final String TB_COLUMN_SEARCH_TIME = "search_time";
  public static final String TB_COLUMN_WORD = "word";
  
  private static void addHistory(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("search_time", Long.valueOf(System.currentTimeMillis()));
    localContentValues.put("word", paramString);
    paramSQLiteDatabase.insert("search_history", null, localContentValues);
  }
  
  public static void create(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE search_history('_id' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,word TEXT,search_time DATETIME DEFAULT CURRENT_TIMESTAMP)");
  }
  
  public static void deleteAllHistory()
  {
    try
    {
      DBHelperUtil.getDatabase().delete("search_history", null, null);
      return;
    }
    catch (Exception localException) {}
  }
  
  private static void deleteHistory(SQLiteDatabase paramSQLiteDatabase, int paramInt)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = paramInt;
    paramSQLiteDatabase.delete("search_history", "_id = ?", arrayOfString);
  }
  
  private static void deleteOlderSearchHistory(SQLiteDatabase paramSQLiteDatabase)
  {
    ArrayList localArrayList = getAllSearchHistory(paramSQLiteDatabase);
    int i = 1 + (-20 + localArrayList.size());
    if ((localArrayList == null) || (localArrayList.size() < 1) || (i < 1)) {}
    for (;;)
    {
      return;
      int j = 0;
      for (int k = -1 + localArrayList.size(); (k >= 0) && (j < i); k--)
      {
        SearchHistory localSearchHistory = (SearchHistory)localArrayList.get(k);
        if (localSearchHistory != null)
        {
          deleteHistory(paramSQLiteDatabase, localSearchHistory.getId());
          j++;
        }
      }
    }
  }
  
  /* Error */
  public static ArrayList<SearchHistory> getAllSearchHistory()
  {
    // Byte code:
    //   0: invokestatic 74	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   3: invokestatic 100	com/jingdong/common/database/table/SearchHistoryTable:getAllSearchHistory	(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    //   6: astore_2
    //   7: invokestatic 121	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   10: aload_2
    //   11: areturn
    //   12: astore_1
    //   13: invokestatic 121	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   16: aconst_null
    //   17: areturn
    //   18: astore_0
    //   19: invokestatic 121	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   22: aload_0
    //   23: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   18	5	0	localObject	Object
    //   12	1	1	localException	Exception
    //   6	5	2	localArrayList	ArrayList
    // Exception table:
    //   from	to	target	type
    //   0	7	12	java/lang/Exception
    //   0	7	18	finally
  }
  
  /* Error */
  private static ArrayList<SearchHistory> getAllSearchHistory(SQLiteDatabase paramSQLiteDatabase)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc 11
    //   3: aconst_null
    //   4: aconst_null
    //   5: aconst_null
    //   6: aconst_null
    //   7: aconst_null
    //   8: ldc 123
    //   10: invokevirtual 127	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   13: astore_2
    //   14: new 102	java/util/ArrayList
    //   17: dup
    //   18: invokespecial 128	java/util/ArrayList:<init>	()V
    //   21: astore_3
    //   22: aload_2
    //   23: invokeinterface 134 1 0
    //   28: ifne +5 -> 33
    //   31: aload_3
    //   32: areturn
    //   33: aload_3
    //   34: new 112	com/jingdong/common/entity/SearchHistory
    //   37: dup
    //   38: aload_2
    //   39: aload_2
    //   40: ldc 17
    //   42: invokeinterface 138 2 0
    //   47: invokeinterface 142 2 0
    //   52: aload_2
    //   53: aload_2
    //   54: ldc 23
    //   56: invokeinterface 138 2 0
    //   61: invokeinterface 145 2 0
    //   66: aload_2
    //   67: aload_2
    //   68: ldc 20
    //   70: invokeinterface 138 2 0
    //   75: invokeinterface 149 2 0
    //   80: invokespecial 152	com/jingdong/common/entity/SearchHistory:<init>	(ILjava/lang/String;J)V
    //   83: invokevirtual 156	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   86: pop
    //   87: goto -65 -> 22
    //   90: astore 4
    //   92: aload_3
    //   93: areturn
    //   94: astore_1
    //   95: aconst_null
    //   96: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	97	0	paramSQLiteDatabase	SQLiteDatabase
    //   94	1	1	localException1	Exception
    //   13	55	2	localCursor	Cursor
    //   21	72	3	localArrayList	ArrayList
    //   90	1	4	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   22	31	90	java/lang/Exception
    //   33	87	90	java/lang/Exception
    //   0	22	94	java/lang/Exception
  }
  
  private static SearchHistory getSearchHistoryFromText(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    SearchHistory localSearchHistory;
    if (TextUtils.isEmpty(paramString))
    {
      localSearchHistory = null;
      return localSearchHistory;
    }
    String str = paramString.trim();
    Cursor localCursor = null;
    for (;;)
    {
      try
      {
        localCursor = paramSQLiteDatabase.query("search_history", new String[] { "_id", "search_time", "word" }, "word = ? ", new String[] { str }, null, null, null);
        if ((localCursor != null) && (localCursor.moveToFirst()))
        {
          localSearchHistory = new SearchHistory(localCursor.getInt(localCursor.getColumnIndex("_id")), localCursor.getString(localCursor.getColumnIndex("word")), localCursor.getLong(localCursor.getColumnIndex("search_time")));
          return localSearchHistory;
        }
      }
      catch (Exception localException)
      {
        return null;
      }
      finally
      {
        if ((localCursor != null) && (!localCursor.isClosed())) {
          localCursor.close();
        }
      }
      if ((localCursor != null) && (!localCursor.isClosed())) {
        localCursor.close();
      }
    }
  }
  
  public static void saveSearchHistory(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    String str = paramString.trim();
    for (;;)
    {
      try
      {
        SQLiteDatabase localSQLiteDatabase = DBHelperUtil.getDatabase();
        SearchHistory localSearchHistory = getSearchHistoryFromText(localSQLiteDatabase, str);
        if (localSearchHistory == null) {}
        deleteHistory(localSQLiteDatabase, localSearchHistory.getId());
      }
      catch (Exception localException1)
      {
        try
        {
          deleteOlderSearchHistory(localSQLiteDatabase);
          addHistory(localSQLiteDatabase, str);
          return;
        }
        catch (Exception localException2)
        {
          return;
        }
        finally
        {
          DBHelperUtil.closeDatabase();
        }
        localException1 = localException1;
        return;
      }
    }
  }
  
  public static void upgrade(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("drop table if exists search_history");
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.database.table.SearchHistoryTable
 * JD-Core Version:    0.7.0.1
 */