package com.jingdong.lib.zxing.client.android.history;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

final class DBHelper
  extends SQLiteOpenHelper
{
  private static final String DB_NAME = "barcode_scanner_history.db";
  private static final int DB_VERSION = 2;
  static final String DISPLAY_COL = "display";
  static final String FORMAT_COL = "format";
  static final String ID_COL = "id";
  static final String TABLE_NAME = "history";
  static final String TEXT_COL = "text";
  static final String TIMESTAMP_COL = "timestamp";
  
  DBHelper(Context paramContext)
  {
    super(paramContext, "barcode_scanner_history.db", null, 2);
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE history (id INTEGER PRIMARY KEY, text TEXT, format TEXT, display TEXT, timestamp INTEGER);");
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS history");
    onCreate(paramSQLiteDatabase);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.history.DBHelper
 * JD-Core Version:    0.7.0.1
 */