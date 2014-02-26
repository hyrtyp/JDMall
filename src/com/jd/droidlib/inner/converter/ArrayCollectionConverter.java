package com.jd.droidlib.inner.converter;

import android.content.ContentValues;
import android.database.Cursor;
import com.jd.droidlib.inner.ConverterRegistry;
import com.jd.droidlib.inner.ReflectionUtils;
import com.jd.droidlib.inner.TypeHelper;
import com.jd.droidlib.model.Model;
import com.jd.droidlib.persist.json.JSONSerializer;
import com.jd.droidlib.util.Arrays2;
import com.jd.droidlib.util.Strings;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ArrayCollectionConverter
  extends Converter<Object>
{
  private static final String SEP = "|\036";
  
  private <T> ArrayList<T> arrOrCollToList(Class<?> paramClass, Class<T> paramClass1, Object paramObject)
  {
    ArrayList localArrayList = new ArrayList();
    if (TypeHelper.isArray(paramClass))
    {
      localArrayList.addAll(Arrays.asList(Arrays2.toObjectArray(paramObject)));
      return localArrayList;
    }
    localArrayList.addAll((Collection)paramObject);
    return localArrayList;
  }
  
  private final <T> Object parseTypeArr(Converter<T> paramConverter, Class<T> paramClass, String[] paramArrayOfString)
  {
    Object localObject = Array.newInstance(paramClass, paramArrayOfString.length);
    for (int i = 0;; i++)
    {
      if (i >= paramArrayOfString.length) {
        return localObject;
      }
      Array.set(localObject, i, paramConverter.parseFromString(paramClass, null, paramArrayOfString[i]));
    }
  }
  
  private final <T> Collection<T> parseTypeColl(Converter<T> paramConverter, Class<Object> paramClass, Class<T> paramClass1, String[] paramArrayOfString)
  {
    Collection localCollection = (Collection)ReflectionUtils.newInstance(paramClass);
    for (int i = 0;; i++)
    {
      if (i >= paramArrayOfString.length) {
        return localCollection;
      }
      localCollection.add(paramConverter.parseFromString(paramClass1, null, paramArrayOfString[i]));
    }
  }
  
  public boolean canHandle(Class<?> paramClass)
  {
    return (TypeHelper.isArray(paramClass)) || (TypeHelper.isCollection(paramClass));
  }
  
  public String getDBColumnType()
  {
    return " TEXT";
  }
  
  protected <V> Object parseFromString(Class<Object> paramClass, Class<V> paramClass1, String paramString)
  {
    Collection localCollection;
    Object[] arrayOfObject;
    for (;;)
    {
      JSONArray localJSONArray;
      boolean bool1;
      boolean bool2;
      JSONSerializer localJSONSerializer;
      int i;
      Object localObject2;
      int k;
      try
      {
        localJSONArray = new JSONArray(paramString);
        bool1 = TypeHelper.isArray(paramClass);
        localCollection = null;
        if (bool1)
        {
          arrayOfObject = new Object[localJSONArray.length()];
          bool2 = TypeHelper.isModel(paramClass1);
          localJSONSerializer = null;
          if (bool2) {
            localJSONSerializer = new JSONSerializer(null);
          }
          i = 0;
          if (i < localJSONArray.length()) {
            break label131;
          }
          if (!bool1) {
            break label273;
          }
          if (!bool2) {
            break;
          }
          localObject2 = Array.newInstance(paramClass1, arrayOfObject.length);
          k = 0;
          if (k < arrayOfObject.length) {
            break label205;
          }
          return localObject2;
        }
      }
      catch (JSONException localJSONException2)
      {
        throw new IllegalArgumentException(localJSONException2);
      }
      localCollection = (Collection)ReflectionUtils.newInstance(paramClass);
      arrayOfObject = null;
      continue;
      for (;;)
      {
        label131:
        Object localObject1;
        try
        {
          localObject1 = localJSONArray.get(i);
          if (bool2)
          {
            Model localModel = localJSONSerializer.deserialize((JSONObject)localObject1, paramClass1);
            localObject1 = localModel;
          }
          if (bool1)
          {
            arrayOfObject[i] = localObject1;
            i++;
          }
        }
        catch (JSONException localJSONException1)
        {
          throw new IllegalArgumentException(localJSONException1);
        }
        localCollection.add(localObject1);
      }
      label205:
      Array.set(localObject2, k, arrayOfObject[k]);
      k++;
    }
    String[] arrayOfString = new String[arrayOfObject.length];
    for (int j = 0;; j++)
    {
      if (j >= arrayOfObject.length) {
        return parseTypeArr(ConverterRegistry.getConverter(paramClass1), paramClass1, arrayOfString);
      }
      arrayOfString[j] = arrayOfObject[j].toString();
    }
    label273:
    return localCollection;
  }
  
  public <V> void putToContentValues(Class<Object> paramClass, Class<V> paramClass1, ContentValues paramContentValues, String paramString, Object paramObject)
    throws IllegalArgumentException
  {
    Converter localConverter = ConverterRegistry.getConverter(paramClass1);
    ArrayList localArrayList1 = arrOrCollToList(paramClass, paramClass1, paramObject);
    ArrayList localArrayList2 = new ArrayList();
    ContentValues localContentValues = new ContentValues();
    Iterator localIterator = localArrayList1.iterator();
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        paramContentValues.put(paramString, Strings.join(localArrayList2, "|\036"));
        return;
      }
      localConverter.putToContentValues(paramClass1, null, localContentValues, "key", (Object)localIterator.next());
      localArrayList2.add(localContentValues.get("key"));
    }
  }
  
  public <V> void putToJSON(Class<Object> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString, Object paramObject)
    throws JSONException
  {
    Converter localConverter = ConverterRegistry.getConverter(paramClass1);
    ArrayList localArrayList = arrOrCollToList(paramClass, paramClass1, paramObject);
    JSONArray localJSONArray = new JSONArray();
    JSONObject localJSONObject = new JSONObject();
    Iterator localIterator = localArrayList.iterator();
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        paramJSONObject.put(paramString, localJSONArray);
        return;
      }
      localConverter.putToJSON(paramClass1, null, localJSONObject, "key", (Object)localIterator.next());
      localJSONArray.put(localJSONObject.get("key"));
    }
  }
  
  public <V> Object readFromCursor(Class<Object> paramClass, Class<V> paramClass1, Cursor paramCursor, int paramInt)
  {
    Converter localConverter = ConverterRegistry.getConverter(paramClass1);
    String str = paramCursor.getString(paramInt);
    if (str.length() > 0) {}
    for (String[] arrayOfString = str.split("\\|\036"); TypeHelper.isArray(paramClass); arrayOfString = new String[0]) {
      return parseTypeArr(localConverter, paramClass1, arrayOfString);
    }
    return parseTypeColl(localConverter, paramClass, paramClass1, arrayOfString);
  }
  
  public <V> Object readFromJSON(Class<Object> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    return parseFromString(paramClass, paramClass1, paramJSONObject.getString(paramString));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.converter.ArrayCollectionConverter
 * JD-Core Version:    0.7.0.1
 */