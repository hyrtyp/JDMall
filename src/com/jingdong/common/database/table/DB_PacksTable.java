package com.jingdong.common.database.table;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.jingdong.common.entity.Pack;
import com.jingdong.common.entity.PacksTable;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.utils.DBHelperUtil;
import java.util.ArrayList;
import java.util.List;

public class DB_PacksTable
{
  public static final String TB_CLOUMN_SOURCE_TYPE = "sourceType";
  public static final String TB_CLOUMN_SOURCE_VALUE = "sourceValue";
  public static final String TB_COLOUMN_BUY_COUNT = "buyCount";
  public static final String TB_COLOUMN_CHILD_COUNT = "childCount";
  public static final String TB_COLOUMN_MAIN_SKU_ID = "mainSkuId";
  public static final String TB_COLOUMN_PACK_ID = "packId";
  public static final String TB_COLOUMN_PRODUCT_CODE = "productCode";
  public static final String TB_COLOUMN_PRODUCT_NAME = "name";
  public static final String TB_COLOUMN_USER_NAME = "userName";
  public static final String TB_PACKS_TABLE = "PacksTable";
  
  public static void create(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE PacksTable('id' INTEGER PRIMARY KEY  NOT NULL ,packId LONG,name TEXT,buyCount INTEGER,childCount INTEGER,sourceType TEXT,sourceValue TEXT, 'browseTime' DATETIME DEFAULT CURRENT_TIMESTAMP)");
  }
  
