package com.jd.droidlib.persist.sql.stmt;

import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.util.Pair;
import com.jd.droidlib.model.Entity;
import com.jd.droidlib.util.L;

public class Delete<EntityType extends Entity>
  extends Statement<EntityType>
{
  public Delete(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    super(paramSQLiteDatabase, paramString);
  }
  
  public int execute()
  {
    Pair localPair = getSelection();
    L.d(toString());
    try
    {
      int i = this.db.delete(this.tableName, (String)localPair.first, (String[])localPair.second);
      return i;
    }
    catch (SQLException localSQLException)
    {
      L.e(localSQLException.getMessage());
      L.d(localSQLException);
    }
    return 0;
  }
  
  public String toString()
  {
    return "DELETE" + super.toString() + ".";
  }
  
  protected Delete<EntityType> where(Where paramWhere)
  {
    return (Delete)super.where(paramWhere);
  }
  
  public Delete<EntityType> where(String paramString, Is paramIs, Object... paramVarArgs)
  {
    return (Delete)super.where(paramString, paramIs, paramVarArgs);
  }
  
  public Delete<EntityType> where(String paramString, Object... paramVarArgs)
  {
    return (Delete)super.where(paramString, paramVarArgs);
  }
  
  public Delete<EntityType> whereId(long... paramVarArgs)
  {
    return (Delete)super.whereId(paramVarArgs);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.persist.sql.stmt.Delete
 * JD-Core Version:    0.7.0.1
 */