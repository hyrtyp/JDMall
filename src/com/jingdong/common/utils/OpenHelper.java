package com.jingdong.common.utils;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;
import com.jingdong.common.database.table.CacheFileTable;
import com.jingdong.common.database.table.CommAddrTable;
import com.jingdong.common.database.table.DB_CartTable;
import com.jingdong.common.database.table.DB_PacksTable;
import com.jingdong.common.database.table.FavorityTable;
import com.jingdong.common.database.table.HistoryTable;
import com.jingdong.common.database.table.MS_AlarmTable;
import com.jingdong.common.database.table.PushMessageTable;
import com.jingdong.common.database.table.ScanCodeTable;
import com.jingdong.common.database.table.SearchHistoryTable;
import com.jingdong.common.database.table.UnExcuteFunctionTable;
import com.jingdong.common.database.table.UserNamesTable;

class OpenHelper
  extends SQLiteOpenHelper
{
  public OpenHelper(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt)
  {
    super(paramContext, paramString, paramCursorFactory, paramInt);
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    HistoryTable.create(paramSQLiteDatabase);
    DB_CartTable.create(paramSQLiteDatabase);
    DB_PacksTable.create(paramSQLiteDatabase);
    CommAddrTable.create(paramSQLiteDatabase);
    ScanCodeTable.create(paramSQLiteDatabase);
    CacheFileTable.create(paramSQLiteDatabase);
    SearchHistoryTable.create(paramSQLiteDatabase);
    UnExcuteFunctionTable.create(paramSQLiteDatabase);
    PushMessageTable.create(paramSQLiteDatabase);
    UserNamesTable.create(paramSQLiteDatabase);
    MS_AlarmTable.create(paramSQLiteDatabase);
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    if (paramInt1 < paramInt2)
    {
      CacheFileTable.upgrade(paramSQLiteDatabase, paramInt1, paramInt2);
      HistoryTable.upgrade(paramSQLiteDatabase);
      DB_CartTable.upgrade(paramSQLiteDatabase);
      DB_PacksTable.upgrade(paramSQLiteDatabase);
      FavorityTable.upgrade(paramSQLiteDatabase);
      CommAddrTable.upgrade(paramSQLiteDatabase);
      ScanCodeTable.upgrade(paramSQLiteDatabase);
      SearchHistoryTable.upgrade(paramSQLiteDatabase);
      PushMessageTable.upgrade(paramSQLiteDatabase);
      UserNamesTable.upgrade(paramSQLiteDatabase);
      UnExcuteFunctionTable.upgrade(paramSQLiteDatabase);
      MS_AlarmTable.upgrade(paramSQLiteDatabase);
      onCreate(paramSQLiteDatabase);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.OpenHelper
 * JD-Core Version:    0.7.0.1
 */