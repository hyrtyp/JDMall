package com.jd.droidlib.inner;

import com.jd.droidlib.inner.ann.Ann;
import com.jd.droidlib.inner.ann.FieldSpec;
import com.jd.droidlib.inner.ann.MethodSpec;
import com.jd.droidlib.inner.ann.bus.ReceiveEventsAnn;
import com.jd.droidlib.inner.ann.inject.InjectAnn;
import com.jd.droidlib.inner.ann.json.KeyAnn;
import com.jd.droidlib.inner.ann.sql.ColumnAnn;
import com.jd.droidlib.inner.ann.sql.TableAnn;
import com.jd.droidlib.model.Entity;
import com.jd.droidlib.model.Model;
import com.jd.droidlib.util.L;
import com.jd.droidlib.util.Strings;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

public final class ClassSpecRegistry
{
  private static final ConcurrentHashMap<Class<? extends Entity>, FieldSpec<ColumnAnn>[]> COLUMN_SPECS = new ConcurrentHashMap();
  private static final String ID_AFFIX = "_id";
  private static final ConcurrentHashMap<Class<?>, FieldSpec<InjectAnn<?>>[]> INJECT_SPECS = new ConcurrentHashMap();
  private static final ConcurrentHashMap<Class<? extends Model>, FieldSpec<KeyAnn>[]> KEY_SPECS = new ConcurrentHashMap();
  private static final ConcurrentHashMap<Class<?>, MethodSpec<ReceiveEventsAnn>[]> RECEIVE_EVENTS_SPECS = new ConcurrentHashMap();
  private static final ConcurrentHashMap<Class<? extends Entity>, String> TABLE_NAMES = new ConcurrentHashMap();
  
  private static String getColumnName(ColumnAnn paramColumnAnn, Field paramField)
  {
    String str = paramColumnAnn.name;
    if (Strings.isEmpty(str))
    {
      str = paramField.getName();
      if ((TypeHelper.isEntity(paramField.getType())) && (!str.endsWith("_id"))) {
        str = str + "_id";
      }
    }
    return str;
  }
  
  private static Class<?> getComponentType(Field paramField)
  {
    Class localClass1 = paramField.getType();
    Class localClass2;
    if (TypeHelper.isArray(localClass1)) {
      localClass2 = ReflectionUtils.getArrayComponentType(localClass1);
    }
    boolean bool;
    do
    {
      return localClass2;
      bool = TypeHelper.isCollection(localClass1);
      localClass2 = null;
    } while (!bool);
    Class[] arrayOfClass = ReflectionUtils.getFieldGenericArgs(paramField);
    if (arrayOfClass.length > 0) {
      return arrayOfClass[0];
    }
    return Object.class;
  }
  
  public static FieldSpec<InjectAnn<?>>[] getInjectSpecs(Class<?> paramClass)
  {
    FieldSpec[] arrayOfFieldSpec = (FieldSpec[])INJECT_SPECS.get(paramClass);
    ArrayList localArrayList;
    Iterator localIterator;
    if (arrayOfFieldSpec == null)
    {
      localArrayList = new ArrayList();
      localIterator = ReflectionUtils.buildClassHierarchy(paramClass).iterator();
      if (!localIterator.hasNext())
      {
        arrayOfFieldSpec = (FieldSpec[])localArrayList.toArray(new FieldSpec[localArrayList.size()]);
        INJECT_SPECS.put(paramClass, arrayOfFieldSpec);
      }
    }
    else
    {
      return arrayOfFieldSpec;
    }
    Field[] arrayOfField = ((Class)localIterator.next()).getDeclaredFields();
    int i = arrayOfField.length;
    int j = 0;
    label88:
    Field localField;
    Ann[] arrayOfAnn;
    int k;
    if (j < i)
    {
      localField = arrayOfField[j];
      arrayOfAnn = AnnBuilder.getFieldAnns(localField);
      k = arrayOfAnn.length;
    }
    label168:
    for (int m = 0;; m++)
    {
      if (m >= k) {}
      for (;;)
      {
        j++;
        break label88;
        break;
        Ann localAnn = arrayOfAnn[m];
        if (!(localAnn instanceof InjectAnn)) {
          break label168;
        }
        localArrayList.add(new FieldSpec(localField, null, (InjectAnn)localAnn));
      }
    }
  }
  
