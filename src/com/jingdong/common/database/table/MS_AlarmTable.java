package com.jingdong.common.database.table;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.jingdong.common.utils.DBHelperUtil;
import java.util.ArrayList;

public class MS_AlarmTable
{
  public static final String TB_ALARM_TABLE = "MS_AlarmTable";
  public static final String TB_CLOUMN_INSERT_TIME = "insertTime";
  public static final String TB_CLOUMN_MILLIS_TIME = "millis";
  public static final String TB_CLOUMN_PRODUCT_CODE = "productCode";
  public static final String TB_CLOUMN_PRODUCT_NAME = "productName";
  
  public static void create(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE MS_AlarmTable('id' INTEGER PRIMARY KEY  NOT NULL ,productCode LONG,productName TEXT,millis LONG,insertTime DATETIME DEFAULT CURRENT_TIMESTAMP)");
  }
  
  /* Error */
  public static void delAll()
  {
    // Byte code:
    //   0: invokestatic 43	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   3: ldc 8
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
  
  /* Error */
  public static void delById(long paramLong)
  {
    // Byte code:
    //   0: invokestatic 43	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   3: astore 4
    //   5: iconst_1
    //   6: anewarray 56	java/lang/String
    //   9: astore 5
    //   11: aload 5
    //   13: iconst_0
    //   14: new 58	java/lang/StringBuilder
    //   17: dup
    //   18: lload_0
    //   19: invokestatic 62	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   22: invokespecial 64	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   25: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   28: aastore
    //   29: aload 4
    //   31: ldc 8
    //   33: ldc 70
    //   35: aload 5
    //   37: invokevirtual 49	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   40: pop
    //   41: invokestatic 52	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   44: return
    //   45: astore_3
    //   46: invokestatic 52	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   49: return
    //   50: astore_2
    //   51: invokestatic 52	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   54: aload_2
    //   55: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	paramLong	long
    //   50	5	2	localObject	Object
    //   45	1	3	localException	Exception
    //   3	27	4	localSQLiteDatabase	SQLiteDatabase
    //   9	27	5	arrayOfString	String[]
    // Exception table:
    //   from	to	target	type
    //   0	41	45	java/lang/Exception
    //   0	41	50	finally
  }
  
  /* Error */
  public static ArrayList<Long> getAllList()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_0
    //   2: new 74	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 75	java/util/ArrayList:<init>	()V
    //   9: astore_1
    //   10: invokestatic 43	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   13: ldc 77
    //   15: aconst_null
    //   16: invokevirtual 81	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   19: astore_0
    //   20: aload_0
    //   21: invokeinterface 87 1 0
    //   26: pop
    //   27: aload_0
    //   28: ifnull +30 -> 58
    //   31: aload_0
    //   32: invokeinterface 91 1 0
    //   37: ifeq +21 -> 58
    //   40: aload_0
    //   41: invokeinterface 91 1 0
    //   46: istore 5
    //   48: iconst_0
    //   49: istore 6
    //   51: iload 6
    //   53: iload 5
    //   55: if_icmplt +27 -> 82
    //   58: aload_0
    //   59: ifnull +18 -> 77
    //   62: aload_0
    //   63: invokeinterface 94 1 0
    //   68: ifne +9 -> 77
    //   71: aload_0
    //   72: invokeinterface 97 1 0
    //   77: invokestatic 52	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   80: aload_1
    //   81: areturn
    //   82: aload_0
    //   83: iload 6
    //   85: invokeinterface 101 2 0
    //   90: pop
    //   91: aload_0
    //   92: aload_0
    //   93: ldc 17
    //   95: invokeinterface 105 2 0
    //   100: invokeinterface 109 2 0
    //   105: pop2
    //   106: aload_0
    //   107: aload_0
    //   108: ldc 14
    //   110: invokeinterface 105 2 0
    //   115: invokeinterface 109 2 0
    //   120: lstore 10
    //   122: aload_0
    //   123: aload_0
    //   124: ldc 11
    //   126: invokeinterface 105 2 0
    //   131: invokeinterface 109 2 0
    //   136: pop2
    //   137: aload_0
    //   138: aload_0
    //   139: ldc 20
    //   141: invokeinterface 105 2 0
    //   146: invokeinterface 113 2 0
    //   151: pop
    //   152: aload_1
    //   153: lload 10
    //   155: invokestatic 118	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   158: invokevirtual 122	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   161: pop
    //   162: new 124	java/text/SimpleDateFormat
    //   165: dup
    //   166: ldc 126
    //   168: invokespecial 127	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   171: pop
    //   172: iinc 6 1
    //   175: goto -124 -> 51
    //   178: astore_3
    //   179: aload_0
    //   180: ifnull +18 -> 198
    //   183: aload_0
    //   184: invokeinterface 94 1 0
    //   189: ifne +9 -> 198
    //   192: aload_0
    //   193: invokeinterface 97 1 0
    //   198: invokestatic 52	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   201: aload_1
    //   202: areturn
    //   203: astore_2
    //   204: aload_0
    //   205: ifnull +18 -> 223
    //   208: aload_0
    //   209: invokeinterface 94 1 0
    //   214: ifne +9 -> 223
    //   217: aload_0
    //   218: invokeinterface 97 1 0
    //   223: invokestatic 52	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   226: aload_2
    //   227: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   1	217	0	localCursor	Cursor
    //   9	193	1	localArrayList	ArrayList
    //   203	24	2	localObject	Object
    //   178	1	3	localException	Exception
    //   46	10	5	i	int
    //   49	124	6	j	int
    //   120	34	10	l	long
    // Exception table:
    //   from	to	target	type
    //   10	27	178	java/lang/Exception
    //   31	48	178	java/lang/Exception
    //   82	172	178	java/lang/Exception
    //   10	27	203	finally
    //   31	48	203	finally
    //   82	172	203	finally
  }
  
