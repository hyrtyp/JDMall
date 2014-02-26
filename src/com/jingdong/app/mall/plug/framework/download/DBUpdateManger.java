package com.jingdong.app.mall.plug.framework.download;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;

public class DBUpdateManger
{
  public static boolean tabbleIsExist(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    boolean bool1 = false;
    String str = paramString.trim();
    if (TextUtils.isEmpty(str)) {
      return false;
    }
    try
    {
      Cursor localCursor = paramSQLiteDatabase.rawQuery("select count(*) as c from Sqlite_master  where type ='table' and name ='" + str + "' ", null);
      boolean bool2 = localCursor.moveToNext();
      bool1 = false;
      if (bool2)
      {
        int i = localCursor.getInt(0);
        bool1 = false;
        if (i > 0) {
          bool1 = true;
        }
      }
      localCursor.close();
    }
    catch (Exception localException)
    {
      label86:
      break label86;
    }
    return bool1;
  }
  
  public static void updateTable(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2, String paramString1, String paramString2)
  {
    if (!tabbleIsExist(paramSQLiteDatabase, paramString1)) {
      paramSQLiteDatabase.execSQL(paramString2);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.plug.framework.download.DBUpdateManger
 * JD-Core Version:    0.7.0.1
 */