package com.jingdong.common.database.table;

import android.database.sqlite.SQLiteDatabase;

public class HistoryTable
{
  public static final String TB_CLOUMN_BROWSE_TIME = "browseTime";
  public static final String TB_CLOUMN_PRODUCT_CODE = "productCode";
  public static final String TB_CLOUMN_USER_NAME = "userName";
  public static final String TB_HISTORY_TABLE = "BrowseHistoryTable";
  
  public static void create(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE BrowseHistoryTable('id' INTEGER PRIMARY KEY  NOT NULL ,productCode LONG,userName TEXT,browseTime DATETIME DEFAULT CURRENT_TIMESTAMP)");
  }
  
  /* Error */
  public static void delAllHistory()
  {
    // Byte code:
    //   0: invokestatic 40	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   3: ldc 17
    //   5: ldc 42
    //   7: aconst_null
    //   8: invokevirtual 46	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   11: pop
    //   12: invokestatic 49	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   15: return
    //   16: astore_1
    //   17: invokestatic 49	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   20: return
    //   21: astore_0
    //   22: invokestatic 49	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   25: aload_0
    //   26: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   21	5	0	localObject	Object
    //   16	1	1	localException	java.lang.Exception
    // Exception table:
    //   from	to	target	type
    //   0	12	16	java/lang/Exception
    //   0	12	21	finally
  }
  
  /* Error */
  public static void delHistoryById(long paramLong)
  {
    // Byte code:
    //   0: invokestatic 40	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   3: astore 4
    //   5: iconst_1
    //   6: anewarray 53	java/lang/String
    //   9: astore 5
    //   11: aload 5
    //   13: iconst_0
    //   14: new 55	java/lang/StringBuilder
    //   17: dup
    //   18: lload_0
    //   19: invokestatic 59	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   22: invokespecial 61	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   25: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   28: aastore
    //   29: aload 4
    //   31: ldc 17
    //   33: ldc 67
    //   35: aload 5
    //   37: invokevirtual 46	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   40: pop
    //   41: invokestatic 49	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   44: return
    //   45: astore_3
    //   46: invokestatic 49	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   49: return
    //   50: astore_2
    //   51: invokestatic 49	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   54: aload_2
    //   55: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	paramLong	long
    //   50	5	2	localObject	Object
    //   45	1	3	localException	java.lang.Exception
    //   3	27	4	localSQLiteDatabase	SQLiteDatabase
    //   9	27	5	arrayOfString	String[]
    // Exception table:
    //   from	to	target	type
    //   0	41	45	java/lang/Exception
    //   0	41	50	finally
  }
  
  /* Error */
  public static java.util.ArrayList<com.jingdong.common.entity.Product> getHistoryByPage(int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 71	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 72	java/util/ArrayList:<init>	()V
    //   9: astore_3
    //   10: invokestatic 40	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   13: astore 6
    //   15: iconst_2
    //   16: anewarray 53	java/lang/String
    //   19: astore 7
    //   21: iconst_0
    //   22: istore 8
    //   24: iload_0
    //   25: iconst_1
    //   26: if_icmpne +92 -> 118
    //   29: aload 7
    //   31: iconst_0
    //   32: iload 8
    //   34: invokestatic 75	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   37: aastore
    //   38: aload 7
    //   40: iconst_1
    //   41: iload_1
    //   42: invokestatic 75	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   45: aastore
    //   46: aload 6
    //   48: ldc 77
    //   50: aload 7
    //   52: invokevirtual 81	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   55: astore_2
    //   56: aload_2
    //   57: invokeinterface 87 1 0
    //   62: pop
    //   63: aload_2
    //   64: ifnull +30 -> 94
    //   67: aload_2
    //   68: invokeinterface 91 1 0
    //   73: ifeq +21 -> 94
    //   76: aload_2
    //   77: invokeinterface 91 1 0
    //   82: istore 10
    //   84: iconst_0
    //   85: istore 11
    //   87: iload 11
    //   89: iload 10
    //   91: if_icmplt +37 -> 128
    //   94: aload_2
    //   95: ifnull +18 -> 113
    //   98: aload_2
    //   99: invokeinterface 94 1 0
    //   104: ifne +9 -> 113
    //   107: aload_2
    //   108: invokeinterface 97 1 0
    //   113: invokestatic 49	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   116: aload_3
    //   117: areturn
    //   118: iload_1
    //   119: iload_0
    //   120: iconst_1
    //   121: isub
    //   122: imul
    //   123: istore 8
    //   125: goto -96 -> 29
    //   128: aload_2
    //   129: iload 11
    //   131: invokeinterface 101 2 0
    //   136: pop
    //   137: new 103	com/jingdong/common/entity/Product
    //   140: dup
    //   141: invokespecial 104	com/jingdong/common/entity/Product:<init>	()V
    //   144: astore 13
    //   146: aload 13
    //   148: aload_2
    //   149: aload_2
    //   150: ldc 11
    //   152: invokeinterface 108 2 0
    //   157: invokeinterface 112 2 0
    //   162: invokestatic 117	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   165: invokevirtual 121	com/jingdong/common/entity/Product:setId	(Ljava/lang/Long;)V
    //   168: aload_3
    //   169: aload 13
    //   171: invokevirtual 125	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   174: pop
    //   175: iinc 11 1
    //   178: goto -91 -> 87
    //   181: astore 5
    //   183: aload_2
    //   184: ifnull +18 -> 202
    //   187: aload_2
    //   188: invokeinterface 94 1 0
    //   193: ifne +9 -> 202
    //   196: aload_2
    //   197: invokeinterface 97 1 0
    //   202: invokestatic 49	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   205: aload_3
    //   206: areturn
    //   207: astore 4
    //   209: aload_2
    //   210: ifnull +18 -> 228
    //   213: aload_2
    //   214: invokeinterface 94 1 0
    //   219: ifne +9 -> 228
    //   222: aload_2
    //   223: invokeinterface 97 1 0
    //   228: invokestatic 49	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   231: aload 4
    //   233: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	234	0	paramInt1	int
    //   0	234	1	paramInt2	int
    //   1	222	2	localCursor	android.database.Cursor
    //   9	197	3	localArrayList	java.util.ArrayList
    //   207	25	4	localObject	Object
    //   181	1	5	localException	java.lang.Exception
    //   13	34	6	localSQLiteDatabase	SQLiteDatabase
    //   19	32	7	arrayOfString	String[]
    //   22	102	8	i	int
    //   82	10	10	j	int
    //   85	91	11	k	int
    //   144	26	13	localProduct	com.jingdong.common.entity.Product
    // Exception table:
    //   from	to	target	type
    //   10	21	181	java/lang/Exception
    //   29	63	181	java/lang/Exception
    //   67	84	181	java/lang/Exception
    //   128	175	181	java/lang/Exception
    //   10	21	207	finally
    //   29	63	207	finally
    //   67	84	207	finally
    //   128	175	207	finally
  }
  
