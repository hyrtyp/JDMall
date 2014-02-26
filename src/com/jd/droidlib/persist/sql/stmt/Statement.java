package com.jd.droidlib.persist.sql.stmt;

import android.database.sqlite.SQLiteDatabase;
import android.util.Pair;
import com.jd.droidlib.contract.SQL;
import com.jd.droidlib.inner.PersistUtils;
import com.jd.droidlib.model.Entity;
import java.util.Arrays;

public abstract class Statement<EntityType extends Entity>
  implements SQL
{
  protected final SQLiteDatabase db;
  private String selection;
  private String[] selectionArgs;
  protected final String tableName;
  private Where where;
  
  public Statement(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    this.db = paramSQLiteDatabase;
    this.tableName = paramString;
  }
  
  protected Pair<String, String[]> getSelection()
  {
    if ((this.selection == null) && (this.where != null))
    {
      Pair localPair = this.where.build();
      this.selection = ((String)localPair.first);
      this.selectionArgs = PersistUtils.toWhereArgs((Object[])localPair.second);
    }
    return Pair.create(this.selection, this.selectionArgs);
  }
  
  public String toString()
  {
    Pair localPair = getSelection();
    return " on table '" + this.tableName + "', selection: '" + (String)localPair.first + "', selectionArgs: '" + Arrays.toString((Object[])localPair.second) + "'";
  }
  
  protected Statement<EntityType> where(Where paramWhere)
  {
    this.selection = null;
    if (this.where == null)
    {
      this.where = paramWhere;
      return this;
    }
    this.where.and(paramWhere);
    return this;
  }
  
  protected Statement<EntityType> where(String paramString, Is paramIs, Object... paramVarArgs)
  {
    return where(new Where(paramString, paramIs, paramVarArgs));
  }
  
  protected Statement<EntityType> where(String paramString, Object... paramVarArgs)
  {
    this.where = null;
    this.selection = paramString;
    this.selectionArgs = PersistUtils.toWhereArgs(paramVarArgs);
    return this;
  }
  
  protected Statement<EntityType> whereId(long... paramVarArgs)
  {
    if (paramVarArgs.length == 1)
    {
      Is localIs = Is.EQUAL;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(paramVarArgs[0]);
      return where("_id", localIs, arrayOfObject);
    }
    return where("_id", Is.IN, new Object[] { paramVarArgs });
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.persist.sql.stmt.Statement
 * JD-Core Version:    0.7.0.1
 */