package com.jingdong.common.database.table;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.jingdong.common.entity.UnExcuteFunction;
import com.jingdong.common.utils.DBHelperUtil;

public class UnExcuteFunctionTable
{
  public static final String TB_CLOUMN_CALL_BACK = "call_back";
  public static final String TB_CLOUMN_FUNCTION_ID = "function_id";
  public static final String TB_CLOUMN_HOST = "host";
  public static final String TB_CLOUMN_IF_NEED_LOADING_MODEL = "if_need_loading_model";
  public static final String TB_CLOUMN_IF_NOTIFY_USER = "if_notify_user";
  public static final String TB_CLOUMN_JSON_PARAMS = "function_json_params";
  public static final String TB_CLOUMN_MD5 = "md5";
  public static final String TB_UN_EXCUTE_FUCTION_TABLE = "un_excute_function_table";
  
  public static void create(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE un_excute_function_table('_id' INTEGER PRIMARY KEY  NOT NULL ,function_id TEXT,if_notify_user BOOLEAN,if_need_loading_model BOOLEAN,function_json_params TEXT,call_back TEXT,md5 TEXT,host TEXT) ");
  }
  
  /* Error */
  public static void deleteUnExcuteFunction(int paramInt)
  {
    // Byte code:
    //   0: invokestatic 53	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   3: astore_3
    //   4: iconst_1
    //   5: anewarray 55	java/lang/String
    //   8: astore 4
    //   10: aload 4
    //   12: iconst_0
    //   13: new 57	java/lang/StringBuilder
    //   16: dup
    //   17: iload_0
    //   18: invokestatic 61	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   21: invokespecial 63	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   24: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   27: aastore
    //   28: aload_3
    //   29: ldc 29
    //   31: ldc 69
    //   33: aload 4
    //   35: invokevirtual 73	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   38: pop
    //   39: invokestatic 76	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   42: return
    //   43: astore_2
    //   44: invokestatic 76	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   47: return
    //   48: astore_1
    //   49: invokestatic 76	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   52: aload_1
    //   53: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	54	0	paramInt	int
    //   48	5	1	localObject	Object
    //   43	1	2	localException	Exception
    //   3	26	3	localSQLiteDatabase	SQLiteDatabase
    //   8	26	4	arrayOfString	String[]
    // Exception table:
    //   from	to	target	type
    //   0	39	43	java/lang/Exception
    //   0	39	48	finally
  }
  
  /* Error */
  public static void deleteUnExcuteFunctionWithFuctionMd5(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 83	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifeq +4 -> 8
    //   7: return
    //   8: invokestatic 53	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   11: ldc 29
    //   13: ldc 85
    //   15: iconst_1
    //   16: anewarray 55	java/lang/String
    //   19: dup
    //   20: iconst_0
    //   21: aload_0
    //   22: aastore
    //   23: invokevirtual 73	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   26: pop
    //   27: invokestatic 76	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   30: return
    //   31: astore_2
    //   32: invokestatic 76	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   35: return
    //   36: astore_1
    //   37: invokestatic 76	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   40: aload_1
    //   41: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	42	0	paramString	String
    //   36	5	1	localObject	Object
    //   31	1	2	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   8	27	31	java/lang/Exception
    //   8	27	36	finally
  }
  