  /* Error */
  public static ArrayList<Long> getList()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_0
    //   2: new 74	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 75	java/util/ArrayList:<init>	()V
    //   9: astore_1
    //   10: invokestatic 43	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   13: ldc 130
    //   15: aconst_null
    //   16: invokevirtual 81	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   19: astore_0
    //   20: aload_0
    //   21: invokeinterface 87 1 0
    //   26: pop
    //   27: aload_0
    //   28: ifnull +30 -> 58
    //   31: aload_0
    //   32: invokeinterface 91 1 0
    //   37: ifeq +21 -> 58
    //   40: aload_0
    //   41: invokeinterface 91 1 0
    //   46: istore 5
    //   48: iconst_0
    //   49: istore 6
    //   51: iload 6
    //   53: iload 5
    //   55: if_icmplt +27 -> 82
    //   58: aload_0
    //   59: ifnull +18 -> 77
    //   62: aload_0
    //   63: invokeinterface 94 1 0
    //   68: ifne +9 -> 77
    //   71: aload_0
    //   72: invokeinterface 97 1 0
    //   77: invokestatic 52	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   80: aload_1
    //   81: areturn
    //   82: aload_0
    //   83: iload 6
    //   85: invokeinterface 101 2 0
    //   90: pop
    //   91: aload_1
    //   92: aload_0
    //   93: aload_0
    //   94: ldc 17
    //   96: invokeinterface 105 2 0
    //   101: invokeinterface 109 2 0
    //   106: invokestatic 118	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   109: invokevirtual 122	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   112: pop
    //   113: iinc 6 1
    //   116: goto -65 -> 51
    //   119: astore_3
    //   120: aload_0
    //   121: ifnull +18 -> 139
    //   124: aload_0
    //   125: invokeinterface 94 1 0
    //   130: ifne +9 -> 139
    //   133: aload_0
    //   134: invokeinterface 97 1 0
    //   139: invokestatic 52	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   142: aload_1
    //   143: areturn
    //   144: astore_2
    //   145: aload_0
    //   146: ifnull +18 -> 164
    //   149: aload_0
    //   150: invokeinterface 94 1 0
    //   155: ifne +9 -> 164
    //   158: aload_0
    //   159: invokeinterface 97 1 0
    //   164: invokestatic 52	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   167: aload_2
    //   168: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   1	158	0	localCursor	Cursor
    //   9	134	1	localArrayList	ArrayList
    //   144	24	2	localObject	Object
    //   119	1	3	localException	Exception
    //   46	10	5	i	int
    //   49	65	6	j	int
    // Exception table:
    //   from	to	target	type
    //   10	27	119	java/lang/Exception
    //   31	48	119	java/lang/Exception
    //   82	113	119	java/lang/Exception
    //   10	27	144	finally
    //   31	48	144	finally
    //   82	113	144	finally
  }
  
  /* Error */
  public static java.util.HashMap<Long, String> getMap(Long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 134	java/util/HashMap
    //   5: dup
    //   6: invokespecial 135	java/util/HashMap:<init>	()V
    //   9: astore_2
    //   10: invokestatic 43	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   13: new 58	java/lang/StringBuilder
    //   16: dup
    //   17: ldc 137
    //   19: invokespecial 64	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   22: ldc2_w 138
    //   25: aload_0
    //   26: invokevirtual 143	java/lang/Long:longValue	()J
    //   29: ladd
    //   30: invokevirtual 147	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   33: ldc 149
    //   35: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: ldc 14
    //   40: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: ldc 154
    //   45: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: aload_0
    //   49: invokevirtual 143	java/lang/Long:longValue	()J
    //   52: ldc2_w 138
    //   55: lsub
    //   56: invokevirtual 147	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   59: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   62: aconst_null
    //   63: invokevirtual 81	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   66: astore_1
    //   67: aload_1
    //   68: invokeinterface 87 1 0
    //   73: pop
    //   74: aload_1
    //   75: ifnull +30 -> 105
    //   78: aload_1
    //   79: invokeinterface 91 1 0
    //   84: ifeq +21 -> 105
    //   87: aload_1
    //   88: invokeinterface 91 1 0
    //   93: istore 6
    //   95: iconst_0
    //   96: istore 7
    //   98: iload 7
    //   100: iload 6
    //   102: if_icmplt +27 -> 129
    //   105: aload_1
    //   106: ifnull +18 -> 124
    //   109: aload_1
    //   110: invokeinterface 94 1 0
    //   115: ifne +9 -> 124
    //   118: aload_1
    //   119: invokeinterface 97 1 0
    //   124: invokestatic 52	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   127: aload_2
    //   128: areturn
    //   129: aload_1
    //   130: iload 7
    //   132: invokeinterface 101 2 0
    //   137: pop
    //   138: aload_1
    //   139: aload_1
    //   140: ldc 17
    //   142: invokeinterface 105 2 0
    //   147: invokeinterface 109 2 0
    //   152: lstore 9
    //   154: aload_1
    //   155: aload_1
    //   156: ldc 20
    //   158: invokeinterface 105 2 0
    //   163: invokeinterface 113 2 0
    //   168: astore 11
    //   170: aload_2
    //   171: lload 9
    //   173: invokestatic 118	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   176: aload 11
    //   178: invokevirtual 158	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   181: pop
    //   182: iinc 7 1
    //   185: goto -87 -> 98
    //   188: astore 4
    //   190: aload_1
    //   191: ifnull +18 -> 209
    //   194: aload_1
    //   195: invokeinterface 94 1 0
    //   200: ifne +9 -> 209
    //   203: aload_1
    //   204: invokeinterface 97 1 0
    //   209: invokestatic 52	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   212: aload_2
    //   213: areturn
    //   214: astore_3
    //   215: aload_1
    //   216: ifnull +18 -> 234
    //   219: aload_1
    //   220: invokeinterface 94 1 0
    //   225: ifne +9 -> 234
    //   228: aload_1
    //   229: invokeinterface 97 1 0
    //   234: invokestatic 52	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   237: aload_3
    //   238: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	239	0	paramLong	Long
    //   1	228	1	localCursor	Cursor
    //   9	204	2	localHashMap	java.util.HashMap
    //   214	24	3	localObject	Object
    //   188	1	4	localException	Exception
    //   93	10	6	i	int
    //   96	87	7	j	int
    //   152	20	9	l	long
    //   168	9	11	str	String
    // Exception table:
    //   from	to	target	type
    //   10	74	188	java/lang/Exception
    //   78	95	188	java/lang/Exception
    //   129	182	188	java/lang/Exception
    //   10	74	214	finally
    //   78	95	214	finally
    //   129	182	214	finally
  }
  
  /* Error */
  public static void insertOrUpdate(long paramLong1, long paramLong2, long paramLong3, String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aconst_null
    //   4: astore 7
    //   6: invokestatic 43	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   9: astore 11
    //   11: new 162	android/content/ContentValues
    //   14: dup
    //   15: invokespecial 163	android/content/ContentValues:<init>	()V
    //   18: astore 12
    //   20: iconst_1
    //   21: anewarray 56	java/lang/String
    //   24: astore 13
    //   26: aload 13
    //   28: iconst_0
    //   29: new 58	java/lang/StringBuilder
    //   32: dup
    //   33: lload_0
    //   34: invokestatic 62	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   37: invokespecial 64	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   40: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   43: aastore
    //   44: aload 11
    //   46: ldc 8
    //   48: aconst_null
    //   49: ldc 70
    //   51: aload 13
    //   53: aconst_null
    //   54: aconst_null
    //   55: aconst_null
    //   56: invokevirtual 167	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   59: astore 7
    //   61: aload 7
    //   63: ifnull +25 -> 88
    //   66: aload 7
    //   68: invokeinterface 91 1 0
    //   73: ifeq +15 -> 88
    //   76: aload 11
    //   78: ldc 8
    //   80: ldc 70
    //   82: aload 13
    //   84: invokevirtual 49	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   87: pop
    //   88: aload 12
    //   90: ldc 17
    //   92: lload_0
    //   93: invokestatic 118	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   96: invokevirtual 170	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   99: aload 12
    //   101: ldc 14
    //   103: lload_2
    //   104: invokestatic 118	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   107: invokevirtual 170	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   110: aload 12
    //   112: ldc 11
    //   114: lload 4
    //   116: invokestatic 118	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   119: invokevirtual 170	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   122: aload 12
    //   124: ldc 20
    //   126: aload 6
    //   128: invokevirtual 173	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   131: aload 11
    //   133: ldc 8
    //   135: aconst_null
    //   136: aload 12
    //   138: invokevirtual 177	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   141: pop2
    //   142: aload 7
    //   144: ifnull +20 -> 164
    //   147: aload 7
    //   149: invokeinterface 94 1 0
    //   154: ifne +10 -> 164
    //   157: aload 7
    //   159: invokeinterface 97 1 0
    //   164: invokestatic 52	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   167: ldc 2
    //   169: monitorexit
    //   170: return
    //   171: astore 10
    //   173: aload 7
    //   175: ifnull +20 -> 195
    //   178: aload 7
    //   180: invokeinterface 94 1 0
    //   185: ifne +10 -> 195
    //   188: aload 7
    //   190: invokeinterface 97 1 0
    //   195: invokestatic 52	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   198: goto -31 -> 167
    //   201: astore 9
    //   203: ldc 2
    //   205: monitorexit
    //   206: aload 9
    //   208: athrow
    //   209: astore 8
    //   211: aload 7
    //   213: ifnull +20 -> 233
    //   216: aload 7
    //   218: invokeinterface 94 1 0
    //   223: ifne +10 -> 233
    //   226: aload 7
    //   228: invokeinterface 97 1 0
    //   233: invokestatic 52	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   236: aload 8
    //   238: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	239	0	paramLong1	long
    //   0	239	2	paramLong2	long
    //   0	239	4	paramLong3	long
    //   0	239	6	paramString	String
    //   4	223	7	localCursor	Cursor
    //   209	28	8	localObject1	Object
    //   201	6	9	localObject2	Object
    //   171	1	10	localException	Exception
    //   9	123	11	localSQLiteDatabase	SQLiteDatabase
    //   18	119	12	localContentValues	android.content.ContentValues
    //   24	59	13	arrayOfString	String[]
    // Exception table:
    //   from	to	target	type
    //   6	61	171	java/lang/Exception
    //   66	88	171	java/lang/Exception
    //   88	142	171	java/lang/Exception
    //   147	164	201	finally
    //   164	167	201	finally
    //   178	195	201	finally
    //   195	198	201	finally
    //   216	233	201	finally
    //   233	239	201	finally
    //   6	61	209	finally
    //   66	88	209	finally
    //   88	142	209	finally
  }
  
  public static boolean isExists(long paramLong)
  {
    Cursor localCursor = null;
    ArrayList localArrayList = new ArrayList();
    for (;;)
    {
      try
      {
        localCursor = DBHelperUtil.getDatabase().rawQuery("SELECT id,productCode FROM MS_AlarmTable WHERE productCode = " + paramLong, null);
        localCursor.moveToFirst();
        if ((localCursor != null) && (localCursor.getCount() != 0))
        {
          int i = localCursor.getCount();
          j = 0;
          if (j < i) {
            continue;
          }
        }
      }
      catch (Exception localException)
      {
        int j;
        if ((localCursor == null) || (localCursor.isClosed())) {
          continue;
        }
        localCursor.close();
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
      if (localArrayList.size() <= 0) {
        break label194;
      }
      return true;
      localCursor.moveToPosition(j);
      localArrayList.add(Long.valueOf(localCursor.getLong(localCursor.getColumnIndex("productCode"))));
      j++;
    }
    label194:
    return false;
  }
  
  public static void upgrade(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("drop table if exists MS_AlarmTable");
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.database.table.MS_AlarmTable
 * JD-Core Version:    0.7.0.1
 */