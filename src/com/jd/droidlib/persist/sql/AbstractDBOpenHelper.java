package com.jd.droidlib.persist.sql;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.jd.droidlib.contract.SQL.DDL;
import com.jd.droidlib.inner.ClassSpecRegistry;
import com.jd.droidlib.inner.PersistUtils;
import com.jd.droidlib.model.Entity;
import java.util.ArrayList;

public abstract class AbstractDBOpenHelper
  extends SQLiteOpenHelper
  implements SQL.DDL
{
  private final Context ctx;
  
  public AbstractDBOpenHelper(Context paramContext, String paramString, int paramInt)
  {
    super(paramContext.getApplicationContext(), paramString, null, paramInt);
    this.ctx = paramContext.getApplicationContext();
  }
  
  protected final boolean addMissingColumns(SQLiteDatabase paramSQLiteDatabase, Class<? extends Entity>... paramVarArgs)
  {
    ArrayList localArrayList = new ArrayList();
    int i = paramVarArgs.length;
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return executeStatements(paramSQLiteDatabase, localArrayList);
      }
      localArrayList.addAll(PersistUtils.getAddMissingColumns(paramSQLiteDatabase, paramVarArgs[j]));
    }
  }
  
  protected final boolean createIndex(SQLiteDatabase paramSQLiteDatabase, String paramString1, boolean paramBoolean, String paramString2, String... paramVarArgs)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(PersistUtils.getCreateIndex(paramString1, paramBoolean, paramString2, paramVarArgs));
    return executeStatements(paramSQLiteDatabase, localArrayList);
  }
  
  protected final boolean createTables(SQLiteDatabase paramSQLiteDatabase, Class<? extends Entity>... paramVarArgs)
  {
    ArrayList localArrayList = new ArrayList();
    int i = paramVarArgs.length;
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return executeStatements(paramSQLiteDatabase, localArrayList);
      }
      Class<? extends Entity> localClass = paramVarArgs[j];
      localArrayList.add(PersistUtils.getSQLCreate(ClassSpecRegistry.getTableName(localClass), ClassSpecRegistry.getTableColumnSpecs(localClass)));
    }
  }
  
  protected final boolean dropTables(SQLiteDatabase paramSQLiteDatabase, String... paramVarArgs)
  {
    return executeStatements(paramSQLiteDatabase, PersistUtils.getDropTables(paramSQLiteDatabase, paramVarArgs));
  }
  
  protected final boolean executeStatements(SQLiteDatabase paramSQLiteDatabase, ArrayList<String> paramArrayList)
  {
    return PersistUtils.executeStatements(paramSQLiteDatabase, paramArrayList);
  }
  
  public Context getContext()
  {
    return this.ctx;
  }
  
  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    onOpen(paramSQLiteDatabase);
    onCreateTables(paramSQLiteDatabase);
  }
  
  protected abstract void onCreateTables(SQLiteDatabase paramSQLiteDatabase);
  
  public final void onOpen(SQLiteDatabase paramSQLiteDatabase)
  {
    if (!paramSQLiteDatabase.isReadOnly()) {
      paramSQLiteDatabase.execSQL("PRAGMA foreign_keys = ON;");
    }
    onOpenExtra(paramSQLiteDatabase);
  }
  
  protected void onOpenExtra(SQLiteDatabase paramSQLiteDatabase) {}
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.persist.sql.AbstractDBOpenHelper
 * JD-Core Version:    0.7.0.1
 */