  public static FieldSpec<KeyAnn>[] getJsonKeySpecs(Class<? extends Model> paramClass)
  {
    FieldSpec[] arrayOfFieldSpec = (FieldSpec[])KEY_SPECS.get(paramClass);
    ArrayList localArrayList;
    Iterator localIterator;
    if (arrayOfFieldSpec == null)
    {
      localArrayList = new ArrayList();
      localIterator = ReflectionUtils.buildClassHierarchy(paramClass).iterator();
      if (!localIterator.hasNext())
      {
        arrayOfFieldSpec = (FieldSpec[])localArrayList.toArray(new FieldSpec[localArrayList.size()]);
        KEY_SPECS.put(paramClass, arrayOfFieldSpec);
      }
    }
    else
    {
      return arrayOfFieldSpec;
    }
    Field[] arrayOfField = ((Class)localIterator.next()).getDeclaredFields();
    int i = arrayOfField.length;
    int j = 0;
    label88:
    Field localField;
    Ann[] arrayOfAnn;
    int k;
    if (j < i)
    {
      localField = arrayOfField[j];
      arrayOfAnn = AnnBuilder.getFieldAnns(localField);
      k = arrayOfAnn.length;
    }
    label192:
    for (int m = 0;; m++)
    {
      if (m >= k) {}
      for (;;)
      {
        j++;
        break label88;
        break;
        Ann localAnn = arrayOfAnn[m];
        if (!(localAnn instanceof KeyAnn)) {
          break label192;
        }
        KeyAnn localKeyAnn = (KeyAnn)localAnn;
        Class localClass = getComponentType(localField);
        localKeyAnn.name = getKeyName(localKeyAnn, localField);
        localArrayList.add(new FieldSpec(localField, localClass, localKeyAnn));
      }
    }
  }
  
  private static String getKeyName(KeyAnn paramKeyAnn, Field paramField)
  {
    String str = paramKeyAnn.name;
    if (Strings.isEmpty(str)) {
      str = paramField.getName();
    }
    return str;
  }
  
  public static MethodSpec<ReceiveEventsAnn>[] getReceiveEventsSpecs(Class<?> paramClass)
  {
    MethodSpec[] arrayOfMethodSpec = (MethodSpec[])RECEIVE_EVENTS_SPECS.get(paramClass);
    ArrayList localArrayList;
    Iterator localIterator;
    if (arrayOfMethodSpec == null)
    {
      localArrayList = new ArrayList();
      localIterator = ReflectionUtils.buildClassHierarchy(paramClass).iterator();
      if (!localIterator.hasNext())
      {
        arrayOfMethodSpec = (MethodSpec[])localArrayList.toArray(new MethodSpec[localArrayList.size()]);
        RECEIVE_EVENTS_SPECS.put(paramClass, arrayOfMethodSpec);
      }
    }
    else
    {
      return arrayOfMethodSpec;
    }
    Method[] arrayOfMethod = ((Class)localIterator.next()).getDeclaredMethods();
    int i = arrayOfMethod.length;
    int j = 0;
    label88:
    Method localMethod;
    Ann[] arrayOfAnn;
    int k;
    if (j < i)
    {
      localMethod = arrayOfMethod[j];
      arrayOfAnn = AnnBuilder.getMethodAnns(localMethod);
      k = arrayOfAnn.length;
    }
    label167:
    for (int m = 0;; m++)
    {
      if (m >= k) {}
      for (;;)
      {
        j++;
        break label88;
        break;
        Ann localAnn = arrayOfAnn[m];
        if (!(localAnn instanceof ReceiveEventsAnn)) {
          break label167;
        }
        localArrayList.add(new MethodSpec(localMethod, (ReceiveEventsAnn)localAnn));
      }
    }
  }
  
