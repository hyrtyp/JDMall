package com.jingdong.common.database.table;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.jingdong.common.entity.Product;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.utils.DBHelperUtil;
import java.util.List;

public class DB_CartTable
{
  public static final String TB_CART_TABLE = "CartTable";
  public static final String TB_CLOUMN_BUY_COUNT = "buyCount";
  public static final String TB_CLOUMN_EXTEND = "extendProt";
  public static final String TB_CLOUMN_PACKS_CODE = "packId";
  public static final String TB_CLOUMN_PRODUCT_CODE = "productCode";
  public static final String TB_CLOUMN_PRODUCT_NAME = "name";
  public static final String TB_CLOUMN_SOURCE_TYPE = "sourceType";
  public static final String TB_CLOUMN_SOURCE_VALUE = "sourceValue";
  public static final String TB_CLOUMN_USER_NAME = "userName";
  
  public static void create(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE CartTable('id' INTEGER PRIMARY KEY  NOT NULL ,name TEXT,productCode LONG,sourceType TEXT,sourceValue TEXT,buyCount 'browseTime' DATETIME DEFAULT CURRENT_TIMESTAMP)");
  }
  
  /* Error */
  public static void delAllCart()
  {
    // Byte code:
    //   0: invokestatic 55	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   3: ldc 8
    //   5: ldc 57
    //   7: aconst_null
    //   8: invokevirtual 61	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   11: pop
    //   12: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   15: return
    //   16: astore_1
    //   17: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   20: return
    //   21: astore_0
    //   22: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
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
  public static void delAllCart(Context paramContext)
  {
    // Byte code:
    //   0: invokestatic 55	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   3: ldc 8
    //   5: ldc 57
    //   7: aconst_null
    //   8: invokevirtual 61	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   11: pop
    //   12: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   15: return
    //   16: astore_2
    //   17: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   20: return
    //   21: astore_1
    //   22: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   25: aload_1
    //   26: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	27	0	paramContext	Context
    //   21	5	1	localObject	Object
    //   16	1	2	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   0	12	16	java/lang/Exception
    //   0	12	21	finally
  }
  
  /* Error */
  public static void delAllCartNoListener()
  {
    // Byte code:
    //   0: invokestatic 55	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   3: ldc 8
    //   5: ldc 57
    //   7: aconst_null
    //   8: invokevirtual 61	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   11: pop
    //   12: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   15: return
    //   16: astore_1
    //   17: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   20: return
    //   21: astore_0
    //   22: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
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
  public static void delCart(long paramLong, Context paramContext)
  {
    // Byte code:
    //   0: invokestatic 55	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   3: astore 5
    //   5: new 70	android/content/ContentValues
    //   8: dup
    //   9: invokespecial 71	android/content/ContentValues:<init>	()V
    //   12: ldc 20
    //   14: lload_0
    //   15: invokestatic 77	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   18: invokevirtual 81	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   21: iconst_1
    //   22: anewarray 83	java/lang/String
    //   25: astore 6
    //   27: aload 6
    //   29: iconst_0
    //   30: new 85	java/lang/StringBuilder
    //   33: dup
    //   34: lload_0
    //   35: invokestatic 88	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   38: invokespecial 90	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   41: invokevirtual 94	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   44: aastore
    //   45: aload 5
    //   47: ldc 8
    //   49: ldc 96
    //   51: aload 6
    //   53: invokevirtual 61	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   56: pop
    //   57: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   60: return
    //   61: astore 4
    //   63: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   66: return
    //   67: astore_3
    //   68: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   71: aload_3
    //   72: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	73	0	paramLong	long
    //   0	73	2	paramContext	Context
    //   67	5	3	localObject	Object
    //   61	1	4	localException	Exception
    //   3	43	5	localSQLiteDatabase	SQLiteDatabase
    //   25	27	6	arrayOfString	String[]
    // Exception table:
    //   from	to	target	type
    //   0	57	61	java/lang/Exception
    //   0	57	67	finally
  }
  
  /* Error */
  public static java.util.ArrayList<com.jingdong.common.entity.CartTable> getCartList()
  {
    // Byte code:
    //   0: new 100	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 101	java/util/ArrayList:<init>	()V
    //   7: astore_0
    //   8: aconst_null
    //   9: astore_1
    //   10: invokestatic 55	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   13: ldc 8
    //   15: iconst_5
    //   16: anewarray 83	java/lang/String
    //   19: dup
    //   20: iconst_0
    //   21: ldc 20
    //   23: aastore
    //   24: dup
    //   25: iconst_1
    //   26: ldc 23
    //   28: aastore
    //   29: dup
    //   30: iconst_2
    //   31: ldc 11
    //   33: aastore
    //   34: dup
    //   35: iconst_3
    //   36: ldc 26
    //   38: aastore
    //   39: dup
    //   40: iconst_4
    //   41: ldc 29
    //   43: aastore
    //   44: aconst_null
    //   45: aconst_null
    //   46: aconst_null
    //   47: aconst_null
    //   48: aconst_null
    //   49: invokevirtual 105	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   52: astore_1
    //   53: aload_1
    //   54: invokeinterface 111 1 0
    //   59: pop
    //   60: aload_1
    //   61: ifnull +30 -> 91
    //   64: aload_1
    //   65: invokeinterface 115 1 0
    //   70: ifeq +21 -> 91
    //   73: aload_1
    //   74: invokeinterface 115 1 0
    //   79: istore 5
    //   81: iconst_0
    //   82: istore 6
    //   84: iload 6
    //   86: iload 5
    //   88: if_icmplt +18 -> 106
    //   91: aload_1
    //   92: ifnull +9 -> 101
    //   95: aload_1
    //   96: invokeinterface 118 1 0
    //   101: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   104: aload_0
    //   105: areturn
    //   106: aload_1
    //   107: iload 6
    //   109: invokeinterface 122 2 0
    //   114: pop
    //   115: new 124	com/jingdong/common/entity/CartTable
    //   118: dup
    //   119: invokespecial 125	com/jingdong/common/entity/CartTable:<init>	()V
    //   122: astore 8
    //   124: aload 8
    //   126: aload_1
    //   127: aload_1
    //   128: ldc 20
    //   130: invokeinterface 129 2 0
    //   135: invokeinterface 133 2 0
    //   140: putfield 136	com/jingdong/common/entity/CartTable:productCode	J
    //   143: aload 8
    //   145: aload_1
    //   146: aload_1
    //   147: ldc 23
    //   149: invokeinterface 139 2 0
    //   154: invokeinterface 143 2 0
    //   159: putfield 145	com/jingdong/common/entity/CartTable:name	Ljava/lang/String;
    //   162: aload 8
    //   164: aload_1
    //   165: aload_1
    //   166: ldc 11
    //   168: invokeinterface 139 2 0
    //   173: invokeinterface 149 2 0
    //   178: putfield 152	com/jingdong/common/entity/CartTable:buyCount	I
    //   181: aload 8
    //   183: aload_1
    //   184: aload_1
    //   185: ldc 26
    //   187: invokeinterface 139 2 0
    //   192: invokeinterface 143 2 0
    //   197: putfield 154	com/jingdong/common/entity/CartTable:sourceType	Ljava/lang/String;
    //   200: aload 8
    //   202: aload_1
    //   203: aload_1
    //   204: ldc 29
    //   206: invokeinterface 139 2 0
    //   211: invokeinterface 143 2 0
    //   216: putfield 156	com/jingdong/common/entity/CartTable:sourceValue	Ljava/lang/String;
    //   219: aload_0
    //   220: aload 8
    //   222: invokevirtual 160	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   225: pop
    //   226: iinc 6 1
    //   229: goto -145 -> 84
    //   232: astore_3
    //   233: aload_1
    //   234: ifnull +9 -> 243
    //   237: aload_1
    //   238: invokeinterface 118 1 0
    //   243: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   246: aload_0
    //   247: areturn
    //   248: astore_2
    //   249: aload_1
    //   250: ifnull +9 -> 259
    //   253: aload_1
    //   254: invokeinterface 118 1 0
    //   259: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   262: aload_2
    //   263: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   7	240	0	localArrayList	java.util.ArrayList
    //   9	245	1	localCursor	Cursor
    //   248	15	2	localObject	Object
    //   232	1	3	localException	Exception
    //   79	10	5	i	int
    //   82	145	6	j	int
    //   122	99	8	localCartTable	com.jingdong.common.entity.CartTable
    // Exception table:
    //   from	to	target	type
    //   10	60	232	java/lang/Exception
    //   64	81	232	java/lang/Exception
    //   106	226	232	java/lang/Exception
    //   10	60	248	finally
    //   64	81	248	finally
    //   106	226	248	finally
  }
  
  /* Error */
  public static java.util.HashMap<String, Product> getCartListForProduct()
  {
    // Byte code:
    //   0: new 164	java/util/HashMap
    //   3: dup
    //   4: invokespecial 165	java/util/HashMap:<init>	()V
    //   7: astore_0
    //   8: aconst_null
    //   9: astore_1
    //   10: invokestatic 55	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   13: ldc 8
    //   15: iconst_5
    //   16: anewarray 83	java/lang/String
    //   19: dup
    //   20: iconst_0
    //   21: ldc 20
    //   23: aastore
    //   24: dup
    //   25: iconst_1
    //   26: ldc 23
    //   28: aastore
    //   29: dup
    //   30: iconst_2
    //   31: ldc 11
    //   33: aastore
    //   34: dup
    //   35: iconst_3
    //   36: ldc 26
    //   38: aastore
    //   39: dup
    //   40: iconst_4
    //   41: ldc 29
    //   43: aastore
    //   44: aconst_null
    //   45: aconst_null
    //   46: aconst_null
    //   47: aconst_null
    //   48: aconst_null
    //   49: invokevirtual 105	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   52: astore_1
    //   53: aload_1
    //   54: invokeinterface 111 1 0
    //   59: pop
    //   60: aload_1
    //   61: ifnull +30 -> 91
    //   64: aload_1
    //   65: invokeinterface 115 1 0
    //   70: ifeq +21 -> 91
    //   73: aload_1
    //   74: invokeinterface 115 1 0
    //   79: istore 5
    //   81: iconst_0
    //   82: istore 6
    //   84: iload 6
    //   86: iload 5
    //   88: if_icmplt +18 -> 106
    //   91: aload_1
    //   92: ifnull +9 -> 101
    //   95: aload_1
    //   96: invokeinterface 118 1 0
    //   101: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   104: aload_0
    //   105: areturn
    //   106: aload_1
    //   107: iload 6
    //   109: invokeinterface 122 2 0
    //   114: pop
    //   115: new 167	com/jingdong/common/entity/Product
    //   118: dup
    //   119: invokespecial 168	com/jingdong/common/entity/Product:<init>	()V
    //   122: astore 8
    //   124: aload 8
    //   126: aload_1
    //   127: aload_1
    //   128: ldc 20
    //   130: invokeinterface 129 2 0
    //   135: invokeinterface 133 2 0
    //   140: invokestatic 77	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   143: invokevirtual 172	com/jingdong/common/entity/Product:setId	(Ljava/lang/Long;)V
    //   146: aload 8
    //   148: aload_1
    //   149: aload_1
    //   150: ldc 23
    //   152: invokeinterface 139 2 0
    //   157: invokeinterface 143 2 0
    //   162: invokevirtual 175	com/jingdong/common/entity/Product:setName	(Ljava/lang/String;)V
    //   165: aload 8
    //   167: aload_1
    //   168: aload_1
    //   169: ldc 11
    //   171: invokeinterface 139 2 0
    //   176: invokeinterface 179 2 0
    //   181: invokestatic 184	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   184: invokevirtual 188	com/jingdong/common/entity/Product:setNum	(Ljava/lang/Integer;)V
    //   187: aload 8
    //   189: new 190	com/jingdong/common/entity/SourceEntity
    //   192: dup
    //   193: aload_1
    //   194: aload_1
    //   195: ldc 26
    //   197: invokeinterface 139 2 0
    //   202: invokeinterface 143 2 0
    //   207: aload_1
    //   208: aload_1
    //   209: ldc 29
    //   211: invokeinterface 139 2 0
    //   216: invokeinterface 143 2 0
    //   221: invokespecial 193	com/jingdong/common/entity/SourceEntity:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   224: invokevirtual 197	com/jingdong/common/entity/Product:setSourceEntity	(Lcom/jingdong/common/entity/SourceEntity;)V
    //   227: aload_0
    //   228: new 85	java/lang/StringBuilder
    //   231: dup
    //   232: invokespecial 198	java/lang/StringBuilder:<init>	()V
    //   235: aload 8
    //   237: invokevirtual 202	com/jingdong/common/entity/Product:getId	()Ljava/lang/Long;
    //   240: invokevirtual 206	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   243: invokevirtual 94	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   246: aload 8
    //   248: invokevirtual 209	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   251: pop
    //   252: iinc 6 1
    //   255: goto -171 -> 84
    //   258: astore_3
    //   259: aload_1
    //   260: ifnull +9 -> 269
    //   263: aload_1
    //   264: invokeinterface 118 1 0
    //   269: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   272: aload_0
    //   273: areturn
    //   274: astore_2
    //   275: aload_1
    //   276: ifnull +9 -> 285
    //   279: aload_1
    //   280: invokeinterface 118 1 0
    //   285: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   288: aload_2
    //   289: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   7	266	0	localHashMap	java.util.HashMap
    //   9	271	1	localCursor	Cursor
    //   274	15	2	localObject	Object
    //   258	1	3	localException	Exception
    //   79	10	5	i	int
    //   82	171	6	j	int
    //   122	125	8	localProduct	Product
    // Exception table:
    //   from	to	target	type
    //   10	60	258	java/lang/Exception
    //   64	81	258	java/lang/Exception
    //   106	252	258	java/lang/Exception
    //   10	60	274	finally
    //   64	81	274	finally
    //   106	252	274	finally
  }
  
  /* Error */
  public static void insertAllCart(java.util.ArrayList<com.jingdong.common.entity.CartTable> paramArrayList, Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_1
    //   4: invokestatic 213	com/jingdong/common/database/table/DB_CartTable:delAllCart	(Landroid/content/Context;)V
    //   7: invokestatic 55	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   10: astore 5
    //   12: aload_0
    //   13: ifnull +19 -> 32
    //   16: iconst_0
    //   17: istore 6
    //   19: aload_0
    //   20: invokevirtual 216	java/util/ArrayList:size	()I
    //   23: istore 7
    //   25: iload 6
    //   27: iload 7
    //   29: if_icmplt +10 -> 39
    //   32: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   35: ldc 2
    //   37: monitorexit
    //   38: return
    //   39: new 70	android/content/ContentValues
    //   42: dup
    //   43: invokespecial 71	android/content/ContentValues:<init>	()V
    //   46: astore 8
    //   48: aload_0
    //   49: iload 6
    //   51: invokevirtual 220	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   54: checkcast 124	com/jingdong/common/entity/CartTable
    //   57: astore 9
    //   59: aload 8
    //   61: ldc 20
    //   63: aload 9
    //   65: getfield 136	com/jingdong/common/entity/CartTable:productCode	J
    //   68: invokestatic 77	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   71: invokevirtual 81	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   74: aload 8
    //   76: ldc 23
    //   78: aload 9
    //   80: getfield 145	com/jingdong/common/entity/CartTable:name	Ljava/lang/String;
    //   83: invokevirtual 222	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   86: aload 8
    //   88: ldc 11
    //   90: aload 9
    //   92: getfield 152	com/jingdong/common/entity/CartTable:buyCount	I
    //   95: invokestatic 184	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   98: invokevirtual 225	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   101: aload 8
    //   103: ldc 26
    //   105: aload 9
    //   107: getfield 154	com/jingdong/common/entity/CartTable:sourceType	Ljava/lang/String;
    //   110: invokevirtual 222	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   113: aload 8
    //   115: ldc 29
    //   117: aload 9
    //   119: getfield 156	com/jingdong/common/entity/CartTable:sourceValue	Ljava/lang/String;
    //   122: invokevirtual 222	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   125: aload 5
    //   127: ldc 8
    //   129: aconst_null
    //   130: aload 8
    //   132: invokevirtual 229	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   135: pop2
    //   136: iinc 6 1
    //   139: goto -120 -> 19
    //   142: astore 4
    //   144: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   147: goto -112 -> 35
    //   150: astore_2
    //   151: ldc 2
    //   153: monitorexit
    //   154: aload_2
    //   155: athrow
    //   156: astore_3
    //   157: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   160: aload_3
    //   161: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	162	0	paramArrayList	java.util.ArrayList<com.jingdong.common.entity.CartTable>
    //   0	162	1	paramContext	Context
    //   150	5	2	localObject1	Object
    //   156	5	3	localObject2	Object
    //   142	1	4	localException	Exception
    //   10	116	5	localSQLiteDatabase	SQLiteDatabase
    //   17	120	6	i	int
    //   23	7	7	j	int
    //   46	85	8	localContentValues	ContentValues
    //   57	61	9	localCartTable	com.jingdong.common.entity.CartTable
    // Exception table:
    //   from	to	target	type
    //   7	12	142	java/lang/Exception
    //   19	25	142	java/lang/Exception
    //   39	136	142	java/lang/Exception
    //   3	7	150	finally
    //   32	35	150	finally
    //   144	147	150	finally
    //   157	162	150	finally
    //   7	12	156	finally
    //   19	25	156	finally
    //   39	136	156	finally
  }
  
  public static void insertAllCart(List<Product> paramList)
  {
    for (;;)
    {
      try
      {
        localSQLiteDatabase = DBHelperUtil.getDatabase();
        if (paramList != null)
        {
          i = 0;
          int j = paramList.size();
          if (i < j) {
            continue;
          }
        }
      }
      catch (Exception localException)
      {
        SQLiteDatabase localSQLiteDatabase;
        int i;
        ContentValues localContentValues;
        Product localProduct;
        SourceEntity localSourceEntity;
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
      localContentValues = new ContentValues();
      localProduct = (Product)paramList.get(i);
      localContentValues.put("productCode", localProduct.getId());
      localContentValues.put("name", localProduct.getName());
      localContentValues.put("buyCount", localProduct.getNum());
      localSourceEntity = localProduct.getSourceEntity();
      if (localSourceEntity != null)
      {
        localContentValues.put("sourceType", localSourceEntity.getSourceType());
        localContentValues.put("sourceValue", localSourceEntity.getSourceValue());
      }
      localSQLiteDatabase.insert("CartTable", null, localContentValues);
      i++;
    }
  }
  
  /* Error */
  public static void insertCart(long paramLong, String paramString1, int paramInt, String paramString2, String paramString3, Context paramContext)
  {
    // Byte code:
    //   0: invokestatic 55	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   3: astore 9
    //   5: new 70	android/content/ContentValues
    //   8: dup
    //   9: invokespecial 71	android/content/ContentValues:<init>	()V
    //   12: astore 10
    //   14: aload 10
    //   16: ldc 20
    //   18: lload_0
    //   19: invokestatic 77	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   22: invokevirtual 81	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   25: aload 10
    //   27: ldc 23
    //   29: aload_2
    //   30: invokevirtual 222	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   33: aload 10
    //   35: ldc 11
    //   37: iload_3
    //   38: invokestatic 184	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   41: invokevirtual 225	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   44: aload 10
    //   46: ldc 26
    //   48: aload 4
    //   50: invokevirtual 222	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   53: aload 10
    //   55: ldc 29
    //   57: aload 5
    //   59: invokevirtual 222	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   62: aload 9
    //   64: ldc 8
    //   66: aconst_null
    //   67: aload 10
    //   69: invokevirtual 229	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   72: pop2
    //   73: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   76: return
    //   77: astore 8
    //   79: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   82: return
    //   83: astore 7
    //   85: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   88: aload 7
    //   90: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	91	0	paramLong	long
    //   0	91	2	paramString1	String
    //   0	91	3	paramInt	int
    //   0	91	4	paramString2	String
    //   0	91	5	paramString3	String
    //   0	91	6	paramContext	Context
    //   83	6	7	localObject	Object
    //   77	1	8	localException	Exception
    //   3	60	9	localSQLiteDatabase	SQLiteDatabase
    //   12	56	10	localContentValues	ContentValues
    // Exception table:
    //   from	to	target	type
    //   0	73	77	java/lang/Exception
    //   0	73	83	finally
  }
  
  public static void insertSingletonCart(Product paramProduct)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase1 = DBHelperUtil.getDatabase();
      String[] arrayOfString = new String[1];
      arrayOfString[0] = paramProduct.getId();
      Cursor localCursor = localSQLiteDatabase1.query("CartTable", null, "productCode=?", arrayOfString, null, null, null);
      localCursor.moveToFirst();
      if ((localCursor == null) || (localCursor.getCount() == 0))
      {
        SQLiteDatabase localSQLiteDatabase2 = DBHelperUtil.getDatabase();
        ContentValues localContentValues = new ContentValues();
        localContentValues.put("productCode", paramProduct.getId());
        localContentValues.put("name", paramProduct.getName());
        localContentValues.put("buyCount", paramProduct.getNum());
        SourceEntity localSourceEntity = paramProduct.getSourceEntity();
        if (localSourceEntity != null)
        {
          localContentValues.put("sourceType", localSourceEntity.getSourceType());
          localContentValues.put("sourceValue", localSourceEntity.getSourceValue());
        }
        localSQLiteDatabase2.insert("CartTable", null, localContentValues);
      }
      return;
    }
    catch (Exception localException) {}finally
    {
      DBHelperUtil.closeDatabase();
    }
  }
  
  /* Error */
  public static com.jingdong.common.entity.CartTable queryCartByProductId(long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore_3
    //   4: invokestatic 55	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   7: astore 6
    //   9: iconst_1
    //   10: anewarray 83	java/lang/String
    //   13: astore 7
    //   15: aload 7
    //   17: iconst_0
    //   18: new 85	java/lang/StringBuilder
    //   21: dup
    //   22: lload_0
    //   23: invokestatic 88	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   26: invokespecial 90	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   29: invokevirtual 94	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   32: aastore
    //   33: aload 6
    //   35: ldc 8
    //   37: iconst_5
    //   38: anewarray 83	java/lang/String
    //   41: dup
    //   42: iconst_0
    //   43: ldc 20
    //   45: aastore
    //   46: dup
    //   47: iconst_1
    //   48: ldc 23
    //   50: aastore
    //   51: dup
    //   52: iconst_2
    //   53: ldc 11
    //   55: aastore
    //   56: dup
    //   57: iconst_3
    //   58: ldc 26
    //   60: aastore
    //   61: dup
    //   62: iconst_4
    //   63: ldc 29
    //   65: aastore
    //   66: ldc 96
    //   68: aload 7
    //   70: aconst_null
    //   71: aconst_null
    //   72: aconst_null
    //   73: invokevirtual 105	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   76: astore_3
    //   77: aload_3
    //   78: invokeinterface 111 1 0
    //   83: pop
    //   84: aconst_null
    //   85: astore_2
    //   86: aload_3
    //   87: ifnull +133 -> 220
    //   90: aload_3
    //   91: invokeinterface 115 1 0
    //   96: istore 9
    //   98: aconst_null
    //   99: astore_2
    //   100: iload 9
    //   102: ifeq +118 -> 220
    //   105: aload_3
    //   106: iconst_0
    //   107: invokeinterface 122 2 0
    //   112: pop
    //   113: new 124	com/jingdong/common/entity/CartTable
    //   116: dup
    //   117: invokespecial 125	com/jingdong/common/entity/CartTable:<init>	()V
    //   120: astore 11
    //   122: aload 11
    //   124: aload_3
    //   125: aload_3
    //   126: ldc 20
    //   128: invokeinterface 129 2 0
    //   133: invokeinterface 133 2 0
    //   138: putfield 136	com/jingdong/common/entity/CartTable:productCode	J
    //   141: aload 11
    //   143: aload_3
    //   144: aload_3
    //   145: ldc 23
    //   147: invokeinterface 139 2 0
    //   152: invokeinterface 143 2 0
    //   157: putfield 145	com/jingdong/common/entity/CartTable:name	Ljava/lang/String;
    //   160: aload 11
    //   162: aload_3
    //   163: aload_3
    //   164: ldc 11
    //   166: invokeinterface 139 2 0
    //   171: invokeinterface 149 2 0
    //   176: putfield 152	com/jingdong/common/entity/CartTable:buyCount	I
    //   179: aload 11
    //   181: aload_3
    //   182: aload_3
    //   183: ldc 26
    //   185: invokeinterface 139 2 0
    //   190: invokeinterface 143 2 0
    //   195: putfield 154	com/jingdong/common/entity/CartTable:sourceType	Ljava/lang/String;
    //   198: aload 11
    //   200: aload_3
    //   201: aload_3
    //   202: ldc 29
    //   204: invokeinterface 139 2 0
    //   209: invokeinterface 143 2 0
    //   214: putfield 156	com/jingdong/common/entity/CartTable:sourceValue	Ljava/lang/String;
    //   217: aload 11
    //   219: astore_2
    //   220: aload_3
    //   221: ifnull +9 -> 230
    //   224: aload_3
    //   225: invokeinterface 118 1 0
    //   230: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   233: aload_2
    //   234: areturn
    //   235: astore 5
    //   237: aload_3
    //   238: ifnull +9 -> 247
    //   241: aload_3
    //   242: invokeinterface 118 1 0
    //   247: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   250: aload_2
    //   251: areturn
    //   252: astore 4
    //   254: aload_3
    //   255: ifnull +9 -> 264
    //   258: aload_3
    //   259: invokeinterface 118 1 0
    //   264: invokestatic 64	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   267: aload 4
    //   269: athrow
    //   270: astore 4
    //   272: goto -18 -> 254
    //   275: astore 12
    //   277: aload 11
    //   279: astore_2
    //   280: goto -43 -> 237
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	283	0	paramLong	long
    //   1	279	2	localObject1	Object
    //   3	256	3	localCursor	Cursor
    //   252	16	4	localObject2	Object
    //   270	1	4	localObject3	Object
    //   235	1	5	localException1	Exception
    //   7	27	6	localSQLiteDatabase	SQLiteDatabase
    //   13	56	7	arrayOfString	String[]
    //   96	5	9	i	int
    //   120	158	11	localCartTable	com.jingdong.common.entity.CartTable
    //   275	1	12	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   4	84	235	java/lang/Exception
    //   90	98	235	java/lang/Exception
    //   105	122	235	java/lang/Exception
    //   4	84	252	finally
    //   90	98	252	finally
    //   105	122	252	finally
    //   122	217	270	finally
    //   122	217	275	java/lang/Exception
  }
  
  public static void updateCart(long paramLong, String paramString, int paramInt, Context paramContext)
  {
    updateCart(paramLong, paramString, paramInt, null, null, paramContext, false);
  }
  
  public static void updateCart(long paramLong, String paramString1, int paramInt, String paramString2, String paramString3, Context paramContext)
  {
    updateCart(paramLong, paramString1, paramInt, paramString2, paramString3, paramContext, true);
  }
  
  public static void updateCart(long paramLong, String paramString1, int paramInt, String paramString2, String paramString3, Context paramContext, boolean paramBoolean)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = DBHelperUtil.getDatabase();
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("productCode", Long.valueOf(paramLong));
      localContentValues.put("name", paramString1);
      localContentValues.put("buyCount", Integer.valueOf(paramInt));
      if (paramBoolean)
      {
        localContentValues.put("sourceType", paramString2);
        localContentValues.put("sourceValue", paramString3);
      }
      String[] arrayOfString = new String[1];
      arrayOfString[0] = paramLong;
      localSQLiteDatabase.update("CartTable", localContentValues, "productCode =?", arrayOfString);
      return;
    }
    catch (Exception localException) {}finally
    {
      DBHelperUtil.closeDatabase();
    }
  }
  
  public static void upgrade(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("drop table if exists CartTable");
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.database.table.DB_CartTable
 * JD-Core Version:    0.7.0.1
 */