  /* Error */
  public static java.util.ArrayList<UnExcuteFunction> getAllUnExcuteFuntionWithFuntionId(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 89	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 90	java/util/ArrayList:<init>	()V
    //   9: astore_2
    //   10: invokestatic 53	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   13: ldc 29
    //   15: bipush 8
    //   17: anewarray 55	java/lang/String
    //   20: dup
    //   21: iconst_0
    //   22: ldc 92
    //   24: aastore
    //   25: dup
    //   26: iconst_1
    //   27: ldc 11
    //   29: aastore
    //   30: dup
    //   31: iconst_2
    //   32: ldc 20
    //   34: aastore
    //   35: dup
    //   36: iconst_3
    //   37: ldc 17
    //   39: aastore
    //   40: dup
    //   41: iconst_4
    //   42: ldc 23
    //   44: aastore
    //   45: dup
    //   46: iconst_5
    //   47: ldc 8
    //   49: aastore
    //   50: dup
    //   51: bipush 6
    //   53: ldc 14
    //   55: aastore
    //   56: dup
    //   57: bipush 7
    //   59: ldc 26
    //   61: aastore
    //   62: ldc 94
    //   64: iconst_1
    //   65: anewarray 55	java/lang/String
    //   68: dup
    //   69: iconst_0
    //   70: aload_0
    //   71: aastore
    //   72: aconst_null
    //   73: aconst_null
    //   74: aconst_null
    //   75: invokevirtual 98	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   78: astore_1
    //   79: aload_1
    //   80: ifnull +16 -> 96
    //   83: aload_1
    //   84: invokeinterface 104 1 0
    //   89: istore 5
    //   91: iload 5
    //   93: ifne +18 -> 111
    //   96: aload_1
    //   97: ifnull +9 -> 106
    //   100: aload_1
    //   101: invokeinterface 107 1 0
    //   106: invokestatic 76	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   109: aload_2
    //   110: areturn
    //   111: aload_2
    //   112: new 109	com/jingdong/common/entity/UnExcuteFunction
    //   115: dup
    //   116: aload_1
    //   117: iconst_0
    //   118: invokeinterface 113 2 0
    //   123: aload_1
    //   124: iconst_1
    //   125: invokeinterface 116 2 0
    //   130: aload_1
    //   131: iconst_2
    //   132: invokeinterface 113 2 0
    //   137: aload_1
    //   138: iconst_3
    //   139: invokeinterface 113 2 0
    //   144: aload_1
    //   145: iconst_4
    //   146: invokeinterface 116 2 0
    //   151: aload_1
    //   152: iconst_5
    //   153: invokeinterface 116 2 0
    //   158: aload_1
    //   159: bipush 6
    //   161: invokeinterface 116 2 0
    //   166: aload_1
    //   167: bipush 7
    //   169: invokeinterface 116 2 0
    //   174: invokespecial 119	com/jingdong/common/entity/UnExcuteFunction:<init>	(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   177: invokevirtual 123	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   180: pop
    //   181: goto -98 -> 83
    //   184: astore 4
    //   186: aload_1
    //   187: ifnull +9 -> 196
    //   190: aload_1
    //   191: invokeinterface 107 1 0
    //   196: invokestatic 76	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   199: aload_2
    //   200: areturn
    //   201: astore_3
    //   202: aload_1
    //   203: ifnull +9 -> 212
    //   206: aload_1
    //   207: invokeinterface 107 1 0
    //   212: invokestatic 76	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   215: aload_3
    //   216: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	217	0	paramString	String
    //   1	206	1	localCursor	android.database.Cursor
    //   9	191	2	localArrayList	java.util.ArrayList
    //   201	15	3	localObject	Object
    //   184	1	4	localException	Exception
    //   89	3	5	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   10	79	184	java/lang/Exception
    //   83	91	184	java/lang/Exception
    //   111	181	184	java/lang/Exception
    //   10	79	201	finally
    //   83	91	201	finally
    //   111	181	201	finally
  }
  