  public static FieldSpec<ColumnAnn>[] getTableColumnSpecs(Class<? extends Entity> paramClass)
  {
    FieldSpec[] arrayOfFieldSpec = (FieldSpec[])COLUMN_SPECS.get(paramClass);
    ArrayList localArrayList;
    Iterator localIterator;
    if (arrayOfFieldSpec == null)
    {
      localArrayList = new ArrayList();
      localIterator = ReflectionUtils.buildClassHierarchy(paramClass).iterator();
      if (!localIterator.hasNext())
      {
        sanitizeSpecs(localArrayList);
        arrayOfFieldSpec = (FieldSpec[])localArrayList.toArray(new FieldSpec[localArrayList.size()]);
        COLUMN_SPECS.put(paramClass, arrayOfFieldSpec);
      }
    }
    else
    {
      return arrayOfFieldSpec;
    }
    Field[] arrayOfField = ((Class)localIterator.next()).getDeclaredFields();
    int i = arrayOfField.length;
    int j = 0;
    label92:
    Field localField;
    Ann[] arrayOfAnn;
    int k;
    if (j < i)
    {
      localField = arrayOfField[j];
      arrayOfAnn = AnnBuilder.getFieldAnns(localField);
      k = arrayOfAnn.length;
    }
    label196:
    for (int m = 0;; m++)
    {
      if (m >= k) {}
      for (;;)
      {
        j++;
        break label92;
        break;
        Ann localAnn = arrayOfAnn[m];
        if (!(localAnn instanceof ColumnAnn)) {
          break label196;
        }
        ColumnAnn localColumnAnn = (ColumnAnn)localAnn;
        Class localClass = getComponentType(localField);
        localColumnAnn.name = getColumnName(localColumnAnn, localField);
        localArrayList.add(new FieldSpec(localField, localClass, localColumnAnn));
      }
    }
  }
  
  public static String getTableName(Class<? extends Entity> paramClass)
  {
    String str = (String)TABLE_NAMES.get(paramClass);
    Ann[] arrayOfAnn;
    int i;
    if (str == null)
    {
      arrayOfAnn = AnnBuilder.getClassAnns(paramClass);
      i = arrayOfAnn.length;
    }
    for (int j = 0;; j++)
    {
      if (j >= i) {}
      for (;;)
      {
        if (Strings.isEmpty(str)) {
          str = paramClass.getSimpleName();
        }
        TABLE_NAMES.put(paramClass, str);
        return str;
        Ann localAnn = arrayOfAnn[j];
        if (!(localAnn instanceof TableAnn)) {
          break;
        }
        str = ((TableAnn)localAnn).name;
      }
    }
  }
  
  private static void sanitizeSpecs(ArrayList<FieldSpec<ColumnAnn>> paramArrayList)
  {
    Iterator localIterator = paramArrayList.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      FieldSpec localFieldSpec = (FieldSpec)localIterator.next();
      Class localClass = localFieldSpec.field.getType();
      if (((ColumnAnn)localFieldSpec.ann).nullable)
      {
        if ((TypeHelper.isByte(localClass)) || (TypeHelper.isShort(localClass)) || (TypeHelper.isInteger(localClass)) || (TypeHelper.isLong(localClass)) || (TypeHelper.isFloat(localClass)) || (TypeHelper.isDouble(localClass)) || (TypeHelper.isBoolean(localClass)) || (TypeHelper.isCharacter(localClass)))
        {
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = localClass.getSimpleName();
          L.w("%s can't be null.", arrayOfObject2);
          ((ColumnAnn)localFieldSpec.ann).nullable = false;
        }
      }
      else if ((((ColumnAnn)localFieldSpec.ann).eager) && (!TypeHelper.isEntity(localClass)) && (!TypeHelper.isEntity(localFieldSpec.componentType)))
      {
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = localClass.getSimpleName();
        L.w("%s can't be eager.", arrayOfObject1);
        ((ColumnAnn)localFieldSpec.ann).eager = false;
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.ClassSpecRegistry
 * JD-Core Version:    0.7.0.1
 */