package com.jd.droidlib.inner;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import com.jd.droidlib.contract.SQL.DDL;
import com.jd.droidlib.inner.ann.FieldSpec;
import com.jd.droidlib.inner.ann.sql.ColumnAnn;
import com.jd.droidlib.inner.converter.Converter;
import com.jd.droidlib.model.Entity;
import com.jd.droidlib.persist.sql.AbstractEntityManager;
import com.jd.droidlib.util.L;
import com.jd.droidlib.util.Strings;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Callable;
import org.json.JSONException;
import org.json.JSONObject;

public final class PersistUtils
  implements SQL.DDL
{
  private static void appendForeignKeyDef(FieldSpec<ColumnAnn> paramFieldSpec, StringBuilder paramStringBuilder)
  {
    String str = ClassSpecRegistry.getTableName(paramFieldSpec.field.getType().asSubclass(Entity.class));
    paramStringBuilder.append("FOREIGN KEY(");
    paramStringBuilder.append(((ColumnAnn)paramFieldSpec.ann).name);
    paramStringBuilder.append(") REFERENCES ");
    paramStringBuilder.append(str);
    paramStringBuilder.append("(").append("_id").append(") ON DELETE CASCADE");
  }
  
  public static String buildPlaceholders(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    for (int i = 0;; i++)
    {
      if (i >= paramInt) {
        return localStringBuilder.toString();
      }
      if (i != 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("?");
    }
  }
  
  public static <Result> Result executeInTransaction(SQLiteDatabase paramSQLiteDatabase, Callable<Result> paramCallable)
  {
    paramSQLiteDatabase.beginTransaction();
    try
    {
      Object localObject2 = paramCallable.call();
      paramSQLiteDatabase.setTransactionSuccessful();
      return localObject2;
    }
    catch (Exception localException)
    {
      L.w(localException.getMessage());
      L.d(localException);
      return null;
    }
    finally
    {
      paramSQLiteDatabase.endTransaction();
    }
  }
  
  public static boolean executeStatements(final SQLiteDatabase paramSQLiteDatabase, ArrayList<String> paramArrayList)
  {
    (Boolean)executeInTransaction(paramSQLiteDatabase, new Callable()
    {
      public Boolean call()
        throws Exception
      {
        Iterator localIterator = PersistUtils.this.iterator();
        for (;;)
        {
          if (!localIterator.hasNext()) {
            return Boolean.TRUE;
          }
          String str = (String)localIterator.next();
          L.i(str);
          paramSQLiteDatabase.execSQL(str);
        }
      }
    }) != null;
  }
  
  public static String getAddColumn(String paramString1, String paramString2, String paramString3, boolean paramBoolean, Object paramObject)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("ALTER TABLE ").append(paramString1);
    localStringBuilder.append(" ADD COLUMN ").append(paramString2).append(paramString3);
    if (!paramBoolean)
    {
      localStringBuilder.append(" NOT NULL");
      localStringBuilder.append(" DEFAULT ").append(paramObject);
    }
    localStringBuilder.append(";");
    return localStringBuilder.toString();
  }
  
  public static <T> ArrayList<String> getAddMissingColumns(SQLiteDatabase paramSQLiteDatabase, Class<? extends Entity> paramClass)
  {
    String str = ClassSpecRegistry.getTableName(paramClass);
    FieldSpec[] arrayOfFieldSpec = ClassSpecRegistry.getTableColumnSpecs(paramClass);
    ArrayList localArrayList1 = getColumnNames(paramSQLiteDatabase, str);
    ArrayList localArrayList2 = new ArrayList();
    int i = arrayOfFieldSpec.length;
    int j = 0;
    ArrayList localArrayList3;
    Iterator localIterator;
    if (j >= i)
    {
      localArrayList3 = new ArrayList();
      localIterator = localArrayList2.iterator();
    }
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        return localArrayList3;
        FieldSpec localFieldSpec2 = arrayOfFieldSpec[j];
        if (!localArrayList1.contains(((ColumnAnn)localFieldSpec2.ann).name)) {
          localArrayList2.add(localFieldSpec2);
        }
        j++;
        break;
      }
      FieldSpec localFieldSpec1 = (FieldSpec)localIterator.next();
      Entity localEntity = (Entity)ReflectionUtils.newInstance(paramClass);
      Converter localConverter = ConverterRegistry.getConverter(localFieldSpec1.field.getType());
      Object localObject1 = ReflectionUtils.getFieldVal(localEntity, localFieldSpec1.field);
      ContentValues localContentValues = new ContentValues();
      localConverter.putToContentValues(localFieldSpec1.field.getType(), localFieldSpec1.componentType, localContentValues, "key", localObject1);
      Object localObject2 = localContentValues.get("key");
      localArrayList3.add(getAddColumn(str, ((ColumnAnn)localFieldSpec1.ann).name, localConverter.getDBColumnType(), ((ColumnAnn)localFieldSpec1.ann).nullable, localObject2));
    }
  }
  
  public static ArrayList<String> getColumnNames(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    return readStrings(paramSQLiteDatabase, "PRAGMA table_info(" + paramString + ")", 1);
  }
  
  public static String getCreateIndex(String paramString1, boolean paramBoolean, String paramString2, String... paramVarArgs)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString2);
    localArrayList.addAll(Arrays.asList(paramVarArgs));
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramBoolean) {}
    for (String str = "CREATE UNIQUE INDEX ";; str = "CREATE INDEX ")
    {
      localStringBuilder.append(str);
      localStringBuilder.append("idx_" + paramString1 + "_" + Strings.join(localArrayList, "_"));
      localStringBuilder.append(" ON " + paramString1);
      localStringBuilder.append(" (");
      localStringBuilder.append(Strings.join(localArrayList, ", "));
      localStringBuilder.append(");");
      return localStringBuilder.toString();
    }
  }
  
  public static ArrayList<String> getDropTables(SQLiteDatabase paramSQLiteDatabase, String... paramVarArgs)
  {
    HashSet localHashSet = new HashSet();
    ArrayList localArrayList;
    Iterator localIterator;
    if (paramVarArgs.length == 0)
    {
      localHashSet.addAll(getTableNames(paramSQLiteDatabase));
      localArrayList = new ArrayList();
      localIterator = localHashSet.iterator();
    }
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        return localArrayList;
        localHashSet.addAll(Arrays.asList(paramVarArgs));
        break;
      }
      String str = (String)localIterator.next();
      localArrayList.add("DROP TABLE IF EXISTS " + str + ";");
    }
  }
  
  public static int getRowCount(SQLiteDatabase paramSQLiteDatabase, boolean paramBoolean, String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    if ((paramArrayOfString1 != null) && (paramArrayOfString1.length > 0))
    {
      String[] arrayOfString = new String[1];
      arrayOfString[0] = paramArrayOfString1[0];
      paramArrayOfString1 = arrayOfString;
    }
    String str = SQLiteQueryBuilder.buildQueryString(paramBoolean, paramString1, paramArrayOfString1, paramString2, paramString3, paramString4, paramString5, paramString6);
    return (int)DatabaseUtils.longForQuery(paramSQLiteDatabase, "SELECT count(*) FROM (" + str + ")", paramArrayOfString2);
  }
  
  public static String getSQLCreate(String paramString, FieldSpec<ColumnAnn>[] paramArrayOfFieldSpec)
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append("CREATE TABLE " + paramString + " (");
    localStringBuilder1.append("_id INTEGER PRIMARY KEY");
    StringBuilder localStringBuilder2 = new StringBuilder();
    int i = paramArrayOfFieldSpec.length;
    int j = 0;
    if (j >= i)
    {
      localStringBuilder1.append(localStringBuilder2);
      localStringBuilder1.append(");");
      return localStringBuilder1.toString();
    }
    FieldSpec<ColumnAnn> localFieldSpec = paramArrayOfFieldSpec[j];
    if ("_id".equals(((ColumnAnn)localFieldSpec.ann).name)) {}
    for (;;)
    {
      j++;
      break;
      localStringBuilder1.append(", ");
      localStringBuilder1.append(((ColumnAnn)localFieldSpec.ann).name);
      localStringBuilder1.append(ConverterRegistry.getConverter(localFieldSpec.field.getType()).getDBColumnType());
      if (!((ColumnAnn)localFieldSpec.ann).nullable) {
        localStringBuilder1.append(" NOT NULL");
      }
      if (((ColumnAnn)localFieldSpec.ann).unique) {
        localStringBuilder1.append(" UNIQUE");
      }
      if (TypeHelper.isEntity(localFieldSpec.field.getType()))
      {
        localStringBuilder2.append(", ");
        appendForeignKeyDef(localFieldSpec, localStringBuilder2);
      }
    }
  }
  
  public static ArrayList<String> getTableNames(SQLiteDatabase paramSQLiteDatabase)
  {
    return readStrings(paramSQLiteDatabase, "SELECT name FROM sqlite_master WHERE type='table'", 0);
  }
  
  public static boolean hasNonNull(JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    return (paramJSONObject.has(paramString)) && (!JSONObject.NULL.equals(paramJSONObject.get(paramString)));
  }
  
  /* Error */
  public static <EntityType extends Entity> ArrayList<EntityType> readAll(AbstractEntityManager<EntityType> paramAbstractEntityManager, Cursor paramCursor)
  {
    // Byte code:
    //   0: new 146	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 147	java/util/ArrayList:<init>	()V
    //   7: astore_2
    //   8: aload_1
    //   9: invokeinterface 335 1 0
    //   14: istore 4
    //   16: iload 4
    //   18: ifne +11 -> 29
    //   21: aload_1
    //   22: invokeinterface 338 1 0
    //   27: aload_2
    //   28: areturn
    //   29: aload_2
    //   30: aload_0
    //   31: aload_1
    //   32: invokevirtual 344	com/jd/droidlib/persist/sql/AbstractEntityManager:readRow	(Landroid/database/Cursor;)Lcom/jd/droidlib/model/Entity;
    //   35: invokevirtual 164	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   38: pop
    //   39: goto -31 -> 8
    //   42: astore_3
    //   43: aload_1
    //   44: invokeinterface 338 1 0
    //   49: aload_3
    //   50: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	51	0	paramAbstractEntityManager	AbstractEntityManager<EntityType>
    //   0	51	1	paramCursor	Cursor
    //   7	23	2	localArrayList	ArrayList
    //   42	8	3	localObject	Object
    //   14	3	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   8	16	42	finally
    //   29	39	42	finally
  }
  
  public static <EntityType extends Entity> EntityType readFirst(AbstractEntityManager<EntityType> paramAbstractEntityManager, Cursor paramCursor)
  {
    try
    {
      boolean bool = paramCursor.moveToFirst();
      Object localObject2 = null;
      if (bool)
      {
        Entity localEntity = paramAbstractEntityManager.readRow(paramCursor);
        localObject2 = localEntity;
      }
      return localObject2;
    }
    finally
    {
      paramCursor.close();
    }
  }
  
  public static long[] readIds(Cursor paramCursor)
  {
    long[] arrayOfLong = new long[paramCursor.getCount()];
    int i = 0;
    try
    {
      boolean bool = paramCursor.moveToNext();
      if (!bool)
      {
        paramCursor.close();
        return arrayOfLong;
      }
      j = i + 1;
    }
    finally
    {
      try
      {
        for (;;)
        {
          int j;
          arrayOfLong[i] = paramCursor.getLong(0);
          i = j;
        }
      }
      finally {}
      localObject1 = finally;
      paramCursor.close();
      throw localObject1;
    }
  }
  
  private static ArrayList<String> readStrings(SQLiteDatabase paramSQLiteDatabase, String paramString, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = paramSQLiteDatabase.rawQuery(paramString, null);
    for (;;)
    {
      if (!localCursor.moveToNext())
      {
        localCursor.close();
        return localArrayList;
      }
      localArrayList.add(localCursor.getString(paramInt));
    }
  }
  
  public static String[] toWhereArgs(Object... paramVarArgs)
  {
    String[] arrayOfString = new String[paramVarArgs.length];
    int i = 0;
    if (i >= paramVarArgs.length) {
      return arrayOfString;
    }
    Object localObject = paramVarArgs[i];
    String str;
    if (localObject == null) {
      str = "NULL";
    }
    for (;;)
    {
      arrayOfString[i] = str;
      i++;
      break;
      if ((localObject instanceof Boolean))
      {
        if (((Boolean)localObject).booleanValue()) {}
        for (str = "1";; str = "0") {
          break;
        }
      }
      if ((localObject instanceof Date)) {
        str = String.valueOf(((Date)localObject).getTime());
      } else if ((localObject instanceof Entity)) {
        str = String.valueOf(((Entity)localObject).id);
      } else {
        str = localObject.toString();
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.PersistUtils
 * JD-Core Version:    0.7.0.1
 */