  /* Error */
  public static java.util.ArrayList<UnExcuteFunction> getUnExcuteFunctionList()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_0
    //   2: new 89	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 90	java/util/ArrayList:<init>	()V
    //   9: astore_1
    //   10: invokestatic 53	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   13: ldc 29
    //   15: bipush 8
    //   17: anewarray 55	java/lang/String
    //   20: dup
    //   21: iconst_0
    //   22: ldc 92
    //   24: aastore
    //   25: dup
    //   26: iconst_1
    //   27: ldc 11
    //   29: aastore
    //   30: dup
    //   31: iconst_2
    //   32: ldc 20
    //   34: aastore
    //   35: dup
    //   36: iconst_3
    //   37: ldc 17
    //   39: aastore
    //   40: dup
    //   41: iconst_4
    //   42: ldc 23
    //   44: aastore
    //   45: dup
    //   46: iconst_5
    //   47: ldc 8
    //   49: aastore
    //   50: dup
    //   51: bipush 6
    //   53: ldc 14
    //   55: aastore
    //   56: dup
    //   57: bipush 7
    //   59: ldc 26
    //   61: aastore
    //   62: aconst_null
    //   63: aconst_null
    //   64: aconst_null
    //   65: aconst_null
    //   66: aconst_null
    //   67: invokevirtual 98	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   70: astore_0
    //   71: aload_0
    //   72: ifnull +16 -> 88
    //   75: aload_0
    //   76: invokeinterface 104 1 0
    //   81: istore 4
    //   83: iload 4
    //   85: ifne +18 -> 103
    //   88: aload_0
    //   89: ifnull +9 -> 98
    //   92: aload_0
    //   93: invokeinterface 107 1 0
    //   98: invokestatic 76	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   101: aload_1
    //   102: areturn
    //   103: aload_1
    //   104: new 109	com/jingdong/common/entity/UnExcuteFunction
    //   107: dup
    //   108: aload_0
    //   109: iconst_0
    //   110: invokeinterface 113 2 0
    //   115: aload_0
    //   116: iconst_1
    //   117: invokeinterface 116 2 0
    //   122: aload_0
    //   123: iconst_2
    //   124: invokeinterface 113 2 0
    //   129: aload_0
    //   130: iconst_3
    //   131: invokeinterface 113 2 0
    //   136: aload_0
    //   137: iconst_4
    //   138: invokeinterface 116 2 0
    //   143: aload_0
    //   144: iconst_5
    //   145: invokeinterface 116 2 0
    //   150: aload_0
    //   151: bipush 6
    //   153: invokeinterface 116 2 0
    //   158: aload_0
    //   159: bipush 7
    //   161: invokeinterface 116 2 0
    //   166: invokespecial 119	com/jingdong/common/entity/UnExcuteFunction:<init>	(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   169: invokevirtual 123	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   172: pop
    //   173: goto -98 -> 75
    //   176: astore_3
    //   177: aload_0
    //   178: ifnull +9 -> 187
    //   181: aload_0
    //   182: invokeinterface 107 1 0
    //   187: invokestatic 76	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   190: aload_1
    //   191: areturn
    //   192: astore_2
    //   193: aload_0
    //   194: ifnull +9 -> 203
    //   197: aload_0
    //   198: invokeinterface 107 1 0
    //   203: invokestatic 76	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   206: aload_2
    //   207: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   1	197	0	localCursor	android.database.Cursor
    //   9	182	1	localArrayList	java.util.ArrayList
    //   192	15	2	localObject	Object
    //   176	1	3	localException	Exception
    //   81	3	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   10	71	176	java/lang/Exception
    //   75	83	176	java/lang/Exception
    //   103	173	176	java/lang/Exception
    //   10	71	192	finally
    //   75	83	192	finally
    //   103	173	192	finally
  }
  
  public static void saveUnExcuteFunction(UnExcuteFunction paramUnExcuteFunction)
  {
    deleteUnExcuteFunctionWithFuctionMd5(paramUnExcuteFunction.getMd5());
    try
    {
      SQLiteDatabase localSQLiteDatabase = DBHelperUtil.getDatabase();
      if (paramUnExcuteFunction != null)
      {
        ContentValues localContentValues = new ContentValues();
        localContentValues.put("call_back", paramUnExcuteFunction.getCallBack());
        localContentValues.put("function_id", paramUnExcuteFunction.getFunctionId());
        localContentValues.put("function_json_params", paramUnExcuteFunction.getJsonParams());
        localContentValues.put("if_need_loading_model", Boolean.valueOf(paramUnExcuteFunction.isIfNeedLodingModel()));
        localContentValues.put("if_notify_user", Boolean.valueOf(paramUnExcuteFunction.isIfNeedNotifyUser()));
        localContentValues.put("host", paramUnExcuteFunction.getHost());
        localContentValues.put("md5", paramUnExcuteFunction.getMd5());
        localSQLiteDatabase.insert("un_excute_function_table", null, localContentValues);
      }
      return;
    }
    catch (Exception localException) {}finally
    {
      DBHelperUtil.closeDatabase();
    }
  }
  
  public static void upgrade(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("drop table if exists un_excute_function_table");
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.database.table.UnExcuteFunctionTable
 * JD-Core Version:    0.7.0.1
 */