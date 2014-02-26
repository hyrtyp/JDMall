package com.jingdong.common.database.table;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.utils.DBHelperUtil;
import com.jingdong.common.utils.FormatUtils;
import java.util.Date;

public class FavorityTable
{
  public static final String TB_CLOUMN_BROWSE_TIME = "browseTime";
  public static final String TB_CLOUMN_PRODUCT_CODE = "productCode";
  public static final String TB_CLOUMN_PRODUCT_NAME = "productName";
  public static final String TB_CLOUMN_USER_NAME = "userName";
  public static final String TB_FAVORITY_TABLE = "favority";
  
  public static void create(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE favority('id' INTEGER PRIMARY KEY  NOT NULL ,productName TEXT,productCode LONG,userName TEXT,'browseTime' DATETIME DEFAULT CURRENT_TIMESTAMP)");
  }
  
  /* Error */
  public static void delAllFavority()
  {
    // Byte code:
    //   0: invokestatic 43	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   3: ldc 20
    //   5: ldc 45
    //   7: aconst_null
    //   8: invokevirtual 49	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   11: pop
    //   12: invokestatic 52	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   15: return
    //   16: astore_1
    //   17: invokestatic 52	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   20: return
    //   21: astore_0
    //   22: invokestatic 52	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   25: aload_0
    //   26: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   21	5	0	localObject	Object
    //   16	1	1	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   0	12	16	java/lang/Exception
    //   0	12	21	finally
  }
  
  public static void insertOrUpdateFavority(long paramLong, String paramString, boolean paramBoolean)
  {
    localCursor = null;
    for (;;)
    {
      try
      {
        localSQLiteDatabase = DBHelperUtil.getDatabase();
        localContentValues = new ContentValues();
        arrayOfString = new String[1];
        arrayOfString[0] = paramLong;
        localContentValues.put("userName", LoginUserBase.getLoginUserName());
        if (paramBoolean)
        {
          localSQLiteDatabase.delete("favority", "productCode =?", arrayOfString);
          if (0 == 0) {}
        }
      }
      catch (Exception localException)
      {
        SQLiteDatabase localSQLiteDatabase;
        ContentValues localContentValues;
        String[] arrayOfString;
        if (localCursor == null) {
          continue;
        }
        localCursor.close();
        DBHelperUtil.closeDatabase();
        continue;
      }
      finally
      {
        if (localCursor == null) {
          continue;
        }
        localCursor.close();
        DBHelperUtil.closeDatabase();
      }
      try
      {
        null.close();
        DBHelperUtil.closeDatabase();
        return;
      }
      finally {}
    }
    localCursor = localSQLiteDatabase.query("favority", null, "productCode =?", arrayOfString, null, null, null);
    if ((localCursor != null) && (localCursor.getCount() != 0))
    {
      localContentValues.put("browseTime", FormatUtils.formatDate(new Date()));
      localSQLiteDatabase.update("favority", localContentValues, "productCode =?", arrayOfString);
    }
    for (;;)
    {
      if (localCursor != null) {
        localCursor.close();
      }
      DBHelperUtil.closeDatabase();
      break;
      localContentValues.put("productCode", Long.valueOf(paramLong));
      localContentValues.put("productName", paramString);
      localSQLiteDatabase.insert("favority", null, localContentValues);
    }
  }
  
  public static boolean queryIsFavorited(long paramLong)
  {
    Cursor localCursor = null;
    try
    {
      SQLiteDatabase localSQLiteDatabase = DBHelperUtil.getDatabase();
      String[] arrayOfString = new String[2];
      arrayOfString[0] = paramLong;
      arrayOfString[1] = LoginUserBase.getLoginUserName();
      localCursor = localSQLiteDatabase.query("favority", null, "productCode =? and userName =?", arrayOfString, null, null, null);
      if (localCursor != null)
      {
        int i = localCursor.getCount();
        if (i != 0) {
          return true;
        }
      }
      return false;
    }
    catch (Exception localException)
    {
      return false;
    }
    finally
    {
      if ((localCursor != null) && (!localCursor.isClosed())) {
        localCursor.close();
      }
      DBHelperUtil.closeDatabase();
    }
  }
  
  public static void upgrade(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("drop table if exists favority");
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.database.table.FavorityTable
 * JD-Core Version:    0.7.0.1
 */