  /* Error */
  public static void insertOrUpdateBrowseHistory(long paramLong)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aconst_null
    //   4: astore_2
    //   5: invokestatic 40	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   8: astore 6
    //   10: new 128	android/content/ContentValues
    //   13: dup
    //   14: invokespecial 129	android/content/ContentValues:<init>	()V
    //   17: astore 7
    //   19: iconst_1
    //   20: anewarray 53	java/lang/String
    //   23: astore 8
    //   25: aload 8
    //   27: iconst_0
    //   28: new 55	java/lang/StringBuilder
    //   31: dup
    //   32: lload_0
    //   33: invokestatic 59	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   36: invokespecial 61	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   39: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   42: aastore
    //   43: aload 6
    //   45: ldc 17
    //   47: aconst_null
    //   48: ldc 67
    //   50: aload 8
    //   52: aconst_null
    //   53: aconst_null
    //   54: aconst_null
    //   55: invokevirtual 133	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   58: astore_2
    //   59: aload_2
    //   60: ifnull +24 -> 84
    //   63: aload_2
    //   64: invokeinterface 91 1 0
    //   69: ifeq +15 -> 84
    //   72: aload 6
    //   74: ldc 17
    //   76: ldc 67
    //   78: aload 8
    //   80: invokevirtual 46	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   83: pop
    //   84: aload 7
    //   86: ldc 11
    //   88: lload_0
    //   89: invokestatic 117	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   92: invokevirtual 137	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   95: aload 6
    //   97: ldc 17
    //   99: aconst_null
    //   100: aload 7
    //   102: invokevirtual 141	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   105: pop2
    //   106: aload_2
    //   107: ifnull +18 -> 125
    //   110: aload_2
    //   111: invokeinterface 94 1 0
    //   116: ifne +9 -> 125
    //   119: aload_2
    //   120: invokeinterface 97 1 0
    //   125: invokestatic 49	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   128: ldc 2
    //   130: monitorexit
    //   131: return
    //   132: astore 5
    //   134: aload_2
    //   135: ifnull +18 -> 153
    //   138: aload_2
    //   139: invokeinterface 94 1 0
    //   144: ifne +9 -> 153
    //   147: aload_2
    //   148: invokeinterface 97 1 0
    //   153: invokestatic 49	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   156: goto -28 -> 128
    //   159: astore 4
    //   161: ldc 2
    //   163: monitorexit
    //   164: aload 4
    //   166: athrow
    //   167: astore_3
    //   168: aload_2
    //   169: ifnull +18 -> 187
    //   172: aload_2
    //   173: invokeinterface 94 1 0
    //   178: ifne +9 -> 187
    //   181: aload_2
    //   182: invokeinterface 97 1 0
    //   187: invokestatic 49	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   190: aload_3
    //   191: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	192	0	paramLong	long
    //   4	178	2	localCursor	android.database.Cursor
    //   167	24	3	localObject1	Object
    //   159	6	4	localObject2	Object
    //   132	1	5	localException	java.lang.Exception
    //   8	88	6	localSQLiteDatabase	SQLiteDatabase
    //   17	84	7	localContentValues	android.content.ContentValues
    //   23	56	8	arrayOfString	String[]
    // Exception table:
    //   from	to	target	type
    //   5	59	132	java/lang/Exception
    //   63	84	132	java/lang/Exception
    //   84	106	132	java/lang/Exception
    //   110	125	159	finally
    //   125	128	159	finally
    //   138	153	159	finally
    //   153	156	159	finally
    //   172	187	159	finally
    //   187	192	159	finally
    //   5	59	167	finally
    //   63	84	167	finally
    //   84	106	167	finally
  }
  
  public static void upgrade(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("drop table if exists BrowseHistoryTable");
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.database.table.HistoryTable
 * JD-Core Version:    0.7.0.1
 */