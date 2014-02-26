package com.jingdong.common.database.table;

import android.database.sqlite.SQLiteDatabase;

public class UserNamesTable
{
  public static final String TB_CLOUMN_NAME = "name";
  public static final String USER_NAMES_TABLE = "usernames";
  
  public static void create(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE usernames('id' INTEGER PRIMARY KEY  NOT NULL ,name TEXT)");
  }
  
  /* Error */
  public static void delUserName(String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: invokestatic 34	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   6: ldc 11
    //   8: ldc 36
    //   10: iconst_1
    //   11: anewarray 38	java/lang/String
    //   14: dup
    //   15: iconst_0
    //   16: aload_0
    //   17: aastore
    //   18: invokevirtual 42	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   21: pop
    //   22: invokestatic 45	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   25: ldc 2
    //   27: monitorexit
    //   28: return
    //   29: astore_3
    //   30: invokestatic 45	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   33: goto -8 -> 25
    //   36: astore_2
    //   37: ldc 2
    //   39: monitorexit
    //   40: aload_2
    //   41: athrow
    //   42: astore_1
    //   43: invokestatic 45	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   46: aload_1
    //   47: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	48	0	paramString	String
    //   42	5	1	localObject1	Object
    //   36	5	2	localObject2	Object
    //   29	1	3	localException	java.lang.Exception
    // Exception table:
    //   from	to	target	type
    //   3	22	29	java/lang/Exception
    //   22	25	36	finally
    //   30	33	36	finally
    //   43	48	36	finally
    //   3	22	42	finally
  }
  
