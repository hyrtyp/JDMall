package com.jd.droidlib.persist.sql.stmt;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Pair;
import com.jd.droidlib.inner.PersistUtils;
import com.jd.droidlib.model.Entity;
import com.jd.droidlib.util.L;
import com.jd.droidlib.util.Strings;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

public class Select<EntityType extends Entity>
  extends Statement<EntityType>
  implements AbstractSelect<EntityType>
{
  private String[] columns = null;
  private boolean distinct = false;
  private String[] groupBy = null;
  private String groupByStr;
  private String having = null;
  private int limit = 0;
  private String limitStr;
  private int offset = 0;
  private final LinkedHashMap<String, Boolean> orderBy = new LinkedHashMap();
  private String orderByStr;
  private Pair<String, String[]> selection;
  
  public Select(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    super(paramSQLiteDatabase, paramString);
  }
  
  private void buildArgs()
  {
    this.selection = getSelection();
    this.groupByStr = null;
    if ((this.groupBy != null) && (this.groupBy.length > 0)) {
      this.groupByStr = Strings.join(this.groupBy, ", ");
    }
    this.orderByStr = null;
    ArrayList localArrayList;
    Iterator localIterator;
    if (!this.orderBy.isEmpty())
    {
      localArrayList = new ArrayList();
      localIterator = this.orderBy.keySet().iterator();
      if (!localIterator.hasNext()) {
        this.orderByStr = Strings.join(localArrayList, ", ");
      }
    }
    else
    {
      this.limitStr = null;
      if (this.offset > 0) {
        this.limitStr = (this.offset + ", ");
      }
      if (this.limit <= 0) {
        break label258;
      }
      if (this.limitStr != null) {
        break label229;
      }
      this.limitStr = String.valueOf(this.limit);
    }
    label229:
    while (this.limitStr == null)
    {
      return;
      String str1 = (String)localIterator.next();
      StringBuilder localStringBuilder = new StringBuilder(String.valueOf(str1));
      if (((Boolean)this.orderBy.get(str1)).booleanValue()) {}
      for (String str2 = " ASC";; str2 = " DESC")
      {
        localArrayList.add(str2);
        break;
      }
      this.limitStr += this.limit;
      return;
    }
    label258:
    this.limitStr += 9223372036854775807L;
  }
  
  private String describe(String paramString)
  {
    return paramString + super.toString() + ", columns: '" + Arrays.toString(this.columns) + "', orderBy: '" + this.orderByStr + "', groupBy: '" + this.groupByStr + "', having: '" + this.having + "', distinct: '" + this.distinct + "', limit: '" + this.limitStr + "'.";
  }
  
  public Select<EntityType> columns(String... paramVarArgs)
  {
    this.columns = paramVarArgs;
    return this;
  }
  
  public int count()
  {
    buildArgs();
    L.d(describe("COUNT"));
    return PersistUtils.getRowCount(this.db, this.distinct, this.tableName, this.columns, (String)this.selection.first, (String[])this.selection.second, this.groupByStr, this.having, this.orderByStr, this.limitStr);
  }
  
  public Select<EntityType> distinct()
  {
    this.distinct = true;
    return this;
  }
  
  public Cursor execute()
  {
    buildArgs();
    L.d(describe("SELECT"));
    return this.db.query(this.distinct, this.tableName, this.columns, (String)this.selection.first, (String[])this.selection.second, this.groupByStr, this.having, this.orderByStr, this.limitStr);
  }
  
  public Select<EntityType> groupBy(String... paramVarArgs)
  {
    this.groupBy = paramVarArgs;
    return this;
  }
  
  public Select<EntityType> having(String paramString)
  {
    this.having = paramString;
    return this;
  }
  
  public Select<EntityType> limit(int paramInt)
  {
    this.limit = paramInt;
    return this;
  }
  
  public Select<EntityType> offset(int paramInt)
  {
    this.offset = paramInt;
    return this;
  }
  
  public Select<EntityType> orderBy(String paramString, boolean paramBoolean)
  {
    this.orderBy.put(paramString, Boolean.valueOf(paramBoolean));
    return this;
  }
  
  public String toString()
  {
    buildArgs();
    return describe("SELECT");
  }
  
  public Select<EntityType> where(Where paramWhere)
  {
    return (Select)super.where(paramWhere);
  }
  
  public Select<EntityType> where(String paramString, Is paramIs, Object... paramVarArgs)
  {
    return (Select)super.where(paramString, paramIs, paramVarArgs);
  }
  
  public Select<EntityType> where(String paramString, Object... paramVarArgs)
  {
    return (Select)super.where(paramString, paramVarArgs);
  }
  
  public Select<EntityType> whereId(long... paramVarArgs)
  {
    return (Select)super.whereId(paramVarArgs);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.persist.sql.stmt.Select
 * JD-Core Version:    0.7.0.1
 */