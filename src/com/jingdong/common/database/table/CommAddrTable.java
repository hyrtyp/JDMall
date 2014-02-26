package com.jingdong.common.database.table;

import android.database.sqlite.SQLiteDatabase;

public class CommAddrTable
{
  public static final String COMMON_ADDR_TABLE_NAME = "comm_addr";
  public static final String TB_COLUMN_AREA = "area";
  public static final String TB_COLUMN_AREA_CODE = "areacode";
  public static final String TB_COLUMN_CITY = "city";
  public static final String TB_COLUMN_CITY_CODE = "citycode";
  public static final String TB_COLUMN_MAIL = "mail";
  public static final String TB_COLUMN_MOBILE = "mobile";
  public static final String TB_COLUMN_PROVINCE = "province";
  public static final String TB_COLUMN_PROVINCE_CODE = "provincecode";
  public static final String TB_COLUMN_USER_NAME = "user_name";
  public static final String TB_COLUMN_WHERE = "swhere";
  public static final String TB_COLUMN_ZIP = "zip";
  
  public static void create(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE comm_addr('id' INTEGER PRIMARY KEY  NOT NULL ,user_name TEXT,mobile TEXT,province TEXT,city TEXT,area TEXT,swhere TEXT,zip TEXT,mail TEXT,provincecode INTEGER,citycode INTEGER,areacode INTEGER)");
  }
  
  /* Error */
  public static void delCommAddr(int paramInt)
  {
    // Byte code:
    //   0: invokestatic 65	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   3: astore_3
    //   4: new 67	android/content/ContentValues
    //   7: dup
    //   8: invokespecial 68	android/content/ContentValues:<init>	()V
    //   11: ldc 70
    //   13: iload_0
    //   14: invokestatic 76	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   17: invokevirtual 80	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   20: iconst_1
    //   21: anewarray 82	java/lang/String
    //   24: astore 4
    //   26: aload 4
    //   28: iconst_0
    //   29: new 84	java/lang/StringBuilder
    //   32: dup
    //   33: iload_0
    //   34: invokestatic 87	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   37: invokespecial 89	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   40: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   43: aastore
    //   44: aload_3
    //   45: ldc 8
    //   47: ldc 95
    //   49: aload 4
    //   51: invokevirtual 99	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   54: pop
    //   55: invokestatic 102	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   58: return
    //   59: astore_2
    //   60: invokestatic 102	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   63: return
    //   64: astore_1
    //   65: invokestatic 102	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   68: aload_1
    //   69: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	70	0	paramInt	int
    //   64	5	1	localObject	Object
    //   59	1	2	localException	java.lang.Exception
    //   3	42	3	localSQLiteDatabase	SQLiteDatabase
    //   24	26	4	arrayOfString	String[]
    // Exception table:
    //   from	to	target	type
    //   0	55	59	java/lang/Exception
    //   0	55	64	finally
  }
  
