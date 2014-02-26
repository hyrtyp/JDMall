package com.jingdong.common.database.table;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.jingdong.common.entity.CacheFile;
import com.jingdong.common.utils.DBHelperUtil;
import com.jingdong.common.utils.FileService.Directory;
import com.jingdong.common.utils.FormatUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;

public class CacheFileTable
{
  public static final String TABLE_NAME = "cache_file";
  public static final String TB_COLUMN_CLEAN_TIME = "clean_time";
  public static final String TB_COLUMN_DIR_PATH = "dir_path";
  public static final String TB_COLUMN_DIR_SPACE = "dir_space";
  public static final String TB_COLUMN_FIRST_NAME = "first_name";
  public static final String TB_COLUMN_LAST_NAME = "last_name";
  
  public static void create(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE cache_file('id' INTEGER PRIMARY KEY  NOT NULL ,first_name TEXT,last_name TEXT,clean_time DATETIME DEFAULT CURRENT_TIMESTAMP,dir_path TEXT,dir_space INTEGER)");
    paramSQLiteDatabase.execSQL("CREATE INDEX clean_time_index ON cache_file(clean_time)");
    paramSQLiteDatabase.execSQL("CREATE INDEX name_index ON cache_file(first_name, last_name)");
  }
  
  /* Error */
  public static void delete(CacheFile paramCacheFile)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: invokestatic 51	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   6: astore 4
    //   8: iconst_2
    //   9: anewarray 53	java/lang/String
    //   12: astore 5
    //   14: aload 5
    //   16: iconst_0
    //   17: aload_0
    //   18: invokevirtual 59	com/jingdong/common/entity/CacheFile:getFirstName	()Ljava/lang/String;
    //   21: aastore
    //   22: aload 5
    //   24: iconst_1
    //   25: aload_0
    //   26: invokevirtual 62	com/jingdong/common/entity/CacheFile:getLastName	()Ljava/lang/String;
    //   29: aastore
    //   30: aload 4
    //   32: ldc 8
    //   34: ldc 64
    //   36: aload 5
    //   38: invokevirtual 67	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   41: pop
    //   42: invokestatic 70	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   45: ldc 2
    //   47: monitorexit
    //   48: return
    //   49: astore_3
    //   50: invokestatic 70	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   53: goto -8 -> 45
    //   56: astore_2
    //   57: ldc 2
    //   59: monitorexit
    //   60: aload_2
    //   61: athrow
    //   62: astore_1
    //   63: invokestatic 70	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   66: aload_1
    //   67: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	68	0	paramCacheFile	CacheFile
    //   62	5	1	localObject1	Object
    //   56	5	2	localObject2	Object
    //   49	1	3	localException	Exception
    //   6	25	4	localSQLiteDatabase	SQLiteDatabase
    //   12	25	5	arrayOfString	String[]
    // Exception table:
    //   from	to	target	type
    //   3	42	49	java/lang/Exception
    //   42	45	56	finally
    //   50	53	56	finally
    //   63	68	56	finally
    //   3	42	62	finally
  }
  
  public static ArrayList<CacheFile> getListByClean()
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = null;
    try
    {
      SQLiteDatabase localSQLiteDatabase = DBHelperUtil.getDatabase();
      String[] arrayOfString1 = { "first_name", "last_name", "clean_time", "dir_path", "dir_space" };
      String[] arrayOfString2 = new String[1];
      arrayOfString2[0] = FormatUtils.formatDate(new Date());
      localCursor = localSQLiteDatabase.query("cache_file", arrayOfString1, "clean_time < ?", arrayOfString2, null, null, null);
      if ((localCursor != null) && (localCursor.moveToFirst()))
      {
        boolean bool;
        do
        {
          CacheFile localCacheFile = new CacheFile();
          localCacheFile.setFirstName(localCursor.getString(localCursor.getColumnIndex("first_name")));
          localCacheFile.setLastName(localCursor.getString(localCursor.getColumnIndex("last_name")));
          localCacheFile.setCleanTime(FormatUtils.parseDate(localCursor.getString(localCursor.getColumnIndex("clean_time"))));
          localCacheFile.setDirectory(new FileService.Directory(localCursor.getString(localCursor.getColumnIndex("dir_path")), localCursor.getInt(localCursor.getColumnIndex("dir_space"))));
          localArrayList.add(localCacheFile);
          bool = localCursor.moveToNext();
        } while (bool);
      }
      return localArrayList;
    }
    catch (Exception localException)
    {
      return localArrayList;
    }
    finally
    {
      if ((localCursor != null) && (!localCursor.isClosed())) {
        localCursor.close();
      }
      DBHelperUtil.closeDatabase();
    }
  }
  
  public static void insertOrUpdate(CacheFile paramCacheFile)
  {
    localCursor = null;
    for (;;)
    {
      try
      {
        localSQLiteDatabase = DBHelperUtil.getDatabase();
        localContentValues = new ContentValues();
        localContentValues.put("first_name", paramCacheFile.getFirstName());
        localContentValues.put("last_name", paramCacheFile.getLastName());
        localContentValues.put("clean_time", FormatUtils.formatDate(paramCacheFile.getCleanTime()));
        FileService.Directory localDirectory = paramCacheFile.getDirectory();
        localContentValues.put("dir_path", localDirectory.getPath());
        localContentValues.put("dir_space", Integer.valueOf(localDirectory.getSpace()));
        String[] arrayOfString = new String[2];
        arrayOfString[0] = paramCacheFile.getFirstName();
        arrayOfString[1] = paramCacheFile.getLastName();
        localCursor = localSQLiteDatabase.query("cache_file", null, "first_name = ? AND last_name = ?", arrayOfString, null, null, null);
        if ((localCursor != null) && (localCursor.getCount() > 0))
        {
          localSQLiteDatabase.update("cache_file", localContentValues, "first_name = ? AND last_name = ?", arrayOfString);
          if (localCursor == null) {}
        }
      }
      catch (Exception localException)
      {
        SQLiteDatabase localSQLiteDatabase;
        ContentValues localContentValues;
        if ((localCursor != null) && (!localCursor.isClosed())) {
          localCursor.close();
        }
        DBHelperUtil.closeDatabase();
        continue;
      }
      finally
      {
        if ((localCursor == null) || (localCursor.isClosed())) {
          continue;
        }
        localCursor.close();
        DBHelperUtil.closeDatabase();
      }
      try
      {
        if (!localCursor.isClosed()) {
          localCursor.close();
        }
        DBHelperUtil.closeDatabase();
        return;
      }
      finally {}
      localSQLiteDatabase.insert("cache_file", null, localContentValues);
    }
  }
  
  public static boolean isExpired(File paramFile)
  {
    boolean bool = true;
    CacheFile localCacheFile = new CacheFile(paramFile);
    Cursor localCursor = null;
    try
    {
      SQLiteDatabase localSQLiteDatabase = DBHelperUtil.getDatabase();
      String[] arrayOfString = new String[2];
      arrayOfString[0] = localCacheFile.getFirstName();
      arrayOfString[1] = localCacheFile.getLastName();
      localCursor = localSQLiteDatabase.query("cache_file", null, "first_name = ? AND last_name = ?", arrayOfString, null, null, null);
      if ((localCursor != null) && (localCursor.getCount() > 0) && (localCursor.moveToFirst()))
      {
        long l1 = FormatUtils.parseDate(localCursor.getString(localCursor.getColumnIndex("clean_time"))).getTime();
        long l2 = new Date().getTime();
        if (l1 > l2) {
          bool = false;
        }
      }
      return bool;
    }
    catch (Exception localException)
    {
      return bool;
    }
    finally
    {
      if ((localCursor != null) && (!localCursor.isClosed())) {
        localCursor.close();
      }
      DBHelperUtil.closeDatabase();
    }
  }
  
  public static void upgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    paramSQLiteDatabase.execSQL("drop index if exists clean_time_index");
    paramSQLiteDatabase.execSQL("drop index if exists name_index");
    paramSQLiteDatabase.execSQL("drop table if exists cache_file");
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.database.table.CacheFileTable
 * JD-Core Version:    0.7.0.1
 */