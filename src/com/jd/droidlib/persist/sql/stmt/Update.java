package com.jd.droidlib.persist.sql.stmt;

import android.content.ContentValues;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.util.Pair;
import com.jd.droidlib.model.Entity;
import com.jd.droidlib.util.L;

public class Update<EntityType extends Entity>
  extends Statement<EntityType>
{
  private ContentValues contentValues = null;
  
  public Update(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    super(paramSQLiteDatabase, paramString);
  }
  
  public int execute()
  {
    Pair localPair = getSelection();
    L.d(toString());
    try
    {
      int i = this.db.update(this.tableName, this.contentValues, (String)localPair.first, (String[])localPair.second);
      return i;
    }
    catch (SQLException localSQLException)
    {
      L.e(localSQLException.getMessage());
      L.d(localSQLException);
    }
    return 0;
  }
  
  public Update<EntityType> setValues(ContentValues paramContentValues)
  {
    this.contentValues = paramContentValues;
    return this;
  }
  
  public String toString()
  {
    return "UPDATE" + super.toString() + ", contentValues: '" + this.contentValues + "'.";
  }
  
  protected Update<EntityType> where(Where paramWhere)
  {
    return (Update)super.where(paramWhere);
  }
  
  public Update<EntityType> where(String paramString, Is paramIs, Object... paramVarArgs)
  {
    return (Update)super.where(paramString, paramIs, paramVarArgs);
  }
  
  public Update<EntityType> where(String paramString, Object... paramVarArgs)
  {
    return (Update)super.where(paramString, paramVarArgs);
  }
  
  public Update<EntityType> whereId(long... paramVarArgs)
  {
    return (Update)super.whereId(paramVarArgs);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.persist.sql.stmt.Update
 * JD-Core Version:    0.7.0.1
 */