  /* Error */
  public static java.util.ArrayList<com.jingdong.common.entity.CommAddr> getCommAddrList()
  {
    // Byte code:
    //   0: new 106	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 107	java/util/ArrayList:<init>	()V
    //   7: astore_0
    //   8: aconst_null
    //   9: astore_1
    //   10: invokestatic 65	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   13: ldc 8
    //   15: bipush 11
    //   17: anewarray 82	java/lang/String
    //   20: dup
    //   21: iconst_0
    //   22: ldc 35
    //   24: aastore
    //   25: dup
    //   26: iconst_1
    //   27: ldc 26
    //   29: aastore
    //   30: dup
    //   31: iconst_2
    //   32: ldc 29
    //   34: aastore
    //   35: dup
    //   36: iconst_3
    //   37: ldc 17
    //   39: aastore
    //   40: dup
    //   41: iconst_4
    //   42: ldc 11
    //   44: aastore
    //   45: dup
    //   46: iconst_5
    //   47: ldc 38
    //   49: aastore
    //   50: dup
    //   51: bipush 6
    //   53: ldc 41
    //   55: aastore
    //   56: dup
    //   57: bipush 7
    //   59: ldc 23
    //   61: aastore
    //   62: dup
    //   63: bipush 8
    //   65: ldc 32
    //   67: aastore
    //   68: dup
    //   69: bipush 9
    //   71: ldc 20
    //   73: aastore
    //   74: dup
    //   75: bipush 10
    //   77: ldc 14
    //   79: aastore
    //   80: aconst_null
    //   81: aconst_null
    //   82: aconst_null
    //   83: aconst_null
    //   84: aconst_null
    //   85: invokevirtual 111	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   88: astore_1
    //   89: aload_1
    //   90: invokeinterface 117 1 0
    //   95: pop
    //   96: aload_1
    //   97: ifnull +30 -> 127
    //   100: aload_1
    //   101: invokeinterface 121 1 0
    //   106: ifeq +21 -> 127
    //   109: aload_1
    //   110: invokeinterface 121 1 0
    //   115: istore 5
    //   117: iconst_0
    //   118: istore 6
    //   120: iload 6
    //   122: iload 5
    //   124: if_icmplt +27 -> 151
    //   127: aload_1
    //   128: ifnull +18 -> 146
    //   131: aload_1
    //   132: invokeinterface 124 1 0
    //   137: ifne +9 -> 146
    //   140: aload_1
    //   141: invokeinterface 127 1 0
    //   146: invokestatic 102	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   149: aload_0
    //   150: areturn
    //   151: aload_1
    //   152: iload 6
    //   154: invokeinterface 131 2 0
    //   159: pop
    //   160: new 133	com/jingdong/common/entity/CommAddr
    //   163: dup
    //   164: invokespecial 134	com/jingdong/common/entity/CommAddr:<init>	()V
    //   167: astore 8
    //   169: aload 8
    //   171: aload_1
    //   172: aload_1
    //   173: ldc 35
    //   175: invokeinterface 138 2 0
    //   180: invokeinterface 141 2 0
    //   185: putfield 144	com/jingdong/common/entity/CommAddr:sUser_name	Ljava/lang/String;
    //   188: aload 8
    //   190: aload_1
    //   191: aload_1
    //   192: ldc 26
    //   194: invokeinterface 138 2 0
    //   199: invokeinterface 141 2 0
    //   204: putfield 147	com/jingdong/common/entity/CommAddr:sMobile	Ljava/lang/String;
    //   207: aload 8
    //   209: aload_1
    //   210: aload_1
    //   211: ldc 29
    //   213: invokeinterface 138 2 0
    //   218: invokeinterface 141 2 0
    //   223: putfield 150	com/jingdong/common/entity/CommAddr:sProvince	Ljava/lang/String;
    //   226: aload 8
    //   228: aload_1
    //   229: aload_1
    //   230: ldc 17
    //   232: invokeinterface 138 2 0
    //   237: invokeinterface 141 2 0
    //   242: putfield 153	com/jingdong/common/entity/CommAddr:sCity	Ljava/lang/String;
    //   245: aload 8
    //   247: aload_1
    //   248: aload_1
    //   249: ldc 11
    //   251: invokeinterface 138 2 0
    //   256: invokeinterface 141 2 0
    //   261: putfield 156	com/jingdong/common/entity/CommAddr:sArea	Ljava/lang/String;
    //   264: aload 8
    //   266: aload_1
    //   267: aload_1
    //   268: ldc 38
    //   270: invokeinterface 138 2 0
    //   275: invokeinterface 141 2 0
    //   280: putfield 159	com/jingdong/common/entity/CommAddr:sWhere	Ljava/lang/String;
    //   283: aload 8
    //   285: aload_1
    //   286: aload_1
    //   287: ldc 41
    //   289: invokeinterface 138 2 0
    //   294: invokeinterface 141 2 0
    //   299: putfield 162	com/jingdong/common/entity/CommAddr:sZip	Ljava/lang/String;
    //   302: aload 8
    //   304: aload_1
    //   305: aload_1
    //   306: ldc 23
    //   308: invokeinterface 138 2 0
    //   313: invokeinterface 141 2 0
    //   318: putfield 165	com/jingdong/common/entity/CommAddr:sMail	Ljava/lang/String;
    //   321: aload 8
    //   323: aload_1
    //   324: aload_1
    //   325: ldc 32
    //   327: invokeinterface 138 2 0
    //   332: invokeinterface 169 2 0
    //   337: putfield 173	com/jingdong/common/entity/CommAddr:province_code	I
    //   340: aload 8
    //   342: aload_1
    //   343: aload_1
    //   344: ldc 20
    //   346: invokeinterface 138 2 0
    //   351: invokeinterface 169 2 0
    //   356: putfield 176	com/jingdong/common/entity/CommAddr:city_code	I
    //   359: aload 8
    //   361: aload_1
    //   362: aload_1
    //   363: ldc 14
    //   365: invokeinterface 138 2 0
    //   370: invokeinterface 169 2 0
    //   375: putfield 179	com/jingdong/common/entity/CommAddr:area_code	I
    //   378: aload_0
    //   379: aload 8
    //   381: invokevirtual 183	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   384: pop
    //   385: iinc 6 1
    //   388: goto -268 -> 120
    //   391: astore_3
    //   392: aload_1
    //   393: ifnull +18 -> 411
    //   396: aload_1
    //   397: invokeinterface 124 1 0
    //   402: ifne +9 -> 411
    //   405: aload_1
    //   406: invokeinterface 127 1 0
    //   411: invokestatic 102	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   414: aload_0
    //   415: areturn
    //   416: astore_2
    //   417: aload_1
    //   418: ifnull +18 -> 436
    //   421: aload_1
    //   422: invokeinterface 124 1 0
    //   427: ifne +9 -> 436
    //   430: aload_1
    //   431: invokeinterface 127 1 0
    //   436: invokestatic 102	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   439: aload_2
    //   440: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   7	408	0	localArrayList	java.util.ArrayList
    //   9	422	1	localCursor	android.database.Cursor
    //   416	24	2	localObject	Object
    //   391	1	3	localException	java.lang.Exception
    //   115	10	5	i	int
    //   118	268	6	j	int
    //   167	213	8	localCommAddr	com.jingdong.common.entity.CommAddr
    // Exception table:
    //   from	to	target	type
    //   10	96	391	java/lang/Exception
    //   100	117	391	java/lang/Exception
    //   151	385	391	java/lang/Exception
    //   10	96	416	finally
    //   100	117	416	finally
    //   151	385	416	finally
  }
  
