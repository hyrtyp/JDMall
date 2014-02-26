package com.jd.droidlib.persist.sql;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.jd.droidlib.Injector;
import com.jd.droidlib.annotation.inject.InjectDependency;
import com.jd.droidlib.inner.ClassSpecRegistry;
import com.jd.droidlib.inner.ConverterRegistry;
import com.jd.droidlib.inner.ReflectionUtils;
import com.jd.droidlib.inner.TypeHelper;
import com.jd.droidlib.inner.ann.FieldSpec;
import com.jd.droidlib.inner.ann.sql.ColumnAnn;
import com.jd.droidlib.inner.converter.Converter;
import com.jd.droidlib.model.Entity;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;

public class EntityManager<EntityType extends Entity>
  extends AbstractEntityManager<EntityType>
{
  private final Class<EntityType> cls;
  private final Context ctx;
  @InjectDependency
  private SQLiteDatabase db;
  private String[] eagerForeignKeyColumnNames;
  
  public EntityManager(Class<EntityType> paramClass, Context paramContext)
  {
    this.cls = paramClass;
    this.ctx = paramContext.getApplicationContext();
    Injector.inject(paramContext, this);
  }
  
  protected EntityManager(Class<EntityType> paramClass, Context paramContext, SQLiteDatabase paramSQLiteDatabase)
  {
    this.cls = paramClass;
    this.ctx = paramContext;
    this.db = paramSQLiteDatabase;
  }
  
  private EntityManager<Entity> subManager(Class<?> paramClass)
  {
    return new EntityManager(paramClass, this.ctx, this.db);
  }
  
  protected void createForeignKeys(EntityType paramEntityType)
  {
    FieldSpec[] arrayOfFieldSpec = ClassSpecRegistry.getTableColumnSpecs(this.cls);
    int i = arrayOfFieldSpec.length;
    int j = 0;
    if (j >= i) {
      return;
    }
    FieldSpec localFieldSpec = arrayOfFieldSpec[j];
    Class localClass = localFieldSpec.field.getType();
    if (TypeHelper.isEntity(localClass))
    {
      localEntity3 = (Entity)ReflectionUtils.getFieldVal(paramEntityType, localFieldSpec.field);
      if ((localEntity3 != null) && (localEntity3.id == 0L)) {
        subManager(localFieldSpec.field.getType()).create(localEntity3);
      }
      j++;
      break label176;
    }
    label92:
    while (((!TypeHelper.isArray(localClass)) && (!TypeHelper.isCollection(localClass))) || (!TypeHelper.isEntity(localFieldSpec.componentType)))
    {
      Entity localEntity3;
      break;
    }
    ArrayList localArrayList = new ArrayList();
    Entity[] arrayOfEntity;
    int m;
    if (TypeHelper.isArray(localClass))
    {
      arrayOfEntity = (Entity[])ReflectionUtils.getFieldVal(paramEntityType, localFieldSpec.field);
      if (arrayOfEntity != null)
      {
        int k = arrayOfEntity.length;
        m = 0;
        label169:
        if (m < k) {
          break label202;
        }
      }
    }
    for (;;)
    {
      label176:
      if (localArrayList.isEmpty()) {
        break label92;
      }
      subManager(localFieldSpec.componentType).create(localArrayList);
      break label92;
      label202:
      Entity localEntity2 = arrayOfEntity[m];
      if ((localEntity2 != null) && (localEntity2.id == 0L)) {
        localArrayList.add(localEntity2);
      }
      m++;
      break label169;
      Collection localCollection = (Collection)ReflectionUtils.getFieldVal(paramEntityType, localFieldSpec.field);
      if (localCollection == null) {
        break;
      }
      Iterator localIterator = localCollection.iterator();
      while (localIterator.hasNext())
      {
        Entity localEntity1 = (Entity)localIterator.next();
        if ((localEntity1 != null) && (localEntity1.id == 0L)) {
          localArrayList.add(localEntity1);
        }
      }
    }
  }
  
  protected void fillEagerForeignKeys(EntityType paramEntityType)
  {
    String[] arrayOfString = getEagerForeignKeyColumnNames();
    if (arrayOfString.length != 0) {
      fillForeignKeys(paramEntityType, arrayOfString);
    }
  }
  
  public void fillForeignKeys(EntityType paramEntityType, String... paramVarArgs)
  {
    HashSet localHashSet = new HashSet(Arrays.asList(paramVarArgs));
    boolean bool = localHashSet.isEmpty();
    FieldSpec[] arrayOfFieldSpec = ClassSpecRegistry.getTableColumnSpecs(this.cls);
    int i = arrayOfFieldSpec.length;
    int j = 0;
    if (j >= i) {
      return;
    }
    FieldSpec localFieldSpec = arrayOfFieldSpec[j];
    Class localClass;
    if ((bool) || (localHashSet.contains(((ColumnAnn)localFieldSpec.ann).name)))
    {
      localClass = localFieldSpec.field.getType();
      if (!TypeHelper.isEntity(localClass)) {
        break label149;
      }
      Entity localEntity3 = (Entity)ReflectionUtils.getFieldVal(paramEntityType, localFieldSpec.field);
      if (localEntity3 != null)
      {
        Entity localEntity4 = subManager(localFieldSpec.field.getType()).read(localEntity3.id);
        ReflectionUtils.setFieldVal(paramEntityType, localFieldSpec.field, localEntity4);
      }
    }
    label149:
    EntityManager localEntityManager;
    label258:
    Collection localCollection;
    do
    {
      for (;;)
      {
        j++;
        break;
        if (((TypeHelper.isArray(localClass)) || (TypeHelper.isCollection(localClass))) && (TypeHelper.isEntity(localFieldSpec.componentType)))
        {
          localEntityManager = subManager(localFieldSpec.componentType);
          if (!TypeHelper.isArray(localClass)) {
            break label258;
          }
          Entity[] arrayOfEntity = (Entity[])ReflectionUtils.getFieldVal(paramEntityType, localFieldSpec.field);
          if (arrayOfEntity != null) {
            for (int k = 0; k < arrayOfEntity.length; k++)
            {
              Entity localEntity2 = arrayOfEntity[k];
              if (localEntity2 != null) {
                arrayOfEntity[k] = localEntityManager.read(localEntity2.id);
              }
            }
          }
        }
      }
      localCollection = (Collection)ReflectionUtils.getFieldVal(paramEntityType, localFieldSpec.field);
    } while (localCollection == null);
    ArrayList localArrayList = new ArrayList(localCollection.size());
    Iterator localIterator = localCollection.iterator();
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        localCollection.clear();
        localCollection.addAll(localArrayList);
        break;
      }
      Entity localEntity1 = (Entity)localIterator.next();
      if (localEntity1 != null) {
        localArrayList.add(localEntityManager.read(localEntity1.id));
      }
    }
  }
  
  public Context getContext()
  {
    return this.ctx;
  }
  
  protected SQLiteDatabase getDB()
  {
    return this.db;
  }
  
  protected String[] getEagerForeignKeyColumnNames()
  {
    HashSet localHashSet;
    FieldSpec[] arrayOfFieldSpec;
    int i;
    if (this.eagerForeignKeyColumnNames == null)
    {
      localHashSet = new HashSet();
      arrayOfFieldSpec = ClassSpecRegistry.getTableColumnSpecs(this.cls);
      i = arrayOfFieldSpec.length;
    }
    for (int j = 0;; j++)
    {
      if (j >= i)
      {
        this.eagerForeignKeyColumnNames = ((String[])localHashSet.toArray(new String[localHashSet.size()]));
        return this.eagerForeignKeyColumnNames;
      }
      FieldSpec localFieldSpec = arrayOfFieldSpec[j];
      if (((ColumnAnn)localFieldSpec.ann).eager) {
        localHashSet.add(((ColumnAnn)localFieldSpec.ann).name);
      }
    }
  }
  
  protected String getTableName()
  {
    return ClassSpecRegistry.getTableName(this.cls);
  }
  
  protected <T, V> void putToContentValues(ContentValues paramContentValues, String paramString, Class<T> paramClass, Class<V> paramClass1, Object paramObject)
    throws IllegalArgumentException
  {
    if (paramObject == null)
    {
      paramContentValues.putNull(paramString);
      return;
    }
    ConverterRegistry.getConverter(paramClass).putToContentValues(paramClass, paramClass1, paramContentValues, paramString, paramObject);
  }
  
  protected <T, V> Object readFromCursor(Cursor paramCursor, int paramInt, Class<T> paramClass, Class<V> paramClass1)
    throws IllegalArgumentException
  {
    if (paramCursor.isNull(paramInt)) {
      return null;
    }
    return ConverterRegistry.getConverter(paramClass).readFromCursor(paramClass, paramClass1, paramCursor, paramInt);
  }
  
  public EntityType readRow(Cursor paramCursor)
  {
    Entity localEntity = (Entity)ReflectionUtils.newInstance(this.cls);
    FieldSpec[] arrayOfFieldSpec = ClassSpecRegistry.getTableColumnSpecs(this.cls);
    int i = arrayOfFieldSpec.length;
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return localEntity;
      }
      FieldSpec localFieldSpec = arrayOfFieldSpec[j];
      int k = paramCursor.getColumnIndex(((ColumnAnn)localFieldSpec.ann).name);
      if (k >= 0)
      {
        Object localObject = readFromCursor(paramCursor, k, localFieldSpec.field.getType(), localFieldSpec.componentType);
        if ((localObject != null) || (((ColumnAnn)localFieldSpec.ann).nullable)) {
          ReflectionUtils.setFieldVal(localEntity, localFieldSpec.field, localObject);
        }
      }
    }
  }
  
  protected ContentValues toContentValues(EntityType paramEntityType)
  {
    ContentValues localContentValues = new ContentValues();
    FieldSpec[] arrayOfFieldSpec = ClassSpecRegistry.getTableColumnSpecs(this.cls);
    int i = arrayOfFieldSpec.length;
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return localContentValues;
      }
      FieldSpec localFieldSpec = arrayOfFieldSpec[j];
      Object localObject = ReflectionUtils.getFieldVal(paramEntityType, localFieldSpec.field);
      putToContentValues(localContentValues, ((ColumnAnn)localFieldSpec.ann).name, localFieldSpec.field.getType(), localFieldSpec.componentType, localObject);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.persist.sql.EntityManager
 * JD-Core Version:    0.7.0.1
 */