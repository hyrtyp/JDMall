package com.jd.droidlib.persist.sql;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.jd.droidlib.contract.SQL;
import com.jd.droidlib.inner.PersistUtils;
import com.jd.droidlib.model.Entity;
import com.jd.droidlib.persist.sql.stmt.Delete;
import com.jd.droidlib.persist.sql.stmt.Select;
import com.jd.droidlib.persist.sql.stmt.Update;
import com.jd.droidlib.util.L;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Callable;

public abstract class AbstractEntityManager<EntityType extends Entity>
  implements SQL
{
  private int cud(final Collection<EntityType> paramCollection, final int paramInt)
  {
    Integer localInteger = (Integer)executeInTransaction(new Callable()
    {
      public Integer call()
        throws Exception
      {
        int i = 0;
        Iterator localIterator = paramCollection.iterator();
        label123:
        for (;;)
        {
          if (!localIterator.hasNext()) {
            return Integer.valueOf(i);
          }
          Entity localEntity = (Entity)localIterator.next();
          int j = paramInt;
          boolean bool = false;
          switch (j)
          {
          }
          for (;;)
          {
            if (!bool) {
              break label123;
            }
            i++;
            break;
            bool = AbstractEntityManager.this.create(localEntity);
            continue;
            bool = AbstractEntityManager.this.update(localEntity);
            continue;
            bool = AbstractEntityManager.this.delete(localEntity.id);
          }
        }
      }
    });
    if (localInteger != null) {
      return localInteger.intValue();
    }
    return 0;
  }
  
  public int create(Collection<EntityType> paramCollection)
  {
    return cud(paramCollection, 1);
  }
  
  public boolean create(EntityType paramEntityType)
  {
    createForeignKeys(paramEntityType);
    ContentValues localContentValues = toContentValues(paramEntityType);
    localContentValues.remove("_id");
    long l1 = 0L;
    try
    {
      long l2 = getDB().insertOrThrow(getTableName(), null, localContentValues);
      l1 = l2;
    }
    catch (SQLException localSQLException)
    {
      for (;;)
      {
        L.e(localSQLException.getMessage());
        L.d(localSQLException);
      }
    }
    if (l1 > 0L)
    {
      paramEntityType.id = l1;
      return true;
    }
    return false;
  }
  
  protected abstract void createForeignKeys(EntityType paramEntityType);
  
  public boolean createOrUpdate(EntityType paramEntityType)
  {
    if (paramEntityType.id > 0L) {
      return update(paramEntityType);
    }
    return create(paramEntityType);
  }
  
  public int delete(Collection<EntityType> paramCollection)
  {
    return cud(paramCollection, 3);
  }
  
  public Delete<EntityType> delete()
  {
    return new Delete(getDB(), getTableName());
  }
  
  public boolean delete(long paramLong)
  {
    return delete().whereId(new long[] { paramLong }).execute() > 0;
  }
  
  public <Result> Result executeInTransaction(Callable<Result> paramCallable)
  {
    return PersistUtils.executeInTransaction(getDB(), paramCallable);
  }
  
  protected abstract void fillEagerForeignKeys(EntityType paramEntityType);
  
  public abstract void fillForeignKeys(EntityType paramEntityType, String... paramVarArgs);
  
  protected abstract SQLiteDatabase getDB();
  
  protected abstract String getTableName();
  
  public EntityType read(long paramLong)
  {
    return readFirst(select().whereId(new long[] { paramLong }));
  }
  
  public ArrayList<EntityType> readAll(Select<EntityType> paramSelect)
  {
    ArrayList localArrayList = PersistUtils.readAll(this, paramSelect.execute());
    Iterator localIterator = localArrayList.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return localArrayList;
      }
      fillEagerForeignKeys((Entity)localIterator.next());
    }
  }
  
  public EntityType readFirst(Select<EntityType> paramSelect)
  {
    Entity localEntity = PersistUtils.readFirst(this, paramSelect.execute());
    if (localEntity != null) {
      fillEagerForeignKeys(localEntity);
    }
    return localEntity;
  }
  
  public long[] readIds(Select<EntityType> paramSelect)
  {
    return PersistUtils.readIds(paramSelect.execute());
  }
  
  public abstract EntityType readRow(Cursor paramCursor);
  
  public Select<EntityType> select()
  {
    return new Select(getDB(), getTableName());
  }
  
  protected abstract ContentValues toContentValues(EntityType paramEntityType);
  
  public int update(Collection<EntityType> paramCollection)
  {
    return cud(paramCollection, 2);
  }
  
  public Update<EntityType> update()
  {
    return new Update(getDB(), getTableName());
  }
  
  public boolean update(EntityType paramEntityType)
  {
    createForeignKeys(paramEntityType);
    ContentValues localContentValues = toContentValues(paramEntityType);
    localContentValues.remove("_id");
    Update localUpdate = update();
    long[] arrayOfLong = new long[1];
    arrayOfLong[0] = paramEntityType.id;
    return localUpdate.whereId(arrayOfLong).setValues(localContentValues).execute() > 0;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.persist.sql.AbstractEntityManager
 * JD-Core Version:    0.7.0.1
 */