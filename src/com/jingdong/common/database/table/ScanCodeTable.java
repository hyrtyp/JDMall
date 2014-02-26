package com.jingdong.common.database.table;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.jingdong.common.entity.BarcodeRecord;
import com.jingdong.common.utils.DBHelperUtil;
import java.util.ArrayList;
import java.util.Iterator;

public class ScanCodeTable
{
  public static final String TABLE_NAME = "scan_code";
  public static final String TB_COLUMN_CODE = "code";
  public static final String TB_COLUMN_CREATE_TIME = "create_time";
  public static final String TB_COLUMN_PRODUCT_NAME = "product_name";
  
  public static void create(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE scan_code('id' INTEGER PRIMARY KEY  NOT NULL ,code TEXT,product_name TEXT,create_time DATETIME DEFAULT CURRENT_TIMESTAMP)");
  }
  
  /* Error */
  public static void delAllBarcodeRecord(android.content.Context paramContext)
  {
    // Byte code:
    //   0: invokestatic 41	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   3: ldc 8
    //   5: ldc 43
    //   7: aconst_null
    //   8: invokevirtual 47	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   11: pop
    //   12: invokestatic 50	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   15: return
    //   16: astore_2
    //   17: invokestatic 50	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   20: return
    //   21: astore_1
    //   22: invokestatic 50	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   25: aload_1
    //   26: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	27	0	paramContext	android.content.Context
    //   21	5	1	localObject	Object
    //   16	1	2	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   0	12	16	java/lang/Exception
    //   0	12	21	finally
  }
  
  /* Error */
  public static void delBarcodeRecord(BarcodeRecord paramBarcodeRecord)
  {
    // Byte code:
    //   0: invokestatic 41	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   3: astore_3
    //   4: iconst_1
    //   5: anewarray 54	java/lang/String
    //   8: astore 4
    //   10: aload 4
    //   12: iconst_0
    //   13: aload_0
    //   14: invokevirtual 60	com/jingdong/common/entity/BarcodeRecord:getContent	()Ljava/lang/String;
    //   17: aastore
    //   18: aload_3
    //   19: ldc 8
    //   21: ldc 62
    //   23: aload 4
    //   25: invokevirtual 47	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   28: pop
    //   29: invokestatic 50	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   32: return
    //   33: astore_2
    //   34: invokestatic 50	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   37: return
    //   38: astore_1
    //   39: invokestatic 50	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   42: aload_1
    //   43: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	44	0	paramBarcodeRecord	BarcodeRecord
    //   38	5	1	localObject	Object
    //   33	1	2	localException	Exception
    //   3	16	3	localSQLiteDatabase	SQLiteDatabase
    //   8	16	4	arrayOfString	String[]
    // Exception table:
    //   from	to	target	type
    //   0	29	33	java/lang/Exception
    //   0	29	38	finally
  }
  
  public static ArrayList<BarcodeRecord> getBarcodeRecordList()
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    Cursor localCursor = null;
    SQLiteDatabase localSQLiteDatabase = null;
    for (;;)
    {
      int j;
      try
      {
        localSQLiteDatabase = DBHelperUtil.getDatabase();
        localCursor = localSQLiteDatabase.query("scan_code", new String[] { "id", "code", "product_name" }, null, null, null, null, "create_time");
        localCursor.moveToFirst();
        if ((localCursor != null) && (localCursor.getCount() != 0))
        {
          i = localCursor.getCount();
          j = i - 1;
          if (j >= 0) {
            continue;
          }
        }
        if ((localCursor != null) && (!localCursor.isClosed())) {
          localCursor.close();
        }
        localIterator3 = localArrayList2.iterator();
      }
      catch (Exception localException)
      {
        int i;
        BarcodeRecord localBarcodeRecord;
        if ((localCursor == null) || (localCursor.isClosed())) {
          continue;
        }
        localCursor.close();
        Iterator localIterator2 = localArrayList2.iterator();
        if (localIterator2.hasNext()) {
          continue;
        }
        DBHelperUtil.closeDatabase();
        return localArrayList1;
        localSQLiteDatabase.delete("scan_code", "id=?", new String[] { (String)localIterator2.next() });
        continue;
      }
      finally
      {
        Iterator localIterator3;
        if ((localCursor == null) || (localCursor.isClosed())) {
          continue;
        }
        localCursor.close();
        Iterator localIterator1 = localArrayList2.iterator();
        if (localIterator1.hasNext()) {
          continue;
        }
        DBHelperUtil.closeDatabase();
        throw localObject;
        localSQLiteDatabase.delete("scan_code", "id=?", new String[] { (String)localIterator1.next() });
        continue;
        localSQLiteDatabase.delete("scan_code", "id=?", new String[] { (String)localIterator3.next() });
        continue;
      }
      if (!localIterator3.hasNext())
      {
        DBHelperUtil.closeDatabase();
        return localArrayList1;
        localCursor.moveToPosition(j);
        if (j < i - 50)
        {
          localArrayList2.add(localCursor.getInt(localCursor.getColumnIndex("id")));
        }
        else
        {
          localBarcodeRecord = new BarcodeRecord();
          localBarcodeRecord.setContent(localCursor.getString(localCursor.getColumnIndex("code")));
          localBarcodeRecord.setProductName(localCursor.getString(localCursor.getColumnIndex("product_name")));
          localArrayList1.add(localBarcodeRecord);
        }
      }
      j--;
    }
  }
  
  public static void insertOrUpdateBarcodeRecord(BarcodeRecord paramBarcodeRecord)
  {
    for (;;)
    {
      try
      {
        localSQLiteDatabase = DBHelperUtil.getDatabase();
        localContentValues = new ContentValues();
        localContentValues.put("code", paramBarcodeRecord.getContent());
        localContentValues.put("product_name", paramBarcodeRecord.getProductName());
        String[] arrayOfString = new String[1];
        arrayOfString[0] = paramBarcodeRecord.getContent();
        Cursor localCursor = localSQLiteDatabase.query("scan_code", null, "code=?", arrayOfString, null, null, null);
        if ((localCursor != null) && (localCursor.getCount() > 0)) {
          localSQLiteDatabase.update("scan_code", localContentValues, "code=?", arrayOfString);
        }
      }
      catch (Exception localException)
      {
        SQLiteDatabase localSQLiteDatabase;
        ContentValues localContentValues;
        DBHelperUtil.closeDatabase();
        continue;
      }
      finally
      {
        DBHelperUtil.closeDatabase();
      }
      try
      {
        DBHelperUtil.closeDatabase();
        return;
      }
      finally {}
      localSQLiteDatabase.insert("scan_code", null, localContentValues);
    }
  }
  
  public static void upgrade(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("drop table if exists scan_code");
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.database.table.ScanCodeTable
 * JD-Core Version:    0.7.0.1
 */