  /* Error */
  public static java.util.ArrayList<String> getUserNames()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: new 49	java/util/ArrayList
    //   6: dup
    //   7: invokespecial 50	java/util/ArrayList:<init>	()V
    //   10: astore_0
    //   11: aconst_null
    //   12: astore_1
    //   13: invokestatic 34	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   16: ldc 11
    //   18: iconst_1
    //   19: anewarray 38	java/lang/String
    //   22: dup
    //   23: iconst_0
    //   24: ldc 8
    //   26: aastore
    //   27: aconst_null
    //   28: aconst_null
    //   29: aconst_null
    //   30: aconst_null
    //   31: aconst_null
    //   32: invokevirtual 54	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   35: astore_1
    //   36: aload_1
    //   37: ifnull +37 -> 74
    //   40: aload_1
    //   41: invokeinterface 60 1 0
    //   46: ifle +28 -> 74
    //   49: aload_1
    //   50: invokeinterface 64 1 0
    //   55: pop
    //   56: iconst_0
    //   57: istore 6
    //   59: aload_1
    //   60: invokeinterface 60 1 0
    //   65: istore 7
    //   67: iload 6
    //   69: iload 7
    //   71: if_icmplt +21 -> 92
    //   74: aload_1
    //   75: ifnull +9 -> 84
    //   78: aload_1
    //   79: invokeinterface 67 1 0
    //   84: invokestatic 45	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   87: ldc 2
    //   89: monitorexit
    //   90: aload_0
    //   91: areturn
    //   92: aload_1
    //   93: iload 6
    //   95: invokeinterface 71 2 0
    //   100: pop
    //   101: aload_0
    //   102: aload_1
    //   103: aload_1
    //   104: ldc 8
    //   106: invokeinterface 75 2 0
    //   111: invokeinterface 79 2 0
    //   116: invokevirtual 83	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   119: pop
    //   120: iinc 6 1
    //   123: goto -64 -> 59
    //   126: astore 4
    //   128: aload_1
    //   129: ifnull +9 -> 138
    //   132: aload_1
    //   133: invokeinterface 67 1 0
    //   138: invokestatic 45	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   141: goto -54 -> 87
    //   144: astore_3
    //   145: ldc 2
    //   147: monitorexit
    //   148: aload_3
    //   149: athrow
    //   150: astore_2
    //   151: aload_1
    //   152: ifnull +9 -> 161
    //   155: aload_1
    //   156: invokeinterface 67 1 0
    //   161: invokestatic 45	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   164: aload_2
    //   165: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   10	92	0	localArrayList	java.util.ArrayList
    //   12	144	1	localCursor	android.database.Cursor
    //   150	15	2	localObject1	Object
    //   144	5	3	localObject2	Object
    //   126	1	4	localException	java.lang.Exception
    //   57	64	6	i	int
    //   65	7	7	j	int
    // Exception table:
    //   from	to	target	type
    //   13	36	126	java/lang/Exception
    //   40	56	126	java/lang/Exception
    //   59	67	126	java/lang/Exception
    //   92	120	126	java/lang/Exception
    //   3	11	144	finally
    //   78	84	144	finally
    //   84	87	144	finally
    //   132	138	144	finally
    //   138	141	144	finally
    //   155	161	144	finally
    //   161	166	144	finally
    //   13	36	150	finally
    //   40	56	150	finally
    //   59	67	150	finally
    //   92	120	150	finally
  }
  
  /* Error */
  public static void insertUserName(String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aconst_null
    //   4: astore_1
    //   5: invokestatic 34	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   8: astore 5
    //   10: aload 5
    //   12: ldc 11
    //   14: iconst_1
    //   15: anewarray 38	java/lang/String
    //   18: dup
    //   19: iconst_0
    //   20: ldc 8
    //   22: aastore
    //   23: ldc 36
    //   25: iconst_1
    //   26: anewarray 38	java/lang/String
    //   29: dup
    //   30: iconst_0
    //   31: aload_0
    //   32: aastore
    //   33: aconst_null
    //   34: aconst_null
    //   35: aconst_null
    //   36: invokevirtual 54	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   39: astore_1
    //   40: aload_1
    //   41: ifnull +12 -> 53
    //   44: aload_1
    //   45: invokeinterface 60 1 0
    //   50: ifgt +31 -> 81
    //   53: new 86	android/content/ContentValues
    //   56: dup
    //   57: invokespecial 87	android/content/ContentValues:<init>	()V
    //   60: astore 6
    //   62: aload 6
    //   64: ldc 8
    //   66: aload_0
    //   67: invokevirtual 91	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   70: aload 5
    //   72: ldc 11
    //   74: aconst_null
    //   75: aload 6
    //   77: invokevirtual 95	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   80: pop2
    //   81: aload_1
    //   82: ifnull +9 -> 91
    //   85: aload_1
    //   86: invokeinterface 67 1 0
    //   91: invokestatic 45	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   94: ldc 2
    //   96: monitorexit
    //   97: return
    //   98: astore 4
    //   100: aload_1
    //   101: ifnull +9 -> 110
    //   104: aload_1
    //   105: invokeinterface 67 1 0
    //   110: invokestatic 45	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   113: goto -19 -> 94
    //   116: astore_3
    //   117: ldc 2
    //   119: monitorexit
    //   120: aload_3
    //   121: athrow
    //   122: astore_2
    //   123: aload_1
    //   124: ifnull +9 -> 133
    //   127: aload_1
    //   128: invokeinterface 67 1 0
    //   133: invokestatic 45	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   136: aload_2
    //   137: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	138	0	paramString	String
    //   4	124	1	localCursor	android.database.Cursor
    //   122	15	2	localObject1	Object
    //   116	5	3	localObject2	Object
    //   98	1	4	localException	java.lang.Exception
    //   8	63	5	localSQLiteDatabase	SQLiteDatabase
    //   60	16	6	localContentValues	android.content.ContentValues
    // Exception table:
    //   from	to	target	type
    //   5	40	98	java/lang/Exception
    //   44	53	98	java/lang/Exception
    //   53	81	98	java/lang/Exception
    //   85	91	116	finally
    //   91	94	116	finally
    //   104	110	116	finally
    //   110	113	116	finally
    //   127	133	116	finally
    //   133	138	116	finally
    //   5	40	122	finally
    //   44	53	122	finally
    //   53	81	122	finally
  }
  
  public static void upgrade(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("drop table if exists usernames");
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.database.table.UserNamesTable
 * JD-Core Version:    0.7.0.1
 */