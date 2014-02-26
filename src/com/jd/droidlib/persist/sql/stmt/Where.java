package com.jd.droidlib.persist.sql.stmt;

import android.util.Pair;
import com.jd.droidlib.contract.SQL;
import com.jd.droidlib.inner.PersistUtils;
import com.jd.droidlib.inner.ReflectionUtils;
import com.jd.droidlib.util.L;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;

public class Where
  implements SQL
{
  private boolean and;
  private final ArrayList<Object> whereSpecs = new ArrayList();
  
  public Where(String paramString, Is paramIs, Object... paramVarArgs)
  {
    this.whereSpecs.add(new WhereSpec(true, paramString, paramIs, paramVarArgs));
  }
  
  private static Pair<String, ArrayList<String>> build(WhereSpec paramWhereSpec)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    ArrayList localArrayList = new ArrayList();
    String[] arrayOfString = PersistUtils.toWhereArgs(paramWhereSpec.columnValue);
    int i = arrayOfString.length;
    localStringBuilder.append(paramWhereSpec.columnName).append(paramWhereSpec.operator.str);
    switch (paramWhereSpec.operator)
    {
    default: 
      if (i != 1) {
        errArgs(paramWhereSpec.operator, i);
      }
      break;
    }
    for (;;)
    {
      localArrayList.addAll(Arrays.asList(arrayOfString));
      return Pair.create(localStringBuilder.toString(), localArrayList);
      if (i != 0)
      {
        errArgs(paramWhereSpec.operator, i);
        continue;
        if (i != 2)
        {
          errArgs(paramWhereSpec.operator, i);
          continue;
          if (i < 1) {
            errArgs(paramWhereSpec.operator, i);
          }
          localStringBuilder.append("(");
          localStringBuilder.append(PersistUtils.buildPlaceholders(arrayOfString.length));
          localStringBuilder.append(")");
        }
      }
    }
  }
  
  private static Pair<String, ArrayList<String>> build(Where paramWhere)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    if (i >= paramWhere.whereSpecs.size()) {
      return Pair.create(localStringBuilder.toString(), localArrayList);
    }
    Object localObject = paramWhere.whereSpecs.get(i);
    int j;
    boolean bool;
    Pair localPair;
    label80:
    String str;
    if ((localObject instanceof Where))
    {
      j = 1;
      Where localWhere = (Where)localObject;
      bool = localWhere.and;
      localPair = build(localWhere);
      if (i > 0)
      {
        if (!bool) {
          break label174;
        }
        str = " AND ";
        label93:
        localStringBuilder.append(str);
      }
      if (j == 0) {
        break label181;
      }
      localStringBuilder.append("(").append((String)localPair.first).append(")");
    }
    for (;;)
    {
      localArrayList.addAll((Collection)localPair.second);
      i++;
      break;
      WhereSpec localWhereSpec = (WhereSpec)localObject;
      bool = localWhereSpec.and;
      localPair = build(localWhereSpec);
      j = 0;
      break label80;
      label174:
      str = " OR ";
      break label93;
      label181:
      localStringBuilder.append((String)localPair.first);
    }
  }
  
  private static void errArgs(Is paramIs, int paramInt)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramIs;
    arrayOfObject[1] = Integer.valueOf(paramInt);
    L.e("Invalid number of agruments for '%s': %d.", arrayOfObject);
  }
  
  public Where and(Where paramWhere)
  {
    paramWhere.and = true;
    this.whereSpecs.add(paramWhere);
    return this;
  }
  
  public Where and(String paramString, Is paramIs, Object... paramVarArgs)
  {
    this.whereSpecs.add(new WhereSpec(true, paramString, paramIs, paramVarArgs));
    return this;
  }
  
  Pair<String, Object[]> build()
  {
    Pair localPair = build(this);
    return Pair.create((String)localPair.first, ((ArrayList)localPair.second).toArray());
  }
  
  public Where or(Where paramWhere)
  {
    paramWhere.and = false;
    this.whereSpecs.add(paramWhere);
    return this;
  }
  
  public Where or(String paramString, Is paramIs, Object... paramVarArgs)
  {
    this.whereSpecs.add(new WhereSpec(false, paramString, paramIs, paramVarArgs));
    return this;
  }
  
  private static class WhereSpec
  {
    final boolean and;
    final String columnName;
    final Object[] columnValue;
    final Is operator;
    
    WhereSpec(boolean paramBoolean, String paramString, Is paramIs, Object... paramVarArgs)
    {
      this.and = paramBoolean;
      this.columnName = paramString;
      this.operator = paramIs;
      this.columnValue = ReflectionUtils.varArgsHack(paramVarArgs);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.persist.sql.stmt.Where
 * JD-Core Version:    0.7.0.1
 */