  /* Error */
  public static void delAllPacksCart()
  {
    // Byte code:
    //   0: invokestatic 58	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   3: ldc 35
    //   5: ldc 60
    //   7: aconst_null
    //   8: invokevirtual 64	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   11: pop
    //   12: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   15: return
    //   16: astore_1
    //   17: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   20: return
    //   21: astore_0
    //   22: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
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
  public static void delAllPacksCart(Context paramContext)
  {
    // Byte code:
    //   0: invokestatic 58	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   3: ldc 35
    //   5: ldc 60
    //   7: aconst_null
    //   8: invokevirtual 64	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   11: pop
    //   12: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   15: return
    //   16: astore_2
    //   17: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   20: return
    //   21: astore_1
    //   22: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
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
  public static void delAllPacksCartNoListener()
  {
    // Byte code:
    //   0: invokestatic 58	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   3: ldc 35
    //   5: ldc 60
    //   7: aconst_null
    //   8: invokevirtual 64	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   11: pop
    //   12: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   15: return
    //   16: astore_1
    //   17: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   20: return
    //   21: astore_0
    //   22: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
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
  public static void delPacksCart(long paramLong, Context paramContext)
  {
    // Byte code:
    //   0: invokestatic 58	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   3: astore 5
    //   5: new 73	android/content/ContentValues
    //   8: dup
    //   9: invokespecial 74	android/content/ContentValues:<init>	()V
    //   12: ldc 23
    //   14: lload_0
    //   15: invokestatic 80	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   18: invokevirtual 84	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   21: iconst_1
    //   22: anewarray 86	java/lang/String
    //   25: astore 6
    //   27: aload 6
    //   29: iconst_0
    //   30: new 88	java/lang/StringBuilder
    //   33: dup
    //   34: lload_0
    //   35: invokestatic 91	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   38: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   41: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   44: aastore
    //   45: aload 5
    //   47: ldc 35
    //   49: ldc 99
    //   51: aload 6
    //   53: invokevirtual 64	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   56: pop
    //   57: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   60: return
    //   61: astore 4
    //   63: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   66: return
    //   67: astore_3
    //   68: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
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
  public static ArrayList<PacksTable> getPacksList()
  {
    // Byte code:
    //   0: new 103	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 104	java/util/ArrayList:<init>	()V
    //   7: astore_0
    //   8: aconst_null
    //   9: astore_1
    //   10: invokestatic 58	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   13: ldc 35
    //   15: bipush 6
    //   17: anewarray 86	java/lang/String
    //   20: dup
    //   21: iconst_0
    //   22: ldc 23
    //   24: aastore
    //   25: dup
    //   26: iconst_1
    //   27: ldc 29
    //   29: aastore
    //   30: dup
    //   31: iconst_2
    //   32: ldc 14
    //   34: aastore
    //   35: dup
    //   36: iconst_3
    //   37: ldc 17
    //   39: aastore
    //   40: dup
    //   41: iconst_4
    //   42: ldc 8
    //   44: aastore
    //   45: dup
    //   46: iconst_5
    //   47: ldc 11
    //   49: aastore
    //   50: aconst_null
    //   51: aconst_null
    //   52: aconst_null
    //   53: aconst_null
    //   54: aconst_null
    //   55: invokevirtual 108	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   58: astore_1
    //   59: aload_1
    //   60: invokeinterface 114 1 0
    //   65: pop
    //   66: aload_1
    //   67: ifnull +30 -> 97
    //   70: aload_1
    //   71: invokeinterface 118 1 0
    //   76: ifeq +21 -> 97
    //   79: aload_1
    //   80: invokeinterface 118 1 0
    //   85: istore 5
    //   87: iconst_0
    //   88: istore 6
    //   90: iload 6
    //   92: iload 5
    //   94: if_icmplt +18 -> 112
    //   97: aload_1
    //   98: ifnull +9 -> 107
    //   101: aload_1
    //   102: invokeinterface 121 1 0
    //   107: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   110: aload_0
    //   111: areturn
    //   112: aload_1
    //   113: iload 6
    //   115: invokeinterface 125 2 0
    //   120: pop
    //   121: new 127	com/jingdong/common/entity/PacksTable
    //   124: dup
    //   125: invokespecial 128	com/jingdong/common/entity/PacksTable:<init>	()V
    //   128: astore 8
    //   130: aload 8
    //   132: aload_1
    //   133: aload_1
    //   134: ldc 23
    //   136: invokeinterface 132 2 0
    //   141: invokeinterface 136 2 0
    //   146: putfield 139	com/jingdong/common/entity/PacksTable:packId	J
    //   149: aload 8
    //   151: aload_1
    //   152: aload_1
    //   153: ldc 29
    //   155: invokeinterface 142 2 0
    //   160: invokeinterface 146 2 0
    //   165: putfield 148	com/jingdong/common/entity/PacksTable:name	Ljava/lang/String;
    //   168: aload 8
    //   170: aload_1
    //   171: aload_1
    //   172: ldc 14
    //   174: invokeinterface 142 2 0
    //   179: invokeinterface 152 2 0
    //   184: putfield 155	com/jingdong/common/entity/PacksTable:buyCount	I
    //   187: aload 8
    //   189: aload_1
    //   190: aload_1
    //   191: ldc 17
    //   193: invokeinterface 132 2 0
    //   198: invokeinterface 159 2 0
    //   203: putfield 161	com/jingdong/common/entity/PacksTable:childCount	I
    //   206: aload 8
    //   208: aload_1
    //   209: aload_1
    //   210: ldc 8
    //   212: invokeinterface 142 2 0
    //   217: invokeinterface 146 2 0
    //   222: putfield 163	com/jingdong/common/entity/PacksTable:sourceType	Ljava/lang/String;
    //   225: aload 8
    //   227: aload_1
    //   228: aload_1
    //   229: ldc 11
    //   231: invokeinterface 142 2 0
    //   236: invokeinterface 146 2 0
    //   241: putfield 165	com/jingdong/common/entity/PacksTable:sourceValue	Ljava/lang/String;
    //   244: aload_0
    //   245: aload 8
    //   247: invokevirtual 169	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   250: pop
    //   251: iinc 6 1
    //   254: goto -164 -> 90
    //   257: astore_3
    //   258: aload_1
    //   259: ifnull +9 -> 268
    //   262: aload_1
    //   263: invokeinterface 121 1 0
    //   268: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   271: aload_0
    //   272: areturn
    //   273: astore_2
    //   274: aload_1
    //   275: ifnull +9 -> 284
    //   278: aload_1
    //   279: invokeinterface 121 1 0
    //   284: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   287: aload_2
    //   288: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   7	265	0	localArrayList	ArrayList
    //   9	270	1	localCursor	android.database.Cursor
    //   273	15	2	localObject	Object
    //   257	1	3	localException	Exception
    //   85	10	5	i	int
    //   88	164	6	j	int
    //   128	118	8	localPacksTable	PacksTable
    // Exception table:
    //   from	to	target	type
    //   10	66	257	java/lang/Exception
    //   70	87	257	java/lang/Exception
    //   112	251	257	java/lang/Exception
    //   10	66	273	finally
    //   70	87	273	finally
    //   112	251	273	finally
  }
  
  /* Error */
  public static java.util.HashMap<String, Pack> getPacksListForPack()
  {
    // Byte code:
    //   0: new 173	java/util/HashMap
    //   3: dup
    //   4: invokespecial 174	java/util/HashMap:<init>	()V
    //   7: astore_0
    //   8: aconst_null
    //   9: astore_1
    //   10: invokestatic 58	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   13: ldc 35
    //   15: bipush 6
    //   17: anewarray 86	java/lang/String
    //   20: dup
    //   21: iconst_0
    //   22: ldc 23
    //   24: aastore
    //   25: dup
    //   26: iconst_1
    //   27: ldc 29
    //   29: aastore
    //   30: dup
    //   31: iconst_2
    //   32: ldc 14
    //   34: aastore
    //   35: dup
    //   36: iconst_3
    //   37: ldc 17
    //   39: aastore
    //   40: dup
    //   41: iconst_4
    //   42: ldc 8
    //   44: aastore
    //   45: dup
    //   46: iconst_5
    //   47: ldc 11
    //   49: aastore
    //   50: aconst_null
    //   51: aconst_null
    //   52: aconst_null
    //   53: aconst_null
    //   54: aconst_null
    //   55: invokevirtual 108	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   58: astore_1
    //   59: aload_1
    //   60: invokeinterface 114 1 0
    //   65: pop
    //   66: aload_1
    //   67: ifnull +30 -> 97
    //   70: aload_1
    //   71: invokeinterface 118 1 0
    //   76: ifeq +21 -> 97
    //   79: aload_1
    //   80: invokeinterface 118 1 0
    //   85: istore 5
    //   87: iconst_0
    //   88: istore 6
    //   90: iload 6
    //   92: iload 5
    //   94: if_icmplt +18 -> 112
    //   97: aload_1
    //   98: ifnull +9 -> 107
    //   101: aload_1
    //   102: invokeinterface 121 1 0
    //   107: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   110: aload_0
    //   111: areturn
    //   112: aload_1
    //   113: iload 6
    //   115: invokeinterface 125 2 0
    //   120: pop
    //   121: new 176	com/jingdong/common/entity/Pack
    //   124: dup
    //   125: invokespecial 177	com/jingdong/common/entity/Pack:<init>	()V
    //   128: astore 8
    //   130: aload 8
    //   132: aload_1
    //   133: aload_1
    //   134: ldc 23
    //   136: invokeinterface 132 2 0
    //   141: invokeinterface 136 2 0
    //   146: invokestatic 80	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   149: invokevirtual 181	com/jingdong/common/entity/Pack:setId	(Ljava/lang/Long;)V
    //   152: aload 8
    //   154: aload_1
    //   155: aload_1
    //   156: ldc 29
    //   158: invokeinterface 142 2 0
    //   163: invokeinterface 146 2 0
    //   168: invokevirtual 184	com/jingdong/common/entity/Pack:setName	(Ljava/lang/String;)V
    //   171: aload 8
    //   173: aload_1
    //   174: aload_1
    //   175: ldc 14
    //   177: invokeinterface 142 2 0
    //   182: invokeinterface 159 2 0
    //   187: invokestatic 189	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   190: invokevirtual 193	com/jingdong/common/entity/Pack:setNum	(Ljava/lang/Integer;)V
    //   193: aload 8
    //   195: aload_1
    //   196: aload_1
    //   197: ldc 17
    //   199: invokeinterface 132 2 0
    //   204: invokeinterface 159 2 0
    //   209: invokestatic 189	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   212: invokevirtual 196	com/jingdong/common/entity/Pack:setProductCount	(Ljava/lang/Integer;)V
    //   215: aload 8
    //   217: new 198	com/jingdong/common/entity/SourceEntity
    //   220: dup
    //   221: aload_1
    //   222: aload_1
    //   223: ldc 8
    //   225: invokeinterface 142 2 0
    //   230: invokeinterface 146 2 0
    //   235: aload_1
    //   236: aload_1
    //   237: ldc 11
    //   239: invokeinterface 142 2 0
    //   244: invokeinterface 146 2 0
    //   249: invokespecial 201	com/jingdong/common/entity/SourceEntity:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   252: invokevirtual 205	com/jingdong/common/entity/Pack:setSourceEntity	(Lcom/jingdong/common/entity/SourceEntity;)V
    //   255: aload_0
    //   256: new 88	java/lang/StringBuilder
    //   259: dup
    //   260: invokespecial 206	java/lang/StringBuilder:<init>	()V
    //   263: aload 8
    //   265: invokevirtual 210	com/jingdong/common/entity/Pack:getId	()Ljava/lang/Long;
    //   268: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   271: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   274: aload 8
    //   276: invokevirtual 217	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   279: pop
    //   280: iinc 6 1
    //   283: goto -193 -> 90
    //   286: astore_3
    //   287: aload_1
    //   288: ifnull +9 -> 297
    //   291: aload_1
    //   292: invokeinterface 121 1 0
    //   297: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   300: aload_0
    //   301: areturn
    //   302: astore_2
    //   303: aload_1
    //   304: ifnull +9 -> 313
    //   307: aload_1
    //   308: invokeinterface 121 1 0
    //   313: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   316: aload_2
    //   317: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   7	294	0	localHashMap	java.util.HashMap
    //   9	299	1	localCursor	android.database.Cursor
    //   302	15	2	localObject	Object
    //   286	1	3	localException	Exception
    //   85	10	5	i	int
    //   88	193	6	j	int
    //   128	147	8	localPack	Pack
    // Exception table:
    //   from	to	target	type
    //   10	66	286	java/lang/Exception
    //   70	87	286	java/lang/Exception
    //   112	280	286	java/lang/Exception
    //   10	66	302	finally
    //   70	87	302	finally
    //   112	280	302	finally
  }
  
  public static void insertAllPacksCart(ArrayList<PacksTable> paramArrayList, Context paramContext)
  {
    for (;;)
    {
      try
      {
        localSQLiteDatabase = DBHelperUtil.getDatabase();
        if (paramArrayList != null)
        {
          i = 0;
          int j = paramArrayList.size();
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
        PacksTable localPacksTable;
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
      localPacksTable = (PacksTable)paramArrayList.get(i);
      localContentValues.put("packId", Long.valueOf(localPacksTable.packId));
      localContentValues.put("name", localPacksTable.name);
      localContentValues.put("buyCount", Integer.valueOf(localPacksTable.buyCount));
      localContentValues.put("childCount", Integer.valueOf(localPacksTable.childCount));
      localContentValues.put("sourceType", localPacksTable.sourceType);
      localContentValues.put("sourceValue", localPacksTable.sourceValue);
      localSQLiteDatabase.insert("PacksTable", null, localContentValues);
      i++;
    }
  }
  
  public static void insertAllPacksCart(List<Pack> paramList)
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
        Pack localPack;
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
      localPack = (Pack)paramList.get(i);
      localContentValues.put("packId", localPack.getId());
      localContentValues.put("name", localPack.getName());
      localContentValues.put("buyCount", localPack.getNum());
      localContentValues.put("childCount", localPack.getProductCount());
      localSourceEntity = localPack.getSourceEntity();
      if (localSourceEntity != null)
      {
        localContentValues.put("sourceType", localSourceEntity.getSourceType());
        localContentValues.put("sourceValue", localSourceEntity.getSourceValue());
      }
      localSQLiteDatabase.insert("PacksTable", null, localContentValues);
      i++;
    }
  }
  
  /* Error */
  public static void insertPacksCart(long paramLong, String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3, Context paramContext)
  {
    // Byte code:
    //   0: invokestatic 58	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   3: astore 10
    //   5: new 73	android/content/ContentValues
    //   8: dup
    //   9: invokespecial 74	android/content/ContentValues:<init>	()V
    //   12: astore 11
    //   14: aload 11
    //   16: ldc 23
    //   18: lload_0
    //   19: invokestatic 80	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   22: invokevirtual 84	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   25: aload 11
    //   27: ldc 29
    //   29: aload_2
    //   30: invokevirtual 228	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   33: aload 11
    //   35: ldc 14
    //   37: iload_3
    //   38: invokestatic 189	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   41: invokevirtual 231	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   44: aload 11
    //   46: ldc 17
    //   48: iload 4
    //   50: invokestatic 189	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   53: invokevirtual 231	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   56: aload 11
    //   58: ldc 8
    //   60: aload 5
    //   62: invokevirtual 228	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   65: aload 11
    //   67: ldc 11
    //   69: aload 6
    //   71: invokevirtual 228	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   74: aload 10
    //   76: ldc 35
    //   78: aconst_null
    //   79: aload 11
    //   81: invokevirtual 235	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   84: pop2
    //   85: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   88: return
    //   89: astore 9
    //   91: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   94: return
    //   95: astore 8
    //   97: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   100: aload 8
    //   102: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	103	0	paramLong	long
    //   0	103	2	paramString1	String
    //   0	103	3	paramInt1	int
    //   0	103	4	paramInt2	int
    //   0	103	5	paramString2	String
    //   0	103	6	paramString3	String
    //   0	103	7	paramContext	Context
    //   95	6	8	localObject	Object
    //   89	1	9	localException	Exception
    //   3	72	10	localSQLiteDatabase	SQLiteDatabase
    //   12	68	11	localContentValues	ContentValues
    // Exception table:
    //   from	to	target	type
    //   0	85	89	java/lang/Exception
    //   0	85	95	finally
  }
  
  /* Error */
  public static void insertSingletonPacksCart(Pack paramPack)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: invokestatic 58	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   6: astore 4
    //   8: iconst_1
    //   9: anewarray 86	java/lang/String
    //   12: astore 5
    //   14: aload 5
    //   16: iconst_0
    //   17: new 88	java/lang/StringBuilder
    //   20: dup
    //   21: invokespecial 206	java/lang/StringBuilder:<init>	()V
    //   24: aload_0
    //   25: invokevirtual 210	com/jingdong/common/entity/Pack:getId	()Ljava/lang/Long;
    //   28: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   31: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   34: aastore
    //   35: aload 4
    //   37: ldc 35
    //   39: aconst_null
    //   40: ldc_w 266
    //   43: aload 5
    //   45: aconst_null
    //   46: aconst_null
    //   47: aconst_null
    //   48: invokevirtual 108	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   51: astore 6
    //   53: aload 6
    //   55: invokeinterface 114 1 0
    //   60: pop
    //   61: aload 6
    //   63: ifnull +13 -> 76
    //   66: aload 6
    //   68: invokeinterface 118 1 0
    //   73: ifne +102 -> 175
    //   76: new 73	android/content/ContentValues
    //   79: dup
    //   80: invokespecial 74	android/content/ContentValues:<init>	()V
    //   83: astore 8
    //   85: aload 8
    //   87: ldc 23
    //   89: aload_0
    //   90: invokevirtual 210	com/jingdong/common/entity/Pack:getId	()Ljava/lang/Long;
    //   93: invokevirtual 84	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   96: aload 8
    //   98: ldc 29
    //   100: aload_0
    //   101: invokevirtual 243	com/jingdong/common/entity/Pack:getName	()Ljava/lang/String;
    //   104: invokevirtual 228	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   107: aload 8
    //   109: ldc 14
    //   111: aload_0
    //   112: invokevirtual 247	com/jingdong/common/entity/Pack:getNum	()Ljava/lang/Integer;
    //   115: invokevirtual 231	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   118: aload 8
    //   120: ldc 17
    //   122: aload_0
    //   123: invokevirtual 250	com/jingdong/common/entity/Pack:getProductCount	()Ljava/lang/Integer;
    //   126: invokevirtual 231	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   129: aload_0
    //   130: invokevirtual 254	com/jingdong/common/entity/Pack:getSourceEntity	()Lcom/jingdong/common/entity/SourceEntity;
    //   133: astore 9
    //   135: aload 9
    //   137: ifnull +27 -> 164
    //   140: aload 8
    //   142: ldc 8
    //   144: aload 9
    //   146: invokevirtual 257	com/jingdong/common/entity/SourceEntity:getSourceType	()Ljava/lang/String;
    //   149: invokevirtual 228	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   152: aload 8
    //   154: ldc 11
    //   156: aload 9
    //   158: invokevirtual 260	com/jingdong/common/entity/SourceEntity:getSourceValue	()Ljava/lang/String;
    //   161: invokevirtual 228	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   164: aload 4
    //   166: ldc 35
    //   168: aconst_null
    //   169: aload 8
    //   171: invokevirtual 235	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   174: pop2
    //   175: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   178: ldc 2
    //   180: monitorexit
    //   181: return
    //   182: astore_3
    //   183: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   186: goto -8 -> 178
    //   189: astore_2
    //   190: ldc 2
    //   192: monitorexit
    //   193: aload_2
    //   194: athrow
    //   195: astore_1
    //   196: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   199: aload_1
    //   200: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	201	0	paramPack	Pack
    //   195	5	1	localObject1	Object
    //   189	5	2	localObject2	Object
    //   182	1	3	localException	Exception
    //   6	159	4	localSQLiteDatabase	SQLiteDatabase
    //   12	32	5	arrayOfString	String[]
    //   51	16	6	localCursor	android.database.Cursor
    //   83	87	8	localContentValues	ContentValues
    //   133	24	9	localSourceEntity	SourceEntity
    // Exception table:
    //   from	to	target	type
    //   3	61	182	java/lang/Exception
    //   66	76	182	java/lang/Exception
    //   76	135	182	java/lang/Exception
    //   140	164	182	java/lang/Exception
    //   164	175	182	java/lang/Exception
    //   175	178	189	finally
    //   183	186	189	finally
    //   196	201	189	finally
    //   3	61	195	finally
    //   66	76	195	finally
    //   76	135	195	finally
    //   140	164	195	finally
    //   164	175	195	finally
  }
  
  /* Error */
  public static PacksTable queryCartByPacksId(long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore_3
    //   4: invokestatic 58	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   7: astore 6
    //   9: iconst_1
    //   10: anewarray 86	java/lang/String
    //   13: astore 7
    //   15: aload 7
    //   17: iconst_0
    //   18: new 88	java/lang/StringBuilder
    //   21: dup
    //   22: lload_0
    //   23: invokestatic 91	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   26: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   29: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   32: aastore
    //   33: aload 6
    //   35: ldc 35
    //   37: bipush 6
    //   39: anewarray 86	java/lang/String
    //   42: dup
    //   43: iconst_0
    //   44: ldc 23
    //   46: aastore
    //   47: dup
    //   48: iconst_1
    //   49: ldc 29
    //   51: aastore
    //   52: dup
    //   53: iconst_2
    //   54: ldc 14
    //   56: aastore
    //   57: dup
    //   58: iconst_3
    //   59: ldc 17
    //   61: aastore
    //   62: dup
    //   63: iconst_4
    //   64: ldc 8
    //   66: aastore
    //   67: dup
    //   68: iconst_5
    //   69: ldc 11
    //   71: aastore
    //   72: ldc 99
    //   74: aload 7
    //   76: aconst_null
    //   77: aconst_null
    //   78: aconst_null
    //   79: invokevirtual 108	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   82: astore_3
    //   83: aload_3
    //   84: invokeinterface 114 1 0
    //   89: pop
    //   90: aconst_null
    //   91: astore_2
    //   92: aload_3
    //   93: ifnull +152 -> 245
    //   96: aload_3
    //   97: invokeinterface 118 1 0
    //   102: istore 9
    //   104: aconst_null
    //   105: astore_2
    //   106: iload 9
    //   108: ifeq +137 -> 245
    //   111: aload_3
    //   112: iconst_0
    //   113: invokeinterface 125 2 0
    //   118: pop
    //   119: new 127	com/jingdong/common/entity/PacksTable
    //   122: dup
    //   123: invokespecial 128	com/jingdong/common/entity/PacksTable:<init>	()V
    //   126: astore 11
    //   128: aload 11
    //   130: aload_3
    //   131: aload_3
    //   132: ldc 23
    //   134: invokeinterface 132 2 0
    //   139: invokeinterface 136 2 0
    //   144: putfield 139	com/jingdong/common/entity/PacksTable:packId	J
    //   147: aload 11
    //   149: aload_3
    //   150: aload_3
    //   151: ldc 29
    //   153: invokeinterface 142 2 0
    //   158: invokeinterface 146 2 0
    //   163: putfield 148	com/jingdong/common/entity/PacksTable:name	Ljava/lang/String;
    //   166: aload 11
    //   168: aload_3
    //   169: aload_3
    //   170: ldc 14
    //   172: invokeinterface 142 2 0
    //   177: invokeinterface 152 2 0
    //   182: putfield 155	com/jingdong/common/entity/PacksTable:buyCount	I
    //   185: aload 11
    //   187: aload_3
    //   188: aload_3
    //   189: ldc 17
    //   191: invokeinterface 132 2 0
    //   196: invokeinterface 159 2 0
    //   201: putfield 161	com/jingdong/common/entity/PacksTable:childCount	I
    //   204: aload 11
    //   206: aload_3
    //   207: aload_3
    //   208: ldc 8
    //   210: invokeinterface 142 2 0
    //   215: invokeinterface 146 2 0
    //   220: putfield 163	com/jingdong/common/entity/PacksTable:sourceType	Ljava/lang/String;
    //   223: aload 11
    //   225: aload_3
    //   226: aload_3
    //   227: ldc 11
    //   229: invokeinterface 142 2 0
    //   234: invokeinterface 146 2 0
    //   239: putfield 165	com/jingdong/common/entity/PacksTable:sourceValue	Ljava/lang/String;
    //   242: aload 11
    //   244: astore_2
    //   245: aload_3
    //   246: ifnull +9 -> 255
    //   249: aload_3
    //   250: invokeinterface 121 1 0
    //   255: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   258: aload_2
    //   259: areturn
    //   260: astore 5
    //   262: aload_3
    //   263: ifnull +9 -> 272
    //   266: aload_3
    //   267: invokeinterface 121 1 0
    //   272: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   275: aload_2
    //   276: areturn
    //   277: astore 4
    //   279: aload_3
    //   280: ifnull +9 -> 289
    //   283: aload_3
    //   284: invokeinterface 121 1 0
    //   289: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   292: aload 4
    //   294: athrow
    //   295: astore 4
    //   297: goto -18 -> 279
    //   300: astore 12
    //   302: aload 11
    //   304: astore_2
    //   305: goto -43 -> 262
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	308	0	paramLong	long
    //   1	304	2	localObject1	Object
    //   3	281	3	localCursor	android.database.Cursor
    //   277	16	4	localObject2	Object
    //   295	1	4	localObject3	Object
    //   260	1	5	localException1	Exception
    //   7	27	6	localSQLiteDatabase	SQLiteDatabase
    //   13	62	7	arrayOfString	String[]
    //   102	5	9	i	int
    //   126	177	11	localPacksTable	PacksTable
    //   300	1	12	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   4	90	260	java/lang/Exception
    //   96	104	260	java/lang/Exception
    //   111	128	260	java/lang/Exception
    //   4	90	277	finally
    //   96	104	277	finally
    //   111	128	277	finally
    //   128	242	295	finally
    //   128	242	300	java/lang/Exception
  }
  
  /* Error */
  public static void updatePacksCart(long paramLong, String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3, Context paramContext)
  {
    // Byte code:
    //   0: invokestatic 58	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   3: astore 10
    //   5: new 73	android/content/ContentValues
    //   8: dup
    //   9: invokespecial 74	android/content/ContentValues:<init>	()V
    //   12: astore 11
    //   14: aload 11
    //   16: ldc 23
    //   18: lload_0
    //   19: invokestatic 80	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   22: invokevirtual 84	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   25: aload 11
    //   27: ldc 29
    //   29: aload_2
    //   30: invokevirtual 228	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   33: aload 11
    //   35: ldc 14
    //   37: iload_3
    //   38: invokestatic 189	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   41: invokevirtual 231	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   44: aload 11
    //   46: ldc 17
    //   48: iload 4
    //   50: invokestatic 189	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   53: invokevirtual 231	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   56: aload 11
    //   58: ldc 8
    //   60: aload 5
    //   62: invokevirtual 228	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   65: aload 11
    //   67: ldc 11
    //   69: aload 6
    //   71: invokevirtual 228	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   74: iconst_1
    //   75: anewarray 86	java/lang/String
    //   78: astore 12
    //   80: aload 12
    //   82: iconst_0
    //   83: new 88	java/lang/StringBuilder
    //   86: dup
    //   87: lload_0
    //   88: invokestatic 91	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   91: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   94: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   97: aastore
    //   98: aload 10
    //   100: ldc 35
    //   102: aload 11
    //   104: ldc 99
    //   106: aload 12
    //   108: invokevirtual 273	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   111: pop
    //   112: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   115: return
    //   116: astore 9
    //   118: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   121: return
    //   122: astore 8
    //   124: invokestatic 67	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   127: aload 8
    //   129: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	130	0	paramLong	long
    //   0	130	2	paramString1	String
    //   0	130	3	paramInt1	int
    //   0	130	4	paramInt2	int
    //   0	130	5	paramString2	String
    //   0	130	6	paramString3	String
    //   0	130	7	paramContext	Context
    //   122	6	8	localObject	Object
    //   116	1	9	localException	Exception
    //   3	96	10	localSQLiteDatabase	SQLiteDatabase
    //   12	91	11	localContentValues	ContentValues
    //   78	29	12	arrayOfString	String[]
    // Exception table:
    //   from	to	target	type
    //   0	112	116	java/lang/Exception
    //   0	112	122	finally
  }
  
  public static void upgrade(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("drop table if exists PacksTable");
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.database.table.DB_PacksTable
 * JD-Core Version:    0.7.0.1
 */