  /* Error */
  public static void insertCommAddr(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, int paramInt1, int paramInt2, int paramInt3)
  {
    // Byte code:
    //   0: invokestatic 65	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   3: astore 13
    //   5: new 67	android/content/ContentValues
    //   8: dup
    //   9: invokespecial 68	android/content/ContentValues:<init>	()V
    //   12: astore 14
    //   14: aload 14
    //   16: ldc 35
    //   18: aload_0
    //   19: invokevirtual 188	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   22: aload 14
    //   24: ldc 26
    //   26: aload_1
    //   27: invokevirtual 188	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   30: aload 14
    //   32: ldc 29
    //   34: aload_2
    //   35: invokevirtual 188	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   38: aload 14
    //   40: ldc 17
    //   42: aload_3
    //   43: invokevirtual 188	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   46: aload 14
    //   48: ldc 11
    //   50: aload 4
    //   52: invokevirtual 188	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   55: aload 14
    //   57: ldc 38
    //   59: aload 5
    //   61: invokevirtual 188	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   64: aload 14
    //   66: ldc 41
    //   68: aload 6
    //   70: invokevirtual 188	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   73: aload 14
    //   75: ldc 23
    //   77: aload 7
    //   79: invokevirtual 188	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   82: aload 14
    //   84: ldc 32
    //   86: iload 8
    //   88: invokestatic 76	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   91: invokevirtual 80	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   94: aload 14
    //   96: ldc 20
    //   98: iload 9
    //   100: invokestatic 76	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   103: invokevirtual 80	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   106: aload 14
    //   108: ldc 14
    //   110: iload 10
    //   112: invokestatic 76	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   115: invokevirtual 80	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   118: aload 13
    //   120: ldc 8
    //   122: aconst_null
    //   123: aload 14
    //   125: invokevirtual 192	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   128: pop2
    //   129: invokestatic 102	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   132: return
    //   133: astore 12
    //   135: invokestatic 102	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   138: return
    //   139: astore 11
    //   141: invokestatic 102	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   144: aload 11
    //   146: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	147	0	paramString1	String
    //   0	147	1	paramString2	String
    //   0	147	2	paramString3	String
    //   0	147	3	paramString4	String
    //   0	147	4	paramString5	String
    //   0	147	5	paramString6	String
    //   0	147	6	paramString7	String
    //   0	147	7	paramString8	String
    //   0	147	8	paramInt1	int
    //   0	147	9	paramInt2	int
    //   0	147	10	paramInt3	int
    //   139	6	11	localObject	Object
    //   133	1	12	localException	java.lang.Exception
    //   3	116	13	localSQLiteDatabase	SQLiteDatabase
    //   12	112	14	localContentValues	android.content.ContentValues
    // Exception table:
    //   from	to	target	type
    //   0	129	133	java/lang/Exception
    //   0	129	139	finally
  }
  
  public static void upgrade(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("drop table if exists comm_addr");
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.database.table.CommAddrTable
 * JD-Core Version:    0.7.0.1
 */